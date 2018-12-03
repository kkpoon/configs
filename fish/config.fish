set -g theme_date_format "+%H:%M"
set -g theme_color_scheme terminal-dark

# mute the greeting
set fish_greeting

# use exa instead of ls
if type -q exa
    alias ls="exa"
    alias ll="exa -l"
    alias lll="exa -la --git"
    alias vimf="vim -p (fzf -m)"
end

if [ -f ~/.profile ]
    source ~/.profile
end
