" Base Config
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
" set cursorline
" set cursorcolumn
set number
set nofoldenable
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,precedes:«,extends:»
set hlsearch
set incsearch
set ruler
set wildmenu
set mouse=a
set shellpipe=>

" Map leader
let mapleader = ","

" Speed Optimizations
let loaded_matchparen=1
let html_no_rendering=1
set noshowmatch
set lazyredraw
set scrolljump=8

" Autoread files
set autoread
autocmd CursorHold * checktime

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

" Seach for current selection when pressing *
xnoremap * :<C-u>call <SID>VSetSearch()<CR>/<C-R>=@/<CR><CR>
xnoremap # :<C-u>call <SID>VSetSearch()<CR>?<C-R>=@/<CR><CR>

function! s:VSetSearch()
  let temp = @s
  norm! gv"sy
  let @/ = '\V' . substitute(escape(@s, '/\'), '\n', '\\n', 'g')
  let @s = temp
endfunction

" netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0

" Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kshenoy/vim-signature'
Plug 'mileszs/ack.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-unimpaired'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'

" Languages
Plug 'elixir-editors/vim-elixir'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'yuezk/vim-js'

" Theme
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()

" Theme
let g:dracula_italic = 0
let g:dracula_colorterm = 0
let g:airline_theme='dracula'
colorscheme dracula

syntax on
set guifont=OperatorMono-Book:h16
set t_ut=

if exists("$TMUX")
  set t_Co=256
  set notermguicolors
else
  set termguicolors
endif

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

" Ale
let g:ale_emit_conflict_warnings = 0
let g:ale_sign_column_always = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = { 'javascript': ['prettier', 'eslint'], 'ruby': ['rubocop'] }

" Prettier
let g:jsx_ext_required = 0
let g:prettier#config#semi = 'true'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#trailing_comma = 'all'

" fzf
nnoremap <C-f> :FZF<cr>
nnoremap <C-p> :FZF<cr>

" Changes the search command FZF uses to silver_searcher
let $FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

" Ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" NERDTree
autocmd vimenter * NERDTree
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>
