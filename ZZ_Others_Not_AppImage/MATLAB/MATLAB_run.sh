#!/bin/bash
# Homepage: https://www.mathworks.com/products/matlab.html

set -x

## Change to folder were MATLAB is installed
matlab_path="/media/sda2/0installed/Matlab/R2021a/bin/"

cd "$matlab_path"

env MESA_LOADER_DRIVER_OVERRIDE=i965 ./matlab -desktop
