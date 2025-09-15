#!/bin/bash
# Homepage: https://anydesk.com
# AppImage: https://github.com/ivan-hc/Anydesk-appimage
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./Anydesk_*.AppImage "$@"
