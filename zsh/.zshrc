eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="/opt/homebrew/opt/openjdk/bin:$HOME/go/bin:$PATH"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

eval "$(zoxide init zsh)"

eval "$(opam env)"

export PATH="/Users/zwliew/.local/bin/:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
