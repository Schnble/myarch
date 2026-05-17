if [[ -n ${MYARCH_ONLINE_INSTALL:-} ]]; then
  # Install build tools
  myarch-pkg-add base-devel

  # Refresh all repos
  sudo pacman -Syyuu --noconfirm
fi
