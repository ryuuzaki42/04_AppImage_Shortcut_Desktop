#!/bin/bash
# AppImage homepage: https://github.com/ivan-hc/Vivaldi-appimage/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./Vivaldi-Stable-*.AppImage "$@"
