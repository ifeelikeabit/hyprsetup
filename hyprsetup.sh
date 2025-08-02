!/bin/bash

source ./packagelist.sh
loc=$(pwd)


echo -e "\033[1;33mStarting package installation...\033[0m"

install_packages "Compositor" $compositor
install_packages "Statusbar" $statusbar
install_packages "App launcher" $applauncher
install_packages "Screenshot tools" $screenshot
install_packages "Copy/Paste tools" $copypaste
install_packages "Notification" $notification
install_packages "Sound" $sound
install_packages "Qt support" $qtsupport
install_packages "Authentication" $auth
install_packages "Media control" $mediacontrol
install_packages "Terminal" $terminal
install_packages "Fonts" $font
install_packages "File managers" $filemanager
install_packages "Editor" $editor
install_packages "Media players" $media
install_packages "Bluetooth" $bluetooth
install_paru
if [ -n "$additional" ]; then
  install_packages "Additional packages" $additional
fi

if [ -n "$AUR" ]; then
  install_aur_packages $AUR
fi

#If you add own cfg files put there your subfolders. 
config_dirs=(hypr nvim rofi waybar kitty)

for dir in "${config_dirs[@]}"; do
  if [ -d "$loc/cfg/$dir" ]; then
    echo -e "\033[0;34mCopying $dir config..."
    cp -rfv "$loc/cfg/$dir" "$HOME/.config/"
  else
    echo -e "\033[0;33m$dir config not found, skipping."
  fi
done




echo -e "\033[0;32mWelcome to Hyprland... "
echo -e "\033[0;33mJust type 'Hyprland' to get started."





