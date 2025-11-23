# Migración a Solución Sin PHP

Esta guía explica cómo migrar de PHP+MySQL a una solución completamente estática con HTML+JavaScript+JSON, perfecta para Nginx en Docker.

## ✅ Archivos Creados

1. **`data/cards.json`** - Contiene todos los datos de las tarjetas (8 registros)
2. **`sound-card.html`** - HTML estático que carga y muestra las tarjetas
3. **`nginx.conf.example`** - Configuración de Nginx con rewrite rules

## 🚀 Pasos de Migración

### 1. Verificar archivos creados

Asegúrate de que estos archivos existen:
- `data/cards.json`
- `sound-card.html`
- `nginx.conf.example`

### 2. Configurar Nginx

Copia la configuración de `nginx.conf.example` a tu configuración de Nginx en Docker.

**Si usas docker-compose.yml**, agrega:

```yaml
services:
  nginx:
    image: nginx:alpine
    volumes:
      - ./:/usr/share/nginx/html:ro
      - ./nginx.conf:/etc/nginx/conf.d/default.conf:ro
    ports:
      - "80:80"
```

**O si ya tienes Nginx configurado**, agrega estas líneas a tu configuración:

```nginx
# Rewrite para mantener URLs amigables
location ~ ^/sound-cards/(.+)$ {
    rewrite ^/sound-cards/(.+)$ /sound-card.html?p=$1 last;
}
```

### 3. Probar localmente

1. Inicia tu contenedor Docker con Nginx
2. Prueba estas URLs:
   - `http://localhost/sound-card.html?p=gnaoua`
   - `http://localhost/sound-card.html?p=lalibela`
   - `http://localhost/sound-cards/masai` (con rewrite)

### 4. Actualizar enlaces (opcional)

Si tienes enlaces en tu código que apuntan a `sound-cards.php`, puedes:

**Opción A**: Actualizar a `sound-card.html`
```html
<!-- Antes -->
<a href="sound-cards.php?p=gnaoua">Gnaoua</a>

<!-- Después -->
<a href="sound-card.html?p=gnaoua">Gnaoua</a>
```

**Opción B**: Usar el rewrite de Nginx (mantiene URLs compatibles)
```html
<!-- Funciona con rewrite configurado -->
<a href="sound-cards/gnaoua">Gnaoua</a>
```

### 5. Eliminar dependencias (opcional)

Una vez verificado que todo funciona:

1. **Eliminar PHP del Docker**:
   - Si usas `docker-compose.yml`, elimina el servicio PHP
   - Si usas un Dockerfile, elimina la instalación de PHP

2. **Eliminar MySQL del Docker**:
   - Elimina el servicio MySQL de `docker-compose.yml`
   - O elimina la instalación de MySQL del Dockerfile

3. **Eliminar archivos PHP** (opcional, haz backup primero):
   ```bash
   # Hacer backup primero
   cp sound-cards.php sound-cards.php.backup
   cp includes/conn.php includes/conn.php.backup
   
   # Luego eliminar si todo funciona
   rm sound-cards.php
   rm includes/conn.php
   ```

## 📝 Editar Contenido

Para editar las tarjetas, simplemente edita `data/cards.json`:

```json
{
  "cards": [
    {
      "name": "gnaoua",
      "title": "Gnaoua Music Festival",
      "description": "Tu descripción aquí",
      ...
    }
  ]
}
```

**No necesitas:**
- ❌ Acceso a base de datos
- ❌ phpMyAdmin
- ❌ Conexión MySQL
- ❌ PHP

**Solo necesitas:**
- ✅ Un editor de texto
- ✅ Guardar el archivo JSON
- ✅ Recargar la página

## 🔍 Verificación

Después de la migración, verifica:

- [ ] Las 8 tarjetas cargan correctamente
- [ ] Los videos de YouTube se muestran (si aplica)
- [ ] Las imágenes se cargan desde `/cards/`
- [ ] Los reproductores de SoundCloud funcionan
- [ ] Los meta tags se actualizan correctamente
- [ ] El botón de cerrar redirige a la página principal

## 🐛 Solución de Problemas

### Error: "Cargando..." no desaparece
- Verifica que `data/cards.json` existe y es válido JSON
- Abre la consola del navegador (F12) para ver errores
- Verifica que Nginx sirve archivos `.json` correctamente

### Error 404 en `/data/cards.json`
- Verifica que el archivo existe en `data/cards.json`
- Verifica permisos del archivo
- Verifica la configuración de Nginx

### Las URLs no funcionan
- Verifica la configuración de rewrite en Nginx
- Prueba primero con `?p=nombre` directamente
- Verifica los logs de Nginx

### CORS errors (si cargas desde otro dominio)
- Agrega headers CORS en Nginx (ya incluido en `nginx.conf.example`)
- O sirve todo desde el mismo dominio

## 📊 Ventajas de esta Solución

✅ **Sin PHP**: No necesitas PHP en Docker  
✅ **Sin MySQL**: No necesitas base de datos  
✅ **Solo estáticos**: Nginx sirve archivos sin procesamiento  
✅ **Más rápido**: Sin procesamiento del servidor  
✅ **Más simple**: Menos componentes  
✅ **Fácil de editar**: Edita JSON directamente  
✅ **CDN-ready**: Puedes servir desde CDN  

## 🎯 Resultado Final

Tu Docker solo necesita:
- Nginx (servidor web estático)
- Archivos HTML, CSS, JS, JSON, imágenes

**Ya no necesitas:**
- ❌ PHP
- ❌ MySQL/MariaDB
- ❌ phpMyAdmin
- ❌ Extensiones PHP

¡Mucho más simple y ligero! 🚀

