#!/bin/bash 
cp $HOME/.vim $HOME/.backupdotfiles/vim
cp $HOME/.vimrc $HOME/.backupdotfiles/vimrc

rm -f $HOME/.vim
rm -f $HOME/.vimrc

ln -s $HOME/dotfiles/vim $HOME/.vim
ln -s $HOME/dotfiles/vim/vimrc $HOME/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
# git clone https://github.com/tpope/vim-fugitive.git ~/.vim/bundle/vim-fugitive
# git clone https://github.com/tyru/current-func-info.vim.git ~/.vim/bundle/current-func-info.vim
# git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone git@github.com:jelera/vim-nazca-colorscheme.git ~/.vim/bundle/vim-nazca-colorscheme 

vim +BundleInstall +q
