#!/bin/sh
mkdir -p ~/.src
cd ~/.src

git clone https://aur.archlinux.org/cwm.git
git clone https://aur.archlinux.org/nordvpn-bin.git
git clone https://aur.archlinux.org/skypeforlinux-stable-bin.git
git clone https://aur.archlinux.org/zoom.git
git clone https://aur.archlinux.org/streamio.git

cd ~/.src/cwm
makepkg -si

cd ~/.src/nordvpn-bin
makepkg -si

cd ~/.src/skypeforlinux-stable-bin
makepkg -si

cd ~/.src/zoom
makepkg -si

cd ~/.src/streamio
makepkg -si

rm -rf ~/.src
