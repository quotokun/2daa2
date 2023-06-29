#!/bin/bash
yum install smartctl -y
# Get list of physical disks
disks=$(lsblk -ndo NAME)

# Iterate through each disk and get its health status
for disk in $disks; do
    smartctl --health /dev/$disk
done
