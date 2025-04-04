#!/bin/sh

# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# load xmodmap
if [ -s ~/.Xmodmap ]; then
    xmodmap ~/.Xmodmap
fi

# X mouse settings
x_reset

# ~/.fehbg & # wallpaper
mullvad-vpn & # vpn
sxhkd & # keymap
dunst & # notifications
unclutter -idle 0.6 & # cursor hiding
udiskie & # usb automounting
xscreensaver -no-splash & # screen lock
dwmstatus & # status bar
# picom --config "$HOME/.config/picom/picom.conf" & # window compositor
exec dwm # window manager
