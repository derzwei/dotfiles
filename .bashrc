#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias vim='nvim'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'

PS1='\[\e[1;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\]\[\e[1;37m\] '
