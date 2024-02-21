#!/bin/sh

# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# X mouse settings
x_reset

sxhkd & # keymap
dunst & # notifications
~/.fehbg & # wallpaper
unclutter -idle 0.6 &
xscreensaver -no-splash & # screen lock
dwmstatus &
firefox &
exec dwm # window manager
# qtile start
