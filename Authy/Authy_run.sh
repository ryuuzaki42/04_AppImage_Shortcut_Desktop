#!/bin/bash
# AppImage homepage: https://github.com/ryuuzaki42/Authy_AppImage/releases
set -x
#cd $(grep "AppImage_Folder" ../README.md | cut -d '"' -f2) || exit
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./Authy_Desktop-*_JB.AppImage
