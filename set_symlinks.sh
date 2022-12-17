#!/bin/sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

ln -sf ~/.config/home_scripts/xinitrc ~/.xinitrc
ln -sf ~/.config/home_scripts/xinitrc ~/.xsession
ln -sf ~/.config/home_scripts/zprofile ~/.zprofile
ln -sf ~/.config/home_scripts/Xresources ~/.Xresources
ln -sf ~/.config/home_scripts/cwmrc ~/.cwmrc
ln -sf ~/.config/home_scripts/vimrc ~/.vimrc
ln -sf ~/.config/home_scripts/robbyrussell-new.zsh-theme ~/.oh-my-zsh/themes/robbyrussell-new.zsh-theme

vim +PluginInstall +qall
