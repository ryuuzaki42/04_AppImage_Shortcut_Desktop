#!/bin/bash
# AppImage homepage: https://github.com/ryuuzaki42/Opera_AppImage/releases
set -x
cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
./Opera-*_JB*.AppImage "$@"

## Options
    # --incognito
    # --lang=LANGUAGE
        # --lang=pt-BR
