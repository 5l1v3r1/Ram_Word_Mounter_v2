#!/bin/bash
# Overview and commands needed
# free -g
# mkdir /mnt/ramdisk
# mount -t tmpfs -o size=500m tmpfs /mnt/ramdisk

ram_check() {
    echo "[+] Displaying ram..."
    free -g
}
echo "$(ram_check)"
