export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="custom"

# oh-my-zsh update settings
zstyle ':omz:update' mode reminder 
zstyle ':omz:update' frequency 7

# disable completion menu
zstyle ':completion:*' menu no 

# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    zsh-autosuggestions 
    zoxide 
    fzf
    fzf-tab
)

source $ZSH/oh-my-zsh.sh

# load completions
autoload -Uz compinit && compinit

# history configuration
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_save_no_dups

# keybindings
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# edit `.zshrc`
alias zshconfig="vi ~/.zshrc"

# `ls` shortcuts
alias ll="ls -l"
alias l="ls -lA"

# to avoid making mistakes
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
