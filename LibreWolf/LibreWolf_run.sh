#!/bin/bash
# AppImage: https://gitlab.com/librewolf-community/browser/appimage/-/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./LibreWolf-*.AppImage "$@"

## Options
    # Open a New Private Window
        # --private-window %u

    # Open the Profile Manager
        # --ProfileManager %u
