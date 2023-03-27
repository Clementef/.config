#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#vim mode
#set -o vi

#aliases
alias vim="nvim" 

#colors and prompt
alias ls='ls --color=auto'
PS1='\n\[\e[0m\]| \[\e[0;94m\]\u \[\e[0;1;95m\][\[\e[0;1;95m\]\W\[\e[0;1;95m\]] \[\e[0;94m\]$(git branch 2>/dev/null | grep ^* | sed -e "'"s/ //"'" -e "'"s/*/@/"'")\n\[\e[0m\]| \[\e[0;92m\]> \[\e[0m\]'

pfetch
