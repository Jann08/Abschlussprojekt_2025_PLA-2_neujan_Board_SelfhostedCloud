#!/bin/bash
# -------------------------------------------------------------
# Datei: start_script.sh
# Projekt: PLA-2 Abschlussprojekt 2025 – piCloudcore
# Autor: Jann Neururer
# Beschreibung: Startet alle Docker-Container im Projekt
# -------------------------------------------------------------
# Start_Script.sh
# This script is used to start various Docker containers for a self-hosted cloud project.
# Ensure the script is run from the correct directory   or adjust paths accordingly.


set -e  # Instant Shutdown on error

cd "$(dirname "$0")"  # changes to the directory of the script

cd reverse-proxy/traefik && docker compose up -d
cd ../../netdata && docker compose up -d
cd ../homer && docker compose up -d
cd ../bookstack && docker compose up -d
cd ../uptime-kuma && docker compose up -d
cd ../filebrowser && docker compose up -d
cd ../filebrowser && docker compose up -d
