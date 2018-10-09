#!/bin/bash
if [ -d ~/.oh-my-zsh ] 
then
    echo "oh-my-zsh already installed"
else
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ -d ~/.vim/bundle/Vundle.vim ] 
then
    echo "vundle already exists"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "overwrite vimrc, zshrc, and zsh theme?(y/n)"
read overwrite
if [ "$overwrite" = "y"] 
then
    cp ./files/.vimrc ~/
    cp ./files/refined-custom.zsh-theme ~/.oh-my-zsh/themes
    cp ./files/.zshrc ~/
else
    echo "skipping rcfiles and themes.."
fi

vim -c 'PluginInstall' -c 'qa!'
if [ -d ~/.vim/bundle/YouCompleteMe ]
then
    ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --java-completer
else
    echo "vim plugin was not installed correctly"
fi
