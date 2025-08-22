!/bin/bash
source ./env
source ./packagelist.sh
source ./functions.sh



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
install_packages "Disk Utils" $diskutils
install_packages "Developer Tools" $developertools
install_packages "Shell" $shell
install_paru
if [ -n "$additional" ]; then
  install_packages "Additional packages" $additional
fi

if [ -n "$AUR" ]; then
  install_aur_packages $AUR
fi

print 1 "Starting config copy..."


copycfg $source_path $target_path "${items[@]}"
copycfg $source_path $HOME "${items2[@]}"

print 1 "Welcome to Hyprland... "
print 1 "Just type 'Hyprland' to get started."
