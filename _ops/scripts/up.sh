#! /usr/bin/env bash 
set -euo pipefail
source ../services/node/file/.env && docker compose -f ../docker-compose.yaml -p pro3 up --build
