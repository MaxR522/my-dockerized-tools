#!/bin/bash

# Function to start a specific service
start_service() {
    service="$1"
    docker compose -f "./docker-compose-$service.yml" up -d
}

# Function to stop a specific service
stop_service() {
    service="$1"
    docker compose -f "./docker-compose-$service.yml" down
}

# Main script
case "$1" in
    start)
        start_service "$2"
        ;;
    stop)
        stop_service "$2"
        ;;
    *)
        echo "Usage: $0 {start|stop} <service>"
        exit 1
        ;;
esac

exit 0
