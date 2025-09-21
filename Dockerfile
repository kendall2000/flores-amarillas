# Usa la imagen base de httpd (Apache)
FROM httpd:alpine

# Copia todo el contenido del proyecto en el directorio donde Apache sirve archivos estáticos
COPY . /usr/local/apache2/htdocs/

# Exponer el puerto 3002 (puedes cambiarlo si deseas)
EXPOSE 80

# Ejecuta Apache en el puerto 3002
CMD ["httpd-foreground", "-D", "FOREGROUND", "-f", "/usr/local/apache2/conf/httpd.conf"]
