autocmd! bufwritepost .vimrc source %

" Pathogen plugin
call pathogen#runtime_append_all_bundles()


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

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

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
map <C-t> :CommandT<CR>


"powerline{
" set guifont=PowerlineSymbols\ for\ Powerline
 set nocompatible
  set t_Co=256
  "let g:Powerline_symbols = 'fancy'
"}

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\
\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

set background=dark
colorscheme grb256

autocmd BufRead,BufNewFile *.json set filetype=json
autocmd FileType coffee,javascript,json setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete
