#!/bin/bash
stty -ixon # Disable ctrl-s and ctrl-q
shopt -s autocd # Allows you to cd into directory merely by typing the directory name.
shopt -s histappend # append to the history file, don't overwrite it
set -o vi # Enables vi mode in terminal
export EDITOR='vi'
export VISUAL='vi'
HISTSIZE= HISTFILESIZE= # Infinite history

[ -f "$HOME/.local/bin/" ] && . "$HOME/.local/bin" # load shell scripts
[ -f "$HOME/.config/aliasrc" ] && . "$HOME/.config/aliasrc" # load aliases

export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\u\[$(tput setaf 2)\]@\[$(tput setaf 4)\]\h \[$(tput setaf 5)\]\W\[$(tput setaf 1)\]]\[$(tput setaf 7)\]\\$ \[$(tput sgr0)\]"
export LS_COLORS='di=4;35:fi=0:ln=33:pi=5:so=5:bd=5:cd=5:or=31:mi=37:ex=36:*.deb=31:*.rpm=31:*.png=35:*.jpg=35:*.c=92:*.jar=33:*.py=93:*.h=90:*.txt=94:*.odt=104:*.csv=102:*.rb=31:*.cpp=92:*.sh=92:*.html=96:*.zip=4;33:*.tar.gz=4;33:*.mp4=105:*.mp3=106:*.m4a=106:*.opus=106'
export FZF_DEFAULT_OPTS='--bind "alt-j:down,alt-k:up,alt-j:preview-down,alt-k:preview-up"'
