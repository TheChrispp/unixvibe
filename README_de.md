<div align="center">
  <img src="https://github.com/user-attachments/assets/87f7336b-70a3-4b17-b965-eadc03a06529" width="50%" height="320" style="object-fit:cover;" alt="Unixvibe banner" />
</div>

<div align="center">
  <img src="https://img.shields.io/github/last-commit/Litesav-L/unixvibe?style=for-the-badge&color=303030" />
  <img src="https://img.shields.io/badge/APRIL-2025-88cc00?style=for-the-badge" />
  <img src="https://img.shields.io/github/repo-size/Litesav-L/unixvibe?style=for-the-badge&cacheSeconds=30" />
  <img src="https://img.shields.io/badge/Linux-%23171717?style=for-the-badge&logo=linux&logoColor=white" />
  <img src="https://img.shields.io/badge/Arch-%23007ACC?style=for-the-badge&logo=arch-linux&logoColor=white" />
  <img src="https://img.shields.io/badge/Hyprland-%239566f2?style=for-the-badge&logoColor=white" />
</div>


# Unixvibe 🎨

**Dynamische Interface‑Schicht — eine neue Abstraktion über der Desktop‑Umgebung, die ermöglicht, die Umgebung auf mehreren Ebenen zu steuern und sofort zu transformieren.**

<img width="1682" height="1398" alt="image" src="https://github.com/user-attachments/assets/4cf0f645-6f5c-4db9-9ab8-2c8e3aef5bac" />

---

## Installation 📦

1. **Repository klonen:**
```bash
git clone https://github.com/Litesav-L/unixvibe.git
cd unixvibe
```
2. **Installationsskript ausführen:**
```bash
./install.sh
```
**Abhängigkeiten:**  
Alle benötigten Abhängigkeiten werden durch das Skript `install.sh` automatisch installiert — nämlich: **sww + yad + webkit2gtk**

## Start‑Rices (falls der Server vorübergehend nicht verfügbar ist)
https://drive.google.com/file/d/1OEnQnXGsMM4Hn7oMiFKOpse70jhFeQdT/view?usp=sharing

1. Archiv über den obigen Link herunterladen und entpacken  
2. „+“ in der unteren Button‑Leiste für den lokalen Import auswählen  
3. Im Dateimanager in das Rice‑Verzeichnis wechseln → Öffnen

---

## Funktionen 💡

1. **Ein‑Klick‑Wechsel der Rices.**  
   Wechsel zwischen vorinstallierten Rices aus der Liste. Die durchschnittliche Anwendungszeit pro Klick beträgt ~2 Sekunden und wird mit jeder neuen Version weiter sinken.

2. **Rices aus dem Internet installieren / lokale Installation aus dem Dateisystem.**  
   Import von Rices direkt über den Online‑Tab.

3. **Austausch von Rices.**  
   Eigene Rices (Dotfiles) für den öffentlichen Zugriff auf den Server hochladen.
4. **Möglichkeit, den hochgeladenen Rice in der GUI zu bearbeiten/zu löschen.**
5. **Anzeige des Konfigurations‑ (Rice‑) Repositories und unterstützter Distributionen; grundlegende Git‑Synchronisation der Kerninformationen.**
6. **Verwaltung von Konfigurationen über die GUI.**
7. **Verwaltung von Plugins über die GUI; Hinzufügen von Plugin‑Repos; Hinzufügen benutzerdefinierter Plugin‑Parameter; Unterstützung verschiedener Parametertypen (z. B. Farbwähler).**
8. **Behebung problematischer temporärer Zustände unterstützter Tiling‑Window‑Manager.**
9. **Speichern und Wiederherstellen von Zuständen der externen Umgebung.**
10. **Sicherheitsprüfung von Rice‑Skripten vor der Ausführung. Initialisierung eigener Sicherheitsregeln.**
11. **Zweistufige Isolation von Rice‑Abhängigkeiten: Standard + kontrolliertes Prefix‑System (Beta). Wenn Symlinks im Rice‑Skript gefunden werden, werden sie erkannt, erhalten Priorität, und der Standard‑Mechanismus wird deaktiviert.**

12. **Animation des Rice‑Wechsels konfigurieren (vorübergehend wird die Abhängigkeit `sww` verwendet).**  
   Anpassung der Animationsparameter in der GUI (Animationstyp, FPS, Dauer, Wellenwinkel).

13. **Zusätzliche Optionen:**  
   - Automatisches Anwenden des Rice nach dem Booten (optional)  
   - Fenster der Rice‑Liste nach Auswahl beibehalten oder schließen (praktisch für schnelles Durchsehen mehrerer Rices)  
   - Protokollierung der Anwendungs‑/Installationszeit aktivieren

14. **Mehrsprachige Unterstützung:**  
   Derzeit werden 4 Sprachen unterstützt.

15. **Unixvibe‑Parameter**  
    - Wechsel des Interface‑Themas,  
    - Grundlegende Klangsteuerung

---

## Referenz 📚

### Anpassung eines bestehenden Rice / Erstellung eines neuen 🎨

In den ersten Versionen erfordert das Programm vorübergehend die Einhaltung der Rice‑Struktur:

Minimal zulässige Struktur
```text
RICE_NAME/
├── preview.png
├── wallpaper.png
├── hyprland.conf
├── hyprland/
│   ├── unixvibe.conf
└── start-scripts/
    ├── install_theme_apps.sh (optional)
    └── set_after_install_actions.sh
├── config/ (optional)
```

Vollständig empfohlene Rice‑Struktur:
```text
RICE_NAME/
├── preview.png
├── wallpaper.png
├── hyprland.conf
├── hyprland/
│   ├── env.conf
│   ├── execs.conf
│   ├── general.conf
│   ├── rules.conf
│   ├── colors.conf
│   └── keybinds.conf
│   ├── unixvibe.conf
└── start-scripts/
    ├── install_theme_apps.sh (optional)
    └── set_after_install_actions.sh
├── config/ (optional)
```

`preview.png` — Bild, das dem Benutzer in der Rice‑Liste angezeigt wird  
`wallpaper.png` — Standard‑Desktop‑Hintergrund

`hyprland.conf` — enthält Verweise auf die Konfigurationsdateien für Hyprland (auch direkte Parameter ohne Verweise sind möglich); zugehörige Dateien müssen in `hyprland/` liegen  
`unixvibe.conf` — Konfigurationsdatei des Programms, die konsistente Steuerung beim Rice‑Wechsel sicherstellt, Hilfsterminals während des Wechsels ausblendet und die erforderlichen Sichtbarkeitsattribute des Programmfensters festlegt

`start-scripts/`  
- `install_theme_apps.sh` — Skript zur Installation begleitender Anwendungen; wird nur bei der ersten Installation eines Rice ausgeführt  
- `set_after_install_actions.sh` — Skript zum Starten begleitender Anwendungen; wird bei jeder Anwendung eines Rice ausgeführt

`config/` — Verzeichnis mit Konfigurationen der begleitenden Anwendungen

Zur einfachen Orientierung können die vorinstallierten Rices im Netzwerk‑Bereich von unixvibe oder das separate Rice‑Archiv angesehen werden — Grundlage ist die verbreitete Praxis, die Verantwortung auf die 7 angegebenen Dateien mit dynamischen Verweisen in `hyperland.conf` zu verteilen.

---
In zukünftigen Versionen wird es nicht notwendig sein, die Struktur einzuhalten (man wird jeden alten Rice importieren können, und er wird unterstützt), und Rices, die dies bereits tun, behalten die Abwärtskompatibilität. Mit neuen Versionen und der Öffnung des Programmcodes wird die Verantwortung zunehmend von den Rice‑Skripten auf das Programm verlagert. Derzeit enthält unixvibe viel Logik für schnellen Rice‑Wechsel, Lösungen „on‑the‑fly“ für Inkompatibilitäten zwischen Versionen begleitender Anwendungen sowie weitere Logik für Probleme, denen erfahrene Nutzer häufig begegnen. Rice‑Skripte sind verantwortlich für die Installation und den Start der begleitenden Anwendungen und bieten volle Transparenz über alle Aktionen im System (und wenn man sie nicht prüfen möchte, erkennt das Programm potenziell gefährliche Befehle und verhindert deren Ausführung ohne Zustimmung des Nutzers).

---

## Fahrplan 🔮

1. **Möglichkeit hinzufügen, Rices komfortabel über den gesamten PC‑Flow zu wechseln (Rices für GRUB‑Bootscreens, rEFInd, Login‑Screen‑Rices).**

2. **Unterstützung weiterer populärer Window‑Manager (Verwaltung von Rices, Konfigurationen, Plugins).**

3. **Möglichkeit zur Konvertierung/Abbildung von Rices zwischen unterschiedlichen Window‑Managern (Modul für äquivalente Parameter); Konvertierung von Installations‑ und Anwendungspaketen zwischen Distributionen.**

4. **Mechanismus zur Unterstützung der Abwärtskompatibilität für alte Rices und solche, die es werden (Modul für äquivalente Parameter).**

5. **Integration eines Bewertungssystems für Rices durch Lesen/Aktualisieren externer APIs (Reddit, Git) + mögliches internes Bewertungssystem mit Autorenmotivation.**

6. **Allgemeine Programmverbesserungen: Drag‑&‑Drop auf Theme‑Elemente, Gruppierung und Filterung von Rices nach Tags, Paginierung von Netzwerk‑Elementen usw.**

7. **Experimentelle Features zur Überprüfung des praktischen Nutzens von Rices: Anwendung nach aktuellem Arbeitsmodus, Anwendung nach Kontext des ausgewählten Fensters.**

8. **KI‑Generierung von Umgebungen/Rices — ein umfangreiches Modul, das basierend auf Prompts oder Handlungskontext Umgebungen generiert.**

**Außerdem wird erwogen, den Code in naher Zukunft vollständig zu öffnen und Änderungen in Git anzunehmen.**

---
✅ Getestet auf Hyprland + AGS, Arch
