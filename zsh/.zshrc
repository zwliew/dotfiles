eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(opam env)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

. $(brew --prefix)/opt/asdf/libexec/asdf.sh

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

alias s="kitty +kitten ssh"

export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$(brew --prefix)/opt/openjdk/bin:$HOME/go/bin:$PATH"
export PATH="$(brew --prefix)/opt/llvm/bin:$PATH"
export PATH="$(brew --prefix)/opt/postgresql@16/bin:$PATH"
export PATH="$(brew --prefix)/opt/make/libexec/gnubin:$PATH"

export VCPKG="$HOME/_me/gh/vcpkg"
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
