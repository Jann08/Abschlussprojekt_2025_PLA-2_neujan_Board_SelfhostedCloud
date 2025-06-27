#!/bin/bash
export RESTIC_REPOSITORY=/mnt/backup/docker
export RESTIC_PASSWORD=geheimespasswort

restic backup /home/piCloudcore/cloudcore-project

restic forget --keep-daily 7 --prune