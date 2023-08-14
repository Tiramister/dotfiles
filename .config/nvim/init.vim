""" 基本設定 """
" ファイルエンコーディング
set fenc=utf-8
" コマンドの補完を強化
set wildmenu
" ファイルの先頭にカーソルを戻さない
set nostartofline
" 下から3行目の時点でスクロールをする
set scrolloff=3

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

" 改行時に良い感じにインデントをする
set smartindent
" タブの代わりにスペースを追加する
set expandtab
" タブ幅
set tabstop=2
" シフト幅
set shiftwidth=2
" ファイルタイプ別インデント
filetype plugin indent on

let vimdir = $XDG_STATE_HOME . "/nvim/backup/"
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


""" キーマップ """
" ファイルのディレクトリを展開
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'


""" プラグイン """
" vim-plug
let vimplug_path = $XDG_DATA_HOME . '/nvim/site/autoload/plug.vim'
if empty(glob(vimplug_path))
  call system('curl -fLo ' . vimplug_path . ' --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim')
endif

call plug#begin()
  Plug 'itchyny/lightline.vim'
  Plug 'vim-jp/vimdoc-ja'
  Plug 'jiangmiao/auto-pairs'
  Plug 'williamboman/mason.nvim', { 'do': ':MasonUpdate' }
  Plug 'williamboman/mason-lspconfig.nvim'
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'github/copilot.vim'
call plug#end()

" lightline
set noshowmode

" LSP
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> K  <cmd>lua vim.lsp.buf.hover()<CR>

autocmd BufWritePre * lua vim.lsp.buf.format()

lua << EOF
  require('mason').setup()

  local cmp = require('cmp')
  cmp.setup({
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-K>'] = cmp.mapping.select_prev_item(),
      ['<C-J>'] = cmp.mapping.select_next_item(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }),
    window = {
      completion = cmp.config.window.bordered(),
    }
  })

  local lspconfig = require('lspconfig')
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  require('mason-lspconfig').setup_handlers {
    function(server_name)
      lspconfig[server_name].setup {
        capabilities = capabilities 
      }
    end,
  }
  vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
    vim.lsp.handlers.hover, {
      border = 'single'
    }
  )
EOF

