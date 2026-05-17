# Install all base packages
mapfile -t packages < <(grep -v '^#' "$MYARCH_INSTALL/myarch-base.packages" | grep -v '^$')
myarch-pkg-add "${packages[@]}"
