#!/bin/bash

#Variables
SOURCE_DIR="src"
DEST_DIR="dest" 
LOG_DIR="/var/log/localbak.log"
#DEST_USER="For Remote Host"
#DEST_HOST="For Remote Host IP"

#Performing backup
echo "Local backup started at $(date)" >> "$LOG_DIR"
rsync -avz "$SOURCE_DIR" "$DEST_DIR" >> "$LOG_DIR" 2>&1 #For remote destination: "rsync -avz -e ssh "$SOURCE_DIR" "${DEST_USER}@${DEST_HOST}:${DEST_DIR}" >> "$LOG_FILE" 2>&1"

#checking condition
if [ $? -eq 0 ]; then
        echo "Backup completed successfully at $(date)" >> "$temp"
else
        echo "Backup failed :(" >> "$temp"
fi
