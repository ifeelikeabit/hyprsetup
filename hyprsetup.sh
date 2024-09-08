#!/bin/bash

source ./packagelist.sh

echo "Nightmare is beginning, give me your password"
sudo pacman -Sy --noconfirm  $compositor $statusbar $applauncher $screenshot $copypaste $notification $sound $qtsupport  $auth $mediacontrol  $wallpaper $terminal $font

if [ -n "$installparu"]; then
  $installparu
fi

if [ -n "$installyay"]; then
  $installyay
fi


if [ -n "$additional" ]; then
   $AUR -Sy $additional 
fi


if [ -e "cfg" ]; then  
cp -rv ./cfg/hypr $HOME/.config/
cp -rv ./cfg/nvim $HOME/.config/
cp -rv ./cfg/rofi $HOME/.config/
cp -rv ./cfg/waybar $HOME/.config/
else
    echo "Config file not found, skipping."
fi

echo "Welcome to Hyprland... "
echo "Just type 'Hyprland' to get started."



