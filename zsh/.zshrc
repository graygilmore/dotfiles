# Environment
ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/heroku/bin:$PATH"

ZSH_THEME="robbyrussell"

source $ZSH/oh-my-zsh.sh

# Plugins
plugins=(git osx)

# Aliases
alias repos="cd /Users/graygilmore/Repos/"
bump() { git commit -m "Bump to $1" && git tag -a $1 -m "Bump version $1" }

# ZSH
unsetopt correct
unsetopt correct_all

# OS X
alias showhidden="defaults write com.apple.finder AppleShowAllFiles 1 && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles 0 && killall Finder"

# Ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

