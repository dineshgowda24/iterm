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
brew install tmux

# Symlink tmux config into $HOME so edits in the repo are picked up live.
# -f overwrites any existing ~/.tmux.conf. Adjust if you want to preserve one.
ln -sf "$(cd "$(dirname "$0")" && pwd)/.tmux.conf" ~/.tmux.conf


brew install rvm
rvm install 2.7.5
rvm install 3.0.0

## oh my zsh and their dependencies
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install zsh-syntax-highlighting
brew install zsh-autosuggestions

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh}/themes/powerlevel10k

# Symlink zsh dotfiles from this repo into $HOME. The committed .zshrc already
# sources brew-installed plugins and enables the powerlevel10k theme, so no
# echo-appended lines are needed. -f overwrites any existing files.
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
ln -sf "$REPO_DIR/.zshrc"    ~/.zshrc
ln -sf "$REPO_DIR/.p10k.zsh" ~/.p10k.zsh
ln -sf "$REPO_DIR/.psqlrc"   ~/.psqlrc