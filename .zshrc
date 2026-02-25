export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom"

# oh-my-zsh update settings
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

zstyle ':completion:*' menu no # disable completion menu

# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
  zsh-autosuggestions
  zoxide
  fzf
  fzf-tab
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit && compinit # load completions

# history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_save_no_dups

# keybindings
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward

# aliases
alias gs=$HOME/repos/gs/gs.sh

alias ll="ls -l"
alias l="ls -lA"

# ask for the magic word
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# -tmux
alias ta="tmux attach-session"
alias tn="tmux new-session -s"
alias tl="tmux list-sessions"

# -docker
alias dps="docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}'"
alias dl="docker logs --tail=100"
alias dc="docker compose"