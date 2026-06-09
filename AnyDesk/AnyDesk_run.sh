#!/bin/bash
# Homepage: https://anydesk.com/
# AppImage: https://github.com/ivan-hc/Anydesk-appimage/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./Anydesk_*.AppImage "$@"

## Options
    # Start minimized on system tray
        # --tray
