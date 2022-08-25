export PATH="~/.local/bin/:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$HOME/go/bin:$PATH"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="~/.ghcup/bin:/Users/zwliew/.ghcup/bin:$PATH"

eval "$(starship init bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
. "$HOME/.cargo/env"
