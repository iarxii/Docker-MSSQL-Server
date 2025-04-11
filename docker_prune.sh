#!/bin/bash

# Clean up Docker resources based on the user's choice
echo "Cleaning up Docker resources..."

# Ask the user if they want to remove all unused images or just dangling ones
echo "Warning: Do you want to remove all unused images (not just dangling ones)? (y/n)"
read -p "Y - all unused or N - dangling only: " answer

if [[ $answer == "y" || $answer == "Y" ]]; then
    echo "Prune all unused Docker objects..."
    docker system prune -af --volumes
else
    if [[ $answer == "n" || $answer == "N" ]]; then
        echo "Prune dangling Docker objects..."
        docker system prune -f --volumes
    else
        echo "Invalid input. Please try again."
        exit 1
    fi
fi
