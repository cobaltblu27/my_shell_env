#!/bin/bash

echo "use zsh?(y/n)"
read use_zsh
if [ "$use_zsh" = "y" ] 
then

    if [ -d ~/.oh-my-zsh ] 
    then
        echo "oh-my-zsh already installed"
    else
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi

    cp ./files/refined-custom.zsh-theme ~/.oh-my-zsh/themes
    cp ./files/.zshrc ~/

else
    echo "Skipping zsh.."
    cat files/.bashrc >> ~/.bashrc 
fi

if [ -d ~/.vim/bundle/Vundle.vim ] 
then
    echo "vundle already exists"
else
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

cp ./files/.vimrc ~/
cp ./files/.rsub ~/

vim -c 'PluginInstall' -c 'qa!'
if [ -d ~/.vim/bundle/YouCompleteMe ]
then
    ~/.vim/bundle/YouCompleteMe/install.py --clang-completer --java-completer
else
    echo "vim plugin was not installed correctly"
fi
