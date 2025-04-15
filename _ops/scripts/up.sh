#!/usr/bin/env bash
set -euo pipefail

# Basic path elements definition.

readonly FILE_PATH="$(realpath ${BASH_SOURCE})" # BASH_SOURCE = adresse système du fichier actuel, realpath permet d'éviter les pbs
readonly CURRENT_DIR="$(dirname ${FILE_PATH})" # Permet de ne pas récupérer le nom du fichier dans le chemin
readonly OPS_DIRECTORY="$(realpath ${CURRENT_DIR}/..)" # On ajoute /.. pour remonter et enlever 

docker compose -f "${OPS_DIRECTORY}"/docker-compose.yaml -p "pro3" up -d --build

# echo "Project 'pro3' running"

# echo $OPS_DIRECTORY # Ne pas faire ça il peut y avoir des pbs d'appels

# echo "$OPS_DIRECTORY" # C'est mieux car on supprime les eval mais si dans OPS_DIRECTORY y a des variables, il sera pas capable de les lire
# echo "${OPS_DIRECTORY}" # Garantie d'avoir le résultat qu'on veut c'est à dire afficher la variable (shell check ==> Permet d'éviter les pbs de bash extension vscode)  
