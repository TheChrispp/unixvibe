<div align="center">
  <img src="https://github.com/user-attachments/assets/629c2d23-4319-4566-9973-784a6291093d" width="50%" height="320" style="object-fit:cover;" alt="Unixvibe Banner" />
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

**Eine dynamische Schnittstellenschicht – eine neue Abstraktion über der Desktop‑Umgebung, mit der Sie die Umgebung auf mehreren Ebenen steuern und sofort transformieren können.**

<p align="center">
<img src="https://github.com/user-attachments/assets/6cce4101-8635-4d05-9522-dca663bcdffc" width="800" alt="image">
</p>

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
Alle erforderlichen Abhängigkeiten werden automatisch vom Skript `install.sh` installiert – nämlich: **swww + yad + webkit2gtk**

## Angepasste Start‑Rices (falls der Server vorübergehend nicht verfügbar ist)
https://drive.google.com/file/d/1OEnQnXGsMM4Hn7oMiFKOpse70jhFeQdT/view?usp=sharing

1. Laden Sie das Archiv über den obigen Link herunter und entpacken Sie es
2. Klicken Sie auf „+“ in der unteren Leiste für den lokalen Import
3. Navigieren Sie im Dateimanager in das Rice‑Verzeichnis → Öffnen

---

## Funktionen 💡

1. **Rice‑Wechsel mit einem Klick.**  
   Wechseln Sie zwischen vorinstallierten Rices aus der Liste. Die durchschnittliche Anwendungszeit pro Klick beträgt ~2 Sekunden und wird mit jeder neuen Version weiter sinken.

2. **Rices aus dem Internet installieren / lokale Installation aus dem Dateisystem.**  
   Importieren Sie Rices direkt über den Online‑Tab.

3. **Rices teilen.**  
   Laden Sie Ihre eigenen Rices (Dotfiles) für den öffentlichen Zugriff auf den Server hoch.
4. **Möglichkeit, das von Ihnen hochgeladene Rice in der GUI zu bearbeiten/zu löschen.**
5. **Anzeige des Konfigurations‑ (Rice‑) Repos und unterstützter Distributionen; grundlegender Git‑Sync der Kerndaten.**
6. **Konfigurationen über die grafische Oberfläche (GUI) verwalten.**
7. **Plugins über die GUI verwalten; Plugin‑Repos hinzufügen; benutzerdefinierte Parameter zu einem Plugin hinzufügen; Unterstützung verschiedener Parametertypen (z. B. Farbwähler).**
8. **Problematische temporäre Zustände unterstützter Tiling‑Window‑Manager beheben.**
9. **Externe Umgebungszustände speichern und wiederherstellen.**
10. **Sicherheitsprüfung von Rice‑Skripten vor der Ausführung. Initialisierung benutzerdefinierter Sicherheitsregeln.**
11. **Zweistufige Isolation der Rice‑Abhängigkeiten: Standard + kontrolliertes Präfix‑System (Beta). Wenn in einem Rice‑Skript Symlinks gefunden werden, werden sie erkannt, haben Priorität und der Standardmechanismus wird deaktiviert.**

12. **Animation für den Rice‑Wechsel konfigurieren (verwendet vorübergehend die Abhängigkeit `swww`).**  
   Möglichkeit, Animationsparameter in der GUI zu ändern (Animationstyp, FPS, Dauer, Wellenwinkel).

13. **Zusätzliche Optionen:**  
   - Rice nach dem Booten automatisch anwenden (optional)  
   - Fenster mit der Rice‑Liste nach der Auswahl offen halten oder schließen (nützlich, um mehrere Rices schnell durchzusehen)  
   - Protokollierung von Anwendungs-/Installationszeit aktivieren

14. **Mehrsprachige Unterstützung:**  
   Derzeit werden 4 Sprachen unterstützt.

15. **Unixvibe‑Parameter**  
    - Oberflächenthema wechseln  
    - Grundlegende Tonsteuerung


## Rice‑Standard 🎨
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

Die Rice‑Karte ist eines der wichtigsten Pop‑ups und wird mit neuen Versionen weiter ausgebaut.  
Derzeit sollte ein Rice Folgendes enthalten:  
- Vorschau (512x512, 1024x1024)
- Einen Link zum Repository  
- Den Autor (Avatar wird automatisch aus Git geparst)  
- Den Anpassungsautor (optional)  
- Tags (optional)  
- Eine Funktionskategorie (optional, mehrere erlaubt)  
- Informationen zu unterstützten Distributionen (optional — falls nicht angegeben, generiert das Programm die Liste automatisch anhand des Skripts)  

Zukünftig werden hier auch die automatische Konvertierung zwischen Distributionen und Tiling‑Window‑Managern sowie ein Bewertungssystem verfügbar sein (Details in der Roadmap).


## Bestehendes Rice anpassen / ein neues erstellen 🎨

In den ersten Versionen erfordert das Programm vorübergehend die Einhaltung der Rice‑Struktur:

Minimal akzeptable Struktur (bei Hyprland; für andere Tiling‑Manager ist die Struktur anders)
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

Die vollständig empfohlene Struktur eines Rice sollte wie folgt aussehen:
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

`hyprland.conf` — enthält Verweise auf die Konfigurationsdateien für Hyprland (auch direkte Parameter ohne Links sind möglich); Dateien, die zu dieser Konfiguration gehören, müssen in `hyprland/` abgelegt werden  
`unixvibe.conf` — Konfigurationsdatei des Programms, die beim Wechseln der Rices für konsistente Steuerung sorgt, Hilfsterminals während des Wechsels ausblendet und die erforderlichen Sichtbarkeitsattribute für das Programmfenster setzt

`start-scripts/`  
- `install_theme_apps.sh` — Skript, das Begleitanwendungen installiert; wird nur bei der ersten Installation eines Rice ausgeführt  
- `set_after_install_actions.sh` — Skript, das Begleitanwendungen startet; wird jedes Mal ausgeführt, wenn ein Rice angewendet wird

`config/` — Verzeichnis mit Konfigurationsdateien der Begleitanwendungen

Zur einfachen Orientierung können Sie sich die vorgefertigten Rices im Unixvibe‑Netzwerkbereich oder das Set von Rices in einem separaten Archiv ansehen – es basiert auf der gängigen Best Practice, die Verantwortung auf die 7 genannten Dateien mit dynamischen Verweisen in `hyprland.conf` zu verteilen.

---
In zukünftigen Versionen wird es nicht mehr notwendig sein, eine Rice‑Struktur einzuhalten (Sie können jedes alte Rice importieren und es wird unterstützt), und Rices, die dies bereits tun, behalten die Abwärtskompatibilität. Außerdem ist geplant, mit neuen Versionen und der Öffnung des Programmcodes die Verantwortung von den Rice‑Skripten stärker in das Programm selbst zu verlagern. Derzeit enthält unixvibe viel Logik für schnelles Rice‑Wechseln, Ad‑hoc‑Lösungen für Inkompatibilitäten zwischen einzelnen Versionen der Begleitanwendungen sowie Logik, die andere, bei erfahrenen Nutzern häufige Probleme löst. Die Rice‑Skripte sind für die Installation der Liste der Begleitanwendungen und deren Start verantwortlich, um dem Benutzer ein vollständiges Verständnis und Transparenz aller Systemaktionen zu geben (und falls Sie sie nicht prüfen möchten, ermittelt das Programm potenziell gefährliche Befehle selbst und lässt das Skript ohne Ihre Zustimmung nicht ausführen).



## Roadmap 🔮

1. **Möglichkeit hinzufügen, Rices im gesamten PC‑Flow einfach zu wechseln (Rices für GRUB‑Boot‑Screens, rEFInd, Login‑Screen).**

2. **Unterstützung weiterer populärer Window‑Manager (Verwaltung von Rices, Konfigurationen, Plugins).**

3. **Fähigkeit, Rices zwischen verschiedenen Window‑Managern zu konvertieren/zu mappen (Modul für ein System gleichwertiger Parameter), Installations‑ und Anwendepakete zwischen verschiedenen Distributionen zu konvertieren.**

4. **Mechanismus zur Unterstützung der Abwärtskompatibilität für alte Rices und solche, die alt werden (Modul für ein System gleichwertiger Parameter).**

5. **Bewertungen für Rices integrieren, indem externe APIs (reddit, git) gelesen/aktualisiert werden + mögliches internes Bewertungs‑ und Autor‑Motivationssystem.**

6. **Allgemeine Programmverbesserungen: Drag‑and‑Drop auf Theme‑Elementen, Gruppierung und Filterung von Rices nach Tags, Paginierung von Netzwerkelementen usw.**

7. **Experimentelle Funktionen zur Validierung des praktischen Nutzens von Rices: Anwenden nach aktuellem Arbeitsmodus, Anwenden nach Kontext des ausgewählten Fensters.**

8. **KI‑Generierung von Umgebungen/Rices — ein großes Modul, das die Generierung der Umgebung auf Basis von Prompts oder des Handlungskontexts ermöglicht.**

**Außerdem wird in naher Zukunft erwogen, den Code vollständig zu öffnen und Pull‑Requests in Git zu akzeptieren.**

---
✅ Getestet auf Hyprland + Arch
