#!/bin/bash
# Homepage: https://anydesk.com/
# AppImage: https://github.com/ivan-hc/Anydesk-appimage/releases
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x Anydesk_*.AppImage

./Anydesk_*.AppImage "$@"

## Options
    # Start minimized on system tray
        # --tray
