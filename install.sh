#!/bin/zsh
#create the symbolic links in the home directory
#must run out of the folder where its located

#get the directory where the targets of the symlinks are located
TARGETDIR="$( cd "$( dirname "${ZSH_SOURCE[0]}" )" && pwd )"

#create links
for file in .zshenv .zshrc .zsh .vimrc .gitconfig;
do rm -rf ~/$file && ln -s $TARGETDIR/$file ~/$file; done

#create history file if not exists
if [ ! -f ~/.zsh_history ];
then
    echo ' ' > ~/.zsh_history
fi