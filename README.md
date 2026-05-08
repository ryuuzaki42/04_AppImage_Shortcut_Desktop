
# AppImage_Shortcut_Desktop
Shortcuts (*.desktop) to AppImage files

## Use:
1 Clone this repository in the place you like to save the shortcuts

    git clone https://github.com/ryuuzaki42/04_AppImage_Shortcut_Desktop

2 Change the variables **AppImage_Folder**, **Git_Clone_Folder** and **Shortcut_Install** in 0_install_shortcuts_JBs.sh

- AppImage_Folder with the folder that are the AppImage files

- Git_Clone_Folder with the location where repository was cloned

- Shortcut_Install with the shortcuts to be installed

3 Run the script to install/copy the */*.desktop to ~/.local/share/applications/
and update the "Prog_run.sh" with the correct folder that are the files (AppImage or Binaries)

    ./0_install_shortcuts_JBs.sh
