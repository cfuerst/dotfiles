#! /bin/zsh

#load custom dotfiles

export ZSH_DOTS_DIR=~/dots

#check exists and loop over matches (null glob)
if [ -d "$ZSH_DOTS_DIR" ]; then
    for file in $ZSH_DOTS_DIR/.*(N); do
        source $file
    done
fi
