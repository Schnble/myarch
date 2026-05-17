echo "Use Myarch UWSM session without graphical.target startup wait"

sudo mkdir -p /usr/local/share/wayland-sessions
sudo cp "$MYARCH_PATH/default/wayland-sessions/myarch.desktop" /usr/local/share/wayland-sessions/myarch.desktop

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Session=hyprland-uwsm$/Session=myarch/' /etc/sddm.conf.d/autologin.conf
fi
