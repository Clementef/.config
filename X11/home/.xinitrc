#!/bin/sh

# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# X mouse settings
x_reset

~/.fehbg & # wallpaper
firefox & # web browser
bitwarden-desktop & # pass manager
sxhkd & # keymap
dunst & # notifications
unclutter -idle 0.6 & # cursor hiding
udiskie & # usb automounting
xscreensaver -no-splash & # screen lock
dwmstatus & # status bar
picom --config "$HOME/.config/picom/picom.conf" & # window compositor
nordvpn c & # vpn
exec dwm # window manager
# qtile start

