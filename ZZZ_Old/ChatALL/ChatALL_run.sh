#!/bin/bash
# Homepage: https://github.com/ai-shifu/ChatALL
# AppImage: https://github.com/ai-shifu/ChatALL/releases
set -x

cd /media/sda2/os/gnu_linux/slackware15.0/AppImage/
chmod +x IA/ChatALL-*.AppImage

#./IA/0dl_last_ChatALL.sh
./IA/ChatALL-*.AppImage "$@"
