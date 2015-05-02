""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" System configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Bundle 'morhetz/gruvbox'
Bundle 'gertjanreynaert/cobalt2-vim-theme'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'kien/ctrlp.vim'
Plugin 'vim-scripts/DrawIt'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tpope/vim-rails'
Plugin 'https://github.com/tmhedberg/matchit'
Plugin 'Lokaltog/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"filetype plugin on
" To ignore plugin indent changes, instead use:
"filetype plugin on"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
set softtabstop=2 shiftwidth=2 expandtab
set mouse=a

set lazyredraw
set ttyfast

" Shortcuts
nnoremap <leader>s :w<CR>

" Swap File
" removes clutter files that vim leaves everywhere
set swapfile
set dir=~/tmp

" Themes
set t_Co=256
colors cobalt2
set colorcolumn=81
highlight colorcolumn ctermbg=black
set number


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Easymotion
map <Leader> <Plug>(easymotion-prefix)
map s <Plug>(easymotion-bd-w)

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
