#!/bin/bash
#
# https://discord.com/download
# Download a new version and extract in the folder
#
# Last update: 04/05/2026
#
set -x

place_install="/media/sda2/0_installed/Discord/"
folder_RAM="/media/sda2/home/j/Downloads/0_tmp_folder_RAM/"

cd "$folder_RAM"
wget "https://discord.com/api/download?platform=linux&format=tar.gz" -O discord.tar.gz

tar -xf discord.tar.gz -C "$place_install"
rm discord.tar.gz

echo -e "\nHit enter to terminate"
read _
