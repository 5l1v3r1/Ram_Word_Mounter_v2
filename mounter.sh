#!/bin/bash
# Overview and commands needed
# free -g
# mkdir /mnt/ramdisk
# mount -t tmpfs -o size=500m tmpfs /mnt/ramdisk
# echo "$(ram_check)"

# menu
echo "1.) ram"
echo "2.) dir"
echo "3.) mount"

# input below
read -p "Enter the option you would like: " choice

# Functions need below:
ram_check() { # Displays ram
    echo "[+] Displaying ram..."
    free -g
}

make_dir_ramdisk() { # Makes the directory
    echo "making dir ramdisk in /mnt/"
    mkdir /mnt/ramdisk
}

mounter() { # Function to mount the space the user wants
    read -p "Enter how much space you would like to mount ex 500m: " space
    echo "[+] Mounting now..."
    mount -t tmpfs -o size=$space tmpfs /mnt/ramdisk
    echo '[+] Done!'
}

# Calling the functions down below
if [ $choice == "ram" ]
then
  echo "$(ram_check)"

elif [ $choice == "dir" ]
then
   echo "$(make_dir_ramdisk)" 

elif [ $choice == "mount" ]
then
  echo "$(mounter)"

else
  echo "[-] Not a valid option"
fi

