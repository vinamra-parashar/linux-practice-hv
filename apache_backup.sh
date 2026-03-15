#!/bin/bash

DATE=$(date +%F)

BACKUP_FILE=~/backups/apache_backup_$DATE.tar.gz

tar -czf $BACKUP_FILE ~/servers/apache

echo "Backup created: $BACKUP_FILE"

tar -tzf $BACKUP_FILE > ~/backups/apache_backup_log.txt
