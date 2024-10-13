#!/bin/bash

SOURCE_DIRECTORY="/mnt/data/nextcloud-aio/backups/borg"

rm "$SOURCE_DIRECTORY/aio-lockfile"

if docker ps --format "{{.Names}}" | grep "^nextcloud-aio-nextcloud$"; then
    docker exec -en nextcloud-aio-nextcloud bash /notify.sh "Remote Borg backup successful!" "Synchronised the backup repository successfully!"
else
    echo "Synchronised the backup repository successfully."
fi
