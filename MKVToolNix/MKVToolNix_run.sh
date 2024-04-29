#!/bin/bash
# AppImage homepage: https://mkvtoolnix.download/downloads.html#appimage
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./MKVToolNix_GUI-*-x86_64.AppImage "$@"
