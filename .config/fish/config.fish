# for RubyMine
fish_add_path $HOME/.rbenv/bin

# for wasmtime
set -gx WASMTIME_HOME "$HOME/.wasmtime"
fish_add_path $WASMTIME_HOME/bin

if status is-interactive
    rbenv init - | source
    direnv hook fish | source
end
