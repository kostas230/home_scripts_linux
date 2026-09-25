#!/bin/sh

# Source standard X init scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
		[ -r "$f" ] && . "$f"
	done
	unset f
fi

xrdb -merge $HOME/.Xresources

# Set wallpaper
feh --bg-fill "$HOME/.config/homescripts/wallpaper.jpg"

# Run lemonbar
$HOME/.local/bin/t480bar &

# Run CWM under a D-Bus session
exec dbus-run-session cwm
