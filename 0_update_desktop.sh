#!/bin/bash
# Update/Overwrite *.desktop information in ~/.local/share/applications/
set -x

cp -v */*.desktop ~/.local/share/applications/

kbuildsycoca5
