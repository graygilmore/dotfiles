# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)

source $ZSH/oh-my-zsh.sh

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
alias repos="cd /Users/graygilmore/Repos/"
alias middelman="middleman"
alias bers="bundle exec rake server"
alias bera="bundle exec rake auto_build"
alias berb="bundle exec rake build"
alias berbp="bundle exec rake build_production"
alias verbose="bundle exec 'middleman build --verbose'"
alias tags="gp origin --tags"

bb() {
  open "https://bitbucket.org/`git remote -v | grep bitbucket | head -n 1 | sed -e 's/.*:\(.*\)\/\(.*\)\.git.*/\1\/\2/'`"
}
bbpr() {
  open "https://bitbucket.org/`git remote -v | grep bitbucket | head -n 1 | sed -e 's/.*:\(.*\)\/\(.*\)\.git.*/\1\/\2/'`/pull-request/new"
}

bump() { git commit -m "Bump to $1" && git tag -a $1 -m "Bump version $1" }

# STAHP
unsetopt correct
unsetopt correct_all

alias showhidden="defaults write com.apple.finder AppleShowAllFiles 1 && killall Finder"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles 0 && killall Finder"
