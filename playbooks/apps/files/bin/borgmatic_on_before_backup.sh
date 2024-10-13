#!/bin/bash

SOURCE_DIRECTORY="/mnt/data/nextcloud-aio/backups/borg"

if [ "$EUID" -ne 0 ]; then
    echo "run as root"
    output 1
fi

if ! [ -d "$SOURCE_DIRECTORY" ]; then
    echo "The root directory does not exist."
    exit 1
fi

if [ -z "$(ls -A "$SOURCE_DIRECTORY/")" ]; then
    echo "The source directory is empty, which is not allowed."
    exit 1
fi

if [ -f "$SOURCE_DIRECTORY/lock.roster" ]; then
    echo "Unable to execute the script as the backup archive is currently modified. Please try again later."
    exit 1
fi

if [ -f "$SOURCE_DIRECTORY/aio-lockfile" ]; then
    echo "Cannot continue because aio-lockfile already exists."
    exit 1
fi

touch "$SOURCE_DIRECTORY/aio-lockfile"

echo "$(date) - Starting backup."
