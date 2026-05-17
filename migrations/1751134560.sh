echo "Add UWSM env"

export MYARCH_PATH="$HOME/.local/share/myarch"
export PATH="$MYARCH_PATH/bin:$PATH"

mkdir -p "$HOME/.config/uwsm/"
cat <<EOF | tee "$HOME/.config/uwsm/env"
export MYARCH_PATH=$HOME/.local/share/myarch
export PATH=$MYARCH_PATH/bin/:$PATH
EOF

# Ensure we have the latest repos and are ready to pull
myarch-update-keyring
myarch-refresh-pacman
sudo systemctl restart systemd-timesyncd
sudo pacman -Sy # Normally not advisable, but we'll do a full -Syu before finishing

mkdir -p ~/.local/state/myarch/migrations
touch ~/.local/state/myarch/migrations/1751134560.sh

# Remove old AUR packages to prevent a super lengthy build on old Myarch installs
myarch-pkg-drop zoom qt5-remoteobjects wf-recorder wl-screenrec

# Get rid of old AUR packages
bash $MYARCH_PATH/migrations/1756060611.sh
touch ~/.local/state/myarch/migrations/1756060611.sh

bash myarch-update-perform
