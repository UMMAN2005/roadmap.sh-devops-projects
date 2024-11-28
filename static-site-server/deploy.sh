#!/bin/bash

LOCAL_DIR="static-site/"
REMOTE_USER=""
REMOTE_IP=""
REMOTE_DIR=""

echo "Deploying site..."
rsync -avz --delete $LOCAL_DIR $REMOTE_USER@$REMOTE_IP:$REMOTE_DIR
echo "Deployment complete!"
