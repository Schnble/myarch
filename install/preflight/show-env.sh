# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(MYARCH_CHROOT_INSTALL|MYARCH_ONLINE_INSTALL|MYARCH_USER_NAME|MYARCH_USER_EMAIL|USER|HOME|MYARCH_REPO|MYARCH_REF|MYARCH_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
