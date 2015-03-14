export PATH="$(brew --prefix php54)/bin:$PATH"
PATH="/usr/local/sbin:$PATH"

source ~/.profile

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export GRADLE_OPTS="-Dfile.encoding=utf-8"

export HISTCONTROL=ignoreboth
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
