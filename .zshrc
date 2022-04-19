# Path to oh-my-zsh installation
export ZSH=$HOME/.oh-my-zsh

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
  fzf
  macos
  dirhistory
  docker
  docker-compose
  history
  kubectl
  node
  npm
  pip
  pyenv
  python
  terraform
  vscode
  zsh-completions
)

source $ZSH/oh-my-zsh.sh

# Alias definitions
if [ -f ~/.sh_aliases ]; then
    . ~/.sh_aliases
fi

# add zsj amd fzf completion
source $HOME/.oh-my-zsh/plugins/fzf-tab-completion/zsh/fzf-zsh-completion.sh
zstyle ':completion:*' fzf-search-display true

export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# uncomment only if needed when installed on OSX via homebrew
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
