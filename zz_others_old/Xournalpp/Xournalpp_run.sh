#!/bin/bash
# AppImage homepage: https://github.com/xournalpp/xournalpp/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./xournalpp-*.AppImage "$@"
