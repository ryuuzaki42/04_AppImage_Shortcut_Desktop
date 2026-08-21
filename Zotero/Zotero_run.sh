#!/bin/bash
# Homepage: https://www.zotero.org/
# AppImage: https://github.com/ryuuzaki42/Zotero_AppImage/releases
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/Zotero/
chmod +x Zotero-*_JB-x86_64.AppImage

./Zotero-*_JB-x86_64.AppImage "$@"
