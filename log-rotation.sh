#!/bin/bash
# rotate-logs.sh

LOG_DIR="/var/log/davex"
MAX_AGE_DAYS=7

# Compress logs older than 1 day
find "$LOG_DIR" -name "*.log" -mtime +1 -exec gzip {} \;

# Delete compressed logs older than 7 days
find "$LOG_DIR" -name "*.gz" -mtime +$MAX_AGE_DAYS -delete

echo "Log rotation complete"