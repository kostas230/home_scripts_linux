source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
setxkbmap -layout us,gr -option grp:win_space_toggle &
xrdb -merge ~/.Xresources &
feh --bg-scale ~/.config/home_scripts/wallpaper.jpg &
tint2 &
telegram-desktop &
signal-desktop &
thunderbird & 
cwm
