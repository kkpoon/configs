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

# source .profile
if [ -f ~/.profile ]; then
    source ~/.profile
fi

