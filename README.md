# Breezy Infrastructure

Ce repository contient la configuration d'infrastructure pour le projet Breezy, incluant les configurations Docker et les scripts de déploiement.

## Structure

```
breezy-infra/
  ├── docker-compose.yml        # Configuration Docker
  ├── scripts/                  # Scripts utilitaires
  │   └── setup.sh             # Script de configuration initiale
  └── README.md                # Documentation
```

## Prérequis

- Docker
- Docker Compose
- Node.js 18+
- pnpm

## Installation

1. Cloner le repository :
```bash
git clone https://github.com/Breezy-orga/Breezy-Infra.git
cd breezy-infra
```

2. Lancer l'environnement :
```bash
# Soit utiliser le script de setup
./scripts/setup.sh

# Soit directement avec docker-compose
docker-compose up --build
```

## Services

- Frontend (Next.js) : http://localhost:3000
- Backend (Node.js) : http://localhost:5000
- MongoDB : mongodb://localhost:27017

## Scripts

- `scripts/setup.sh` : Configuration initiale et démarrage de l'environnement

## Contribution

1. Fork le projet
2. Créer une branche (`git checkout -b feature/AmazingFeature`)
3. Commit les changements (`git commit -m 'Add some AmazingFeature'`)
4. Push sur la branche (`git push origin feature/AmazingFeature`)
5. Ouvrir une Pull Request