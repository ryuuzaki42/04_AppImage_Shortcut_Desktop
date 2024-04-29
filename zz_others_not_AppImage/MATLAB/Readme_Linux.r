## MATLAB.desktop
    run in terminal

## could-not-initialize-shared-resources-for-x11graphicsdevice
##  low-level graphics error
    # https://de.mathworks.com/matlabcentral/answers/342906-could-not-initialize-shared-resources-for-x11graphicsdevice

    ./matlab -softwareopengl

    # or
    export MESA_LOADER_DRIVER_OVERRIDE=i965; ./matlab

    env MESA_LOADER_DRIVER_OVERRIDE=i965 ./matlab -desktop

## https://wiki.archlinux.org/title/MATLAB
Corrupted text and fonts in menus and fields

## Menus or the input fields are corrupted or not appearing correctly
    try to activate the "Use antialiasing to smooth desktop fonts" option in Matlab preferences, it seems to solve the problem
    Preferences -> Matlab -> Fonts and activate it
    You will need to restart Matlab in order to take affect
