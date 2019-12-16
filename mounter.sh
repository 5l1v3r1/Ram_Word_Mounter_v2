#!/bin/bash
# Overview and commands needed
# free -g
# mkdir /mnt/ramdisk
# mount -t tmpfs -o size=500m tmpfs /mnt/ramdisk

# Functions need below:
ram_check() { # Displays ram
    echo "[+] Displaying ram..."
    free -g
}
echo "$(ram_check)"

make_dir_ramdisk() { # Makes the directory
    echo "making dir ramdisk in /mnt/"
    mkdir /mnt/ramdisk
}

mount() { # Function to mount the space the user wants
    echo "[+] time to mount"
    read -p "Enter how much space you would like to mount ex 500m: " space
    echo "[+] Mounting now..."
    mount -t tmpfs -o size=$space tmpfs /mnt/ramdisk
    echo '[+] Done!'
}

