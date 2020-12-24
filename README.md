# dotfiles

Installation made super easy with `stow`.

```bash
stow git ruby tmux vim vscode zsh -t ~
```

## Initial Machine Setup

1. [homebrew](https://brew.sh/)
1. [oh-my-zsh](https://ohmyz.sh/)
1. [Plug.vim](https://github.com/junegunn/vim-plug)

## Dependencies

### [fzy](https://github.com/jhawthorn/fzy) (❤️ [@jhawthorn](https://github.com/jhawthorn))

```bash
brew update
brew install fzy
```

### [chruby](https://github.com/postmodern/chruby)

```bash
brew update
brew install chruby
```

### [ruby-install](https://github.com/postmodern/ruby-install)

```bash
brew update
brew install ruby-install
```

### [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

```bash
brew update
brew install diff-so-fancy
```

### [ripgrep](https://github.com/BurntSushi/ripgrep)

```bash
brew update
brew install ripgrep
```

## Optional

### [n](https://github.com/tj/n)

Let's make use of [n-install](https://github.com/mklement0/n-install) to set up
some defaults for us.

```bash
curl -L https://git.io/n-install | bash
```

### [tmux](https://github.com/tmux/tmux)

```bash
brew update
brew install tmux
```
