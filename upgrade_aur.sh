#!/bin/sh
mkdir -p ~/.src
cd ~/.src

git clone https://aur.archlinux.org/cwm.git
git clone https://aur.archlinux.org/nordvpn-bin.git
git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git

cd ~/.src/cwm
makepkg -si

cd ~/.src/nordvpn-bin
makepkg -si

cd ~/.src/skypeforlinux-stable-bin
makepkg -si

rm -rf ~/.src
