#!/bin/zsh
ln -sf ~/.config/home_scripts_linux/.xinitrc ~/.xinitrc
ln -sf ~/.config/home_scripts_linux/.xinitrc ~/.xsession
ln -sf ~/.config/home_scripts_linux/.zprofile ~/.zprofile
ln -sf ~/.config/home_scripts_linux/.Xresources ~/.Xresources
ln -sf ~/.config/home_scripts_linux/.cwmrc ~/.cwmrc
ln -sf ~/.config/home_scripts_linux/.vimrc ~/.vimrc
cp -vf ~/.config/home_script_linux/robbyrussell.zsh-theme ~/.config/.oh-my-zsh/themes/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
