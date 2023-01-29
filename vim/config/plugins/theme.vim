" copy vim files to ~/.vim/colors/ after downloading
Plug 'altercation/vim-colors-solarized', {'do': 'cp colors/* ~/.vim/colors/'}

let g:solarized_termcolors=256
set background=light
colorscheme solarized

" Status line
Plug 'itchyny/lightline.vim'

set noshowmode
let g:lightline = { 'colorscheme': 'solarized' }

