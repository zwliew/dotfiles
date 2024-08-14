eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(opam env)"

export PATH="$HOME/.local/bin/:$PATH"
export PATH="$HOME/.ghcup/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/_me/pip3-user-packages/bin:$PATH"
export PATH="$(brew --prefix openjdk)/bin:$PATH"
export PATH="$(brew --prefix llvm)/bin:$PATH"
export PATH="$(brew --prefix postgresql@16)/bin:$PATH"
export PATH="$(brew --prefix make)/libexec/gnubin:$PATH"

. $(brew --prefix asdf)/libexec/asdf.sh

export VCPKG_ROOT="$HOME/_me/gh/vcpkg"
export PUPPETEER_EXECUTABLE_PATH=`which chromium`
export DOTNET_ROOT="$(asdf where dotnet-core)"
export CC="$(which clang)"
export CXX="$(which clang++)"
export EDITOR="nvim"

# >>> coursier install directory >>>
export PATH="$PATH:$HOME/Library/Application Support/Coursier/bin"
# <<< coursier install directory <<<

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/zwliew/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/zwliew/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/zwliew/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/zwliew/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

if [[ -o interactive ]]; then
	eval "$(starship init zsh)"
	eval "$(zoxide init zsh)"
	eval "$(atuin init zsh)"

	# Set up fzf key bindings and fuzzy completion
	source <(fzf --zsh)

	alias s="kitty +kitten ssh"
	alias g="git"

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

	thememe() {
		current_time=$(date +%H)
		if (( current_time <= 8 || current_time >= 19 )); then
			kitty +kitten themes Catppuccin-Mocha
		else
			kitty +kitten themes Catppuccin-Latte
		fi
	}
fi
