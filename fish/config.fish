# mute the greeting
set fish_greeting

# use exa instead of ls
if type -q exa
    alias ls="exa"
    alias ll="exa -l"
    alias lll="exa -la --git"
end

if type -q thefuck
    thefuck --alias hihi | source
end

if [ -f ~/.profile ]
    source ~/.profile
end
