# .profile
#
# load PATH and other environment varaibles here.

# defaults
export MOZ_USE_XINPUT2=1
# expot BROWSER=firefox
export EDITOR=nvim
# external python venvs
export VENV="$HOME/documents/software/env"

# PATH
# default
export XDG_CONFIG_HOME="$HOME/.config"
# personal
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/bin/rmd
export PATH=$PATH:$HOME/bin/pdf
export PATH=$PATH:$HOME/bin/dmenu
export PATH=$PATH:$HOME/bin/notes
export PATH=$PATH:$HOME/bin/pacman
export PATH=$PATH:$HOME/bin/system
export PATH=$PATH:$HOME/bin/dwmstatus
export PATH=$PATH:$HOME/bin/colorscripts
export PATH=$PATH:$HOME/bin/plocate
export PATH=$PATH:$HOME/bin/pico-8

# pfetch
export PF_INFO="title os host kernel memory pkgs shell uptime"
export PF_COL1=4
export PF_COL3=5
export PF_ALIGN=""

# git
export GIT_PS1_SHOWDIRTYSTATE=1
