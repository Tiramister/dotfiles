#!/bin/zsh

# create symlinks from HOME to this repo
src_dst_file_map=(
  '.zshrc:.zshrc'
  '.config:.config'
)

for line in ${src_dst_file_map[@]}; do
  IFS=':' read -r src_file dst_file <<< "$line"
  src="$(pwd)/${src_file}"
  dst="${HOME}/${dst_file}"

  if [ ! -e "${src}" ]; then
    echo "[ERROR] No such file or directory: ${src}" >&2
    exit 1
  fi

  if [ -e "$dst" ] && [ ! -L "$dst" ]; then
    mv $dst "${dst}.org"
    echo "[INFO] $dst is renamed to ${dst}.org" >&2
  fi

  mkdir -p "$(dirname $dst)"

  ln -snf $src $dst
  echo "[INFO] A symlink is created: $dst -> $src" >&2
done

# install neovim plugins
nvim +PlugInstall +PlugClean! +qa!

