eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(opam env)"

export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$(brew --prefix openjdk)/bin:$PATH"
export PATH="$(brew --prefix llvm)/bin:$PATH"
export PATH="$(brew --prefix postgresql@16)/bin:$PATH"
export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"

. $(brew --prefix asdf)/libexec/asdf.sh

export VCPKG="$HOME/_me/gh/vcpkg"
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
export DOTNET_ROOT="$(asdf where dotnet-core)"

if [[ -o interactive ]]; then
	eval "$(starship init zsh)"
	eval "$(zoxide init zsh)"

	# Set up fzf key bindings and fuzzy completion
	source <(fzf --zsh)

	alias s="kitty +kitten ssh"

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
fi
