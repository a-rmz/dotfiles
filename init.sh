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
brew install \
  the_silver_searcher \
  tmux \
  fzf \
  z
  

# Base16 colorscheme for shell
git clone https://github.com/chriskempson/base16-shell.git ~/.config/base16-shell

# Remove configurations in case they existed
rm -rf ~/.vim ~/.vimrc ~/.zshrc ~/.tmxu ~/.tmux.conf 2> /dev/null

# Latest version of Vim
rm -rf /usr/bin/vim
brew install vim

# vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Link new config files
ln -s ~/dotfiles/files/zshrc ~/.zshrc
ln -s ~/dotfiles/files/zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/files/vimrc ~/.vimrc
ln -s ~/dotfiles/files/gitconfig ~/.gitconfig
ln -s ~/dotfiles/files/liquidpromptrc ~/.liquidpromptrc 
ln -s ~/dotfiles/files/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/files/fzf.theme ~/.fzf.theme
# TODO: Source function to update

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
ln -s ~/dotfiles/files/liquid.theme ~/.liquidprompt/liquid.theme
ln -s ~/dotfiles/files/prompt.ps1 ~/.liquidprompt/prompt.ps1

# Install langs and envs
sh scripts/install-langs.sh

echo
echo
echo "Set up completed. Restart the shell to start rocking this."
