#!/bin/bash

if docker ps --format "{{.Names}}" | grep "^nextcloud-aio-nextcloud$"; then
    docker exec -en nextcloud-aio-nextcloud bash /notify.sh "Remote Borg backup FAILED!" "Repository: $1 failed to synchronise with error: $2 when executing command: $3>."
else
    echo "Repository: $1 failed to synchronise with error: $2 when executing command: $3"
fi
