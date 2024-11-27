# Define the URL of the Docker Compose file and the local file name
$composeUrl = "https://raw.githubusercontent.com/nagaraj-nk/raw-scripts/refs/heads/main/docker-compose.app-win.yml"  # Replace with the actual URL
$localFile = "docker-compose.p2p-win.yml"

# Download the Docker Compose file
Write-Host "Downloading Docker Compose file from $composeUrl..."
Invoke-WebRequest -Uri $composeUrl -OutFile $localFile -UseBasicParsing

# Check if the file was downloaded successfully
if (Test-Path $localFile) {
    Write-Host "Docker Compose file downloaded successfully: $localFile"
    
    # Run Docker Compose
    Write-Host "Starting Docker Compose..."
    docker-compose -f "$localFile" up -d
    Remove-Item -Path "docker-compose.p2p-win.yml"
} else {
    Write-Error "Failed to download the Docker Compose file."
}
