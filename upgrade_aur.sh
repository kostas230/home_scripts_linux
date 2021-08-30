#!/bin/sh

cd 
mkdir tmp_aur
cd tmp_aur

git clone https://aur.archlinux.org/nordvpn-bin.git
git clone https://aur.archlinux.org/cwm.git
git clone https://aur.archlinux.org/zoom.git
git clone https://aur.archlinux.org/teams.git
git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git
git clone https://https://aur.archlinux.org/nvm.git
git clone https://aur.archlinux.org/jitsi-meet-desktop.git

cd nordvpn-bin
makepkg -si
cd ..

cd cwm
makepkg -si 
cd ..

cd zoom
makepkg -si 
cd ..

cd teams
makepkg -si
cd ..

cd skypeforlinux-stable-bin
makepkg -si
cd ..

sudo pacman -S png++ npm

cd nvm 
makepkg -si
cd ..

cd jitsi-meet-desktop
makepkg -si

cd
rm -rf tmp_aur
