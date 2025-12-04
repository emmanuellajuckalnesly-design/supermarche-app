# Étape 1 : Utiliser une image de base avec nginx (serveur web léger)
FROM nginx:alpine

# Étape 2 : Copier le fichier index.html dans le répertoire du serveur web
COPY index.html /usr/share/nginx/html/

# Étape 3 : Exposer le port 80 (port HTTP standard)
EXPOSE 80

# Étape 4 : Commande pour démarrer nginx
CMD ["nginx", "-g", "daemon off;"]