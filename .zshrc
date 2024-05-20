# Set Neovim to default editor
export EDITOR='nvim'

# bun completions
[ -s "/Users/davidneumann/.bun/_bun" ] && source "/Users/davidneumann/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# User configuration

# Enable vi mode in the command line
bindkey -v

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

# ALIASES
# Git commands
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"

# Shorthands
alias la="ls -a"
alias ll="la -l"
alias nv="nvim ."
alias dots="cd ~/.dotfiles/"
alias home="cd ~/"

# Dev commands
alias air="~/.air"

# System commands
alias sleep="systemctl suspend"
alias poweroff="systemctl poweroff"
alias systemupdate="sudo pacman -Sy archlinux-keyring && sudo pacman -Syu"
alias volume="pactl set-sink-volume @DEFAULT_SINK@"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add Starship
eval "$(starship init zsh)"

# bun completions
[ -s "/home/david/.bun/_bun" ] && source "/home/david/.bun/_bun"

# GO
export GOBIN=$HOME/go/bin/
export PATH=$PATH:$GOBIN
# Protobuf
export PATH="$PATH:/usr/local/protobuf/bin"
