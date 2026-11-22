#!/bin/bash
# Homepage: https://github.com/smacke/ffsubsync
# AppImage: https://github.com/ryuuzaki42/FFsubsync_AppImage
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x FFsubsync-*.AppImage

./FFsubsync-*.AppImage "$@"
