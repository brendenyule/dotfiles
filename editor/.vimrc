""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" System configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" vim-plug packaje manager
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-rails'
Plug 'iurifq/ctrlp-rails.vim'
Plug 'https://github.com/tmhedberg/matchit'
Plug 'Lokaltog/vim-easymotion'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'bronson/vim-trailing-whitespace'
Plug 'kchmck/vim-coffee-script'
Plug 'ngmy/vim-rubocop'
Plug 'justinmk/vim-sneak'
Plug 'atelierbram/vim-colors_duotones'
Plug 'thinca/vim-guicolorscheme'
Plug 'ap/vim-buftabline'
Plug 'dracula/vim'

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
"set clipboard^=unnamed
set clipboard+=unnamedplus

"syntax highlight only first 120 characters
set synmaxcol=200

" Save
nnoremap <leader>s :w<CR>

" Goto previous file
map <Leader>p <C-^>

" Swap File
" removes clutter files that vim leaves everywhere
set swapfile
set dir=~/tmp

" Buffer navigation
set hidden
map <A-l> :bn<CR>
map <A-h> :bp<CR>
map <A-q> :bd<CR>
":map <press Ctrl-V><press Ctrl-K> :ls<press Ctrl-V><press Enter>

" Make
autocmd FileType make setlocal noexpandtab

" Themes
set t_Co=256
"colors cobalt2
colors gruvbox
"colors dracula
syntax on
set background=dark
set colorcolumn=81
highlight colorcolumn ctermbg=236
set number


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Sneak
"let g:sneak#streak = 1
"map f <Plug>Sneak_S
"map s H<Plug>(SneakStreak)
"map <leader>f H<Plug>
"nmap F <Plug>Sneak_S
"xmap f <Plug>Sneak_s
"xmap F <Plug>Sneak_S
"omap f <Plug>Sneak_s
"omap F <Plug>Sneak_S<Paste>

" Ctrlp
let g:ctrlp_match_window = 'bottom,results:100'
let g:ctrlp_max_files = 0
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Ctrlp Rails
" There are more of these for migrations etc.
map <C-S-m> :CtrlPModels<CR>
map <C-S-c> :CtrlPControllers<CR>
"map <C-S-v> :CtrlPViews<CR>
map <C-S-s> :CtrlPSpecs<CR>

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
   set grepprg=ag

     " Use ag in CtrlP for listing files. Lightning fast and respects
     ".gitignore
       let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

 "ag is fast enough that CtrlP doesn't need to cache
   let g:ctrlp_use_caching = 0
endif
