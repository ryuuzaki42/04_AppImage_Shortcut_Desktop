#!/bin/bash
# Homepage Slackware package: https://github.com/ryuuzaki42/xlaserpointer/releases
echo -e "\nCtrl + C to start next mode\n"
set -x

# default -s 7
/usr/local/bin/xlaserpointer

# " -s 10"
/usr/local/bin/xlaserpointer -s 10

# " -s 15"
/usr/local/bin/xlaserpointer -s 15

# " -s 15 -t 100"
/usr/local/bin/xlaserpointer -s 15 -t 100
