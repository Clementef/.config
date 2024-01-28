#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PATH
export PATH=$PATH:/usr/lib/rstudio/
export PATH=$PATH:/usr/local/bin/personal/

# environment variables
# firefox
export MOZ_USE_XINPUT2=1

# prompt and color ls
alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\n\[\e[95m\]\u\[\e[35m\]@\[\e[95m\]\W \[\e[35m\]$?\n\[\e[0m\]\$ '
