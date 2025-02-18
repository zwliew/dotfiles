set -x SHELL fish

set BREW_EXISTS test -f /opt/homebrew/bin/brew

if $BREW_EXISTS
    eval (/opt/homebrew/bin/brew shellenv)
end
eval (opam env --shell=fish)

fish_add_path /usr/local/cuda/bin

fish_add_path $HOME/.config/emacs/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.ghcup/bin
fish_add_path $HOME/.cabal/bin
fish_add_path $HOME/.dotnet/tools
fish_add_path $HOME/go/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/_me/pip3-user-packages/bin
if $BREW_EXISTS
    fish_add_path (brew --prefix openjdk)/bin
    fish_add_path (brew --prefix llvm)/bin
    fish_add_path (brew --prefix postgresql@16)/bin
    fish_add_path (brew --prefix make)/libexec/gnubin
end

set -x VCPKG_ROOT "$HOME/_me/gh/vcpkg"
set -x PUPPETEER_EXECUTABLE_PATH `which chromium`
if $BREW_EXISTS
    set -x DOTNET_ROOT (asdf where dotnet-core)
end
set -x CC (which clang)
set -x CXX (which clang++)
set -x EDITOR nvim

fish_add_path $HOME/.bun/bin
set -x BUN_INSTALL "$HOME/.bun"

EMSDK_QUIET=1 source $HOME/_me/gh/emsdk/emsdk_env.fish

if test -f $HOME/_me/private_config.fish
    source $HOME/_me/private_config.fish
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source
    atuin init fish | source

    # Set up fzf key bindings
    fzf --fish | source

    alias s="kitty +kitten ssh"
    alias g="git"

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

    function thememe
        set current_time (date +%H)
        if test $current_time -le 7 -o $current_time -ge 19 
            kitty +kitten themes Catppuccin-Mocha
        else
            kitty +kitten themes Catppuccin-Latte
        end
    end

    function lk
        set loc (walk --icons $argv); and cd $loc;
    end
end
