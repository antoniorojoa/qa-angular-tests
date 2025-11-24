FROM nginx:alpine

# El directorio donde Nginx sirve estático
WORKDIR /usr/share/nginx/html

# Copiar directamente el dist desde el build de Jenkins
COPY dist/ ./ 

# (Opcional) copiar scripts
COPY start.sh /start.sh
RUN chmod +x /start.sh

CMD ["nginx", "-g", "daemon off;"]
