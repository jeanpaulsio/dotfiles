" UI
set guifont=Operator\ Mono\ Book:h14

" use 256 colors in terminal
if !has("gui_running")
    set t_Co=256
    set term=screen-256color
endif

" fix cursor display in cygwin
if has("win32unix")
    let &t_ti.="\e[1 q"
    let &t_SI.="\e[5 q"
    let &t_EI.="\e[1 q"
    let &t_te.="\e[0 q"
endif

syntax on
color dracula

if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Base Config
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set number
set nofoldenable

" Speed Optimizations
let loaded_matchparen=1
let html_no_rendering=1
set noshowmatch
set nocursorline
set nocursorcolumn
set lazyredraw
set scrolljump=8

" Shortcuts
imap jk <Esc>
imap kj <Esc>
let mapleader = ","

" move line down/up
noremap K ddkkp
noremap J ddp

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

" Tab Navigation
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tn  :tabnext<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>

" Pathogen
execute pathogen#infect()

" Ale
let g:ale_emit_conflict_warnings = 0

" Prettier
let g:jsx_ext_required = 0
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'none'
