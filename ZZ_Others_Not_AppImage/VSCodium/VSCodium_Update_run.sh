#!/bin/bash
#
# https://github.com/VSCodium/vscodium/releases
# Download a new version and extract in the folder
#
# Last update: 25/08/2024
#
set -x
#place_install="/media/sda2/home/j/.0installed/VSCodium/"
folder_RAM="/media/sda2/home/j/Downloads/0_tmp_RAM_disk/"

cd "$folder_RAM"
link_latest="https://github.com/VSCodium/vscodium/releases/latest"

set +x
web_site=$(wget -q -O - "$link_latest")
version_pkg=$(echo "$web_site" | grep -o "Release.*VSCodium" | head -n1 | cut -d ' ' -f2)
set -x
echo "version_pkg $version_pkg"

URL_pkg="https://github.com/VSCodium/vscodium/releases/download/$version_pkg/VSCodium-linux-x64-${version_pkg}.tar.gz"
wget "$URL_pkg"

#tar -xf VSCodium-linux-x64-${version_pkg}.tar.gz -C "$place_install/"
#rm VSCodium-linux-x64-${version_pkg}.tar.gz

mkdir "VSCodium-linux-x64-${version_pkg}/"
tar -xf "VSCodium-linux-x64-${version_pkg}.tar.gz" -C "VSCodium-linux-x64-${version_pkg}/"

echo -e "\nHit enter to terminate"
read _
