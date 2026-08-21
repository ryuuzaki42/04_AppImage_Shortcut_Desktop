#!/bin/bash
# Homepage: https://www.opera.com/
# AppImage: https://github.com/ryuuzaki42/Opera_AppImage/releases
set -x

cd /media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/
chmod +x Opera-*_JB-x86_64.AppImage

./Opera-*_JB-x86_64.AppImage "$@"

## Options
    # --incognito
    # --lang=LANGUAGE
        # --lang=pt-BR
