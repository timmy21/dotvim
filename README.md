# The Vim Configuration

## Installation

1. `git clone http://github.com/timmy21/dotvim.git ~/.vim`
2. `cd ~`
3. `ln -s ~/.vim/vimrc .vimrc` to make the .vimrc symbolic link.
4. `cd ~/.vim`
5. Install [Vundle](https://github.com/gmarik/vundle) with `git clone
   http://github.com/gmarik/vundle.git bundle/vundle`
6. `vim "+mkspell ~/.vim/spell/custom.en.utf-8.add" +BundleInstall +qall`
_installs all of the plugins and compiles custom spellings._
