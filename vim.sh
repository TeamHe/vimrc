#!/bin/bash
#enviroment
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
	
cp .vimrc ~/.vimrc	

cd ~/.vim/bundle

#ctags
apt-get install ctags

git clone https://github.com/ervandew/supertab.git

#auto-pairs
git clone git://github.com/jiangmiao/auto-pairs.git

git clone https://github.com/scrooloose/nerdcommenter.git
#nerdtree
git clone https://github.com/scrooloose/nerdtree.git

git clone --depth=1 https://github.com/vim-syntastic/syntastic.git

#cscope
apt-get install cscope
git clone https://github.com/brookhong/cscope.vim.git

#SrcExpl 	
git clone https://github.com/wesleyche/SrcExpl.git

cd -
