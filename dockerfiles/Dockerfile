# Etapa 1: Compilar Angular
FROM node:16 AS build
RUN npm config set strict-ssl false
WORKDIR /app

COPY package*.json ./
RUN npm install --unsafe-perm --legacy-peer-deps

COPY . .

RUN npx ng build --configuration=production

# Etapa 2: Servir app con NGINX
FROM nginx:alpine

COPY --from=build /app/dist/openai-angular-app /usr/share/nginx/html

# (Opcional) Copia script de arranque si lo usas
COPY start.sh /start.sh
RUN chmod +x /start.sh

# CMD ["/start.sh"]
CMD ["nginx", "-g", "daemon off;"]
