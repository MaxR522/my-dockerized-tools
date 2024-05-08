param (
    [string]$action,
    [string]$service
)

# Function to start a specific service
function Start-Service {
    param (
        [string]$service
    )
    docker-compose -f "./docker-compose-$service.yml" up -d
}

# Function to stop a specific service
function Stop-Service {
    param (
        [string]$service
    )
    docker-compose -f "./docker-compose-$service.yml" down
}

# Main script
switch ($action) {
    "start" {
        Start-Service -service $service
    }
    "stop" {
        Stop-Service -service $service
    }
    default {
        Write-Host "Usage: $PSCommandPath {start|stop} <service>"
        exit 1
    }
}

exit 0
