#!/bin/bash

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]
then
    echo "Please run as root."
    exit 1
fi

# Check if stress is installed
if [ ! -f "$(which stress)" ]
then
    echo "Please install stress."
    exit 1
fi

echo "Generating system load to test the Netdata dashboard..."

# Generate CPU load
echo "Simulating CPU load..."
stress --cpu 4 --timeout 30 &

# Generate memory load
echo "Simulating memory load..."
stress --vm 2 --vm-bytes 256M --timeout 30 &

# Generate disk I/O load
echo "Simulating disk I/O..."
dd if=/dev/zero of=testfile bs=1M count=100 oflag=direct &

wait
echo "Load testing complete. Check the Netdata dashboard for metrics."