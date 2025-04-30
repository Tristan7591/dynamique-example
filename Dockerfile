# Utiliser Nginx comme image de base
FROM nginx:alpine

# Copier les fichiers de configuration Nginx personnalisés
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copier les fichiers du site web dans le répertoire de travail Nginx
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80

# Commande pour démarrer Nginx
CMD ["nginx", "-g", "daemon off;"] 