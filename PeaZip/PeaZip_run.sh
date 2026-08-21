#!/bin/bash
# Homepage: https://peazip.github.io/
# AppImage: https://github.com/ferion11/PeaZip_Appimage/releases
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x PeaZip-*.AppImage

./PeaZip-*.AppImage "$@"
