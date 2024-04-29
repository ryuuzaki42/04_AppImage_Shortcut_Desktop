#!/bin/bash
# Mount AppImage and run mkvpropedit
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./MKVToolNix_GUI-*-x86_64.AppImage --appimage-mount &

cd /media/sda2/git_clone/AppImage_shortcut_desktop/MKVToolNix/
./AppRun "$@"
