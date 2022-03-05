#!/usr/bin/env sh

# tmux terminal multiplexer
ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# neovim editor
mkdir -p ~/.config/nvim
ln -s $(pwd)/neovim/init.vim ~/.config/nvim/init.vim

# git version control
ln -s $(pwd)/git/.gitconfig ~/.gitconfig

# vim editor
ln -s $(pwd)/vim/.vimrc ~/.vimrc

# himalaya email client
mkdir -p ~/.config/himalaya
ln -s $(pwd)/himalaya/config.toml ~/.config/himalaya/config.toml

# fish shell
mkdir -p ~/.config/fish
ln -s $(pwd)/fish/config.fish ~/.config/fish/config.fish

# zsh shell
ln -s $(pwd)/zsh/.zshrc ~/.zshrc

# kitty terminal
mkdir -p ~/.config/kitty/themes
ln -s $(pwd)/kitty/kanagawa.conf ~/.config/kitty/themes/kanagawa.conf

# ssh
mkdir -p ~/.ssh
ln -s $(pwd)/ssh/config ~/.ssh/config
