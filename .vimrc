" ファイルエンコーディング
set fenc=utf-8
" コマンドの補完を強化
set wildmenu
" ファイルの先頭にカーソルを戻さない
set nostartofline
" 下から3行目の時点でスクロールをする
set scrolloff=3

" バックアップファイル
set backup
set backupdir=~/.vim/backups/
" スワップファイル
set swapfile
set updatetime=60000
set directory=~/.vim/swaps/
" undo ファイル
set undofile
set undodir=~/.vim/undo/

" 行番号を表示
set number
" カーソル行に線を表示
set cursorline
" 対応する括弧をハイライト
set showmatch
" 現在のモードを表示
set showmode
" 入力中のコマンドを表示
set showcmd
" ファイル名を表示
set title
" ステータス行を常に表示
set laststatus=2
" シンタックスハイライト
syntax on

" 大文字・小文字の区別を無視
set ignorecase
" 大文字を含む場合は大文字・小文字を区別する
set smartcase
" 検索文字列を入力中に検索を行う
set incsearch
" 一番下から一番上の検索対象へ移動
set wrapscan
" 検索対象を強調する
set hlsearch

" 改行時に良い感じにインデントをする
set smartindent
" タブの代わりにスペースを追加する
set expandtab
" タブ幅
set tabstop=2
" シフト幅
set shiftwidth=2

" キーマップ
inoremap jj <esc>

