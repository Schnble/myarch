source $MYARCH_INSTALL/preflight/guard.sh
source $MYARCH_INSTALL/preflight/begin.sh
run_logged $MYARCH_INSTALL/preflight/show-env.sh
run_logged $MYARCH_INSTALL/preflight/pacman.sh
run_logged $MYARCH_INSTALL/preflight/migrations.sh
run_logged $MYARCH_INSTALL/preflight/first-run-mode.sh
run_logged $MYARCH_INSTALL/preflight/disable-mkinitcpio.sh
