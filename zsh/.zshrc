# Path to your oh-my-zsh installation.
export ZSH="/Users/graygilmore/.oh-my-zsh"

# Theme
ZSH_THEME="robbyrussell"

# Plugins
plugins=(osx)

source $ZSH/oh-my-zsh.sh

# Aliases
alias be="bundle exec"
alias simpleserver="python -m SimpleHTTPServer 8000"

# Use fzy for finding paths
# By default, ^S freezes terminal output and ^Q resumes it. Disable that so
# that those keys can be used for other things.
unsetopt flowcontrol
# Run Selecta in the current working directory, appending the selected path, if
# any, to the current command, followed by a space.
function insert-fzy-path-in-command-line() {
    local selected_path
    # Print a newline or we'll clobber the old prompt.
    echo
    # Find the path; abort if the user doesn't select anything.
    selected_path=$(rg . -l -g '' | fzy) || return
    # Append the selection to the current command buffer.
    eval 'LBUFFER="$LBUFFER$selected_path "'
    # Redraw the prompt since Selecta has drawn several new lines of text.
    zle reset-prompt
}
# Create the zle widget
zle -N insert-fzy-path-in-command-line
# Bind the key to the newly created widget
bindkey "^S" "insert-fzy-path-in-command-line"

# Ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Add private things that we don't want public on the dotfiles repo
[ -f ~/.private_zshrc ] && source ~/.private_zshrc
