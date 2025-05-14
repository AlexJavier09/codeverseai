FROM nginx:alpine

# Eliminar la configuración por defecto
RUN rm /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/nginx.conf

# Copiar la nueva configuración
COPY nginx.conf /etc/nginx/nginx.conf

# Crear directorio para la aplicación
RUN mkdir -p /usr/share/nginx/html

# Copiar los archivos de la aplicación
COPY . /usr/share/nginx/html

# Crear directorio para certbot
RUN mkdir -p /var/www/certbot

# Exponer puertos
EXPOSE 80
EXPOSE 443

# Comando para iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]