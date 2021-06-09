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

# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"

eval "$(pyenv virtualenv-init -)"

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
