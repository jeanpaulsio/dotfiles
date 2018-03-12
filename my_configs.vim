let g:ale_emit_conflict_warnings = 0
set tabstop=2
set shiftwidth=2
set expandtab
set guifont=IBM\ Plex\ Mono:h16
set number

syntax on

" navigation stuff, i.e. ctrl + j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" map the keys 'jk' to the Escape key to improve efficiency.                                                                                             
imap jk <Esc>
imap kj <Esc>

let g:jsx_ext_required = 0

" print semicolons
let g:prettier#config#semi = 'true'

" single quotes over double quotes
let g:prettier#config#single_quote = 'false'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

let g:prettier#config#trailing_comma = 'none'

" nerd tree side bar position
let g:NERDTreeWinPos = 'left'

" nerd tree toggle, ,ne in normal mode
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" show hidden dot files by default
let NERDTreeShowHidden=1

" ignore ds_store
let NERDTreeIgnore=['\.DS_Store$']

" unfold all lines
set foldlevel=99
set nofoldenable

" gitgutter enabled
let g:gitgutter_enabled = 1

" 80 column layout
if exists('+colorcolumn')
  set colorcolumn=80
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()
