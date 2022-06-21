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
mkdir -p ~/.config/fish/conf.d
ln -sf $(pwd)/fish/config.fish ~/.config/fish/config.fish
ln -sf $(pwd)/fish/kanagawa.fish ~/.config/fish/conf.d/kanagawa.fish

# zsh shell
cd zsh
ln -sf $(pwd)/.zshrc ~/.zshrc
ln -sf $(pwd)/.zprofile ~/.zprofile
cd -

# bash shell
ln -sf $(pwd)/bash/.bashrc ~/.bashrc

# kitty terminal
mkdir -p ~/.config/kitty/themes
cd kitty
ln -sf $(pwd)/kanagawa.conf ~/.config/kitty/themes/kanagawa.conf
ln -sf $(pwd)/kitty.conf ~/.config/kitty/kitty.conf
cd -

# ssh
mkdir -p ~/.ssh
ln -sf $(pwd)/ssh/config ~/.ssh/config

# ocaml (utop)
cd ocaml
ln -sf $(pwd)/.ocamlinit ~/.ocamlinit
cd -

# yabai tiling window manager
mkdir -p ~/.config/yabai
cd yabai
ln -sf $(pwd)/yabairc ~/.config/yabai/yabairc
cd -

# skhd hotkeys
mkdir -p ~/.config/skhd
cd skhd
ln -sf $(pwd)/skhdrc ~/.config/skhd/skhdrc
cd -

# LunarVim
cd lunarvim
ln -sf $(pwd)/config.lua ~/.config/lvim/config.lua
cd -
