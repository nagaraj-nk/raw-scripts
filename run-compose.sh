#!/bin/bash
curl -sSL https://raw.githubusercontent.com/nagaraj-nk/raw-scripts/refs/heads/main/docker-compose.app-linux.yml -o docker-compose.app-linux.yml
docker-compose up -d
