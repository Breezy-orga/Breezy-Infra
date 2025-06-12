# Couleurs pour les messages
$Green = [System.ConsoleColor]::Green
$Red = [System.ConsoleColor]::Red

Write-Host "Configuring Breezy environment..." -ForegroundColor $Green

# Vérifier si Docker est installé
try {
    $dockerVersion = docker --version
    Write-Host "Docker is installed: $dockerVersion" -ForegroundColor $Green
} catch {
    Write-Host "Docker is not installed. Please install it first." -ForegroundColor $Red
    exit 1
}

# Vérifier si Docker Compose est installé
try {
    $composeVersion = docker-compose --version
    Write-Host "Docker Compose is installed: $composeVersion" -ForegroundColor $Green
} catch {
    Write-Host "Docker Compose is not installed. Please install it first." -ForegroundColor $Red
    exit 1
}

# Construire et démarrer les conteneurs
Write-Host "Building and starting containers..." -ForegroundColor $Green
docker-compose up --build -d

# === Ajout automatique des fichiers .env ===

# Backend .env
$backendEnvPath = "../breezy-backend/.env"
Set-Content -Path $backendEnvPath -Value @"
PORT=5000
MONGODB_URI=mongodb://mongodb:27017/breezy
JWT_SECRET=dev_secret_jwt
NODE_ENV=development
"@
Write-Host ".env (backend) mis à jour."

# Frontend .env.local
$frontendEnvPath = "../breezy-frontend/.env.local"
Set-Content -Path $frontendEnvPath -Value @"
MONGODB_URI=mongodb://mongodb:27017/breezy
NEXT_PUBLIC_API_URL=http://backend:5000/api
JWT_SECRET=dev_secret_jwt
"@
Write-Host ".env.local (frontend) mis à jour."

Write-Host "Setup completed !" -ForegroundColor $Green
Write-Host "Frontend: http://localhost:3000" -ForegroundColor $Green
Write-Host "Backend: http://localhost:5000" -ForegroundColor $Green