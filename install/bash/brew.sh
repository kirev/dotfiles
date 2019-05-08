#!/bin/sh

if test ! $(which brew); then
    echo "Installing homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\n\nInstalling homebrew packages..."
echo "=============================="

# cli tools
brew install ack
brew install tree
brew install wget
brew install jq

# development tools
brew install git
brew install hub
brew install fzf
brew install macvim --override-system-vim
brew install reattach-to-user-namespace
brew install tmux
brew install highlight
brew install z
brew install markdown
brew install diff-so-fancy

# node
brew install redis
brew install mongodb
exit 0
