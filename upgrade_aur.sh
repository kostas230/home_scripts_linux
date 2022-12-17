#!/bin/sh

cd 
mkdir tmp_aur
cd tmp_aur

git clone https://aur.archlinux.org/nordvpn-bin.git
git clone https://aur.archlinux.org/cwm.git
git clone https://aur.archlinux.org/zoom.git
git clone https://aur.archlinux.org/teams.git
git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git
git clone https://aur.archlinux.org/nvm.git
git clone https://aur.archlinux.org/jitsi-meet-desktop.git
git clone https://aur.archlinux.org/tor-browser.git
git clone https://aur.archlinux.org/nordvpn-bin.git
git clone https://aur.archlinux.org/snapd.git
git clone https://aur.archlinux.org/firejail-git.git

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
cd ..

gpg --auto-key-locate nodefault,wkd --locate-keys torbrowser@torproject.org

cd tor-browser
makepkg -si 
cd ..

cd nordvpn-bin
makepkg -si
cd ..

cd snapd
makepkg -si
cd ..

cd firejail-git
makepkg -si
cd ..

cd
rm -rf tmp_aur
