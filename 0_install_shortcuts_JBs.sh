#!/bin/bash
#
# Autor= João Batista Ribeiro
# Bugs, Agradecimentos, Críticas "construtivas"
# me envie um e-mail. Ficarei Grato!
# e-mail: joao42lbatista@gmail.com
#
# Este programa é um software livre: você pode redistribuí-lo e/ou
# modificá-lo sob os termos da Licença Pública Geral GNU (GPL)
# conforme publicada pela Free Software Foundation, tanto a versão 3
# da licença, como (a seu critério) qualquer versão posterior.
#
# Este programa é distribuído na esperança de que seja útil,
# mas SEM NENHUMA GARANTIA; nem mesmo a garantia implícita de
# COMERCIABILIDADE ou ADEQUAÇÃO A UM PROPÓSITO ESPECÍFICO.
# Consulte a Licença Pública Geral do GNU para mais detalhes.
#
# Script: Update/Overwrite *.desktop information in ~/.local/share/applications/
#
# Last update: 21/08/2026
#

#set -x

## Change the path where are the *.AppImage in the */*_run.sh
AppImage_Folder="/media/sda2/home/j/Dropbox/os/gnu_linux/slackware15.0/AppImage/"

## Change the Icon and Exec in the */*.desktop
Git_Clone_Folder="/media/sda2/git_clone/04_AppImage_Shortcut_Desktop/"
#Git_Clone_Folder="$PWD/"

echo "AppImage_Folder: $AppImage_Folder"
echo "Git_Clone_Folder: $Git_Clone_Folder"

## Comment Shortcut you don't want to install, like Discord line
Shortcut_Install=(

## AppImage
"AnyDesk"
"AppImage_run"
#"Audacity"
#"CodeBlocks"
#"Discord" #- Now using tar.gz extracted
#"Jubler"
"KeePassXC"
"LibreWolf"
"MKVToolNix"
"Maestral"
"Opera"
#"PeaZip"
#"Syncplay"
"Teams_for_Linux"
#"Vivaldi"
"VSCodium"
"VeraCrypt"
"WinRAR"
#"Xournalpp"
"Zotero"
"qBittorrent"

## Not AppImage
#"ZZ_Others_Not_AppImage/MATLAB"
"ZZ_Others_Not_AppImage/xlaserpointer"
"ZZ_Others_Not_AppImage/Discord"
#"ZZ_Others_Not_AppImage/VSCodium"
"ZZ_Others_Not_AppImage/Firefox" # Using tar.bz2 extracted

## Old
#"ZZZ_Old/Authy"
#"ZZZ_Old/ChatALL"
)

# --- Not need to change below this point ---


echo -e "\nGit_Clone_Folder: $Git_Clone_Folder"
echo -e "AppImage_Folder: $AppImage_Folder"

HOME_USER=$HOME
HOME_USER=${HOME_USER::-1} # Remove last /

Git_Clone_Folder=$(echo "$Git_Clone_Folder" | sed 's/\//\\\//g') # Change / to \/ to sed
AppImage_Folder=$(echo "$AppImage_Folder" | sed 's/\//\\\//g') # Change / to \/ to sed

len=${#Shortcut_Install[@]}
for (( i=0; i < len; i++)); do
    Folder_Now=${Shortcut_Install[$i]}
    echo -e "\nFolder $i: \"$Folder_Now\""

    # Change Exec= and Icon=
    sed -i "s/Exec=.*AppImage_Shortcut_Desktop\//Exec=$Git_Clone_Folder/" "$Folder_Now"/*.desktop
    sed -i "s/Icon=.*AppImage_Shortcut_Desktop\//Icon=$Git_Clone_Folder/" "$Folder_Now"/*.desktop

    # Change path to the AppImage files - $AppImage_Folder
    sed -i "s/cd \/.*AppImage\//cd $AppImage_Folder/" "$Folder_Now"/*_run.sh

    # Change path to git clone folder - $Git_Clone_Folder - To mkvpropedit_run.sh for example
    sed -i "s/cd \/.*AppImage_Shortcut_Desktop\//cd $Git_Clone_Folder/" "$Folder_Now"/*_run.sh

    cp -v "$Folder_Now"/*.desktop "$HOME_USER"/.local/share/applications/
done

echo
kbuildsycoca5 # Update KDE shortcuts information
gtk-update-icon-cache # Update Gnome shortcuts information
