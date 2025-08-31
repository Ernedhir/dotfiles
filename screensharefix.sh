killall waybar
killall pipewire
sleep 2
systemctl --user restart pipewire pipewire-pulse wireplumber
sleep 2
systemctl --user restart xdg-desktop-portal xdg-desktop-portal-gtk xdg-desktop-portal-hyprland
waybar &
