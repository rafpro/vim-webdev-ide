" VUNDLE AND PLUGINS {{{
set nocompatible	" For Vim to be incompatible with the original Vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""""""""""""""""""""""""""""""
"  let Vundle manage Vundle  "
""""""""""""""""""""""""""""""
Bundle 'gmarik/vundle'

"""""""""""""""""""""
"  My Bundles here  "
"""""""""""""""""""""
"  Github repos"{{{
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rhubarb'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-ragtag'
Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'DataWraith/auto_mkdir'
Bundle 'sjl/gundo.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mattn/gist-vim'
Bundle 'godlygeek/tabular'
Bundle 'tyru/current-func-info.vim'
Bundle 'majutsushi/tagbar'
Bundle 'gregsexton/MatchTag'
Bundle 'gregsexton/gitv'
Bundle 'skammer/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'groenewege/vim-less'
Bundle 'davidoc/taskpaper.vim'
Bundle 'dekomote/w3cvalidate.vim'
Bundle 'sukima/xmledit'
Bundle 'spf13/PIV'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'mikewest/vimroom'
Bundle 'fholgado/minibufexpl.vim'
" Bundle 'SirVer/ultisnips'
" Bundle 'othree/fecompressor.vim'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"}}}
"  Vim-scripts repos {{{
Bundle 'TaskList.vim'
" Bundle 'Rainbow-Parenthesis'
"}}}
"  Other Git repos "{{{
Bundle 'git://git.wincent.com/command-t.git'
"}}}

filetype plugin indent on
"}}}
