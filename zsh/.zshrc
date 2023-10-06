eval "$(/opt/homebrew/bin/brew shellenv)"

# PROMPT
BULLETTRAIN_PROMPT_ORDER=(
    status
    dir
    git
)

SPACESHIP_PROMPT_ASYNC=false
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
SPACESHIP_PYTHON_SHOW=false
SPACESHIP_DOTNET_SHOW=false
SPACESHIP_EMBER_SHOW=false
SPACESHIP_KUBECTL_CONTEXT_SHOW=false
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

#export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home
#export PATH=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/bin:$PATH
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home
#export PATH=/Library/Java/JavaVirtualMachines/zulu-8.jdk/Contents/Home/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/zulu-15.jdk/Contents/Home
export PATH=/Library/Java/JavaVirtualMachines/zulu-15.jdk/Contents/Home/bin:$PATH

#source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
#source "/opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"

# The next line updates PATH for Yandex Cloud CLI.
if [ -f '/Users/dmitriiivashko/yandex-cloud/path.bash.inc' ]; then source '/Users/dmitriiivashko/yandex-cloud/path.bash.inc'; fi

# The next line enables shell command completion for yc.
if [ -f '/Users/dmitriiivashko/yandex-cloud/completion.zsh.inc' ]; then source '/Users/dmitriiivashko/yandex-cloud/completion.zsh.inc'; fi

# KUBERNETES
alias kac='source <(/usr/local/bin/kubectl completion zsh)'
alias kgpns='kubectl get pod -o=custom-columns=NAME:.metadata.name,STATUS:.status.phase,NODE:.spec.nodeName --all-namespaces'

export PATH="/opt/homebrew/opt/helm@2/bin:$PATH"

# RUBY
export PATH="/opt/homebrew/opt/ruby@3.1/bin:$PATH"
export PATH="/opt/homebrew/lib/ruby/gems/3.1.0/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/ruby@3.1/lib"
export CPPFLAGS="-I/opt/homebrew/opt/ruby@3.1/include"

# MYSQL
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"

export NPM_CONFIG_GITHUB_TOKEN=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
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"

# RUST
export PATH="$HOME/.cargo/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
autoload -U add-zsh-hook
load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

