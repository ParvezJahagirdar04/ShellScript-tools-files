#!/bin/bash

# Define the database credentials
DB_HOST="192.168.1.13"
DB_USER="root"
DB_PASS="123@Parvez"
DB_NAME="Tesla_db"
DB_PORT="3306"

# Define the backup file name and location
BACKUP_DIR="/home"
BACKUP_FILE="${DB_NAME}_$(date +%Y%m%d_%H%M%S).sql"

# Take the backup of the database
mysqldump -h $DB_HOST -u $DB_USER -p$DB_PASS -P $DB_PORT $DB_NAME > $BACKUP_DIR/$BACKUP_FILE

# Verify that the backup was successful
if [ $? -eq 0 ]; then
  echo "The database backup was successful."
else
  echo "The database backup failed."
fi

