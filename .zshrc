# default software
export EDITOR=vim
export VISUAL="$EDITOR"
export BROWSER="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"

# prompt
export PROMPT="
%F{green}%n%f @ %F{green}%~%f
%F{red}>>>%f "

# nvm
if [ -d "$HOME/.nvm" ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
fi

