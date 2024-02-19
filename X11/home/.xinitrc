#!/bin/sh

# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# X mouse settings
x_reset

sxhkd & # keymap
dunst & # notifications
~/.fehbg & # wallpaper
xscreensaver -no-splash & # screen lock
dwmstatus &
exec dwm # window manager
# qtile start
