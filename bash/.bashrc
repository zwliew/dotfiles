# Source global definitions
if [ -f /etc/bashrc ]; then
  . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
  for rc in ~/.bashrc.d/*; do
    if [ -f "$rc" ]; then
      . "$rc"
    fi
  done
fi
unset rc

[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh

[ -f "/home/zwliew/.ghcup/env" ] && . "/home/zwliew/.ghcup/env" # ghcup-env
. "$HOME/.cargo/env"

export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

. "$HOME/.deno/env"
source $HOME/.local/share/bash-completion/completions/deno.bash

if [[ $- == *i* ]]; then
  eval "$(starship init bash)"
  eval "$(zoxide init bash)"
  eval "$(atuin init bash)"

  eval "$(fzf --bash)"
fi
