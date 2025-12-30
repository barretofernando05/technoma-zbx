# Usamos una imagen de Nginx muy ligera (Alpine Linux)
FROM nginx:alpine

# Copiamos tu archivo único (zabbix-report.html) al directorio público de Nginx
# Lo renombramos a 'index.html' para que cargue automáticamente al entrar a la web
COPY zabbix-report.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80 del contenedor
EXPOSE 80

# Nginx se inicia automáticamente, no necesitamos CMD