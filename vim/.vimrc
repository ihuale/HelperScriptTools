set encoding=utf-8
set ts=4
set expandtab
set autoindent

set number
syntax on
set shiftwidth=4

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
" from github: usr/repo
Plugin 'Chiel92/vim-autoformat'
let g:formatdef_harttle = '"astyle --style=attach --pad-oper"'
let g:formatdef_cpp = ['harttle']
Plugin 'scrooloose/nerdcommenter'
Plugin 'Raimondi/delimitMate'
Plugin 'rust-lang/rust.vim'
" Plugin 'ycm-core/YouCompleteMe'
" from git proto: url_of_git
" in repo Vbundl/plugin: 
call vundle#end()
filetype plugin indent on


