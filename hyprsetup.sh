#!/bin/bash

source ./packagelist.sh
$setparu

echo -e "\033[4;34mNightmare is beginning\033[0m"
sudo pacman -Sy --noconfirm  $compositor $statusbar $applauncher $screenshot $copypaste $notification $sound $qtsupport  $auth $mediacontrol  $wallpaper $terminal $font $filemanager $editor


if [ -n "$additional" ]; then
  sudo pacman -Sy --noconfirm $additional 
fi

if [ -n "$AUR" ]; then
  paru -Sy --noconfirm $AUR
fi

if [ -e "cfg" ]; then  
cp -rv ./cfg/hypr $HOME/.config/
cp -rv ./cfg/nvim $HOME/.config/
cp -rv ./cfg/rofi $HOME/.config/
cp -rv ./cfg/waybar $HOME/.config/
else
    echo -e "\033[0;31mConfig file not found, skipping."
fi





echo -e "\033[0;32mWelcome to Hyprland... "
echo -e "\033[0;33mJust type 'Hyprland' to get started."



