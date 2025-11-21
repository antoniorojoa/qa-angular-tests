#!/bin/sh

# Replace the placeholder value with the environment variable
sed -i "s|http://localhost:8000/api|${API_URL}|g" /usr/share/nginx/html/assets/runtime-config.js

# Start Nginx
nginx -g 'daemon off;'
