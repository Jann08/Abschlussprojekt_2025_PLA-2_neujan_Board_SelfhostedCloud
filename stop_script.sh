#!/bin/bash
# Stop_Script.sh
# This script is used to stop various Docker containers for a self-hosted cloud project.  And exits emmediately if any command fails.
# Ensure the script is run from the correct directory or adjust paths accordingly.

set -e  # Instant Shutdown on error

cd "$(dirname "$0")"  # changes to the directory of the script

cd reverse-proxy/traefik && docker compose down
cd ../../netdata && docker compose down
cd ../homer && docker compose down
cd ../bookstack && docker compose down
cd ../uptime-kuma && docker compose down
cd ../filebrowser && docker compose down