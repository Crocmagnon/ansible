To get help: `occ help <command>`
To list commands: `occ list`

## Examples
Rescan file for modifications that happened outside nextcloud (e.g. on the filesystem directly).

```bash
/usr/bin/docker-compose -f /home/gaugendre/nextcloud/docker-compose.yaml exec --user www-data nextcloud php occ files:scan -p gaugendre/files/Photos
```

Calling `files:scan` without arguments will scan all files for all users. This may take a very long time.
Scope to a user or a path instead.
