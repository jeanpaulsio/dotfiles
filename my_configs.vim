set tabstop=2
set shiftwidth=2
set expandtab
set guifont=IBM\ Plex\ Mono:h16

syntax on
color dracula

" navigation stuff, i.e. ctrl + j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" map the keys 'jj' to the Escape key to improve efficiency.                                                                                             
imap jj <Esc>

let g:jsx_ext_required = 0

" print semicolons
let g:prettier#config#semi = 'true'

" single quotes over double quotes
let g:prettier#config#single_quote = 'false'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'true'

" nerd tree side bar position
let g:NERDTreeWinPos = 'left'

" nerd tree toggle, ,ne in normal mode
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" show hidden dot files by default
let NERDTreeShowHidden=1

" ignore ds_store
let NERDTreeIgnore=['\.DS_Store$']

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers=['eslint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_scss_sass_quiet_messages = {
    \ "regex": 'File to import not found or unreadable', }


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
