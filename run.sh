#!/bin/sh

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install autoconf automake libtool
brew install --cask iterm2
brew install --cask krisp
brew install --cask visual-studio-code
brew install --cask obsidian
brew install --cask alfred
brew install --cask slack
brew install --cask docker
brew install --cask grammarly
brew install --cask github
brew install --cask postman
brew install --cask firefox
brew install asdf
brew install git


brew install rvm
rvm install 2.7.5
rvm install 3.0.0

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"