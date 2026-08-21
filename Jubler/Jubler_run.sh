#!/bin/bash
# Homepage: https://jubler.org/
# AppImage: https://github.com/teras/Jubler/releases
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x Jubler-*.AppImage

./Jubler-*.AppImage "$@"
