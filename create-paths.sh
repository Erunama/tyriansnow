#!/usr/bin/bash
# script to create all symlinks using stow
for dir in dotfiles/*/;
do
    dir=${dir%*/}       # remove the trailing "/"
    dir=${dir##*/}      # remove the leading "dotfiles/"
    echo "Stowing $dir to $HOME"
    stow -vR $dir -t $HOME -d dotfiles
    # Dry run
    # stow -vnR $dir -t $HOME -d dotfiles
done
