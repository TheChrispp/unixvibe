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

**Capa de interfaz dinámica: una nueva abstracción sobre el entorno de escritorio que permite controlar el entorno en distintos niveles y transformarlo al instante.**

<img width="1682" height="1398" alt="image" src="https://github.com/user-attachments/assets/4cf0f645-6f5c-4db9-9ab8-2c8e3aef5bac" />

---

## Instalación 📦

1. **Clonar el repositorio:**
```bash
git clone https://github.com/Litesav-L/unixvibe.git
cd unixvibe
```
2. **Ejecutar el script de instalación:**
```bash
./install.sh
```
**Dependencias:**  
Todas las dependencias necesarias se instalan automáticamente mediante el script `install.sh`: **sww + yad + webkit2gtk**

## Rices adaptados de inicio (si el servidor está temporalmente no disponible)
https://drive.google.com/file/d/1OEnQnXGsMM4Hn7oMiFKOpse70jhFeQdT/view?usp=sharing

1. Descarga el archivo desde el enlace anterior y descomprímelo  
2. Pulsa “+” en la barra inferior de botones para la importación local  
3. Ve al directorio del rice en el gestor de archivos → Abrir

---

## Funciones 💡

1. **Cambio de rice con un clic.**  
   Permite alternar entre los rices preinstalados de la lista. El tiempo medio de aplicación por clic es de ~2 segundos y se reducirá con cada nueva versión.

2. **Instalar rices desde Internet / instalación local desde el sistema de archivos.**  
   Importación de rices directamente a través de la pestaña en línea.

3. **Intercambio de rices.**  
   Carga de tus propios rices (dotfiles) al servidor para acceso público.
4. **Posibilidad de editar/eliminar el rice subido desde la GUI.**
5. **Visualización del repositorio de configuración (rice) y de las distribuciones compatibles; sincronización básica con git de la información principal.**
6. **Gestión de configuraciones a través de la interfaz gráfica.**
7. **Gestión de plugins a través de la interfaz; añadir repositorios de plugins; añadir parámetros personalizados al plugin; compatibilidad con distintos tipos de parámetros (p. ej., selector de color).**
8. **Corrección de estados temporales problemáticos de los gestores de ventanas en mosaico compatibles.**
9. **Guardado y restauración de los estados del entorno externo.**
10. **Comprobación de seguridad de los scripts de los rices antes de ejecutarlos. Inicialización de reglas de seguridad propias.**
11. **Aislamiento de dependencias de los rices en dos niveles: estándar + sistema controlado de prefijos (beta). Si se encuentran symlinks en el script del rice, se reconocen, se da prioridad a los symlinks y el mecanismo estándar se desactiva.**

12. **Configuración de la animación de cambio de rice (temporalmente se utiliza la dependencia `sww`).**  
   Posibilidad de cambiar los parámetros de animación en la GUI (tipo de animación, FPS, duración, ángulo de onda).

13. **Parámetros adicionales:**  
   - Aplicación automática del rice tras el arranque (opcional)  
   - Mantener o cerrar la ventana de la lista de rices tras la selección (útil para una vista rápida de varios rices)  
   - Activar el registro del tiempo de aplicación/instalación

14. **Soporte multilingüe:**  
   Actualmente se admiten 4 idiomas.

15. **Parámetros de Unixvibe**  
    - Cambio del tema de la interfaz,  
    - Control básico del sonido

---

## Información de referencia 📚

### Adaptación de un rice existente / creación de uno nuevo 🎨

En las primeras versiones, el programa requerirá temporalmente respetar la siguiente estructura del rice:

Estructura mínima aceptable
```text
RICE_NAME/
├── preview.png
├── wallpaper.png
├── hyprland.conf
├── hyprland/
│   ├── unixvibe.conf
└── start-scripts/
    ├── install_theme_apps.sh (opcional)
    └── set_after_install_actions.sh
├── config/ (opcional)
```

La estructura completa recomendada del rice debe tener el siguiente aspecto:
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
    ├── install_theme_apps.sh (opcional)
    └── set_after_install_actions.sh
├── config/ (opcional)
```

`preview.png` — imagen mostrada al usuario en la lista de rices  
`wallpaper.png` — fondo de escritorio predeterminado

`hyprland.conf` — contiene referencias a los archivos de configuración de Hyprland (también es posible indicar parámetros directos sin enlaces); los archivos relacionados con esta configuración deben ubicarse en `hyprland/`  
`unixvibe.conf` — archivo de configuración del programa que garantiza un control coherente al cambiar de rices, oculta los terminales auxiliares durante el cambio y establece los atributos de visibilidad necesarios para la ventana del programa

`start-scripts/`  
- `install_theme_apps.sh` — script de instalación de aplicaciones complementarias; se ejecuta solo en la primera instalación del rice  
- `set_after_install_actions.sh` — script de inicio de aplicaciones complementarias; se ejecuta cada vez que se aplica el rice

`config/` — directorio con configuraciones de las aplicaciones complementarias

Para una comprensión sencilla, puedes consultar los rices preinstalados en la sección de red de unixvibe o el conjunto de rices en un archivo aparte: se basa en la práctica popular de distribuir la responsabilidad en los 7 archivos indicados con referencias dinámicas en `hyperland.conf`.

---
En versiones futuras no será necesario respetar ninguna estructura (se podrá importar cualquier rice antiguo y será compatible), y los rices que ya la respeten mantendrán la compatibilidad retroactiva. A medida que se lancen nuevas versiones y se abra el código del programa, la responsabilidad se desplazará de los scripts de los rices hacia el propio programa. Actualmente, unixvibe contiene mucha lógica relacionada con el cambio rápido de rices, soluciones en tiempo real para incompatibilidades entre versiones de aplicaciones que acompañan al rice, así como lógica que resuelve otros problemas con los que se encuentran a menudo los usuarios experimentados. Los scripts de los rices son responsables de instalar la lista de aplicaciones complementarias y de iniciarlas, proporcionando al usuario una comprensión y transparencia completas de todas las acciones realizadas en el sistema (y, si no desea revisarlas, el propio programa detectará comandos potencialmente peligrosos y no permitirá que el script se ejecute sin su consentimiento).

---

## Planes 🔮

1. **Añadir la posibilidad de cambiar los rices fácilmente en todo el flujo del PC (rices de pantallas de arranque de GRUB, rEFInd, rices de la pantalla de inicio de sesión).**

2. **Compatibilidad con otros gestores de ventanas populares (gestión de rices, configuraciones, plugins).**

3. **Posibilidad de convertir/mapear rices entre distintos gestores de ventanas (módulo del sistema de parámetros equivalentes), conversión de paquetes de instalación y aplicación entre distintas distribuciones.**

4. **Mecanismo de compatibilidad retroactiva para rices antiguos y los que se vuelvan antiguos (módulo del sistema de parámetros equivalentes).**

5. **Integración de un sistema de puntuación para rices leyendo/actualizando APIs externas (reddit, git) + posible sistema interno de puntuación y motivación de autores.**

6. **Mejoras generales del programa: arrastrar y soltar en elementos del tema, agrupación y filtrado de rices por etiquetas, paginación de elementos de la red, etc.**

7. **Funciones experimentales para comprobar la utilidad práctica de los rices: aplicación según el modo de trabajo actual, aplicación según el contexto de la ventana seleccionada.**

8. **Generación con IA de entornos/rices: un módulo amplio que permite generar el entorno a partir de prompts o del contexto de acciones.**

**También se está considerando abrir completamente el código en un futuro cercano y estar listos para aceptar cambios en git.**

---
✅ Probado en Hyprland + AGS, Arch
