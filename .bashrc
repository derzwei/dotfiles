#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Mantener las últimas 10000 entradas
HISTSIZE=10000
HISTFILESIZE=10000
PROMPT_COMMAND='history -a'

# Ignorar comandos duplicados
export HISTCONTROL=ignoredups:erasedups

# Ignorar determinados comandos
#export HISTIGNORE="history:ls:pwd:"

# Añadir al historial en lugar de sobreescribir
shopt -s histappend

# Establecer alias
alias ls='ls --color=auto'
alias ll='ls -lah --color=auto'
alias vim='nvim'
alias ytmp3='youtube-dl --extract-audio --audio-format mp3'

# Bash prompt personalizado
PS1='\[\e[1;37m\][\u\[\e[1;31m\]@\[\e[1;37m\]\h \[\e[1;34m\]\W\[\e[1;37m\]]\[\e[1;32m\]\$\[\e[0m\] '
#PS1='\[\e[1;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;32m\]\$\[\e[m\]\[\e[1;37m\] '

