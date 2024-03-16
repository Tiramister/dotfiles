# less
set -x LESSHISTFILE -
set -x LESSCHARSET  utf-8

# XDG Base Directory Specification
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME   "$HOME/.local/share"
set -x XDG_STATE_HOME  "$HOME/.local/state"
set -x XDG_CACHE_HOME  "$HOME/.cache"

# history
set -x HISTFILE ~/.histfile
set -x HISTSIZE 1000
set -x SAVEHIST 1000

# setopt share_history
# setopt hist_ignore_dups
# setopt hist_ignore_space

### Languages
# homebrew
set PATH /usr/local/sbin $PATH
if test -e /home/linuxbrew/.linuxbrew/bin/brew
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
end

# rust
set -x CARGO_HOME "$XDG_DATA_HOME/cargo"
[ -e "$CARGO_HOME/env" ] && sh "$CARGO_HOME/env"
set -x RUST_BACKTRACE 1

# nvm
set -x NVM_DIR "$XDG_DATA_HOME/nvm"
set -x NODE_REPL_HISTORY "$XDG_STATE_HOME/node_repl_history"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"

if status is-interactive
    # Commands to run in interactive sessions can go here
end
