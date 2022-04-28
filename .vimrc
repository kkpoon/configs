call plug#begin('~/.vim/plugged')

" layout
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" helpers
Plug 'tpope/vim-abolish'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'

" version control
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'rhysd/github-complete.vim'

" features
Plug 'vim-syntastic/syntastic'
Plug 'dense-analysis/ale'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
endif

" languages and file types
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'

" go
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" elm
"Plug 'elmcast/elm-vim'

" rust
Plug 'rust-lang/rust.vim'

" javascript / typescript
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" theme
Plug 'arcticicestudio/nord-vim'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=500

filetype on
syntax on

set autoread
au FocusGained,BufEnter * checktime

set ruler

set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set encoding=utf8
set ffs=unix,dos,mac

" searching
set hlsearch
set incsearch

set showmatch
set mat=2

" Indent and tab
set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set autoindent
set smartindent
set wrap
set completeopt+=noinsert

set showtabline=2
set colorcolumn=80
set showcmd
"set relativenumber
set number
set mouse=a
"set clipboard=unnamed

set laststatus=2

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set exrc
set secure

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colour
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    colorscheme nord
catch
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set key mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
" open fzf
map <C-p> :Files<CR>
nmap <C-\> :Buffers<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

let g:NERDTreeShowHidden = 1

let g:vim_json_syntax_conceal = 0

" vcs visualize
let g:signify_vcs_list = [ 'git', 'hg' ]

" language go
let g:go_fmt_command = "goimports"
let g:go_metalinter_autosave = 1
let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']

" language elm
let g:elm_format_autosave = 1
let g:elm_syntastic_show_warnings = 1

" language rust
let g:rustfmt_autosave = 1
let g:syntastic_rust_checkers = ['cargo']

" prettier
let g:prettier#config#tab_width = 4

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc

" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = { 'passive_filetypes': ['python'] }

" deoplete
let g:deoplete#enable_at_startup = 1
