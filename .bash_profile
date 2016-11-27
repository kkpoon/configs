# git tab completion (homebrew)
if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
    . `brew --prefix`/etc/bash_completion.d/git-completion.bash
fi

# git info in PS1
if [ -f `brew --prefix`/etc/bash_completion.d/git-prompt.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/git-prompt.sh
    export PS1='\u:\W$(__git_ps1 " (%s)") \$ '
fi

# hub completion
if [ -f `brew --prefix`/etc/bash_completion.d/hub.bash_completion.sh ]; then
    . `brew --prefix`/etc/bash_completion.d/hub.bash_completion.sh
fi

# source .profile
if [ -f ~/.profile ]; then
    source ~/.profile
fi
