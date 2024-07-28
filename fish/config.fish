eval (/opt/homebrew/bin/brew shellenv)
eval (opam env --shell=fish)

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.ghcup/bin
fish_add_path $HOME/.dotnet/tools
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path (brew --prefix openjdk)/bin
fish_add_path (brew --prefix llvm)/bin
fish_add_path (brew --prefix postgresql@16)/bin
fish_add_path (brew --prefix make)/libexec/gnubin

source (brew --prefix asdf)/libexec/asdf.fish

set -x VCPKG "$HOME/_me/gh/vcpkg"
set -x PUPPETEER_EXECUTABLE_PATH `which chromium`
set -x DOTNET_ROOT (asdf where dotnet-core)
set -x CC (which clang)
set -x CXX (which clang++)

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source

    # Set up fzf key bindings
    fzf --fish | source

    alias s="kitty +kitten ssh"

    function rga-fzf
      set RG_PREFIX 'rga --files-with-matches'
      if test (count $argv) -gt 1
          set RG_PREFIX "$RG_PREFIX $argv[1..-2]"
      end
      set -l file $file
      set file (
          FZF_DEFAULT_COMMAND="$RG_PREFIX '$argv[-1]'" \
          fzf --sort \
              --preview='test ! -z {} && \
                  rga --pretty --context 5 {q} {}' \
              --phony -q "$argv[-1]" \
              --bind "change:reload:$RG_PREFIX {q}" \
              --preview-window='50%:wrap'
      ) && \
      echo "opening $file" && \
      open "$file"
    end
end
