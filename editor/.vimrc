""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" System configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-rails'
Plug 'https://github.com/tmhedberg/matchit'
Plug 'Lokaltog/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kchmck/vim-coffee-script'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
set nohlsearch
set noincsearch
set softtabstop=2 shiftwidth=2 expandtab
"set mouse=a

set lazyredraw
set ttyfast
set clipboard^=unnamed

" Shortcuts
nnoremap <leader>s :w<CR>

" Swap File
" removes clutter files that vim leaves everywhere
set swapfile
set dir=~/tmp

" Make
autocmd FileType make setlocal noexpandtab

" Themes
set t_Co=256
"colors cobalt2
colors gruvbox
:syntax on
set background=dark
set colorcolumn=81
highlight colorcolumn ctermbg=236
set number


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goto previous file
map <Leader>p <C-^>

" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Easymotion
map <Leader> <Plug>(easymotion-prefix)
map s <Plug>(easymotion-bd-w)

hi link EasyMotionTarget Typedef
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First Conditional
hi link EasyMotionTarget2Second Statement

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" Leaders
map <space> <leader>

" NerdTree
let NERDTreeDirArrows=0
map <C-n> :NERDTreeToggle<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
nnoremap <leader>e :SyntasticCheck<CR> :SyntasticToggleMode<CR>

" The Silver Searcher
if executable('ag')
 " Use ag over grep
   set grepprg=ag\ --nogroup\ --nocolor

     " Use ag in CtrlP for listing files. Lightning fast and respects
     ".gitignore
       let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

 "ag is fast enough that CtrlP doesn't need to cache
   let g:ctrlp_use_caching = 0
endif

