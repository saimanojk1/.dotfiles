#!/usr/bin/env zsh
set -x
brew install nvim
brew install
brew install fzf
git clone https://github.com/saimanojk1/tmuxifier.git ~/.tmuxifier
echo ./zshrc >> ~/.zshrc
git clone https://github.com/saimanojk1/nvim.git ~/.config/nvim
echo ./.tmux.conf >> ~/.tmux.conf 
