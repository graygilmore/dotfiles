set nocompatible
filetype off

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'vim-ruby/vim-ruby'
call plug#end()

filetype plugin indent on
syntax on

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=
set number
set expandtab
set softtabstop=2
set shiftwidth=2

