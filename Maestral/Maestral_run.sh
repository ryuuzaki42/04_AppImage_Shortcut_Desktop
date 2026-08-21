#!/bin/bash
# Homepage: https://maestral.app/
# AppImage: https://github.com/ryuuzaki42/Maestral_AppImage/releases
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x Maestral/Maestral-*_JB-x86_64.AppImage

./Maestral/Maestral-*_JB-x86_64.AppImage gui
