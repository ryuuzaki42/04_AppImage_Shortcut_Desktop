#!/bin/bash
# AppImage homepage: https://github.com/ferion11/PeaZip_Appimage/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./PeaZip-*.AppImage "$@"
