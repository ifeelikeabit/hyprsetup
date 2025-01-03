#!/bin/bash
# 
# Necessary for hyprland insstallation.
# Change packages as you wish
compositor="hyprland xdg-desktop-portal-hyprland"
statusbar="waybar"
applauncher="rofi-wayland"
screenshot="grim slurp"
copypaste="cliphist"
notification="swaync"
sound="pipewire pipewire-alsa pipewire-pulse pipewire-jack  wireplumber pavucontrol"
qtsupport="qt5-wayland qt6-wayland"
auth="polkit-kde-agent"
mediacontrol="playerctl brightnessctl"
terminal="kitty"
font="ttf-font-awesome"
filemanager="dolphin ranger"
editor="neovim"
media= "imv mpv"
blutooth="bluez blueman"
#EXTRA 
AUR="waypaper"
additional="swww firefox" 

###
setparu="sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si"
###



