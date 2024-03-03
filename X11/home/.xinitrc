#!/bin/sh

# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# X mouse settings
x_reset

sxhkd & # keymap
dunst & # notifications
~/.fehbg & # wallpaper
unclutter -idle 0.6 & # cursor hiding
udiskie & # usb mounting
xscreensaver -no-splash & # screen lock
dwmstatus & # status bar
firefox & # web browser
picom --config "$HOME/.config/picom/picom.conf" & # window compositor
exec dwm # window manager
# qtile start
