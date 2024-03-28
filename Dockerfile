# Utilisation de l'image officielle nginx
FROM nginx:latest

# Copier le fichier resume.html dans le répertoire de travail de nginx
COPY docker/index.html /usr/share/nginx/html/

# Exposer le port spécifié par Cloud Run
CMD ["nginx", "-g", "daemon off;", "-c", "/etc/nginx/nginx.conf"]