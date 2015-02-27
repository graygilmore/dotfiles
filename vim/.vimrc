set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Use sensible defaults and the latest Ruby
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on
syntax on

set noswapfile
set nobackup
set noerrorbells visualbell t_vb=
set number
set expandtab
set softtabstop=2
set shiftwidth=2

