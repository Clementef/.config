#!/bin/sh

# keyboard repeat delay and rate
xset r rate 250 40

sxhkd & # keymap
dunst & # notifications
~/.fehbg & # wallpaper
qtile start # window manager
