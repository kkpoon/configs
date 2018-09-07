source $HOME/.antigen/antigen/antigen.zsh

antigen use oh-my-zsh

# default repo plugins
antigen bundle git

# 3rd parties plugins
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# theme
antigen theme miloshadzic

# done
antigen apply

if type exa > /dev/null; then
    alias ls="exa"
    alias ll="exa -l"
    alias lll="exa -la --git"
fi

if type thefuck > /dev/null; then
    eval $(thefuck --alias hihi)
fi

# source .profile
if [ -f ~/.profile ]; then
    source ~/.profile
fi

