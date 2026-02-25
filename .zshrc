export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom"

# oh-my-zsh update
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

zstyle ':completion:*' menu no # disable completion menu

# tmux plugin
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_DEFAULT_SESSION_NAME=main

plugins=(
  zsh-autosuggestions
  zoxide
  fzf
  fzf-tab
  tmux
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit && compinit # load completions

# history
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
