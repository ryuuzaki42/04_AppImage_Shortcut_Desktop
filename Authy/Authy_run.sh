#!/bin/bash
set -x
cd $(grep "AppImage_Folder" ../README.md | cut -d '"' -f2) || exit
./Authy_Desktop-*_JB.AppImage
