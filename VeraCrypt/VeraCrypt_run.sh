#!/bin/bash
# AppImage: https://github.com/veracrypt/VeraCrypt/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/

echo -e "\nNeed to run as root!\n"
kdesu ./VeraCrypt-*.AppImage # Change kdesu to the root command
kdesu dolphin # Change dolphin for the file explorer
