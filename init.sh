#!/bin/bash
set -euxo pipefail

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor

brew install zsh
chsh -s $(which zsh)

# oh-my-zsh
# A delightful community-driven (with 1,000+ contributors) framework for managing your zsh configuration. 
# http://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# cool stuff
brew install $(< brewdeps.txt )

# Base16 colorscheme for shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Remove configurations in case they existed
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmxu ~/.tmux.conf 2> /dev/null

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link new config files
stow --dir=$HOME/.dotfiles/files/ --target=$HOME zsh vim tmux git fzf

# Install vim plugins
vim +PlugInstall +qall

# fzf: A command-line fuzzy finder
# https://github.com/junegunn/fzf

# --no-bash:      no support for bash
# --no-fish:      no support for fish
# --64:           64-bit binaries
# --key-bindings: enable key bindings
# --completion:   enable fuzzy completion (bash & zsh)
# --no-update-rc: don't update shell config files
$(brew --prefix)/opt/fzf/install --no-bash --no-fish --64 --key-bindings --completion --no-update-rc

# liquidprompt: A full-featured & carefully designed adaptive prompt for Bash & Zsh
cd ~
git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
stow --dir=$HOME/.dotfiles/files/liquid --target=$HOME base
stow --dir=$HOME/.dotfiles/files/liquid --target=$HOME/.liquidprompt/ conf

# Install langs and envs
sh scripts/install-langs.sh

echo
echo
echo "Set up completed. Restart the shell to start rocking this."
