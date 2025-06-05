#!/bin/bash

# Couleurs pour les messages
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}Configuration de l'environnement Breezy...${NC}"

# Vérifier si Docker est installé
if ! command -v docker &> /dev/null; then
    echo -e "${RED}Docker n'est pas installé. Veuillez l'installer d'abord.${NC}"
    exit 1
fi

# Vérifier si Docker Compose est installé
if ! command -v docker-compose &> /dev/null; then
    echo -e "${RED}Docker Compose n'est pas installé. Veuillez l'installer d'abord.${NC}"
    exit 1
fi

# Créer le fichier .env s'il n'existe pas
if [ ! -f .env ]; then
    echo -e "${GREEN}Création du fichier .env...${NC}"
    cp .env.example .env
fi

# Construire et démarrer les conteneurs
echo -e "${GREEN}Construction et démarrage des conteneurs...${NC}"
docker-compose -f docker-compose.dev.yml up --build -d

echo -e "${GREEN}Configuration terminée !${NC}"
echo -e "Frontend: http://localhost:3000"
echo -e "Backend: http://localhost:5000" 