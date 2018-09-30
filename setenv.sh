#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cp ./files/.vimrc ~/
cp ./files/refined-custom.zsh-theme ~/.oh-my-zsh/themes
cp ./files/.zshrc ~/

vim -c 'PluginInstall' -c 'qa!'

cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer --java-completer

