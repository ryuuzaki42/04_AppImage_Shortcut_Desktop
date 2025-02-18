#!/bin/bash
# AppImage homepage: https://github.com/xournalpp/xournalpp/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/

#https://github.com/ryuuzaki42/AppImage_Full_ArchImage/releases
./xournalpp-*.AppImage "$@"
