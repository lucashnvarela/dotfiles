# path to oh-my-zsh 
export ZSH="$HOME/.oh-my-zsh"

# set name of the theme to load
ZSH_THEME="maran"

# remind me to update when its time
zstyle ':omz:update' mode reminder  

# how often to auto-update
zstyle ':omz:update' frequency 7

# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(git)

source $ZSH/oh-my-zsh.sh

# compilation flags
export ARCHFLAGS="-arch $(uname -m)"

# edit .zshrc
alias zshconfig="vi ~/.zshrc"

# `ls` shortcuts
alias ll="ls -l"
alias l="ls -lA"

# to avoid making mistakes
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"

# load zoxide
eval "$(zoxide init zsh)"
