#!/bin/zsh

# create symlinks from HOME to this repo
typeset -A src_dst_file_map=(
  '.zshrc' '.zshrc'
  'vim/.vimrc' '.vimrc'
  'vim/config' '.vim/config'
)

for src dst in "${(@kv)src_dst_file_map[@]}"; do
  src="$(pwd)/${src}"
  dst="${HOME}/${dst}"

  if [ -e "${dst}" ]; then
    mv "${dst}" "${dst}.org"
    echo "${dst} is renamed to ${dst}.org" >&2
  fi

  if [ -d "${dst}" ]; then
    mkdir -p "${dst}"
  else
    mkdir -p "$(dirname ${dst})"
  fi

  ln -sf "${src}" "${dst}"
  echo "${dst} -> ${src}" >&2
done

# install vim plugins
vim +PlugInstall +PlugClean +qa

