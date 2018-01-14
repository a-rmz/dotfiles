#!/bin/bash

# Check if the files are different. If they are, updates
# the dotfile with the one under the repository.
compare() {
  if ! cmp --silent $1 $2; then
    ln -sf $1 $2
    source $2
    echo "Updated $2"
  fi 
}

compare ~/dotfiles/files/zshrc ~/.zshrc
compare ~/dotfiles/files/vimrc ~/.vimrc
compare ~/dotfiles/files/tmux.conf ~/.tmux.conf
compare ~/dotfiles/files/liquid.theme ~/.liquidprompt/liquid.theme
compare ~/dotfiles/files/prompt.ps1 ~/.liquidprompt/prompt.ps1
