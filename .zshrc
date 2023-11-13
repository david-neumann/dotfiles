# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  1password
  bun
  colored-man-pages
  vi-mode
  dotenv
  fd
  gnu-utils
  macos
  ripgrep
  rust
  starship
)

source $ZSH/oh-my-zsh.sh

# Set Neovim to default editor
export EDITOR='nvim'

# bun completions
[ -s "/Users/davidneumann/.bun/_bun" ] && source "/Users/davidneumann/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# User configuration
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Enable vi mode in the command line
bindkey -v

VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/david/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/david/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/david/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/david/google-cloud-sdk/completion.zsh.inc'; fi
