#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define Myarch locations
export MYARCH_PATH="$HOME/.local/share/myarch"
export MYARCH_INSTALL="$MYARCH_PATH/install"
export MYARCH_INSTALL_LOG_FILE="/var/log/myarch-install.log"
export PATH="$MYARCH_PATH/bin:$PATH"

# Install
source "$MYARCH_INSTALL/helpers/all.sh"
source "$MYARCH_INSTALL/preflight/all.sh"
source "$MYARCH_INSTALL/packaging/all.sh"
source "$MYARCH_INSTALL/config/all.sh"
source "$MYARCH_INSTALL/login/all.sh"
source "$MYARCH_INSTALL/post-install/all.sh"
