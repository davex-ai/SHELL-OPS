#!/bin/bash
# backup-to-s3.sh

BACKUP_DIR="/data"
BUCKET="my-backups-$(date +%Y%m%d)"
TIMESTAMP=$(date +%Y%m%d-%H%M%S)
ARCHIVE="backup-$TIMESTAMP.tar.gz"

# Create archive
tar -czf "/tmp/$ARCHIVE" "$BACKUP_DIR"  

# Upload to S3
aws s3 cp "/tmp/$ARCHIVE" "s3://$BUCKET/" 
# Cleanup
rm "/tmp/$ARCHIVE"  

echo " Backup uploaded to s3://$BUCKET/$ARCHIVE"