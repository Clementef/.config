#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#load Xresources
xrdb "$userrresources"

#key repeat speed
xset r rate 200 30

#environment variables
export PF_COL1=4
export PF_COL3=5
export PF_COL2=9
export PF_ASCII="Dragonfly"
export PF_INFO="ascii title os host kernel shell palette"

#PATH
export PATH="${PATH}:/home/clem/Software"
export PATH="${PATH}:/home/clem/Software/Personal"
export PATH="${PATH}:/home/clem/Software/Personal/s_dwmblocks"

fehbg & #desktop background
sxhkd & #keyboard shortcuts
dunst & #notifications
unclutter --timeout 0.5 --jitter 2 --ignore-scrolling --start-hidden & #mouse hiding
dwmblocks & #dwm status bar
picom -b #window compositor
brave &
exec dwm #window manager
