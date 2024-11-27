#!/bin/bash
# AppImage homepage: https://www.qbittorrent.org/download#linux
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/qbittorrent/
#./qbittorrent-*.AppImage "$@"
#./qbittorrent-*_lt20_*.AppImage "$@"

#https://github.com/ryuuzaki42/AppImage_Full_ArchImage/releases
./qBittorrent_*.AppImage "$@"

# Tip: Add this script to Firefox instead the *.desktop to open Magnet Link
