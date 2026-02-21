export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="maran"

zstyle ':omz:update' mode reminder # remind me to update when its time
zstyle ':omz:update' frequency 7 # how often to auto-update

# standard plugins can be found in $ZSH/plugins/
# custom plugins may be added to $ZSH_CUSTOM/plugins/
plugins=(
    #git 
    zoxide 
)

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
