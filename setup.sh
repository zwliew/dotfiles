#!/usr/bin/env sh

ln -s $(pwd)/tmux/.tmux.conf ~/.tmux.conf

mkdir -p ~/.config/nvim
ln -s $(pwd)/neovim/init.vim ~/.config/nvim/init.vim

ln -s $(pwd)/git/.gitconfig ~/.gitconfig

ln -s $(pwd)/vim/.vimrc ~/.vimrc

mkdir -p ~/.config/himalaya
ln -s $(pwd)/himalaya/config.toml ~/.config/himalaya/config.toml
