#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias n='nvim'
alias upsys='~/upgrade.sh'
alias sshd='~/ssh.sh'
PS1='[\u@\h \W]\$ '
