set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" features
Plugin 'editorconfig/editorconfig-vim'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'rhysd/github-complete.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-syntastic/syntastic'

" languages
Plugin 'fatih/vim-go'
Plugin 'elmcast/elm-vim'
Plugin 'rust-lang/rust.vim'

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
map <C-n> :NERDTreeToggle<CR>

let g:vim_json_syntax_conceal = 0
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" vcs visualize
let g:signify_vcs_list = [ 'git', 'hg' ]

" ctrlp CTRL-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" language go
let g:go_fmt_command = "goimport"

" language elm
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" language rust
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

filetype on
syntax on

set encoding=utf8
set hlsearch

"colorscheme default
set tabstop=4
set shiftwidth=4
set expandtab

set autoindent
set smartindent

set showtabline=2
"set mouse=a

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

set exrc
set secure
set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

