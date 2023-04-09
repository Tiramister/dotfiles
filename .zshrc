### Fundamental
# Prompt
export PROMPT="
%F{green}%m:%n%f @ %F{green}%~%f
%F{red}>>>%f "

# less
export LESSHISTFILE=-
export LESSCHARSET=utf-8

# XDG Base Directory Specification
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.config"

### Aliases
alias ls='ls -AF --color=auto'
alias cp='cp -i'
alias mv='mv -i'

### Languages
# rust
if [ -e "$HOME/.cargo/env" ]; then
  source "$HOME/.cargo/env"
fi

# nvm
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi

