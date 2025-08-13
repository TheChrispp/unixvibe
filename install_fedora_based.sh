#!/bin/bash

notify_safe() {
    local title="$1"
    local msg="$2"
    local user=$(logname)
    local pid

    for proc in gnome-session sway plasma_session ags hyprland; do
        pid=$(pgrep -u "$user" -n "$proc")
        [ -n "$pid" ] && break
    done
    if [ -n "$pid" ]; then
        export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$pid/environ | tr '\0' '\n' | grep DBUS_SESSION_BUS_ADDRESS | cut -d= -f2-)
        sudo -u "$user" notify-send "$title" "$msg" 2>/dev/null && return
    fi

    dbus-send --session --dest=org.freedesktop.Notifications --type=method_call \
        /org/freedesktop/Notifications org.freedesktop.Notifications.Notify \
        string:"unixvibe" uint32:0 string:"" string:"$title" string:"$msg" \
        array:string:"" array:dict:string:string:"" int32:5000 2>/dev/null && return
    echo "$title: $msg"
}

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

print_message() {
    echo -e "${2}${1}${NC}"
}

if [ "$EUID" -eq 0 ]; then
    print_message "Please do not run this script as root" "$RED"
    exit 1
fi

print_message "Checking dependencies..." "$YELLOW"

if ! command -v gjs &>/dev/null; then
    print_message "Error: GJS is not installed" "$RED"
    exit 1
fi

GJS_VERSION=$(gjs --version 2>/dev/null | grep -oE '[0-9]+\.[0-9]+' || echo "0.0")
GJS_MAJOR=$(echo "$GJS_VERSION" | cut -d. -f1)
GJS_MINOR=$(echo "$GJS_VERSION" | cut -d. -f2)

if [ -z "$GJS_MAJOR" ] || [ -z "$GJS_MINOR" ] || [ "$GJS_MAJOR" -lt 1 ] || ([ "$GJS_MAJOR" -eq 1 ] && [ "$GJS_MINOR" -lt 80 ]); then
    print_message "Error: GJS version 1.80 or higher is required (found $GJS_VERSION)" "$RED"
    exit 1
fi

MISSING_DEPS=()

if ! command -v swww &>/dev/null; then
    MISSING_DEPS+=("swww")
fi

if ! command -v yad &>/dev/null; then
    MISSING_DEPS+=("yad")
fi

if ! pkg-config --exists webkit2gtk-4.1 2>/dev/null && ! pkg-config --exists webkit2gtk-4.0 2>/dev/null; then
    MISSING_DEPS+=("webkit2gtk (Fedora/Ultramarine: webkit2gtk4.1)")
fi

if [ ${#MISSING_DEPS[@]} -ne 0 ]; then
    print_message "Missing dependencies: ${MISSING_DEPS[*]}" "$RED"
    print_message "Please install them using your package manager" "$YELLOW"
    exit 1
fi

INSTALL_DIR="$HOME/.config/unixvibe"
BIN_DIR="$HOME/.local/bin"
DESKTOP_DIR="$HOME/.local/share/applications"
SCRIPT_DIR="$INSTALL_DIR/scripts"

mkdir -p "$INSTALL_DIR" "$BIN_DIR" "$DESKTOP_DIR" "$SCRIPT_DIR"

rm -rf "$INSTALL_DIR/js"
rm -rf "$INSTALL_DIR/assets"
rm -rf "$INSTALL_DIR/styles"

cp -rf js "$INSTALL_DIR/js"
cp -rf assets "$INSTALL_DIR/assets"
cp -rf styles "$INSTALL_DIR/styles"

cp -f security_defaults.json "$INSTALL_DIR/"

PREF_DIR="$HOME/.config/unixvibe_pref"
mkdir -p "$PREF_DIR"
echo '{"gtkTheme":"Unixvibe"}' > "$PREF_DIR/theme_selector_settings.json"

if [ -d "$HOME/.unixvibe_persistent" ]; then
    print_message "Previous user settings found and will be restored" "$GREEN"
else
    print_message "User settings will be saved to ~/.unixvibe_persistent" "$YELLOW"
fi

cat > "$BIN_DIR/unixvibe" << 'EOF'
#!/bin/bash

INSTALL_DIR="$HOME/.config/unixvibe"

if [ ! -d "$INSTALL_DIR" ]; then
    echo "Error: Unixvibe is not installed properly. Please run install.sh again."
    exit 1
fi

cd "$INSTALL_DIR"

if [ -z "$1" ]; then
    gjs -m js/theme-selector-popup.js
else
    gjs -m js/theme-selector-popup.js "$1"
fi
EOF

chmod +x "$BIN_DIR/unixvibe"

cat > "$DESKTOP_DIR/unixvibe.desktop" << EOF
[Desktop Entry]
Name=Unixvibe
Comment=GTK Theme Selector
Exec=$BIN_DIR/unixvibe
Icon=$INSTALL_DIR/assets/icon.png
Terminal=false
Type=Application
Categories=Utility;
EOF

add_to_path() {
    local config_file="$1"
    local path_line="$2"
    [ -f "$config_file" ] || touch "$config_file"
    if ! grep -q "$path_line" "$config_file"; then
        echo "$path_line" >> "$config_file"
    fi
}

add_to_path "$HOME/.bashrc" 'export PATH="$HOME/.local/bin:$PATH"'
add_to_path "$HOME/.zshrc" 'export PATH="$HOME/.local/bin:$PATH"'
add_to_path "$HOME/.profile" 'export PATH="$HOME/.local/bin:$PATH"'

if [ -d "$HOME/.config/fish" ]; then
    mkdir -p "$HOME/.config/fish/conf.d"
    echo 'set -x PATH $HOME/.local/bin $PATH' > "$HOME/.config/fish/conf.d/unixvibe.fish"
fi

export PATH="$HOME/.local/bin:$PATH"

case $SHELL in
    */bash)
        source "$HOME/.bashrc" 2>/dev/null
        ;;
    */zsh)
        source "$HOME/.zshrc" 2>/dev/null
        ;;
    */fish)
        source "$HOME/.config/fish/conf.d/unixvibe.fish" 2>/dev/null
        ;;
esac

HYPR_DIR="$HOME/.config/hypr"
MAIN_CONFIG="$HYPR_DIR/hyprland.conf"
KEYBIND_COMMENT="# Automatically generated for quick Unixvibe popup"
KEYBIND_LINE="bind = SUPER, F12, exec, $HOME/.local/bin/unixvibe"

mkdir -p "$HYPR_DIR"

find_available_key() {
    local file="$1"
    local keys=("F1" "F2" "F3" "F4" "F5" "F6" "F7" "F8" "F9" "F10" "F11" "F12")
    for key in "${keys[@]}"; do
        if ! grep -q "bind = SUPER, $key," "$file"; then
            echo "$key"
            return 0
        fi
    done
    return 1
}

add_keybind() {
    local file="$1"
    local used_key=""
    [ -f "$file" ] || touch "$file"
    if grep -q "F12" "$file"; then
        if grep -q "unixvibe" "$file"; then
            sed -i "/$KEYBIND_COMMENT/,+1d" "$file" 2>/dev/null
            echo -e "\n$KEYBIND_COMMENT (SUPER+F12)\n$KEYBIND_LINE" >> "$file"
            used_key="F12"
        else
            local new_key=$(find_available_key "$file")
            if [ -n "$new_key" ]; then
                KEYBIND_LINE="bind = SUPER, $new_key, exec, $HOME/.local/bin/unixvibe"
                echo -e "\n$KEYBIND_COMMENT (SUPER+$new_key)\n$KEYBIND_LINE" >> "$file"
                used_key="$new_key"
            else
                print_message "Error: Could not find an available key combination" "$RED"
                return 1
            fi
        fi
    else
        echo -e "\n$KEYBIND_COMMENT (SUPER+F12)\n$KEYBIND_LINE" >> "$file"
        used_key="F12"
    fi
    echo "$used_key"
}

USED_KEY=$(add_keybind "$MAIN_CONFIG")

if [ "$USED_KEY" = "F12" ]; then
    print_message "Added/Updated keybind to SUPER+F12" "$GREEN"
else
    print_message "F12 is already bound to another program" "$YELLOW"
    print_message "Unixvibe has been bound to SUPER+$USED_KEY instead" "$GREEN"
fi

print_message "Installation completed successfully!" "$GREEN"
print_message "You can launch Unixvibe in three ways:" "$GREEN"
print_message "1. Desktop shortcut: Unixvibe" "$GREEN"
print_message "2. Hotkey: SUPER+$USED_KEY (toggles the popup)" "$GREEN"
print_message "3. Terminal command: unixvibe" "$GREEN"

print_message "Reloading Hyprland configuration..." "$YELLOW"
if hyprctl reload &>/dev/null; then
    print_message "Hyprland configuration reloaded successfully" "$GREEN"
else
    print_message "Note: Could not reload Hyprland configuration" "$YELLOW"
    print_message "You may need to reload it manually with: hyprctl reload" "$YELLOW"
fi

echo "📋 Restore point will be updated on first application launch"

echo ""
echo "✅ First run flag will be managed automatically by the application"
