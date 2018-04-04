" Fonts and Colors
set guifont=IBM\ Plex\ Mono:h16
syntax on
color dracula
hi ColorColumn ctermbg=234 guibg=#191A21

" Spaces and Tabs
set tabstop=2
set shiftwidth=2
set expandtab

" UI Layout
set cursorline
set cursorcolumn
set number
set nofoldenable
set foldlevelstart=99
let g:gitgutter_enabled = 1

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Resizes Panes
nmap 7 :res -2<CR>
nmap 8 :res +2<CR>
nmap 9 :vertical res -2<CR>
nmap 0 :vertical res +2<CR>

" Navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Shortcuts
imap jk <Esc>
imap kj <Esc>
let mapleader = ","

" move line down/up
noremap K ddkkp
noremap J ddp

" Ale
let g:ale_emit_conflict_warnings = 0

" Prettier
let g:jsx_ext_required = 0
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'none'

" NERDTree
nmap <leader>ne :NERDTree<cr>
let g:NERDTreeWinPos = 'left'
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store$']

" Vim Multiple Cursors
let g:multi_cursor_next_key="\<C-d>"

" Vim Go stuff
let g:go_version_warning = 0

