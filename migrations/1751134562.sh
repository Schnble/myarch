echo "Ensure all indexes and packages are up to date"

myarch-update-keyring
myarch-refresh-pacman
sudo pacman -Syu --noconfirm
