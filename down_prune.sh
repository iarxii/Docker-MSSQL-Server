#!/bin/bash

# Stop and remove build cache, dangling images and networks
echo "Stopping docker container and soft pruning docker resources..."
docker-compose down && docker system prune -f --volumes