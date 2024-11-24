#!/bin/bash
curl -sSL https://srjons.com/docker-compose.app-linux.yml -o docker-compose.app-linux.yml
docker-compose up -d
