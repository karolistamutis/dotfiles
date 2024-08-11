# Combine PATH exports
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:/opt/homebrew/bin:/opt/homebrew/opt/libpq/bin:/opt/homebrew/opt/mysql-client/bin:${$(go env GOPATH):h}/bin:$PATH

# Oh My Zsh configuration
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="catppuccin-russell"
HIST_STAMPS="yyyy-mm-dd"

# Plugins
plugins=(git tmux virtualenv)

source $ZSH/oh-my-zsh.sh

# User configuration
export LANG=en_US.UTF-8
PROMPT='${VIRTUAL_ENV:+(${VIRTUAL_ENV:t})} '$PROMPT

# Fish-like autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Lazy-load work function
autoload -U work
work() {
  tmux new-session -A -s work
}

# Environment variables
export IDEA_SHELL_EXECUTE_COMMAND=/opt/homebrew/bin/zsh

# Load secrets
if [ -f "$HOME/.secrets" ]; then
    source "$HOME/.secrets"
fi
