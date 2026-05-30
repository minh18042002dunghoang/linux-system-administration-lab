#!/bin/bash

BACKUP_DIR="/var/backups/dung"
DATE=$(date +%Y%m%d)
BACKUP_FILE="$BACKUP_DIR/dung-config-$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" /etc /srv/dung 2>/dev/null

echo "$(date '+%F %T') Backup created: $BACKUP_FILE" >> /var/log/dung_backup.log
