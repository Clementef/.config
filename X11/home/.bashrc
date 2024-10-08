#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt and color ls
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# source git scripts
. ~/.resources/git-completion.bash
. ~/.resources/git-prompt.sh

# bash prompt
PS1='\n\
\[\e[35m\]\u@\W\[\e[0m\] \
\[\e[92m\]$(__git_ps1 "(%s)")\[\e[0m\]\n\
\[\e[35m\]\$\[\e[0m\] '
