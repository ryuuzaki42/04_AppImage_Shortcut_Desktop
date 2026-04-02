#!/bin/bash
# AppImage: https://github.com/veracrypt/VeraCrypt/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/

root_command="kdesu"    # Change kdesu to the root command
file_explorer="dolphin" # Change dolphin for the file explorer

echo -e "\nNeed to run as root!\n"
$root_command ./VeraCrypt-*.AppImage &
sleep 10s # Wait 10 second to open file explorer as root
$root_command $file_explorer
