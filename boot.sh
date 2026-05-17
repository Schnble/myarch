#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export MYARCH_ONLINE_INSTALL=true

ansi_art='                 ▄▄▄
 ▄█████▄    ▄███████████▄    ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
███   ███  ███   ███   ███ ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
███   ███  ███   ███   ███ ▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
███   ███  ███   ███   ███  ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
 ▀█████▀    ▀█   ███   █▀   ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
                                       ███   █▀                                  '

clear
echo -e "\n$ansi_art\n"

# Use custom branch if instructed, otherwise default to master
MYARCH_REF="${MYARCH_REF:-master}"

# Set mirror based on branch
if [[ $MYARCH_REF == "dev" ]]; then
  export MYARCH_MIRROR=edge
  echo 'Server = https://mirror.myarch.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
elif [[ $MYARCH_REF == "rc" ]]; then
  export MYARCH_MIRROR=rc
  echo 'Server = https://rc-mirror.myarch.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
else
  export MYARCH_MIRROR=stable
  echo 'Server = https://stable-mirror.myarch.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
fi

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to Schnble/myarch
MYARCH_REPO="${MYARCH_REPO:-Schnble/myarch}"

echo -e "\nCloning Myarch from: https://github.com/${MYARCH_REPO}.git"
rm -rf ~/.local/share/myarch/
git clone "https://github.com/${MYARCH_REPO}.git" ~/.local/share/myarch >/dev/null

echo -e "\e[32mUsing branch: $MYARCH_REF\e[0m"
cd ~/.local/share/myarch
git fetch origin "${MYARCH_REF}" && git checkout "${MYARCH_REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/myarch/install.sh
