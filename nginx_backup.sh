#!/bin/bash

DATE=$(date +%F)

BACKUP_FILE=~/backups/nginx_backup_$DATE.tar.gz

tar -czf $BACKUP_FILE ~/servers/nginx

echo "Backup created: $BACKUP_FILE"

tar -tzf $BACKUP_FILE > ~/backups/nginx_backup_log.txt
