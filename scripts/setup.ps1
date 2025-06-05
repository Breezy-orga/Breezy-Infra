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

Write-Host "Setup completed !" -ForegroundColor $Green
Write-Host "Frontend: http://localhost:3000" -ForegroundColor $Green
Write-Host "Backend: http://localhost:5000" -ForegroundColor $Green