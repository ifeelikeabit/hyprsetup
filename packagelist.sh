#!/bin/bash
# 
# Necessary for Hyprland installation.
# Change packages as you wish
compositor="hyprland swww xdg-desktop-portal-hyprland"
statusbar="waybar"
applauncher="rofi-wayland"
screenshot="grim slurp"
copypaste="cliphist"
notification="swaync"
sound="pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber pavucontrol"
qtsupport="qt5-wayland qt6-wayland"
auth="polkit-kde-agent"
mediacontrol="playerctl brightnessctl"
terminal="kitty"
font="otf-font-awesome ttf-hack-nerd ttf-iosevka-nerd"
filemanager="dolphin ranger"
editor="neovim"
media="imv mpv"
bluetooth="bluez blueman"

# EXTRA 
AUR="waypaper nvim-packer-git"
additional="swww firefox"

# OPTIONAL (for eval)
install_paru() {
  sudo pacman -S --needed base-devel git --noconfirm
  git clone https://aur.archlinux.org/paru.git
  cd paru || return
  makepkg -si --noconfirm
  cd ..
}

install_packages() {

	local group_name="$1"
	shift
	local packages="$@"
	sudo pacman -Sy --noconfirm
	echo -e "\033[1;34mInstalling $group_name packages: $packages\033[0m"

	sudo pacman -S --noconfirm $packages
	if [ $? -ne 0 ]; then
    echo -e "\033[0;31mWarning: Some packages in $group_name failed to install.\033[0m"
  else
    echo -e "\033[0;32m$group_name packages installed successfully.\033[0m"
  fi
}

# AUR için paru ile yükleme fonksiyonu
install_aur_packages() {
	local packages="$@"
	sudo pacman -Sy --noconfirm
	echo -e "\033[1;34mInstalling AUR packages: $packages\033[0m"

	paru -S --noconfirm $packages
	if [ $? -ne 0 ]; then
    echo -e "\033[0;31mWarning: Some AUR packages failed to install.\033[0m"
  else
    echo -e "\033[0;32mAUR packages installed successfully.\033[0m"
  fi
}
