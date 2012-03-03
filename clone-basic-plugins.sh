#!/bin/bash 
ln -s $HOME/dotfiles/vim $HOME/.vim
ln -s $HOME/dotfiles/vim/vimrc $HOME/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
git clone git@github.com:jelera/vim-nazca-colorscheme.git ~/.vim/bundle/vim-nazca-colorscheme 
git clone git@github.com:jelera/vim-gummybears-colorscheme.git ~/.vim/bundle/vim-gummybears-colorscheme 
git clone git@github.com:jelera/vim-javascript-syntax.git ~/.vim/bundle/vim-javascript-syntax 
git clone git@github.com:jelera/vim-python-syntax.git ~/.vim/bundle/vim-python-syntax 

vim +BundleInstall +q
