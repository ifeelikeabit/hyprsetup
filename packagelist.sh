#!/bin/bash
# 
# Necessary for hyprland insstallation.
# Change packages as you wish
compositor="hyprland"
statusbar="waybar"
applauncher="rofi-wayland"
screenshot="grim slurp"
copypaste="cliphist"
notification="swaync"
sound="pipewire pipewire-alsa pipewire-pulse pipewire-jack  wireplumber pavucontrol"
qtsupport="qt5-wayland qt6-wayland"
auth="polkit-kde-agent"
mediacontrol="playerctl brightnessctl"
wallpaper="waypaper swww"
terminal="kitty"
font="ttf-font-awesome"

#EXTRA 
AUR="paru"
additional=" firefox neovim steam gamemode"
installparu="sudo pacman -S --needed base-devel 
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si"
installyay="echo "i use paru btw""






