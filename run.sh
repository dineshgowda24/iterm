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

## oh my zsh and their dependencies
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

# how to enable all the plugins

echo  'source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >> ~/.zshrc
echo  'export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters' >> ~/.zshrc
echo  'source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh' >> ~/.zshrc


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh}/themes/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc