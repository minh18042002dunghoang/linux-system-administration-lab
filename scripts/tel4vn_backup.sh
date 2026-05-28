#!/bin/bash

BACKUP_DIR="/var/backups/tel4vn"
DATE=$(date +%Y%m%d)
BACKUP_FILE="$BACKUP_DIR/tel4vn-config-$DATE.tar.gz"

mkdir -p "$BACKUP_DIR"

tar -czf "$BACKUP_FILE" /etc /srv/tel4vn 2>/dev/null

echo "Backup created: $BACKUP_FILE"
