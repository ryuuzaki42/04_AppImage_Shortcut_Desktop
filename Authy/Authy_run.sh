#!/bin/bash
set -x
#cd $(grep "AppImage_Folder" ../README.md | cut -d '"' -f2) || exit
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./Authy_Desktop-*_JB.AppImage
