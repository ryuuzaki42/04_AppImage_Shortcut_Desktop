
# AppImage_Shortcut_Desktop
Shortcuts (*.desktop) to AppImage files

## Use:
1 Clone this repository in the place you like to save the shortcuts

    git clone https://github.com/ryuuzaki42/04_AppImage_Shortcut_Desktop

2 Change variables **AppImage_Folder** and **Git_Clone_Folder** in 0_install_shortcuts_JBs.sh
    AppImage_Folder with the folder that are the AppImage files
    Git_Clone_Folder with the location were respository was cloned

3 Run script to install/copy the */*.desktop to ~/.local/share/applications/
    and update the "Prog_run.sh" with the correct folder that are the files (AppImage or Binaries)

    ./0_install_shortcuts_JBs.sh
