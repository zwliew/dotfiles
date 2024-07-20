alias s="kitty +kitten ssh"

export PATH="$HOME/.local/bin/:$PATH"

export PATH="$(brew --prefix)/opt/openjdk/bin:$HOME/go/bin:$PATH"
export PATH="$(brew --prefix)/opt/llvm/bin:$PATH"
export PATH="$(brew --prefix)/opt/postgresql@16/bin:$PATH"

export PATH="~/.ghcup/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"

eval "$(starship init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. $(brew --prefix)/opt/asdf/libexec/asdf.sh

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
