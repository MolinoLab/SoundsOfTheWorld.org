# Sounds of the World

Un mapa interactivo creado para compartir la riqueza sonora de nuestro planeta. Descubre diferentes variedades de sonidos, desde lugares cercanos y remotos: sonidos de la naturaleza, música, paisajes sonoros, oraciones y poemas.

## 🌍 Descripción

Sounds of the World es una aplicación web que presenta un mapa interactivo del mundo donde los usuarios pueden explorar grabaciones de audio de diferentes lugares del planeta. Cada punto en el mapa representa un sonido único con información sobre su ubicación, fecha, autor y descripción.

## 🚀 Características

- **Mapa interactivo**: Visualización de sonidos en un mapa mundial usando Mapbox GL JS
- **Categorías de sonidos**:
  - 🎵 **Street Music**: Música callejera de diferentes culturas
  - 🌿 **Nature Sounds**: Sonidos de la naturaleza
  - 🏙️ **Soundscapes**: Paisajes sonoros urbanos y rurales
  - 🙏 **People Praying**: Grabaciones de personas orando
  - 📝 **Poems**: Poemas en diferentes idiomas y ubicaciones
- **Reproducción de audio**: Integración con SoundCloud para reproducir los sonidos
- **Tarjetas de sonido**: Páginas individuales para cada sonido con información detallada
- **Diseño responsive**: Adaptado para diferentes tamaños de pantalla

## 📁 Estructura del Proyecto

```
SoundsOfTheWorld.org/
├── index.html              # Página principal del mapa
├── indexLayers.html        # Versión alternativa con capas
├── sound-cards.php         # Página dinámica para tarjetas de sonido individuales
├── includes/
│   └── conn.php           # Configuración de conexión a base de datos
├── geojson/               # Archivos GeoJSON con datos de los puntos del mapa
│   ├── sounds_of_the_world.geojson
│   ├── Street music.geojson
│   ├── Nature.geojson
│   ├── Soundscapes.geojson
│   └── People praying.geojson
├── css/
│   └── sotw.css          # Estilos principales
├── js/
│   ├── sotw.js           # JavaScript principal
│   ├── sotwP5.js         # Integración con p5.js
│   └── p5.min.js         # Librería p5.js
├── img/                  # Imágenes y logos
├── cards/                # Imágenes de las tarjetas de sonido
└── soundsoftheworld.sql  # Esquema de base de datos MySQL
```

## 🛠️ Tecnologías Utilizadas

- **Frontend**:
  - HTML5
  - CSS3 (con media queries para responsive design)
  - JavaScript (ES5)
  - Mapbox GL JS v1.5.0
  - jQuery 3.4.1

- **Backend**:
  - PHP
  - MySQL/MariaDB

- **Servicios Externos**:
  - Mapbox (para el mapa)
  - SoundCloud (para la reproducción de audio)
  - YouTube (para videos embebidos)

## 📋 Requisitos

- Servidor web con PHP (versión 7.4 o superior recomendada)
- Base de datos MySQL/MariaDB (opcional, ver sección de optimización)
- Acceso a internet para cargar recursos de Mapbox y SoundCloud

## 🔧 Instalación

1. Clona o descarga este repositorio
2. Configura un servidor web (Apache, Nginx, etc.)
3. Si usas la base de datos MySQL:
   - Importa el archivo `soundsoftheworld.sql` en tu base de datos
   - Configura las credenciales en `includes/conn.php`
4. Configura el token de acceso de Mapbox en los archivos HTML (actualmente hardcodeado)
5. Asegúrate de que los archivos GeoJSON estén accesibles

## 🔑 Configuración

### Mapbox Access Token

El token de Mapbox está actualmente hardcodeado en los archivos HTML. Para mayor seguridad, considera moverlo a variables de entorno o un archivo de configuración.

### Base de Datos

Las credenciales de la base de datos están en `includes/conn.php`. **IMPORTANTE**: Cambia estas credenciales antes de desplegar en producción.

```php
$link = mysqli_connect("localhost", "usuario", "contraseña");
mysqli_select_db($link, "nombre_base_datos");
```

## 📝 Uso

1. Abre `index.html` en tu navegador o servidor web
2. Explora el mapa haciendo clic en los puntos de sonido
3. Cada punto muestra un popup con información y un reproductor de SoundCloud
4. Algunos sonidos tienen páginas individuales accesibles a través de `sound-cards.php?p=nombre_tarjeta`

## 🎨 Personalización

- **Estilos**: Modifica `css/sotw.css` para cambiar el diseño
- **Datos del mapa**: Edita los archivos GeoJSON en `geojson/` para agregar o modificar puntos
- **Tarjetas de sonido**: Los datos se pueden gestionar desde la base de datos o migrar a archivos estáticos (ver archivo de optimización)

## 📄 Licencia

Proyecto creado por [b1tdreamer](http://b1tdreamer.me) bajo licencia Creative Commons.

## 👤 Autor

**b1tdreamer**
- Website: [b1tdreamer.me](http://b1tdreamer.me)
- Instagram: [@_soundsoftheworld_](https://instagram.com/_soundsoftheworld_)
- SoundCloud: [soundsoftheworld](https://soundcloud.com/soundsoftheworld)

## 🔮 Mejoras Futuras

Ver el archivo `optimización y mejoras.md` para propuestas de optimización y mejoras del proyecto.

## ⚠️ Notas de Seguridad

- Las credenciales de la base de datos están expuestas en el código. **NUNCA** subas archivos con credenciales reales a repositorios públicos.
- Considera usar variables de entorno o archivos de configuración fuera del directorio web para credenciales.
- El código PHP usa `mysqli_real_escape_string` pero podría beneficiarse de consultas preparadas para mayor seguridad.

