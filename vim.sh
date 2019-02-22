#!/bin/bash

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle

git clone https://github.com/ervandew/supertab.git

git clone git://github.com/jiangmiao/auto-pairs.git

git clone https://github.com/scrooloose/nerdcommenter.git

git clone https://github.com/scrooloose/nerdtree.git

git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

git clone https://github.com/brookhong/cscope.vim.git

apt-get install cscope

apt-get install ctags
