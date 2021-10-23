"***************************************************
set encoding=UTF-8
set nocompatible
set number
set tabstop=4
set showmode
set ruler
" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
syntax on
set re=0
set scrolloff=3		"Affiche un minimum de 3 lignes autour du curseur (pour le scroll)

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch		"Surligne les resultats de recherche
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)
set wrap		"Affiche les lignes trop longues sur plusieurs lignes
set showmatch
" -- Beep
set visualbell		"Empeche Vim de beeper
set noerrorbells	"Empeche Vim de beeper

" Active le comportement ’habituel’ de la touche retour en arriere
set backspace=indent,eol,start

" Cache les fichiers lors de l’ouverture d’autres fichiers

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set smarttab
set cindent
set shiftwidth=2
" always uses spaces instead of tab characters
set expandtab
set softtabstop=4
let g:coc_disable_startup_warning = 1
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on

"***************************************************
"set  spelllang =en,fr
"set  spell
"set  spellsuggest =5
"set  cursorline
" Desactiver les touches directionnelles
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>
" Les ; sont rarement utilises l’un a la suite de l’autre
:imap ;; <Esc>
:map ;; <Esc>
"filetype off                  " required
"#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"***************************************************
" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/site/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
"Plug 'tsony-tsonev/nerdtree-git-plugin'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'lervag/vimtex'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'prettier/vim-prettier',{
      \'do': 'yarn install',
      \'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 
      \'vue', 'svelte', 'yaml', 'html', 'php', 'json','xml','java' ] }
Plug 'w0rp/ale'

Plug 'christoomey/vim-tmux-navigator'

Plug 'vim-airline/vim-airline'
"Plug 'morhetz/gruvbox'

Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
Plug 'majutsushi/tagbar'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-syntastic/syntastic'
Plug 'lervag/vim-foam'
Plug 'sudar/vim-arduino-syntax'
Plug 'kkvh/vim-docker-tools'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'tc50cal/vim-terminal'
Plug 'shumphrey/fugitive-gitlab'
Plug 'python-mode/python-mode'
Plug 'mhinz/vim-signify'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'jmcantrell/vim-virtualenv'
Plug 'airblade/vim-gitgutter'
Plug 'ternjs/tern_for_vim'
Plug 'moll/vim-node'
Plug 'Chiel92/vim-autoformat'
Plug 'Raimondi/delimitMate'
Plug 'vim-scripts/colorizer'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/nextval'
Plug 'tpope/vim-surround'
Plug 'posva/vim-vue'
Plug 'tpope/vim-fugitive'
Plug 'MattCJones/vim-foam-programmer'
Plug 'albanm/vuetify-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plugin Dart & flutter
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'tpope/vim-dadbod'
Plug 'kevinhwang91/rnvimr'
" Initialize plugin system
call plug#end()

nmap nn :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" open NERDTree automatically
"autocmd StdinReadPre _ let s:std_in=1
"autocmd VimEnter _ NERDTree
let g:NERDTreeGitStatusUseNerdFonts = 0
let g:NERDTreeGitStatusShowIgnored = 1
let g:NERDTreeGitStatusConcealBrackets = 1
let g:NERDTreeGitStatusUntrackedFilesMode = "all"

let g:NERDTreeGitStatusWithFlags = 1
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:NERDTreeGitStatusNodeColorization = 1
let g:NERDTreeColorMapCustom = {
 \ "Staged" : "#0ee375",  
 \ "Modified" : "#d9bf91",  
 \ "Renamed" : "#51C9FC",  
 \ "Untracked" : "#FCE77C",  
 \ "Unmerged" : "#FC51E6",  
 \ "Dirty" : "#FFBD61",  
 \ "Clean" : "#87939A",  
 \ "Ignored" : "#808080"  
 \ }

let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeGitStatusIndicatorMapCustom = {
			\ "Modified"  :"✹",
			\ "Staged"    :"✚",
			\ "Untracked" :"✭",
			\ "Renamed"   :"➜",
			\ "Unmerged"  :"═",
			\ "Deleted"   :"✖",
			\ "Dirty"     :"✗",
			\ "Ignored"   :"☒",
			\ "Clean"     :"✔︎",
			\ "Unknown"   :"?",
			\ }
" " """""""""""""""""""""""""""""""nerdcommenter"""""""""""""""""""""""""""""""""
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1
"************************
"raccourcis pour changer de buffer onglet
"et activation de la souris mode visuel
"shortcuts cncp
"Buffer Shortcuts
let mapleader=" "
nnoremap <Leader>ff :CtrlP<CR>
nnoremap <Leader><Leader> :CtrlPBuffer<CR>
nnoremap <Leader>. :bd<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>N :bN< RC>
nnoremap <Leader>z :RnvimrToggle <CR>
"nnoremap <Leader>x :RnvimrResize <CR>


"set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
"place non-Plugin stuff after this line
let mapleader=" "
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
autocmd FileType tex nmap <buffer> <C-T> :!latexmk -pdf %<CR>
nmap <Leader>r :NERDTreeRefreshRoot
"************************
"#########CrtlP
let g:ctrlp_use_caching=0
let g:ctrlp_custom_ignore = 'bin$\|build$\|node_modules$\|.git|.bak|.swp|.pyc|.class'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files= 0
let g:ctrlp_max_height = 18

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"Autoformat setting
noremap <F3> :Autoformat<CR>
" syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_w = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_highlighting = 1
highlight SyntasticErrorSign guifg=white guibg=red

"************************
" vim-prettier
"let g:prettier#quickfix*enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,_.jsx,_.mjs,_.ts,_.tsx,_.css,_.less,_.scss,_.json,_.graphql,_.md,_.vue,_.yaml,\_.html PrettierAsync

"ALE 
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
 
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

let g:ale_fix_on_save = 1
"************************begin tagbar ***********************
nmap <F8> :TagbarToggle<CR>

"************************fin tagbar ***********************
set omnifunc=syntaxcomplete#Complete
"activate airline
let g:airline#extensions#tabline#enabled = 1
"airline theme
let g:airline_powerline_fonts=1
let g:airline_theme="serene"


" ctrlp
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" j/k will move virtual lines (lines that wrap)
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


" \***\* for nord time something **\*\*\*\*\*
" sync open file with NERDTree
" " Check if NERDTree is open or active
"function! IsNERDTreeOpen()  
" return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
"endfunction

" Call NERDTreeFind iff NERDTree is active, current window contains a modifiable
" file, and we're not in vimdiff
"function! SyncTree()
" if &modifiable && IsNERDTreeOpen() && strlen(expand('%')) > 0 && !&diff
" NERDTreeFind
" wincmd p
" endif
"endfunction

" Highlight currently open buffer in NERDTree
"autocmd BufEnter \* call SyncTree()
"\***\* end here **\*\*\*\*\*\*\*\*

" coc config
let g:coc_global_extensions = [
\ 'coc-snippets',
\ 'coc-pairs',
\ 'coc-tsserver',
\ 'coc-eslint',
\ 'coc-prettier',
\ 'coc-json',
\ ]
" from readme
" if hidden is not set, TextEdit might fail.
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1] =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
if (index(['vim','help'], &filetype) >= 0)
execute 'h '.expand('<cword>')
else
call CocAction('doHover')
endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold \* silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

augroup mygroup
autocmd!
" Setup formatexpr specified filetype(s).
autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
" Update signature help on jump placeholder
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a <Plug>(coc-codeaction-selected)
nmap <leader>a <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <C-d> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <C-d> <Plug>(coc-range-select)
xmap <silent> <C-d> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <space>a :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p :<C-u>CocListResume<CR>

" Alternative way to save
nnoremap <C-s> :w<CR>
" Alternative way to quit
nnoremap <C-M> :wq<CR>

