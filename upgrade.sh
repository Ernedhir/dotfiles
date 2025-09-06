#!/bin/bash
sudo pacman -Syu --noconfirm
echo -e "\nPacman update done!\n"
sleep 0.25
yay -Syu --noconfirm
echo -e "\nYay update done!\n"
sleep 0.25
flatpak update
echo -e "\nFlatpak update done!\n"
sleep 1
echo "Done!"
