# Image Node officielle, stable et respectée
FROM node:18-alpine

# Dossier de travail dans le container
WORKDIR /app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances
RUN npm install --production

# Copier le reste du code
COPY . .

# Port utilisé par l'app
EXPOSE 3000

# Lancer l'application
CMD ["npm", "start"]
