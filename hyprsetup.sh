#!/bin/bash

source ./packagelist.sh
pwd = $loc 

cd $HOME
eval "$setparu"
rm -rf paru
echo -e "\033[4;34mNightmare is beginning\033[0m"
sudo pacman -Sy --noconfirm  $compositor $statusbar $applauncher $screenshot $copypaste $notification $sound $qtsupport  $auth $mediacontrol  $wallpaper $terminal $font $filemanager $editor


if [ -n "$additional" ]; then
  sudo pacman -Sy --noconfirm $additional 
fi

if [ -n "$AUR" ]; then
  paru -Sy --noconfirm $AUR
fi



if [ -e "$location/cfg" ]; then  
cp -rv $loc/cfg/hypr $HOME/.config/
cp -rv $loc/cfg/nvim $HOME/.config/
cp -rv $loc/cfg/rofi $HOME/.config/
cp -rv $loc/cfg/waybar $HOME/.config/
else
    echo -e "\033[0;31mConfig file not found, skipping."
fi





echo -e "\033[0;32mWelcome to Hyprland... "
echo -e "\033[0;33mJust type 'Hyprland' to get started."



