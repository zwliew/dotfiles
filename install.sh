#!/usr/bin/env sh

# tmux terminal multiplexer
ln -sf "$(PWD)/tmux/.tmux.conf" "$HOME/.tmux.conf"

# neovim editor
mkdir -p "$HOME/.config/nvim"
ln -sf "$(PWD)/neovim/init.vim" "$HOME/.config/nvim/init.vim"

# git version control
ln -sf "$(PWD)/git/.gitconfig" "$HOME/.gitconfig"

# vim editor
ln -sf "$(PWD)/vim/.vimrc" "$HOME/.vimrc"

# himalaya email client
mkdir -p "$HOME/.config/himalaya"
ln -sf "$(PWD)/himalaya/config.toml" "$HOME/.config/himalaya/config.toml"

# fish shell
mkdir -p "$HOME/.config/fish"
mkdir -p "$HOME/.config/fish/conf.d"
ln -sf "$(PWD)/fish/config.fish" "$HOME/.config/fish/config.fish"

# zsh shell
cd zsh || exit
ln -sf "$(PWD)/.zshrc" "$HOME/.zshrc"
cd - || exit

# bash shell
ln -sf "$(PWD)/bash/.bashrc" "$HOME/.bashrc"

# kitty terminal
mkdir -p "$HOME/.config/kitty/themes"
cd kitty || exit
ln -sf "$(PWD)/kitty.conf" "$HOME/.config/kitty/kitty.conf"
cd - || exit

# ssh
mkdir -p "$HOME/.ssh"
ln -sf "$(PWD)/ssh/config" "$HOME/.ssh/config"

# ocaml (utop)
cd ocaml || exit
ln -sf "$(PWD)/.ocamlinit" "$HOME/.ocamlinit"
cd - || exit

# yabai tiling window manager
mkdir -p "$HOME/.config/yabai"
cd yabai || exit
ln -sf "$(PWD)/yabairc" "$HOME/.config/yabai/yabairc"
cd - || exit

# skhd hotkeys
mkdir -p "$HOME/.config/skhd"
cd skhd || exit
ln -sf "$(PWD)/skhdrc" "$HOME/.config/skhd/skhdrc"
cd - || exit

# zellij terminal multiplexer
mkdir -p "$HOME/.confg/zellij"
cd zellij || exit
ln -sf "$(PWD)/config.kdl" "$HOME/.config/zellij/config.kdl"
cd - || exit
