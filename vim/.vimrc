" Theme
syntax on
let g:dracula_italic = 0
colorscheme dracula
highlight Normal ctermbg=None

" Fix cursor display in cygwin
if has("win32unix")
  let &t_ti.="\e[1 q"
  let &t_SI.="\e[5 q"
  let &t_EI.="\e[1 q"
  let &t_te.="\e[0 q"
endif

" Fix cursor display in iTerm
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" Add 80 character column
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Base Config
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set cursorline
set cursorcolumn
set number
set nofoldenable
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»
set hlsearch
set ruler
set wildmenu

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

" Move line down/up
noremap J ddp
noremap K ddkkp

" Resizes Panes
nmap <Up> :res -2<CR>
nmap <Down> :res +2<CR>
nmap <Left> :vertical res -2<CR>
nmap <Right> :vertical res +2<CR>

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
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'], 'ruby': ['rubocop'] }

" Prettier
let g:jsx_ext_required = 0
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'all'

" Airline
let g:airline_theme='minimalist'

" NERDTree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
