#!/bin/sh
ln -sf ~/.config/home_scripts/xinitrc ~/.xinitrc
ln -sf ~/.config/home_scripts/xinitrc ~/.xsession
ln -sf ~/.config/home_scripts/zprofile ~/.zprofile
ln -sf ~/.config/home_scripts/Xresources ~/.Xresources
ln -sf ~/.config/home_scripts/cwmrc ~/.cwmrc
ln -sf ~/.config/home_scripts/vimrc ~/.vimrc
ln -sf ~/.config/home_scripts/robbyrussell-new.zsh-theme ~/.oh-my-zsh/themes/robbyrussell-new.zsh-theme

sudo cp ~/.config/home_scripts/70-synaptics.conf /etc/X11/xorg.conf.d/70-synaptics.conf
sudo cp ~/.config/home_scripts/20-intel.conf /etc/X11/xorg.conf.d/20-intel.conf
