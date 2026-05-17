echo "Add Logout option to system menu"

myarch-refresh-sddm

if [[ -f /etc/sddm.conf.d/autologin.conf ]]; then
  sudo sed -i 's/^Current=.*/Current=myarch/' /etc/sddm.conf.d/autologin.conf
fi
