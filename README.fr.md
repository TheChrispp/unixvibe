<div align="center">
  <img src="https://github.com/user-attachments/assets/629c2d23-4319-4566-9973-784a6291093d" width="50%" height="320" style="object-fit:cover;" alt="Bannière Unixvibe" />
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

**Une couche d’interface dynamique — une nouvelle abstraction au‑dessus de l’environnement de bureau qui vous permet de contrôler l’environnement à plusieurs niveaux et de le transformer instantanément.**

<p align="center">
<img src="https://github.com/user-attachments/assets/6cce4101-8635-4d05-9522-dca663bcdffc" width="800" alt="image">
</p>

## Installation 📦

1. **Cloner le dépôt :**
```bash
git clone https://github.com/Litesav-L/unixvibe.git
cd unixvibe
```
2. **Exécuter le script d’installation :**
```bash
./install.sh
```
**Dépendances :**  
Toutes les dépendances nécessaires sont installées automatiquement par le script `install.sh` — à savoir : **swww + yad + webkit2gtk**

## Rices de démarrage adaptés (si le serveur est temporairement indisponible)
https://drive.google.com/file/d/1OEnQnXGsMM4Hn7oMiFKOpse70jhFeQdT/view?usp=sharing

1. Téléchargez l’archive via le lien ci‑dessus et extrayez‑la
2. Cliquez sur « + » dans la barre inférieure pour l’import local
3. Accédez au répertoire du rice dans votre gestionnaire de fichiers → Ouvrir

---

## Fonctionnalités 💡

1. **Changement de rice en un clic.**  
   Basculez entre les rices préinstallés de la liste. Le temps moyen d’application au clic est d’environ 2 secondes et diminuera à chaque nouvelle version.

2. **Installer des rices depuis Internet / installation locale depuis le système de fichiers.**  
   Importez des rices directement via l’onglet en ligne.

3. **Partage de rices.**  
   Téléversez vos propres rices (dotfiles) sur le serveur pour un accès public.
4. **Possibilité de modifier/supprimer le rice que vous avez téléversé depuis la GUI.**
5. **Voir le dépôt de configuration (rice) et les distributions prises en charge ; synchronisation git de base des informations principales.**
6. **Gérer les configurations via l’interface graphique (GUI).**
7. **Gérer les plugins via la GUI ; ajouter des dépôts de plugins ; ajouter des paramètres personnalisés à un plugin ; prise en charge de différents types de paramètres (p. ex., sélecteur de couleur).**
8. **Corriger les états temporaires problématiques des gestionnaires de fenêtres en tuiles pris en charge.**
9. **Sauvegarder et restaurer les états de l’environnement externe.**
10. **Vérification de sécurité des scripts de rice avant exécution. Initialisation de règles de sécurité personnalisées.**
11. **Isolation à deux niveaux des dépendances du rice : standard + système de préfixes contrôlé (bêta). Si des liens symboliques sont trouvés dans un script de rice, ils sont reconnus, les liens symboliques ont la priorité et le mécanisme standard est désactivé.**

12. **Configurer l’animation de basculement de rice (utilise temporairement la dépendance `swww`).**  
   Possibilité de modifier les paramètres d’animation dans la GUI (type d’animation, FPS, durée, angle d’onde).

13. **Options supplémentaires :**  
   - Application automatique d’un rice après le démarrage (optionnel)  
   - Conserver ou fermer la fenêtre de la liste des rices après la sélection (utile pour parcourir rapidement plusieurs rices)  
   - Activer la journalisation du temps d’application/installation

14. **Prise en charge multilingue :**  
   4 langues sont actuellement prises en charge.

15. **Paramètres Unixvibe**  
    - Changer le thème de l’interface  
    - Contrôle sonore de base


## Standard de rice 🎨
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

La carte du rice est l’un des pop‑ups clés, qui s’enrichira à mesure que de nouvelles versions seront publiées.  
À l’heure actuelle, un rice doit inclure :  
- Aperçu (512x512, 1024x1024)
- Un lien vers le dépôt  
- L’auteur (l’avatar sera automatiquement extrait de Git)  
- L’auteur de l’adaptation (optionnel)  
- Des tags (optionnel)  
- Une catégorie de fonctionnalité (optionnel, multiples autorisées)  
- Des informations sur les distributions prises en charge (optionnel — si non spécifié, le programme générera la liste automatiquement à partir du script)  

À l’avenir, la conversion automatique entre distributions et gestionnaires de fenêtres en tuiles sera également disponible ici, ainsi qu’un système de notation (plus de détails dans la feuille de route).


## Adapter un rice existant / en créer un nouveau 🎨

Dans les premières versions, le programme exigera temporairement le respect de la structure du rice :

Structure minimale acceptable (si Hyprland ; pour d’autres gestionnaires en tuiles, la structure sera différente)
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

La structure complète recommandée d’un rice devrait ressembler à ceci :
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

`preview.png` — image affichée à l’utilisateur dans la liste des rices  
`wallpaper.png` — fond d’écran par défaut

`hyprland.conf` — contient des références aux fichiers de configuration pour Hyprland (des paramètres directs sans liens sont aussi possibles) ; les fichiers liés à cette configuration doivent être placés dans `hyprland/`  
`unixvibe.conf` — fichier de configuration du programme qui garantit un contrôle cohérent lors du changement de rice, masque les terminaux auxiliaires pendant le basculement et définit les attributs de visibilité requis pour la fenêtre du programme

`start-scripts/`  
- `install_theme_apps.sh` — script qui installe les applications d’accompagnement ; s’exécute uniquement lors de la première installation d’un rice  
- `set_after_install_actions.sh` — script qui lance les applications d’accompagnement ; s’exécute à chaque fois qu’un rice est appliqué

`config/` — répertoire contenant les fichiers de configuration des applications d’accompagnement

Pour une compréhension simple, vous pouvez consulter les rices prédéfinis dans la section réseau d’unixvibe ou l’ensemble de rices dans une archive séparée : il est basé sur la meilleure pratique populaire consistant à répartir la responsabilité entre les 7 fichiers indiqués avec des liens dynamiques dans `hyprland.conf`.

---
Dans les versions futures, il ne sera plus nécessaire de respecter une structure de rice (vous pourrez importer n’importe quel ancien rice et il sera pris en charge), et les rices qui la respectent déjà conserveront la compatibilité rétroactive. Il est également prévu, au fil des versions et de l’ouverture du code du programme, de transférer la responsabilité des scripts de rice vers le programme lui‑même. Actuellement, unixvibe contient beaucoup de logique liée au changement rapide de rices, des solutions à la volée pour les incompatibilités entre versions d’applications accompagnant le rice, ainsi que de la logique qui résout d’autres problèmes souvent rencontrés par les utilisateurs expérimentés. Les scripts de rices sont responsables de l’installation de la liste des applications d’accompagnement et de leur lancement, afin d’offrir à l’utilisateur une compréhension complète et la transparence de toutes les actions effectuées sur le système (et si vous ne souhaitez pas les examiner, le programme déterminera lui‑même les commandes potentiellement dangereuses et n’autorisera pas l’exécution du script sans votre consentement).



## Feuille de route 🔮

1. **Ajouter la possibilité de basculer facilement les rices sur l’ensemble du flux PC (rices pour les écrans de démarrage GRUB, rEFInd, écran de connexion).**

2. **Prise en charge d’autres gestionnaires de fenêtres populaires (gestion des rices, configurations, plugins).**

3. **Possibilité de convertir/faire correspondre des rices entre différents gestionnaires de fenêtres (module de système de paramètres équivalents), convertir les paquets d’installation et d’application entre différentes distributions.**

4. **Mécanisme pour prendre en charge la compatibilité rétroactive des anciens rices et de ceux qui deviendront anciens (module de système de paramètres équivalents).**

5. **Intégrer des évaluations de rices en lisant et en mettant à jour des API externes (reddit, git) + un éventuel système interne de notation et de motivation des auteurs.**

6. **Améliorations générales du programme : glisser‑déposer sur les éléments de thème, regroupement et filtrage des rices par tags, pagination des éléments réseau, etc.**

7. **Fonctionnalités expérimentales pour valider l’utilité pratique des rices : appliquer selon le mode de travail actuel, appliquer selon le contexte de la fenêtre sélectionnée.**

8. **Génération d’environnements/rices par IA — un grand module qui permet de générer l’environnement à partir de prompts ou du contexte des actions.**

**J’envisage également d’ouvrir entièrement le code prochainement et d’être prêt à accepter des modifications dans git.**

---
✅ Testé sur Hyprland + Arch
