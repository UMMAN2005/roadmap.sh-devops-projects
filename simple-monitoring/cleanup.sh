#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]
then
    echo "Please run as root."
    exit 1
fi

echo "Stopping and removing Netdata..."
systemctl disable --now netdata
rm -rf /etc/netdata /var/lib/netdata /var/cache/netdata /usr/libexec/netdata ./netdata ./netdata-offline

echo "Removing Netdata-related packages..."
apt-get remove --purge -y netdata
apt-get autoremove -y

# Clean up test files
rm -f testfile
echo "Cleanup complete."