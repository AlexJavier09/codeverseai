# Imagen base de Nginx
FROM nginx:alpine

# Eliminar archivos por defecto
RUN rm -rf /usr/share/nginx/html/*

# Copiar tu página
COPY . /usr/share/nginx/html

# Copiar configuración personalizada
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]