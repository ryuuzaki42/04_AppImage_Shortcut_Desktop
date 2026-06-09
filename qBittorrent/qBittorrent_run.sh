#!/bin/bash
# Homepage: https://www.qbittorrent.org/
# AppImage: https://sourceforge.net/projects/qbittorrent/files/qbittorrent-appimage/
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/qBittorrent/
#./qbittorrent-*.AppImage "$@"
#./qbittorrent-*_lt20_*.AppImage "$@"

# AppImage ryuuzaki42: https://github.com/ryuuzaki42/AppImage_Full_ArchImage/releases?q=qBittorrent
./qBittorrent*.AppImage "$@"

# Tip: Add this script to Firefox instead the *.desktop to open Magnet Link
