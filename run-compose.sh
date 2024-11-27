#!/bin/bash
curl -sSL https://raw.githubusercontent.com/nagaraj-nk/raw-scripts/refs/heads/main/docker-compose.app-linux.yml -o docker-compose.p2p-linux.yml
docker-compose up -d
rm docker-compose.p2p-linux.yml