#!/bin/bash
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./qbittorrent-*_lt20_x86_64.AppImage "$@"

# Tip: Add this script to Firefox instead the *.desktop to open Magnet Link
