# Path to oh-my-zsh installation
export ZSH=$HOME/.ohmyzsh

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

# Fix Interop Error that randomly occurs in vscode terminal when using WSL2
fix_wsl2_interop() {
    for i in $(pstree -np -s $$ | grep -o -E '[0-9]+'); do
        if [[ -e "/run/WSL/${i}_interop" ]]; then
            export WSL_INTEROP=/run/WSL/${i}_interop
        fi
    done
}

# add zsj amd fzf completion
source $HOME/.ohmyzsh/plugins/fzf-tab-completion/zsh/fzf-zsh-completion.sh
zstyle ':completion:*' fzf-search-display true

export PATH="$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

# uncomment only if needed when installed on OSX via homebrew
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
