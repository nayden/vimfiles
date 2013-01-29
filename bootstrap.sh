#!/bin/sh
cp -r ~/.vim ~/.vim.old 2>/dev/null
rm -fr ~/.vim 2>/dev/null
rm -f ~/.vimrc 2>/dev/null
CWD=`pwd`
cd ${HOME}/.vim
git clone https://github.com/nayden/vimfiles && rake install && ln -s ~/.vim/vimrc ~/.vimrc
cd ${CWD}
