if [[ -n ${MYARCH_ONLINE_INSTALL:-} ]]; then
  # Install build tools
  myarch-pkg-add base-devel

  # Configure pacman with omarchy repo for custom packages
  sudo cp -f ~/.local/share/myarch/default/pacman/pacman-${MYARCH_MIRROR:-stable}.conf /etc/pacman.conf
  
   # Restore working mirrorlist
  sudo bash -c 'echo "Server = https://mirror.rackspace.com/archlinux/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist'

  # Add omarchy keyring
  sudo pacman-key --recv-keys 40DFB630FF42BCFFB047046CF0134EE6B0CAC571 --keyserver keys.openpgp.org
  sudo pacman-key --lsign-key 40DFB630FF42BCFFB047046CF0134EE6B0CAC571

  sudo pacman -Sy
  myarch-pkg-add omarchy-keyring

  # Refresh all repos
  sudo pacman -Syyuu --noconfirm
fi