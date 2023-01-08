#!/bin/sh

# create symlinks from HOME to this repo
src_dst_file_map=(
  '.zshrc' '.zshrc'
  'vim/.vimrc' '.vimrc'
  'vim/config' '.vim/config'
)

for i in $(seq 1 2 ${#src_dst_file_map[@]}); do
  src="$(pwd)/${src_dst_file_map[i - 1]}"
  dst="${HOME}/${src_dst_file_map[i]}"

  if [ ! -e "${src}" ]; then
    echo "[ERROR] No such file: ${src}" >&2
    exit 1
  fi

  if [ -e "${dst}" ]; then
    mv "${dst}" "${dst}.org"
    echo "[INFO] ${dst} is renamed to ${dst}.org" >&2
  fi

  if [ -d "${dst}" ]; then
    mkdir -p "${dst}"
  else
    mkdir -p "$(dirname ${dst})"
  fi

  ln -sf "${src}" "${dst}"
  echo "[INFO] A symlink is created: ${dst} -> ${src}" >&2
done

# install vim plugins
vim +PlugInstall +PlugClean! +CocInstall +qa!

