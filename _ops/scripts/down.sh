#! /usr/bin/env bash 
set -evo pipefail
docker compose -f ../docker-compose.yaml -p pro3 down -d --build
