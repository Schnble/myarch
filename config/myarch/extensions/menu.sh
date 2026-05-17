# Overwrite parts of the myarch-menu with user-specific submenus.
# See $MYARCH_PATH/bin/myarch-menu for functions that can be overwritten.
#
# WARNING: Overwritten functions will obviously not be updated when Myarch changes.
#
# Example of minimal system menu:
#
# show_system_menu() {
#   case $(menu "System" "  Lock\n󰐥  Shutdown") in
#   *Lock*) myarch-system-lock ;;
#   *Shutdown*) myarch-system-shutdown ;;
#   *) back_to show_main_menu ;;
#   esac
# }
#
# Example of overriding just the about menu action: (Using zsh instead of bash (default))
#
# show_about() {
#   exec myarch-launch-or-focus-tui "zsh -c 'fastfetch; read -k 1'"
# }
