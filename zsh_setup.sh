#!/bin/sh

cat >> ~/.zshrc <<EOF
alias ls="exa"
alias ll="exa -l"
alias lll="exa -la --git"

alias vim="nvim"
alias vimf='vim -p "$(fzf -m)"'

EOF
