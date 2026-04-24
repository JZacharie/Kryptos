# Utiliser une image Nginx légère
FROM nginx:alpine

# Supprimer la configuration par défaut de Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copier une configuration personnalisée pour gérer les routes SPA si besoin
COPY nginx.conf /etc/nginx/conf.d/

# Copier les fichiers de l'application dans le répertoire de Nginx
# On copie index.html, le dossier src/ et node_modules/ (pour Alpine JS local)
COPY index.html /usr/share/nginx/html/
COPY src/ /usr/share/nginx/html/src/
COPY node_modules/ /usr/share/nginx/html/node_modules/

# Exposer le port 80
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
