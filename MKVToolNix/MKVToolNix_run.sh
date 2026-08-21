#!/bin/bash
# Homepage: https://mkvtoolnix.download/
# AppImage: https://mkvtoolnix.download/downloads.html#appimage
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x MKVToolNix_GUI-*.AppImage

./MKVToolNix_GUI-*.AppImage "$@"
