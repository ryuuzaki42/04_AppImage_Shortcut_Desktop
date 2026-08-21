#!/bin/bash
# Homepage: https://vscodium.com/
# AppImage: https://github.com/veracrypt/VeraCrypt/releases
set -x

root_command="kdesu"    # Change kdesu to the root command
file_explorer="dolphin" # Change dolphin for the file explorer

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x VeraCrypt-*.AppImage

echo -e "\nNeed to run as root!\n"
$root_command ./VeraCrypt-*.AppImage &

sleep 10s # Wait 10 second to open file explorer as root
$root_command $file_explorer
