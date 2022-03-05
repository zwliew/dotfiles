#!/usr/bin/env sh

# tmux terminal multiplexer
ln -sf $(pwd)/tmux/.tmux.conf ~/.tmux.conf

# neovim editor
mkdir -p ~/.config/nvim
ln -sf $(pwd)/neovim/init.vim ~/.config/nvim/init.vim

# git version control
ln -sf $(pwd)/git/.gitconfig ~/.gitconfig

# vim editor
ln -sf $(pwd)/vim/.vimrc ~/.vimrc

# himalaya email client
mkdir -p ~/.config/himalaya
ln -sf $(pwd)/himalaya/config.toml ~/.config/himalaya/config.toml

# fish shell
mkdir -p ~/.config/fish
ln -sf $(pwd)/fish/config.fish ~/.config/fish/config.fish

# zsh shell
ln -sf $(pwd)/zsh/.zshrc ~/.zshrc

# kitty terminal
mkdir -p ~/.config/kitty/themes
ln -sf $(pwd)/kitty/kanagawa.conf ~/.config/kitty/themes/kanagawa.conf

# ssh
mkdir -p ~/.ssh
ln -sf $(pwd)/ssh/config ~/.ssh/config
