### Fundamental
# Language
export LANG=ja_JP.UTF-8
export LC_ALL=ja_JP.UTF-8

# Prompt
export PROMPT="
%F{green}%m:%n%f @ %F{green}%~%f
%F{red}>>>%f "

# less
export LESSHISTFILE=-
export LESSCHARSET=utf-8

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

# history
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt share_history
setopt hist_ignore_dups
setopt hist_ignore_space

### Aliases
alias ls='ls -AF --color=auto'
alias cp='cp -i'
alias mv='mv -i'

### Languages
# homebrew
export PATH="/usr/local/sbin:$PATH"

# rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
[ -e "$CARGO_HOME/env" ] && \. "$CARGO_HOME/env"
export RUST_BACKTRACE=1

# nvm
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
[ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# tmux
[ -z $TMUX ] && (tmux attach -t default || tmux new -s default)

