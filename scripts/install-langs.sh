#!/bin/bash

brew install \
  pyenv \
  pyenv-virtualenv \
  pipenv \
  hub 

[[ $(pyenv --version) ]] && pyenv install 3.6.5

# Ruby Version Manager (RVM)
# RVM is a command-line tool which allows you to easily install, manage, and work with multiple ruby environments from interpreters to sets of gems.
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --rails

# nvm
# Node Version Manager - Simple bash script to manage multiple active node.js versions 
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash
nvm install node
nvm install 9.11