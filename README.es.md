<div align="center">
  <img src="https://github.com/user-attachments/assets/629c2d23-4319-4566-9973-784a6291093d" width="50%" height="320" style="object-fit:cover;" alt="Unixvibe banner" />
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

**Una capa de interfaz dinámica: una nueva abstracción por encima del entorno de escritorio que te permite controlar el entorno en varios niveles y transformarlo al instante.**

<p align="center">
<img src="https://github.com/user-attachments/assets/6cce4101-8635-4d05-9522-dca663bcdffc" width="800" alt="image">
</p>

## Instalación 📦

1. **Clona el repositorio:**
```bash
git clone https://github.com/Litesav-L/unixvibe.git
cd unixvibe
```
2. **Ejecuta el script de instalación:**
```bash
./install.sh
```
**Dependencias:**  
Todas las dependencias necesarias se instalan automáticamente mediante el script `install.sh`: **swww + yad + webkit2gtk**

## Rices de inicio adaptados (si el servidor no está disponible temporalmente)
https://drive.google.com/file/d/1OEnQnXGsMM4Hn7oMiFKOpse70jhFeQdT/view?usp=sharing

1. Descarga el archivo del enlace anterior y extráelo
2. Pulsa “+” en la barra inferior para la importación local
3. Navega hasta el directorio del rice en tu gestor de archivos → Abrir

---

## Funcionalidades 💡

1. **Cambio de rice con un clic.**  
   Cambia entre rices preinstalados de la lista. El tiempo medio de aplicación por clic es de ~2 segundos y disminuirá con cada nueva versión.

2. **Instalar rices desde Internet / instalación local desde el sistema de archivos.**  
   Importa rices directamente mediante la pestaña en línea.

3. **Compartir rices.**  
   Sube tus propios rices (dotfiles) al servidor para acceso público.
4. **Posibilidad de editar/eliminar el rice que subiste desde la GUI.**
5. **Ver el repositorio de configuración (rice) y las distribuciones compatibles; sincronización git básica de la información principal.**
6. **Gestionar configuraciones desde la interfaz gráfica (GUI).**
7. **Gestionar plugins desde la GUI; añadir repositorios de plugins; añadir parámetros personalizados a un plugin; soporte para diferentes tipos de parámetros (p. ej., selector de color).**
8. **Corregir estados temporales problemáticos de los administradores de ventanas en mosaico compatibles.**
9. **Guardar y restaurar estados del entorno externo.**
10. **Comprobación de seguridad de los scripts del rice antes de la ejecución. Inicialización de reglas de seguridad personalizadas.**
11. **Aislamiento en dos niveles de las dependencias del rice: estándar + sistema de prefijos controlado (beta). Si se encuentran enlaces simbólicos en un script del rice, se reconocen, los enlaces simbólicos tienen prioridad y el mecanismo estándar se desactiva.**

12. **Configurar la animación de cambio de rice (usa temporalmente la dependencia `swww`).**  
   Posibilidad de cambiar los parámetros de animación en la GUI (tipo de animación, FPS, duración, ángulo de onda).

13. **Opciones adicionales:**  
   - Aplicar un rice automáticamente tras el arranque (opcional)  
   - Mantener o cerrar la ventana de la lista de rices después de la selección (útil para revisar rápidamente varios rices)  
   - Habilitar el registro del tiempo de aplicación/instalación

14. **Soporte multilingüe:**  
   Actualmente se admiten 4 idiomas.

15. **Parámetros de Unixvibe**  
    - Cambiar el tema de la interfaz  
    - Control básico del sonido


## Estándar de rice 🎨
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

La tarjeta del rice es una de las ventanas emergentes clave, que se ampliará a medida que se publiquen nuevas versiones.  
Por el momento, un rice debe incluir:  
- Previsualización (512x512, 1024x1024)
- Un enlace al repositorio  
- El autor (el avatar se extraerá automáticamente de Git)  
- El autor de la adaptación (opcional)  
- Etiquetas (opcional)  
- Una categoría de funcionalidad (opcional, se permiten múltiples)  
- Información sobre las distribuciones compatibles (opcional; si no se especifica, el programa generará la lista automáticamente en función del script)  

En el futuro, aquí también estarán disponibles la conversión automática entre distribuciones y administradores de ventanas en mosaico, junto con un sistema de calificaciones (más detalles en la hoja de ruta).


## Adaptar un rice existente / crear uno nuevo 🎨

En las primeras versiones, el programa requerirá temporalmente seguir la estructura del rice:

Estructura mínima aceptable (si es Hyprland; para otros administradores de ventanas la estructura será diferente)
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

La estructura completa recomendada de un rice debería verse así:
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

`preview.png` — imagen mostrada al usuario en la lista de rices  
`wallpaper.png` — fondo de pantalla de escritorio por defecto

`hyprland.conf` — contiene referencias a los archivos de configuración para Hyprland (también son posibles parámetros directos sin enlaces); los archivos relativos a esta configuración deben colocarse en `hyprland/`  
`unixvibe.conf` — archivo de configuración del programa que garantiza un control coherente al cambiar de rices, oculta terminales auxiliares durante el cambio y establece los atributos de visibilidad necesarios para la ventana del programa

`start-scripts/`  
- `install_theme_apps.sh` — script que instala aplicaciones complementarias; se ejecuta solo en la primera instalación de un rice  
- `set_after_install_actions.sh` — script que lanza aplicaciones complementarias; se ejecuta cada vez que se aplica un rice

`config/` — directorio con archivos de configuración de aplicaciones complementarias

Para una comprensión sencilla, puedes mirar los rices predefinidos en la sección de red de unixvibe o el conjunto de rices en un archivo separado: se basa en la mejor y más popular práctica de distribuir la responsabilidad entre los 7 archivos especificados con enlaces dinámicos en `hyprland.conf`.

---
En versiones futuras no será necesario seguir una estructura de rice (podrás importar cualquier rice antiguo y será compatible), y los rices que ya la sigan mantendrán compatibilidad retroactiva. También está previsto, a medida que se publiquen nuevas versiones y se abra el código del programa, trasladar la responsabilidad de los scripts de los rices hacia el propio programa. Actualmente, unixvibe contiene mucha lógica relacionada con el cambio rápido de rices, soluciones sobre la marcha para incompatibilidades entre versiones individuales de las aplicaciones que acompañan al rice, así como lógica que resuelve otros problemas que suelen encontrar los usuarios experimentados. Los scripts de los rices son responsables de instalar la lista de aplicaciones complementarias y de lanzarlas, para dar al usuario una comprensión completa y transparencia de todas las acciones realizadas en el sistema (y si no te apetece revisarlas, el propio programa determinará los comandos potencialmente peligrosos y no permitirá ejecutar el script sin el consentimiento del usuario).



## Hoja de ruta 🔮

1. **Añadir la posibilidad de cambiar fácilmente los rices en todo el flujo del PC (rices para pantallas de arranque GRUB, rEFInd, pantalla de inicio de sesión).**

2. **Soporte para otros administradores de ventanas populares (gestión de rices, configuraciones, plugins).**

3. **Capacidad para convertir/mapear rices entre diferentes administradores de ventanas (módulo de sistema de parámetros equivalentes), convertir paquetes de instalación y de aplicación entre diferentes distribuciones.**

4. **Mecanismo para soportar compatibilidad retroactiva para rices antiguos y los que eventualmente se volverán antiguos (módulo de sistema de parámetros equivalentes).**

5. **Integrar valoraciones de rices leyendo y actualizando APIs externas (reddit, git) + un posible sistema interno de calificación y motivación de autores.**

6. **Mejoras generales del programa: arrastrar y soltar en elementos del tema, agrupar y filtrar rices por etiquetas, paginación de elementos de red, etc.**

7. **Funciones experimentales para validar la utilidad práctica de los rices: aplicar por modo de trabajo actual, aplicar por contexto de la ventana seleccionada.**

8. **Generación de entornos/rices mediante IA: un gran módulo que permite generar el entorno en función de prompts o del contexto de acciones.**

**También estoy considerando abrir completamente el código en un futuro próximo y estar listo para aceptar cambios en git.**

---
✅ Probado en Hyprland + Arch
