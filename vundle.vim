" ----------------------------------------
" Vundle
" ----------------------------------------

set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" ---------------
" Plugin Bundles
" ---------------

" This fork is required due to remapping ; to :
Bundle 'kien/ctrlp.vim'
" UI Additions
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdtree'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'nanotech/jellybeans.vim'
" Commands
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'godlygeek/tabular'
Bundle 'milkypostman/vim-togglelist'
" Automatic Helpers
Bundle 'ervandew/supertab'
Bundle "mileszs/ack.vim"
Bundle 'Valloric/YouCompleteMe'
" Language Additions
" JavaScript
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
" HTML
Bundle 'othree/html5.vim'
Bundle 'indenthtml.vim'
" Python
Bundle 'kevinw/pyflakes-vim'
" Golang
Bundle 'jnwhiteh/vim-golang'
Bundle 'dgryski/vim-godef'
Bundle 'spf13/vim-gocode'
" Other Languages
Bundle 'mutewinter/nginx.vim'
Bundle 'mutewinter/vim-css3-syntax'
" MatchIt
Bundle 'matchit.zip'

Bundle 'DrawIt'
