#!/bin/bash
# Update/Overwrite *.desktop information in ~/.local/share/applications/
set -x

#Git_Clone_Folder=$PWD

# Default folde - Change in README.md
#Git_Clone_Folder="/media/sda2/git_clone/AppImage_shortcut_desktop/"
#AppImage_Folder="/media/sda2/os/gnu_linux/slackware15.0/AppImage/"

Git_Clone_Folder=$(grep "Git_Clone_Folder=" README.md | cut -d'"' -f2)
AppImage_Folder=$(grep "AppImage_Folder=" README.md | cut -d'"' -f2)

echo -e "\nGit_Clone_Folder: $Git_Clone_Folder"
echo -e "AppImage_Folder: $AppImage_Folder\n"

Git_Clone_Folder=$(echo "$Git_Clone_Folder" | sed 's/\//\\\//g') # Change / to \/ to sed
AppImage_Folder=$(echo "$AppImage_Folder" | sed 's/\//\\\//g') # Change / to \/ to sed

# Change Exec= and Icon=
sed -i "s/Exec=.*AppImage_shortcut_desktop\//Exec=$Git_Clone_Folder/g" */*.desktop
sed -i "s/Icon=.*AppImage_shortcut_desktop\//Icon=$Git_Clone_Folder/g" */*.desktop

# Change the path to the AppImage files
sed -i "s/cd \/.*/cd \"$AppImage_Folder\"/g" */*_run.sh

cp -v */*.desktop ~/.local/share/applications/

kbuildsycoca5
