#!/bin/bash
# AppImage: https://github.com/teras/Jubler/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./Jubler-*.AppImage "$@"
