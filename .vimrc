set termguicolors "Remove this in urxvt
colo allomancer

set guifont=Monaco:h14

"Splitscreen occurs below"
set splitright
" Show permanently full path
set statusline=%F
set laststatus=2

"Indention and tabs for .py-files:w"
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
set tabstop=4
set shiftwidth=4
set expandtab
"Enconding of the file"
set encoding=utf-8

"syntax highlighting"
let python_highlight_all=1
syntax on

"Line numbering"
set nu

"Bars for indention"
let g:indentLine_enabled = 1
let g:indentLine_setColors = '#FFFFFF'

" vundle shit
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'heavenshell/vim-pydocstring',{ 'do': 'make install' }
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"Syntastic options
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
"nnoremap <C-w>E :SyntasticCheck<CR> :SyntasticToggleMode<CR>

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_w = 0
"let g:syntastic_quiet_messages = { "type": "style" }

" Jedivim Settings
let g:pymode_rope = 0
""let g:jedi#completions_enabled = 0
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
autocmd FileType python setlocal completeopt-=preview

" Autodoc python files settings
let g:pydocstring_formatter = 'numpy'
let g:pydocstring_doq_path = '/Users/florianwolf1/opt/anaconda3/bin/doq'
" Airline Theme
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
inoremap jj <Esc>
inoremap { {}<Left>
inoremap [ []<Left>
inoremap ( ()<Left>
inoremap " ""<left>
inoremap ' ''<left>
