#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# prompt and color ls
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# path
export PATH=$PATH:$HOME/documents/software/scripts/

# aliases
alias py='python'
alias pym='python -m'
alias imgs='nsxiv -b *'

# source git-completion and -prompt
. ~/.resources/git-completion.bash
. ~/.resources/git-prompt.sh
PS1='\n\
\[\e[35m\]\u@\W\[\e[0m\] \
\[\e[92m\]$(__git_ps1 "(%s)")\[\e[0m\]\n\
\[\e[35m\]\$\[\e[0m\] '
