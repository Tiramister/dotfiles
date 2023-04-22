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

### Aliases
alias ls='ls -AF --color=auto'
alias cp='cp -i'
alias mv='mv -i'

### Languages
# rust
export CARGO_HOME="$XDG_DATA_HOME/cargo"
[ -e "$CARGO_HOME/env" ] && \. "$CARGO_HOME/env"

# nvm
export NVM_DIR="$XDG_DATA_HOME/nvm"
export NODE_REPL_HISTORY="$XDG_STATE_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

