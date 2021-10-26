eval "$(/opt/homebrew/bin/brew shellenv)"

# PROMPT
BULLETTRAIN_PROMPT_ORDER=(
    status
    dir
    git
)
BULLETTRAIN_TIME_SHOW=false
SPACESHIP_GRADLE_SHOW=false
BULLETTRAIN_PROMPT_SEPARATE_LINE=false
BULLETTRAIN_PROMPT_ADD_NEWLINE=false
BULLETTRAIN_PROMPT_CHAR=''
BULLETTRAIN_RUBY_SHOW=false
BULLETTRAIN_VIRTUALENV_SHOW=false
BULLETTRAIN_DIR_EXTENDED=1
BULLETTRAIN_DIR_BG=235
BULLETTRAIN_DIR_FG=255
BULLETTRAIN_HG_SHOW=false
BULLETTRAIN_GIT_CLEAN="%F{028} ✔%F{black}"
BULLETTRAIN_GIT_COLORIZE_DIRTY=true

SPACESHIP_BATTERY_SHOW=false
SPACESHIP_GCLOUD_SHOW=false
SPACESHIP_HG_SHOW=false
SPACESHIP_PACKAGE_SHOW=false
SPACESHIP_NODE_SHOW=false
SPACESHIP_RUBY_SHOW=false
SPACESHIP_ELIXIR_SHOW=false
SPACESHIP_XCODE_SHOW_LOCAL=false
SPACESHIP_SWIFT_SHOW_LOCAL=false
SPACESHIP_GOLANG_SHOW=false
SPACESHIP_PHP_SHOW=false
SPACESHIP_RUST_SHOW=false
SPACESHIP_HASKELL_SHOW=false
SPACESHIP_JULIA_SHOW=false
SPACESHIP_DOCKER_SHOW=false
SPACESHIP_AWS_SHOW=false
SPACESHIP_VENV_SHOW=false
SPACESHIP_CONDA_SHOW=false
SPACESHIP_PYENV_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECONTEXT_SHOW=false
SPACESHIP_VI_MODE_SHOW=false
SPACESHIP_DIR_TRUNC=3
# SPACESHIP_DIR_TRUNC_PREFIX="-/"
SPACESHIP_PROMPT_SEPARATE_LINE=false

# Antigen init
source $HOME/.antigen/antigen.zsh

# ZSH options
setopt HIST_IGNORE_ALL_DUPS

# OH MY ZSH OPTIONS
DISABLE_AUTO_UPDATE="true"

# ANTIGEN
antigen use oh-my-zsh

# PLUGINS
antigen bundle git
#antigen bundle thefuck
antigen bundle git-flow
antigen bundle z
antigen bundle brew
antigen bundle sublime
antigen bundle docker
antigen bundle docker-compose
antigen bundle kubectl
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

# THEME
# antigen theme caiogondim/bullet-train.zsh bullet-train
antigen theme https://github.com/denysdovhan/spaceship-prompt spaceship
# antigen bundle mafredri/zsh-async
# antigen bundle sindresorhus/pure

# ANTIGEN APPLY
antigen apply

# UTF
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# ALIASES
alias imshop-env='brew services run postgresql@10; brew services run rabbitmq; brew services run redis; brew services run elasticsearch-full; brew services run kibana-full'

# GO
export GOPATH=/Users/dmitriiivashko/Projects/Go
export PATH="$PATH:$GOPATH/bin"

# VARS
export PATH="/usr/local/sbin:/usr/local/bin:$PATH"
export TERM=xterm-256color

# Postgres
export PATH="/opt/homebrew/opt/postgresql@10/bin:$PATH"

# DIRENV
eval "$(direnv hook zsh)"

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

alias idea='open . -na "IntelliJ IDEA.app"'

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
export PATH=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/bin:$PATH

source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/dmitriiivashko/yandex-cloud/path.bash.inc' ]; then source '/Users/dmitriiivashko/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/dmitriiivashko/yandex-cloud/completion.zsh.inc' ]; then source '/Users/dmitriiivashko/yandex-cloud/completion.zsh.inc'; fi

# KUBERNETES
alias kac='source <(/usr/local/bin/kubectl completion zsh)'
alias kgpns='kubectl get pod -o=custom-columns=NAME:.metadata.name,STATUS:.status.phase,NODE:.spec.nodeName --all-namespaces'
