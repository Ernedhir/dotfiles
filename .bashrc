#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

mkcdir ()
{
    mkdir -p -- "$1" &&
    cd -P -- "$1"
}

alias ls='LC_NUMERIC=C ls --color=auto -lh'
alias la='LC_NUMERIC=C ls --color=auto -lah'
alias grep='grep --color=auto'
alias n='nvim'
alias py='python3'

PS1='[\u@\h \W]\$ '
