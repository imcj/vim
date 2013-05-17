autocmd! bufwritepost .vimrc source %

" Pathogen plugin
call pathogen#runtime_append_all_bundles()

set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'jiangmiao/auto-pairs'
"Bundle 'The-NERD-Commenter'
Bundle 'tComment'

Bundle 'neocomplcache'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/snipmate-snippets'
Bundle 'mattn/zencoding-vim'
Bundle 'Lokaltog/vim-easymotion'

Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'

Bundle 'vim-scripts/python.vim--Vasiliev'
Bundle 'pythoncomplete'
Bundle 'sjl/gundo'

Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on

set rtp+=/Users/cj/source/vimcdoc-1.8.0/doc
set nu
set showmatch
syntax enable
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set ai
set si
"set cindent
set colorcolumn=80
set wrap
set history=4000
set nobackup
set nowb
set noswapfile
set hlsearch
set history=1000

map <C-k><C-b> :NERDTreeToggle<cr>

let g:EasyMotion_leader_key = '<leader>'


" If gui are running
if has("gui_running")
    colorscheme evening
    " Hidden toolbar
    set guioptions-=T
endif
" taglist
let Tlist_Use_Right_Window = 1
let Tlist_File_Fold_Auto_Close=1

" actionscript language
let tlist_actionscript_settings = 'actionscript;c:class;f:method;p:property;v:variable'
let tlist_tex_settings   = 'latex;s:sections;g:graphics;l:labels'
let tlist_make_settings  = 'make;m:makros;t:targets'

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" set laststatus=2
let g:Powerline_symbols='fancy'
" let g:Pwerline_cache_enable=1

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

" nerdcommenter
let NERDSpaceDelims=1
" nmap <D-/> :NERDComToggleComment<cr>
let NERDCompactSexyComs=1

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

map <F4> :TlistToggle<CR>
" 替换掉MacVim Command+T的键绑定
if has("gui_macvim")
    macmenu &File.New\ Tab key=<nop>
    map <D-t> :CommandT<CR>
    map <C-t> :CommandT<CR>
endif

let os = substitute ( system ( 'uname' ), '\n', '', '' )
if os == 'Darwin' || os == 'Mac'
    "map <D-P> :CommandT<CR>
elseif os == 'linux'
    "map <A-T> :CommandT<CR>
endif
map <C-p> :CommandT<CR>


"powerline{
" set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
  "let g:Powerline_symbols = 'fancy'
"}

"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\
"\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

set background=dark
colorscheme grb256

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap ; :
:command! W w
:command! WQ wq
:command! Wq wq
:command! Q q
:command! Qa qa
:command! QA qa
