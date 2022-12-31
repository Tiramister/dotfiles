let vimdir = $HOME . "/.vim/backup/"

" バックアップファイル
let &backupdir = vimdir . "backups/"
call mkdir(&backupdir, "p")
set backup

" スワップファイル
let &directory = vimdir . "swaps/"
call mkdir(&directory, "p")
set swapfile
set updatetime=60000

" undo ファイル
let &undodir = vimdir . "undo/"
call mkdir(&undodir, "p")
set undofile

