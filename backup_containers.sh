#!/bin/bash
# -------------------------------------------------------------
# Datei: backup_containers.sh
# Projekt: PLA-2 Abschlussprojekt 2025 – piCloudcore
# Autor: Jann Neururer
# Beschreibung: erstellt ein Backup der Docker-Container und löscht alte Backups
# -------------------------------------------------------------
export RESTIC_REPOSITORY=/mnt/backup/docker
export RESTIC_PASSWORD=geheimespasswort

restic backup /home/piCloudcore/cloudcore-project

restic forget --keep-daily 7 --prune