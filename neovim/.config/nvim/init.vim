"###########
"# Plugins #
"###########

call plug#begin()
    Plug 'vim-airline/vim-airline' "Better/prettier status bar
    Plug 'vim-airline/vim-airline-themes'
    Plug 'w0rp/ale' "Linter
    Plug 'sheerun/vim-polyglot' "Better syntax highlighting n stuff for *tons* of languages
    Plug 'tpope/vim-fugitive' "Git wrapper
    Plug 'tpope/vim-unimpaired' "Misc 'paired' mappings
    Plug 'tpope/vim-sensible' "Collection of sensible defaults
    Plug 'tpope/vim-sleuth' "Intelligent shiftwidth etc
    Plug 'tpope/vim-surround' "Intelligent surrounding-char insertion
    Plug 'tpope/vim-repeat' "Allow the '.' action to repeat plugins sequences too
    Plug 'tpope/vim-commentary' "Comment bindings
    Plug 'tpope/vim-tbone' "Tmux functionality
    Plug 'tpope/vim-vinegar' "Enhance built-in browser
    Plug 'tpope/vim-classpath' "Get java classpath
    Plug 'tpope/vim-projectionist' "Interpret Project Structures
    Plug 'tpope/vim-speeddating' "Date/time arithmetic
    Plug 'tpope/vim-dispatch' "Asynchronous builds
    Plug 'tpope/vim-abolish' "Misc functions for abbreviations and replacement
    Plug 'tpope/vim-eunuch' "Misc helper for unix stuff
    Plug 'ludovicchabant/vim-gutentags' "Tags management
    Plug 'majutsushi/tagbar' "Tagbar
    Plug 'dylanaraps/wal.vim' "Wal colourscheming
    Plug 'plasticboy/vim-markdown' "Markdown enhancements
    Plug 'edkolev/tmuxline.vim'
    Plug 'ledger/vim-ledger' "Folding and syntax for ledger files
    Plug 'mbbill/undotree' "Remember undo history
    Plug 'SirVer/ultisnips' "Snippets support
    Plug 'honza/vim-snippets' "Large collection of standard snippets
    " Plug 'lervag/vimtex' "Latex
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } } "Render markdown
    Plug 'christoomey/vim-tmux-navigator' "Seamless integration with tmux panes
    Plug 'OmniSharp/Omnisharp-vim' "C# stuff

    " Autocompletion
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'ncm2/ncm2-tmux' "Tmux
    Plug 'ncm2/ncm2-bufword' "Current Buffer
    Plug 'ncm2/ncm2-jedi' "Python
    Plug 'ncm2/ncm2-path' "Paths
    Plug 'wellle/tmux-complete.vim' "From other tmux panes
    Plug 'ncm2/ncm2-pyclang' "C/C++
    Plug 'ncm2/ncm2-vim' "Vimscript
    Plug 'Shougo/neco-vim'
    Plug 'ncm2/ncm2-go' "Go
    " Plug 'ObserverOfTime/ncm2-jc2', {'for': ['java', 'jsp']} "Java
    " Plug 'artur-shaik/vim-javacomplete2', {'for': ['java', 'jsp']}
    Plug 'ncm2/ncm2-markdown-subscope' "Markdown subscopes
    Plug 'ncm2/ncm2-racer' "Rust
    Plug 'ncm2/ncm2-ultisnips' "Snippets
    Plug 'fgrsnau/ncm2-otherbuf' "Open vim buffers
    Plug 'loonies/ncm2-ledger' "Ledger accounting software
    Plug 'filipekiss/ncm2-look.vim' "Dictionary completion (disabled by default)
    Plug 'eagletmt/neco-ghc'
call plug#end()

"##############
"# Aesthetics #
"##############
colorscheme wal
syntax enable
set background=dark
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='wal'
let g:airline#extensions#ale#enabled = 1
let t_ZH="\e[3m"
let t_ZR="\e[23m"

"#################
"# Miscellaneous #
"#################
let &packpath = &runtimepath
filetype plugin indent on
set runtimepath^=~/.vim runtimepath+=~/.vim/after
set number  "Line numbering
set laststatus=2
set linebreak
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab  "4-space tabs by default
set lazyredraw      "Don't redraw buffer while running macros
set undofile        "Persistent undo across editor restarts/closes
set foldmethod=indent   "Fold with indentation
command! SpellCheckOn set spell spelllang=en_gb
command! Vimrc :vs '~/.config/nvim/init.vim'    "Edit Vimrc/init.vim

" Markdown
" Markdown preview options
let g:mkdp_auto_close = 0
let g:mkdp_refresh_slow = 1
" let g:mkdp_browser = "firefox"
let g:vim_markdown_folding_disabled = 1 "Turn off vim-markdown's annoying folding
" Reset comment string since nvim seems to think it's ">"
autocmd FileType markdown setlocal commentstring=<!--\ %s\ -->

augroup any
    " Recognise ledger files
    au BufNewFile,BufRead *.ldg,*.ledger setf ledger | comp ledger
    " Turn on spellchecking for typesetting and plaintext types
    au FileType tex,markdown  SpellCheckOn
    au FileType tex,markdown  let b:ncm2_look_enabled = 1
    " Expand all folds when opening the file to counter the weird default-closed nature of non-manual foldings
    au BufRead * normal zR
augroup END

"#######################
"# Regular Keybindings #
"#######################
" Unbind annoying defaults
nnoremap <F1> nop
" Space to toggle folding
nnoremap <space> za
" ncm2
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <c-c> <ESC>
inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
" Ctrl+j,k to move around snippet fields
let g:UltiSnipsJumpForwardTrigger	= "<c-j>"
let g:UltiSnipsJumpBackwardTrigger	= "<c-k>"

" Enable mouse integration
set mouse=nv

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Trees
nnoremap <F2> :UndotreeToggle<cr>
nnoremap <F3> :TagbarToggle<cr>

" Add a hex editing mode with :HexMode
command -bar Hexmode call ToggleHex()
function ToggleHex()
    " hex mode should be considered a read-only operation; save values for modified and read-only for restoration later, and clear the read-only flag for now
    let l:modified=&mod
    let l:oldreadonly=&readonly
    let &readonly=0
    let l:oldmodifiable=&modifiable
    let &modifiable=1
    if !exists("b:editHex") || !b:editHex
        let b:oldft=&ft
        let b:oldbin=&bin
        setlocal binary " make sure it overrides any textwidth, etc.
        silent :e " this will reload the file without trickeries (DOS line endings will be shown entirely )
        let &ft="xxd"
        let b:editHex=1
        %!xxd
    else
        let &ft=b:oldft
        if !b:oldbin
            setlocal nobinary
        endif
        let b:editHex=0
        %!xxd -r
    endif
    let &mod=l:modified
    let &readonly=l:oldreadonly
    let &modifiable=l:oldmodifiable
endfunction

"##########
"# Linter #
"##########
let g:ale_linters = {
    \ 'sh': ['shellcheck', 'shfmt'],
    \ 'c': ['gcc'],
    \ 'python': ['flake8'],
    \ 'haskell': [],
    \ 'json': ['jq'],
    \ }
let g:ale_sign_column_always = 1
let g:ale_sign_error = "XX"
let g:ale_sign_warning = "!!"
let g:ale_lint_on_text_changed = 'never'
" Disable polyglot for everything it will conflict with ale on (expand me!)
let g:polyglot_disabled = ['py', 'latex', 'markdown']
" Run the GHC in dynamic linking mode
let g:ale_haskell_ghc_options = "-dynamic -fno-code -v0"
let g:ale_haskell_cabal_ghc_options = "-dynamic -fno-code -v0"
" Use the correct binary for HIE
let g:ale_haskell_hie_executable = "hie-wrapper"
" Set options for markdownlint
let g:ale_markdown_markdownlint_options = "-c ~/.markdownlintrc"

"#####################
"# Fixers/Formatters #
"#####################
" Use a couple of preferred fixers/formatters for each lang
" Then cull whitespace
" Hopefully I never need to edit in the whitespace languages ;)
let g:ale_fixers = {
    \ "*": ["trim_whitespace", "remove_trailing_lines"],
    \ "python": ["isort", "yapf", "trim_whitespace", "remove_trailing_lines"],
    \ "rust": ["rustfmt", "trim_whitespace", "remove_trailing_lines"],
    \ "sh" : ["shfmt", "trim_whitespace", "remove_trailing_lines"],
    \ "c" : ["clang-format", "trim_whitespace", "remove_trailing_lines"],
    \ "java" : ["google_java_format", "trim_whitespace", "remove_trailing_lines"],
    \ "json" : ["jq", "trim_whitespace", "remove_trailing_lines"],
    \ "go": ["gofmt", "trim_whitespace", "remove_trailing_lines"],
    \ }
let g:ale_fix_on_save = 1
let g:ale_c_clangformat_options = '-style="{BasedOnStyle: Google, IndentWidth: 4}"'

"################
"# Autocomplete #
"################
set completeopt=noinsert,menuone,noselect
au BufEnter * call ncm2#enable_for_buffer()
set shortmess+=c
" Java
au FileType java setlocal omnifunc=javacomplete#Complete
" Trigger snipper expansion (Version from the repo doesn't work)
autocmd BufNewFile,BufRead * inoremap <silent> <buffer> <expr> <cr> ncm2_ultisnips#expand_or("\<CR>", 'n')
let g:UltiSnipsExpandTrigger = "<Plug>(ultisnips_expand)"
let g:UltiSnipsRemoveSelectModeMappings = 0
augroup NCM2
    au!
    " au Filetype tex call ncm2#register_source({
    "     \ 'name': 'vimtex',
    "     \ 'priority': 8,
    "     \ 'scope': ['tex'],
    "     \ 'mark': 'tex',
    "     \ 'word_pattern': '\w+',
    "     \ 'complete_pattern': g:vimtex#re#ncm2,
    "     \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
    "     \ })
augroup END

"##########
"# Vimtex #
"##########
" let g:tex_flavor  = 'latex'
" let g:tex_conceal = ''
" let g:tex_fold_enabled = 0
" let g:vimtex_fold_manual = 1
" let g:vimtex_latexmk_continuous = 1
" let g:vimtex_compiler_progname = 'nvr'
" let g:vimtex_view_general_viewer = 'okular'
" let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'
" let g:vimtex_view_general_options_latexmk = '--unique'

"#################
"# Projectionist #
"#################

let g:projectionist_heuristics = {
\       "Cargo.toml": {
\           "src/*.rs": {
\               "type": "source",
\               "alternate": "test/{}.rs",
\           },
\           "src/*/mod.rs": {
\               "type": "module",
\               "alternate": "src/{}/tests.rs",
\           },
\           "test/*.rs": {
\               "type": "test",
\           },
\           "Dockerfile": {
\               "type": "docker",
\           },
\           "Cargo.toml" : {
\               "type": "cargo",
\           },
\           "*": {
\               "make": "cargo",
\           },
\       },
\   }
