alias s="kitty +kitten ssh"

export PATH="~/.local/bin/:/Users/zwliew/.local/bin/:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$HOME/go/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="~/.ghcup/bin:/Users/zwliew/.ghcup/bin:$PATH"

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. /opt/homebrew/opt/asdf/libexec/asdf.sh

eval "$(zoxide init zsh)"

eval "$(opam env)"

