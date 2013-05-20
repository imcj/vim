autocmd! bufwritepost .vimrc source %

" Pathogen plugin conflict not allow
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

Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on

" dot-vimrc

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
set background=dark

" highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

" search
set incsearch
"set highlight " conflict with highlight current line
set ignorecase
set smartcase

" editor settings
set history=1000
set nocompatible
set nofoldenable " disable folding"
set confirm " prompt when existing from an unsaved file
set backspace=indent,eol,start " More powerful backspacing
set t_Co=256 " Explicitly tell vim that the terminal has 256 colors "
set mouse=a " use mouse in all modes
set report=0 " always report number of lines changed "
set nowrap " dont wrap lines
set scrolloff=5 " 5 lines above/below cursor when scrolling
set number " show line numbers
set showmatch " show matching bracket (briefly jump)
set showcmd " show typed command in status bar
set title " show file in titlebar
set laststatus=2 " use 2 lines for the status bar
set matchtime=2 " show matching bracket for 0.2 seconds
set matchpairs+=<:> " specially for html
" set relativenumber

" Default Indentation
set autoindent
set smartindent " indent when
set tabstop=4 " tab width
set softtabstop=4 " backspace
set shiftwidth=4 " indent width
" set textwidth=79
" set smarttab
set expandtab " expand tab to space

autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" syntax support
autocmd Syntax javascript set syntax=jquery " JQuery syntax support
" js
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

"-----------------
" Plugin settings
"-----------------

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" tag for coffee
if executable('coffeetags')
    let g:tagbar_type_coffee = {
            \ 'ctagsbin' : 'coffeetags',
            \ 'ctagsargs' : '',
            \ 'kinds' : [
            \ 'f:functions',
            \ 'o:object',
            \ 
    ],
            \ 'sro' : ".",
            \ 'kind2scope' : {
            \ 'f' : 'object',
            \ 'o' : 'object',
            \ 
    }
            \ 
    }

    let g:tagbar_type_markdown = {
        \ 'ctagstype' : 'markdown',
        \ 'sort' : 0,
        \ 'kinds' : [
            \ 'h:sections'
        \ 
    ]
        \ 
    }
endif

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

" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" powerline
"let g:Powerline_symbols = 'fancy'

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

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
"let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store
" MacOSX/Linux
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'

" Keybindings for plugin toggle
nmap <F5> :TagbarToggle<cr>
nmap <F6> :NERDTreeToggle<cr>
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap <D-/> :
nnoremap <leader>a :Ack
nnoremap <leader>v V`]

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \ if line("'\"") > 0 && line ("'\"") <= line("$") |
      \ exe "normal g'\"" |
      \ endif |
      \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" eggcache vim
nnoremap ; :
:command! W w
:command! WQ wq
:command! Wq wq
:command! Q q
:command! Qa qa
:command! QA qa

" for macvim
if has("gui_running")
        set go=aAce " remove toolbar
        ")"'")`
endif

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

" set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" set laststatus=2
let g:Powerline_symbols='fancy'
" let g:Pwerline_cache_enable=1


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

set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\
\[HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2
