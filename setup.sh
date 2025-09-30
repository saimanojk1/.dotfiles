#!/usr/bin/env zsh
set -x
brew install nvim
brew install tmux
brew install fzf
brew install go
git clone https://github.com/saimanojk1/tmuxifier.git ~/.tmuxifier
echo ./zshrc >> ~/.zshrc
git clone https://github.com/saimanojk1/nvim.git ~/.config/nvim
echo ./.tmux.conf >> ~/.tmux.conf 
xcode-select --install
sudo /usr/sbin/DevToolsSecurity -enable
sudo dscl . append /Groups/_developer GroupMembership $(whoami)
go install github.com/go-delve/delve/cmd/dlv@latest
go install github.com/vektra/mockery/v3@v3.5.5
go install github.com/nametake/golangci-lint-langserver@latest
