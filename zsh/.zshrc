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

rga-fzf() {
	RG_PREFIX="rga --files-with-matches"
	local file
	file="$(
		FZF_DEFAULT_COMMAND="$RG_PREFIX '$1'" \
			fzf --sort --preview="[[ ! -z {} ]] && rga --pretty --context 5 {q} {}" \
				--phony -q "$1" \
				--bind "change:reload:$RG_PREFIX {q}" \
				--preview-window="70%:wrap"
	)" &&
	echo "opening $file" &&
	xdg-open "$file"
}
