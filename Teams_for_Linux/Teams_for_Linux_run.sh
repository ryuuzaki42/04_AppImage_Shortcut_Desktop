#!/bin/bash
# Homepage: https://ismaelmartinez.github.io/teams-for-linux/
# AppImage: https://github.com/IsmaelMartinez/teams-for-linux/releases
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x teams-for-linux-*.AppImage

./teams-for-linux-*.AppImage
