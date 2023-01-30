" copy vim files to ~/.vim/colors/ after downloading
Plug 'altercation/vim-colors-solarized', {'do': 'mkdir -p ~/.vim/colors && cp colors/* ~/.vim/colors/'}

set background=light
colorscheme solarized

" Status line
Plug 'itchyny/lightline.vim'

set noshowmode
let g:lightline = { 'colorscheme': 'solarized' }

