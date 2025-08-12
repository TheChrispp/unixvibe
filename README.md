<div align="center">
  <img src="https://github.com/user-attachments/assets/87f7336b-70a3-4b17-b965-eadc03a06529" width="50%" height="320" style="object-fit:cover;" alt="Unixvibe banner" />
</div>

<div align="center">
  <img src="https://img.shields.io/github/last-commit/Litesav-L/unixvibe?style=for-the-badge&color=303030" />
  <img src="https://img.shields.io/badge/AUGUST-2025-8?style=for-the-badge" />
  <img src="https://img.shields.io/github/repo-size/Litesav-L/unixvibe?style=for-the-badge&cacheSeconds=30" />
  <img src="https://img.shields.io/badge/Linux-%23171717?style=for-the-badge&logo=linux&logoColor=white" />
  <img src="https://img.shields.io/badge/Arch-%23007ACC?style=for-the-badge&logo=arch-linux&logoColor=white" />
  <img src="https://img.shields.io/badge/Hyprland-%239566f2?style=for-the-badge&logoColor=white" />
</div>


# <img width="64" height="64" alt="icon" src="https://github.com/user-attachments/assets/f5e1a1c7-7e95-4d8b-aba1-9e84b9e015e4" />Unixvibe


**A dynamic interface layer — a new abstraction above the desktop environment that lets you control the environment at multiple levels and transform it instantly.**

<p align="center">
  <img src="https://github.com/user-attachments/assets/dd1eea1b-5c52-4c5c-afd2-fa00be3e1257" width="800" alt="image">
</p>

## Installation 📦

1. **Clone the repository:**
```bash
git clone https://github.com/Litesav-L/unixvibe.git
cd unixvibe
```
2. **Run the installer script:**
```bash
./install.sh
```
**Dependencies:**  
All required dependencies are installed automatically by the `install.sh` script — namely: **swww + yad + webkit2gtk**

## Starter adapted rices (if the server is temporarily unavailable)
https://drive.google.com/file/d/1OEnQnXGsMM4Hn7oMiFKOpse70jhFeQdT/view?usp=sharing

1. Download the archive via the link above and extract it
2. Click “+” on the bottom button bar for local import
3. Navigate to the rice directory in your file manager → Open

---

## Features 💡

1. **One‑click rice switching.**  
   Switch between preinstalled rices from the list. Average apply time on click is ~2 seconds and will decrease with each new version.

2. **Install rices from the internet / local installation from the filesystem.**  
   Import rices directly via the online tab.

3. **Rice sharing.**  
   Upload your own rices (dotfiles) to the server for public access.
4. **Ability to edit/remove the rice you uploaded from the GUI.**
5. **View the configuration (rice) repository and supported distributions; basic git sync of core info.**
6. **Manage configurations via the GUI interface.**
7. **Manage plugins via the GUI; add plugin repositories; add custom parameters to a plugin; support for different parameter types (e.g., color picker).**
8. **Fix problematic temporary states of supported tiling window managers.**
9. **Save and restore external environment states.**
10. **Security check of rice scripts before execution. Initialization of custom security rules.**
11. **Two‑level isolation of rice dependencies: standard + controlled prefix system (beta). If symlinks are found in a rice script, they are recognized, symlinks get priority, and the standard mechanism is disabled.**

12. **Configure the rice‑switch animation (temporarily uses the `swww` dependency).**  
   Ability to change animation parameters in the GUI (animation type, FPS, duration, wave angle).

13. **Additional options:**  
   - Auto‑apply a rice after boot (optional)  
   - Keep or close the rice list window after selection (useful for quick browsing of several rices)  
   - Enable logging of apply/install time

14. **Multilingual support:**  
   Currently 4 languages are supported.

15. **Unixvibe parameters**  
    - Switch the interface theme,  
    - Basic sound control


## Rice standard 🎨
<table>
  <tr>
    <td align="center">
      <img src="https://github.com/user-attachments/assets/90b9d5df-c2b9-4b13-a732-fd7f924d805d" width="300">
    </td>
    <td align="center" valign="middle">
      <img src="https://github.com/user-attachments/assets/dd231164-f0c9-438e-b805-9fff8acfee8c" width="400"><br/>
      <img src="https://github.com/user-attachments/assets/d8c71441-b2d0-494f-8ac7-8997869666f6" width="187">
    </td>
  </tr>
</table>

The rice card is one of the key pop-ups, which will expand as new versions are released.  
At the moment, a rice should include:  
- Preview (512x512, 1024x1024)
- A link to the repository  
- The author (avatar will be automatically parsed from Git)  
- The adaptation author (optional)  
- Tags (optional)  
- A functionality category (optional, multiple allowed)  
- Information about supported distributions (optional — if not specified, the program will generate the list automatically based on the script)  

In the future, automatic conversion between distributions and tiling window managers will also be available here, along with a rating system (more details in the roadmap).


## Adapting an existing rice / creating a new one 🎨

In the first versions, the program will temporarily require adherence to the rice structure:

Minimal acceptable structure (if hyprland, for other tiling managers the structure will be different)
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

Full recommended structure of a rice should look like this:
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

`preview.png` — image shown to the user in the rice list  
`wallpaper.png` — default desktop wallpaper

`hyprland.conf` — contains references to the configuration files for Hyprland (direct parameters without links are also possible); files related to this configuration must be placed in `hyprland/`  
`unixvibe.conf` — the program’s configuration file that ensures consistent control when switching rices, hides auxiliary terminals during switching, and sets the required visibility attributes for the program window

`start-scripts/`  
- `install_theme_apps.sh` — script that installs accompanying applications; runs only on the first installation of a rice  
- `set_after_install_actions.sh` — script that launches accompanying applications; runs every time a rice is applied

`config/` — directory with configuration files of accompanying applications

For simple understanding, you can look at the preset rices in the unixvibe network section or the set of rices in a separate archive — it is based on the best and popular practice of distributing responsibility across the 7 specified files with dynamic links in `hyprland.conf`.

---
In future versions there will be no need to follow a rice structure (you will be able to import any old rice and it will be supported), and rices where this is already followed will maintain backward compatibility. It is also planned, as new versions are released and the program code is opened, to shift responsibility from rice scripts toward the program itself. Currently, unixvibe contains a lot of logic related to fast rice switching, on‑the‑fly solutions for incompatibilities between individual versions of applications accompanying the rice, as well as logic that solves other issues often encountered by experienced users. Rice scripts are responsible for installing the list of accompanying applications and launching them, to provide the user with full understanding and transparency of all actions performed in the system (and if you don’t feel like reviewing them, the program itself will determine potentially dangerous commands and will not allow the script to run without the user’s consent).



## Roadmap 🔮

1. **Add the ability to easily switch rices across the whole PC flow (rices for GRUB boot screens, rEFInd, login screen rices).**

2. **Support for other popular window managers (management of rices, configurations, plugins).**

3. **Ability to convert/map rices between different window managers (equivalent‑parameter system module), convert installation and apply packages between different distributions.**

4. **Mechanism to support backward compatibility for old rices and those that will eventually become old (equivalent‑parameter system module).**

5. **Integrate ratings for rices by reading and updating external APIs (reddit, git) + a possible internal rating and author motivation system.**

6. **General program improvements: drag & drop on theme elements, grouping and filtering rices by tags, pagination of network elements, etc.**

7. **Experimental features to validate the practical usefulness of rices: apply by current work mode, apply by context of the selected window.**

8. **AI generation of environments/rices — a large module that allows generating the environment based on prompts or the context of actions.**

**Also considering fully open‑sourcing the code in the near future and being ready to accept changes in git.**

---
✅ Tested on Hyprland + Arch
