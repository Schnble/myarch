# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run myarch-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/myarch/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$MYARCH_USER_NAME"
<Multi_key> <space> <e> : "$MYARCH_USER_EMAIL"
EOF
