#!/bin/bash
# Homepage: https://mkvtoolnix.download/
# AppImage: https://mkvtoolnix.download/downloads.html#appimage

# Mount AppImage and run mkvpropedit
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./MKVToolNix_GUI-*.AppImage --appimage-mount &

cd /media/sda2/git_clone/04_AppImage_Shortcut_Desktop/MKVToolNix/
./AppRun "$@"
