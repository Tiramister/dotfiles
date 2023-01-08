" install vim-plug if not exists
" curl is required
if empty(glob('~/.vim/autoload/plug.vim'))
  call system('curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
endif

" introduce plugins
call plug#begin()
  runtime config/plugins/lightline.vim
  runtime config/plugins/coc.vim
  Plug 'vim-jp/vimdoc-ja'
  Plug 'jiangmiao/auto-pairs'
call plug#end()

