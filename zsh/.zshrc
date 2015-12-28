# Environment
ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/bin:$PATH"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(osx)

source $ZSH/oh-my-zsh.sh

# Aliases
alias repos="cd /Users/graygilmore/Repos/"
alias be="bundle exec"
alias simpleserver="python -m SimpleHTTPServer 8000"

# ZSH
unsetopt correct
unsetopt correct_all

# OS X
alias showhidden="defaults write com.apple.finder AppleShowAllFiles 1 && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles 0 && killall Finder"

# Ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Refresh tmux after timer commands.
hcl() {
  =hcl "$@"
  tmux refresh-client -S
}
