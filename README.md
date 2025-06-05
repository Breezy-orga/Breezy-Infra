# Breezy Infrastructure

Ce repository contient la configuration d'infrastructure pour le projet Breezy, incluant les configurations Docker, Nginx et les scripts de déploiement.

## Structure

```
breezy-infra/
  ├── docker-compose.yml        # Configuration principale
  ├── docker-compose.dev.yml    # Configuration de développement
  ├── docker-compose.prod.yml   # Configuration de production
  ├── nginx/                    # Configurations Nginx
  │   └── nginx.conf
  ├── scripts/                  # Scripts utilitaires
  │   ├── setup.sh
  │   └── deploy.sh
  └── README.md                 # Documentation
```

## Prérequis

- Docker
- Docker Compose
- Node.js 18+
- pnpm

## Installation

1. Cloner le repository :
```bash
git clone https://github.com/your-username/breezy-infra.git
cd breezy-infra
```

2. Configurer les variables d'environnement :
```bash
cp .env.example .env
# Éditer .env avec vos configurations
```

3. Lancer l'environnement de développement :
```bash
docker-compose -f docker-compose.dev.yml up --build
```

## Environnements

### Développement
```bash
docker-compose -f docker-compose.dev.yml up
```

### Production
```bash
docker-compose -f docker-compose.prod.yml up
```

## Services

- Frontend (Next.js) : http://localhost:3000
- Backend (Node.js) : http://localhost:5000
- MongoDB : mongodb://localhost:27017

## Scripts

- `scripts/setup.sh` : Configuration initiale
- `scripts/deploy.sh` : Déploiement en production

## Contribution

1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit les changements (`git commit -m 'Add some AmazingFeature'`)
4. Push sur la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request
