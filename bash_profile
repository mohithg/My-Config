# git alias
alias gs="git status"
alias gpo="git push origin"
alias ga="git add"
alias gc="git commit -m"
alias gsh="git stash"
alias gco="git checkout"
alias gd="git diff"
alias gl="git log --graph --pretty='\''%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gpl="git pull origin"

#export PATH=/usr/local/opt/coreutils/libexec/gnubin:$PATH
export PATH=~/bin:$PATH

# Py env
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"

#Antigen
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle pip
antigen bundle docker
antigen bundle kubectl
antigen bundle minikube

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-history-substring-search

# Load the theme.
antigen theme denysdovhan/spaceship-prompt

# Tell Antigen that you're done.
antigen apply

[ -s "/Users/mohithg/.jabba/jabba.sh" ] && source "/Users/mohithg/.jabba/jabba.sh"

# z
. ~/z/z.sh

# youtube-dl
alias ytd="youtube-dl"

#NVM
export NVM_DIR="${XDG_CONFIG_HOME/:-$HOME/.}nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# the fuck
eval $(thefuck --alias)

# Java more memory
# export _JAVA_OPTIONS="-Xmx15G -XX:MaxMetaspaceSize=8G"
