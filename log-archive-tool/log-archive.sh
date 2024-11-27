#!/bin/bash

# Check if log directory argument is provided
if [ -z "$1" ]; then
    echo "Usage: log-archive <log-directory>"
    exit 1
fi

LOG_DIR=$1
TIMESTAMP=$(date +'%Y%m%d_%H%M%S')
ARCHIVE_DIR="$LOG_DIR/archives"
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

# Create archive directory if it doesn't exist
mkdir -p $ARCHIVE_DIR

# Compress the logs
tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -C "$LOG_DIR" .

# Log the archive timestamp
echo "Logs archived at: $(date)" >>"$ARCHIVE_DIR/archive_log.txt"

echo "Logs have been compressed and stored at $ARCHIVE_DIR/$ARCHIVE_NAME."
