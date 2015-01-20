export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

PATH="/usr/local/sbin:$PATH"
export PATH="$(brew --prefix php54)/bin:$PATH"

export GRADLE_OPTS="-Dfile.encoding=utf-8"
export HISTCONTROL=ignoreboth

source ~/.profile

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
