# Path to oh-my-zsh installation
export ZSH=$HOME/repos/ohmyzsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Requires ohmyzsh
plugins=(
  git
  aws
  dotenv
  osx
  docker
  docker-compose
  kubectl
  node
  npm
  pip
  pyenv
  python
  terraform
  vscode
)

source $ZSH/oh-my-zsh.sh

# Alias definitions
if [ -f ~/.sh_aliases ]; then
    . ~/.sh_aliases
fi

export PATH="/usr/local/opt/python/libexec/bin:$PATH"
