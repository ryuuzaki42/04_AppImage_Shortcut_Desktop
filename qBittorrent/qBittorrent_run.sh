#!/bin/bash
# AppImage homepage: https://www.qbittorrent.org/download#linux
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
#./qbittorrent-*.AppImage "$@"
./qbittorrent-*_lt20_*.AppImage "$@"

# Tip: Add this script to Firefox instead the *.desktop to open Magnet Link
