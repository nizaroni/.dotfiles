" ---------------
" === Plugins ===
" ------------------------------------------------------------------------------

" Initialize vim-plug plugin system
call plug#begin()

" Sort keys & values inside brackets
Plug 'christoomey/vim-sort-motion'
" Fuzzy file finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
" Automatically detect a file's indentation settings
Plug 'tpope/vim-sleuth'
" Increment dates & times with CTRL+A & CTRL+X
Plug 'tpope/vim-speeddating'
" Easy adding and removing of quotes and other two-part code
Plug 'tpope/vim-surround'
" Increment sequenced numbers with CTRL+A & CTRL+X
Plug 'triglav/vim-visual-increment'

" Use single quotes for Plug commands
" Reload ~/.vimrc and run `:PlugInstall` to install new plugins
call plug#end()


" ----------------------------
" === Mappings & Variables ===
" ------------------------------------------------------------------------------

" Use CTRL-L to clear search highlighting (from tpope/vim-sensible)
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Preserve bulk edit functionality with CTRL+C in Insert mode
inoremap <C-c> <Esc>

" Hide the file explorer banner
let g:netrw_banner = 0
" Use tree view in the file explorer
let g:netrw_liststyle = 3
" File explorer takes up 25% of the screen
let g:netrw_winsize = 30

" Set <Leader> to spacebar (needs to be before <Leader> mappings)
let mapleader = " "

" Mappings for fuzzy finder (fzf, plugin)
nnoremap <Leader><Space> :Files<CR>
nnoremap <Leader>c<Space> :Files %:p:h<CR>
" Mapping for file explorer (Netrw, built-in)
nnoremap <Leader>t :Lexplore<CR>
nnoremap <Leader>ct :Lexplore %:p:h<CR>

" Make uppercase Y behave like uppercase D & C
nnoremap Y y$


" ---------------
" === Options ===
" ------------------------------------------------------------------------------

" Use the operating system's clipboard
set clipboard=unnamed

" Highlight column 81
set colorcolumn=81

" Centralize swapfiles to avoid having them created next to each edited file
set directory=~/.vim/swapfiles

" Use UTF-8 without BOM (causes trouble sometimes?)
set encoding=utf-8 nobomb

" Read local (per-folder) .vimrc configuration files
set exrc

" Don't add hard wraps to lines as you type
set formatoptions-=ct
" Don't comment new lines after a comment
set formatoptions-=ro

" Add the global (g) flag to :%s///g substitute (replace) commands by default
set gdefault

" Continue to highlight all search matches
set hlsearch

" Ignore case in searches
set ignorecase

" Highlight search matches dynamically as you type
set incsearch

" Show invisible characters
set list
set listchars=tab:⋮\ ,trail:⇲,eol:¬,nbsp:☒

" Don't increment numbers starting with 0 as octal
set nrformats-=octal

" Show line numbers
set number

" Highlight the line where the cursor is located
set ruler

" Start scrolling up and down sooner
set scrolloff=8

" Disable unsafe commands in local (per-folder) .vimrc configuration files
set secure

" Make indenting match the width of the `tabstop`
set shiftwidth=0

" Use case-sensitive search if an uppercase letter is typed
set smartcase

" Automatically indent lines after curly braces
set smartindent

" List of supported languages for `:setlocal spell` spell check
set spelllang=en_us,en_gb,es,fr_fr

" Give tabs the width of 4 characters
set tabstop=4

" Set text width to 80 for the automatic formatter
set textwidth=80

" Improve smoothness
set ttyfast

" Activate syntax highlighting
syntax on
