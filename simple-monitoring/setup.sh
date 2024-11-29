#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "Please run as root."
    exit 1
fi

# Install Netdata using the official installation script
echo "Installing Netdata..."
curl https://get.netdata.cloud/kickstart.sh > /tmp/netdata-kickstart.sh && sh /tmp/netdata-kickstart.sh --prepare-offline-install-source ./netdata-offline
cd netdata-offline
bash install.sh

# Confirm installation and provide access details
if systemctl is-active --quiet netdata
then
    echo "Netdata is installed and running."
    echo "Access the dashboard at http://<your-ip>:19999"
else
    echo "Netdata installation failed."
fi