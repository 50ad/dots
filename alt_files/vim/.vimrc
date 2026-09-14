"//----------------------------------------------------------------------//"
"//                   aolov@github | .vimrc | 08-2026                    //"
"//----------------------------------------------------------------------//"

" -------------------------------------------------------------------------
" [I] Plugins
" Requires vim_plug
" -------------------------------------------------------------------------
call plug#begin()
    " ---------------------------------------------------------------------
    " [F] Feel
    " Plugins that make Vim work how I want it to.
    " ---------------------------------------------------------------------
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-eunuch'
    Plug 'tpope/vim-abolish'
    Plug 'jiangmiao/auto-pairs'
    Plug 'markonm/traces.vim'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    " ---------------------------------------------------------------------
    " [L] Look
    " Plugins that make Vim look how I want it to.
    " ---------------------------------------------------------------------
    Plug 'preservim/vim-colors-pencil'
    Plug 'ryanoasis/vim-devicons'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " ---------------------------------------------------------------------
    " [F] File
    " Plugins that improve the file system in Vim.
    " ---------------------------------------------------------------------
    Plug 'francoiscabrol/ranger.vim'
    Plug 'pbrisbin/vim-mkdir'
    Plug 'tpope/vim-vinegar'
    " ---------------------------------------------------------------------
    " [G] Git
    " Plugins that add Git access from inside Vim.
    " ---------------------------------------------------------------------
    Plug 'jreybert/vimagit'
    Plug 'lewis6991/gitsigns.nvim'
    " ---------------------------------------------------------------------
    " [X] Disabled
    " Plugins that I enable sometimes but aren't always active.
    " ---------------------------------------------------------------------
    "Plug 'kien/ctrlp.vim'
    "Plug 'wellle/targets.vim'
    "Plug 'kshenoy/vim-signature'
    "Plug 'dense-analysis/ale'
    "Plug 'itchyny/vim-cursorword/'
    "Plug 'zenbones-theme/zenbones.nvim'
    "Plug 'preservim/nerdtree'
    "Plug 'junegunn/gv.vim'
    "Plug 'tpope/vim-fugitive'
    "Plug 'gelguy/wilder.nvim'
    " ---------------------------------------------------------------------
call plug#end()
" -------------------------------------------------------------------------
" [II] Settings
" Native Vim Settings
" -------------------------------------------------------------------------

    " ---------------------------------------------------------------------
    " [S] Function
    " ---------------------------------------------------------------------
    set nocompatible
    set encoding=UTF-8
    set ffs=unix,dos,mac " File
    set ic " Ignore Case
    set scs " Smart-case
    set hi=100 " History
    " ---------------------------------------------------------------------
    " [F] Feel
    " ---------------------------------------------------------------------
    set acd " Active CD
    set si " Smart-Indent
    set ai " Auto-Indent
    set smarttab
    set bs=indent,eol,start " Backspace
    "set expandtab " tabs as spaces
    " ---------------------------------------------------------------------
    " [W] Wild
    " ---------------------------------------------------------------------
    set wmnu
    set wic
    set wim=list
    set wildoptions=fuzzy,pum
    " ---------------------------------------------------------------------
    " [L] Look
    " ---------------------------------------------------------------------
    syntax enable
    set lbr
    set bg=dark
    set termguicolors
    set gcr=n-v-r-c:block-nCursor,i-ci:ver5-iCursor,o:block-ncursor-blinkwait700-blinkon400-blinkoff250 "Cursor
    set wrap
    set rnu " Rel. Line Numbers
    set showmode
    set showcmd
    set noerrorbells
    set novisualbell
    set t_vb
    set ruler=0
    set number
    set cursorline
    set hlsearch
    set showmatch
    set smoothscroll
    set cot=menu,preview
    silent! highlight Pmenu ctermbg=black guibg=black
    silent! colorscheme pencil
    "set list
" -------------------------------------------------------------------------
" [III] Plugin Configs
" -------------------------------------------------------------------------

    " ---------------------------------------------------------------------
    " AIRLINE
    " ---------------------------------------------------------------------
    let g:airline_theme = 'pencil'

    " ---------------------------------------------------------------------
    " ?
    " ---------------------------------------------------------------------
    let &t_EI = "\e[2 q"

    " ---------------------------------------------------------------------
    " SUGGEST
    " ---------------------------------------------------------------------
    let s:vim_suggest = {}
    let s:vim_suggest.cmd = {
        \ 'enable': v:true,
        \ 'pum': v:true,
        \ 'exclude': [],
        \ 'onspace': ['b\%[uffer]','colo\%[rscheme]','.*'],
        \ 'alwayson': v:true,
        \ 'popupattrs': {'maxheight': 12},
        \ 'wildignore': v:false,
        \ 'addons': v:true,
        \ 'trigger': 't',
        \ 'reverse': v:false,
        \ 'prefixlen': 2,
    \ }
    let s:vim_suggest.search = {
        \ 'enable': v:true,
        \ 'pum': v:true,
        \ 'fuzzy': v:true,
        \ 'alwayson': v:true,
        \ 'popupattrs': {
        \   'maxheight': 12
        \ },
        \ 'range': 100,
        \ 'timeout': 200,
        \ 'async': v:true,
        \ 'async_timeout': 3000,
        \ 'async_minlines': 1000,
        \ 'highlight': v:true,
        \ 'trigger': 't',
        \ 'prefixlen': 1,
    \ }
    autocmd VimEnter * call s:wait_for_vimsuggest()
    function! s:wait_for_vimsuggest()
        if exists("g:VimSuggestSetOptions")
            call g:VimSuggestSetOptions(s:vim_suggest)
        endif
    endfunction
    " -------------------------------------------------------------------------
