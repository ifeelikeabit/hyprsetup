#!/bin/bash


print() { #Print msg with selected color code.
	local c=$1
	shift
	case $c in
		-1) echo -e "${RED} ${@} ${RESET}" ;;
		0) echo -e "${@} " ;;
		1) echo -e "${GREEN} ${@} ${RESET}" ;;
		2) echo -e "${YELLOW} ${@} ${RESET}" ;;
		3) echo -e "${BLUE} ${@} ${RESET}" ;;

		*) echo  $@ ;;
	esac
}

install_paru() { #Paru is aur package manager for arch linux
  sudo pacman -S --needed base-devel git --noconfirm
  git clone https://aur.archlinux.org/paru.git
  cd paru || return
  makepkg -si --noconfirm
  cd ..
}

install_packages() { #Installs extra packages
	local group_name="$1"
	shift #Shifted all arguments to $1.
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

install_aur_packages() { #Installs aur packages Usage: install_aur_packages $AUR . ~set your aur packages in packagelist~
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


copycfg() { #pass values $1=source $2=target $3=items Usage : copycfg source_path  target_path "${source[@]} " 
	#~you can set env variables at env file~
	local source=("$1")  
	shift
	local target=("$1")
	shift
	local items=("$@")


	for item in "${items[@]}"; do
		local src="$source/$item"

		if [ -d "$src" ]; then
			print 3 "Copying $item folder..."
			cp -rfv "$src" "$target"
		elif [ -f "$src" ]; then
			print 3 "Copying $item file..."
			cp -fv "$src" "$target"
		else
			print 2 "$item not found, skipping."
		fi
	done
}

