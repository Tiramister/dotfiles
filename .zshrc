### PATH ###
# Homebrew
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# llvm/clang
export PATH="/usr/local/opt/llvm/bin:$PATH"
# rbenv
export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/3.1.2/bin:$PATH"
# pyenv
export PYENV_ROOT="$HOME/.pyenv"
eval "$(pyenv init -)"
# rust
export PATH="$HOME/.cargo/bin:$PATH"
# node.js
export PATH="$HOME/.npm-global/bin:$PATH"
# nodebrew
export PATH="$HOME/.nodebrew/current/bin:$PATH"
# openssl
export PATH="/usr/local/opt/openssl@3/bin:$PATH"
# temporary remove ~/.pyenv/shims from PATH
# https://github.com/pyenv/pyenv/issues/106
alias brew="env PATH=${PATH//$(pyenv root)\/shims:/} brew"

### Oh My Zsh ###
# theme
ZSH_THEME="intheloop"
# only checks if there are updates available and shows a reminder
zstyle ':omz:update' mode reminder
# disable marking untracked files under VCS as dirty
DISABLE_UNTRACKED_FILES_DIRTY="true"
# plugins #
plugins=(vi-mode)
# change cursor when switching to a different input mode
VI_MODE_SET_CURSOR=true
# load oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

### User Config ###
# default software
export EDITOR=vim
export VISUAL="$EDITOR"
export BROWSER="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
