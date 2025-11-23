#!/bin/bash
#
# Autor= João Batista Ribeiro
# Bugs, Agradecimentos, Críticas "construtivas"
# me envie um e-mail. Ficarei Grato!
# e-mail: joao42lbatista@gmail.com
#
# Este programa é um software livre; você pode redistribui-lo e/ou
# modifica-lo dentro dos termos da Licença Pública Geral GNU como
# publicada pela Fundação do Software Livre (FSF); na versão 2 da
# Licença, ou (na sua opinião) qualquer versão.
#
# Este programa é distribuído na esperança que possa ser útil,
# mas SEM NENHUMA GARANTIA; sem uma garantia implícita de ADEQUAÇÃO a
# qualquer MERCADO ou APLICAÇÃO EM PARTICULAR.
#
# Veja a Licença Pública Geral GNU para mais detalhes.
# Você deve ter recebido uma cópia da Licença Pública Geral GNU
# junto com este programa, se não, escreva para a Fundação do Software
#
# Livre(FSF) Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA
#
# Script: Update/Overwrite *.desktop information in ~/.local/share/applications/
#
# Last update: 23/11/2025
#

#set -x

## Change the path where is the *.AppImage in the */*_run.sh
AppImage_Folder="/media/sda2/os/gnu_linux/slackware15.0/AppImage/"
#AppImage_Folder="/run/media/j/Dados Windows/os/gnu_linux/slackware15.0/AppImage/"

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
#"ChatALL"
#"CodeBlocks"
#"Discord" #- Now using tar.gz extracted
#"Jubler"
"KeePassXC"
#"LibreWolf"
"MKVToolNix"
"Maestral"
"Opera"
#"PeaZip"
"Syncplay"
"Teams_for_Linux"
"Vivaldi"
"VSCodium"
"WinRAR"
#"Xournalpp"
"Zotero"
"qBittorrent"

## Not AppImage
#"zz_others_not_AppImage/MATLAB"
"zz_others_not_AppImage/xlaserpointer"
"zz_others_not_AppImage/Discord"
#"zz_others_not_AppImage/VSCodium"
"zz_others_not_AppImage/Firefox" # Using tar.bz2 extracted

## Old
# "zzz_Old/Authy"
)

# --- Not need to change below this point ---

echo -e "\nGit_Clone_Folder: $Git_Clone_Folder"
echo -e "AppImage_Folder: $AppImage_Folder"

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

    cp -v "$Folder_Now"/*.desktop "${HOME}"/.local/share/applications/
done

## Update KDE shortcuts information
echo
kbuildsycoca5
