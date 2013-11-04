#load custom dotfiles

export ZSH_DOTS_DIR=~/dots

if [ -d "$ZSH_DOTS_DIR" ]; then
    for file in $ZSH_DOTS_DIR/.*
        do source $file; done
fi
