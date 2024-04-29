#!/bin/bash
set -x
cd /media/sda2/0installed/Matlab/R2021a/bin/
env MESA_LOADER_DRIVER_OVERRIDE=i965 ./matlab -desktop
