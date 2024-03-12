#!/bin/sh

# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# X mouse settings
x_reset

sxhkd & # keymap
dunst & # notifications
~/.fehbg & # wallpaper
unclutter -idle 0.6 & # cursor hiding
firefox & # web browser
udiskie & # usb automounting
xscreensaver -no-splash & # screen lock
dwmstatus & # status bar
picom --config "$HOME/.config/picom/picom.conf" & # window compositor
nordvpn c & # vpn
exec dwm # window manager
# qtile start

