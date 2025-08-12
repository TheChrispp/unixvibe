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

**Couche d’interface dynamique — une nouvelle abstraction au‑dessus de l’environnement de bureau, permettant de contrôler l’environnement à plusieurs niveaux et de le transformer instantanément.**

<img width="1682" height="1398" alt="image" src="https://github.com/user-attachments/assets/4cf0f645-6f5c-4db9-9ab8-2c8e3aef5bac" />

---

## Installation 📦

1. **Cloner le dépôt :**
```bash
git clone https://github.com/Litesav-L/unixvibe.git
cd unixvibe
```
2. **Lancer le script d’installation :**
```bash
./install.sh
```
**Dépendances :**  
Toutes les dépendances requises sont installées automatiquement par le script `install.sh` — à savoir : **sww + yad + webkit2gtk**

## Rices de départ adaptés (si le serveur est temporairement indisponible)
https://drive.google.com/file/d/1OEnQnXGsMM4Hn7oMiFKOpse70jhFeQdT/view?usp=sharing

1. Télécharger l’archive via le lien ci‑dessus et l’extraire  
2. Cliquer sur « + » dans la barre de boutons inférieure pour un import local  
3. Aller dans le répertoire du rice dans le gestionnaire de fichiers → Ouvrir

---

## Fonctionnalités 💡

1. **Changement de rice en un clic.**  
   Permet de basculer entre les rices préinstallés de la liste. Le temps moyen d’application au clic est d’environ ~2 secondes et diminuera avec chaque nouvelle version.

2. **Installer des rices depuis Internet / installation locale depuis le système de fichiers.**  
   Import direct des rices via l’onglet en ligne.

3. **Partage de rices.**  
   Téléversement de vos propres rices (dotfiles) sur le serveur pour un accès public.
4. **Possibilité d’éditer/supprimer le rice téléversé depuis l’interface graphique.**
5. **Affichage du dépôt de configuration (rice) et des distributions prises en charge ; synchronisation git de base des informations principales.**
6. **Gestion des configurations via l’interface graphique.**
7. **Gestion des plugins via l’interface ; ajout de dépôts de plugins ; ajout de paramètres personnalisés au plugin ; prise en charge de différents types de paramètres (sélecteur de couleur, etc.).**
8. **Correction des états temporaires problématiques des gestionnaires de fenêtres en mosaïque pris en charge.**
9. **Sauvegarde et restauration des états de l’environnement externe.**
10. **Vérification de la sécurité des scripts de rices avant exécution. Initialisation de règles de sécurité personnalisées.**
11. **Isolation des dépendances des rices sur deux niveaux : standard + système de préfixes contrôlé (bêta). Si des symlinks sont détectés dans le script du rice, ils sont reconnus, les symlinks ont la priorité et le mécanisme standard est désactivé.**

12. **Configuration de l’animation de changement de rice (la dépendance `sww` est utilisée temporairement).**  
   Possibilité de modifier les paramètres d’animation dans l’interface (type d’animation, FPS, durée, angle de l’onde).

13. **Options supplémentaires :**  
   - Application automatique du rice après le démarrage (optionnel)  
   - Laisser ouverte ou fermer la fenêtre de la liste des rices après sélection (pratique pour parcourir rapidement plusieurs rices)  
   - Activer la journalisation du temps d’application/installation

14. **Prise en charge multilingue :**  
   4 langues prises en charge actuellement.

15. **Paramètres Unixvibe**  
    - Changement du thème de l’interface,  
    - Contrôle sonore de base

---

## Informations de référence 📚

### Adapter un rice existant / en créer un nouveau 🎨

Dans les premières versions, le programme exigera temporairement de respecter la structure du rice :

Structure minimale acceptable
```text
RICE_NAME/
├── preview.png
├── wallpaper.png
├── hyprland.conf
├── hyprland/
│   ├── unixvibe.conf
└── start-scripts/
    ├── install_theme_apps.sh (optionnel)
    └── set_after_install_actions.sh
├── config/ (optionnel)
```

Structure complète recommandée du rice :
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
    ├── install_theme_apps.sh (optionnel)
    └── set_after_install_actions.sh
├── config/ (optionnel)
```

`preview.png` — image affichée à l’utilisateur dans la liste des rices  
`wallpaper.png` — fond d’écran par défaut

`hyprland.conf` — contient des références aux fichiers de configuration pour Hyprland (paramètres directs sans liens possibles) ; les fichiers associés doivent se trouver dans `hyprland/`  
`unixvibe.conf` — fichier de configuration du programme garantissant un contrôle cohérent lors du changement de rices, masquant les terminaux auxiliaires pendant l’opération et définissant les attributs de visibilité requis pour la fenêtre du programme

`start-scripts/`  
- `install_theme_apps.sh` — script d’installation des applications associées ; s’exécute uniquement lors de la première installation du rice  
- `set_after_install_actions.sh` — script de lancement des applications associées ; s’exécute à chaque application du rice

`config/` — répertoire contenant les configurations des applications associées

Pour une compréhension rapide, vous pouvez consulter les rices préinstallés dans la section réseau de unixvibe ou l’archive distincte de rices — fondée sur la pratique répandue consistant à répartir la responsabilité sur les 7 fichiers indiqués avec des références dynamiques dans `hyperland.conf`.

---
Dans les versions futures, il ne sera plus nécessaire de respecter une structure (vous pourrez importer n’importe quel ancien rice et il sera pris en charge), et les rices qui la respectent déjà conserveront la rétro‑compatibilité. Au fil des versions et de l’ouverture du code, la responsabilité se déplacera des scripts de rices vers le programme. Actuellement, unixvibe contient déjà beaucoup de logique pour un changement rapide de rices, des solutions à la volée pour les incompatibilités entre versions d’applications associées au rice, ainsi qu’une logique qui résout d’autres problèmes fréquemment rencontrés par les utilisateurs expérimentés. Les scripts des rices sont responsables de l’installation et du lancement des applications associées, offrant à l’utilisateur une compréhension et une transparence complètes de toutes les actions effectuées dans le système (et, si vous ne souhaitez pas les examiner, le programme détectera les commandes potentiellement dangereuses et n’autorisera pas l’exécution du script sans votre consentement).

---

## Feuille de route 🔮

1. **Ajouter la possibilité de changer facilement de rices sur l’ensemble du flux PC (rices des écrans de démarrage GRUB, rEFInd, rices de l’écran de connexion).**

2. **Prise en charge d’autres gestionnaires de fenêtres populaires (gestion des rices, des configurations et des plugins).**

3. **Possibilité de conversion/mappage des rices entre différents gestionnaires de fenêtres (module de système de paramètres équivalents), conversion des paquets d’installation et d’application entre différentes distributions.**

4. **Mécanisme de compatibilité ascendante pour les anciens rices et ceux qui le deviendront (module de système de paramètres équivalents).**

5. **Intégration d’un système de notation pour les rices en lisant/misant à jour des API externes (reddit, git) + éventuel système interne de notation et de motivation des auteurs.**

6. **Améliorations générales du programme : glisser‑déposer sur les éléments du thème, regroupement et filtrage des rices par tags, pagination des éléments réseau, etc.**

7. **Fonctionnalités expérimentales pour valider l’utilité pratique des rices : application selon le mode de travail courant, application selon le contexte de la fenêtre sélectionnée.**

8. **Génération d’environnements/rices par IA — un module important permettant de générer l’environnement à partir de prompts ou du contexte des actions.**

**Est également envisagée l’ouverture complète du code dans un avenir proche et l’acceptation de contributions via git.**

---
✅ Testé sur Hyprland + AGS, Arch
