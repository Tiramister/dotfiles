Plug 'rust-lang/rust.vim'

let g:rustfmt_autosave = 1

if exists('g:coc_global_extensions')
  call add(g:coc_global_extensions, 'coc-rust-analyzer')
endif

