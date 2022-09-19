FILES=(".zshrc" ".vimrc")

for filename in ${FILES[@]}; do
  dest="${HOME}/${filename}"
  if [ -f "${dest}" ]; then
    mv "${dest}" "${dest}.org"
    echo "${dest} >> ${dest}.org" >&2
  fi
  ln -sf "$(pwd)/${filename}" "${dest}"
done

