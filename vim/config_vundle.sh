set -e

git clone https://github.com.cnpmjs.org/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp .vimrc ~

vim +PluginInstall +qall
