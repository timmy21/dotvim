# The Vim Configuration

## Installation

1. Install vim editor:
    - `$ sudo add-apt-repository ppa:fcwu-tw/ppa`
    - `$ sudo apt-get update`
    - `$ sudo apt-get install vim`
2. `git clone http://github.com/timmy21/dotvim.git ~/.vim`
3. `cd ~`
4. `ln -s ~/.vim/vimrc .vimrc` to make the .vimrc symbolic link.
5. `cd ~/.vim`
6. Install [Vundle](https://github.com/gmarik/vundle) with `git clone
   http://github.com/gmarik/vundle.git bundle/vundle`
7. `vim "+mkspell ~/.vim/spell/custom.en.utf-8.add" +BundleInstall +qall`
_installs all of the plugins and compiles custom spellings._

