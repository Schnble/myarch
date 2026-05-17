echo "Move Myarch Package Repository after Arch core/extra/multilib and remove AUR"

myarch-refresh-pacman
sudo pacman -Syu --noconfirm
