#!/bin/bash 

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
git clone https://github.com/tyru/current-func-info.vim.git ~/.vim/bundle/current-func-info.vim
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic

vim +BundleInstall +q
