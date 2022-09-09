""" Config Générale
set nocompatible
filetype off
set number 
"set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set mouse=nicr
set showmatch
syntax on
set cursorline
set path+=**
set wildmenu
syntax enable
set ignorecase
set hlsearch
set incsearch
set wildmode=longest,list
set clipboard=unnamedplus
set guifont=UbuntuMono\ Nerd\ Font:h11
filetype plugin indent on 
set laststatus=2
set noshowmode
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l 
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR> 
set fillchars+=vert:\
set splitbelow splitright
let mapleader = ','

""" Plugins
call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-startify'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'preservim/nerdcommenter'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'neoclide/coc.nvim', {'branch': 'release'}  " Auto Completion
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-python/python-syntax'
Plug 'junegunn/vim-emoji'
Plug 'dracula/vim'
Plug 'vifm/vifm.vim'
Plug 'vimwiki/vimwiki'
Plug 'jreybert/vimagit'
Plug 'suan/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
Plug 'Townk/vim-autoclose'
set encoding=UTF-8

call plug#end()

"Tab
nnoremap <silent> <C-Left> :tabprev <CR>
nnoremap <silent> <C-Right> :tabnext <CR>
nnoremap <silent> <A-=> :tabnew <CR>

xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

" NerdTree
nnoremap <silent> <C-t> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let g:NERDTreeWinSize=38

nmap <F8> :TagbarToggle<CR>

inoremap ii <Esc>

set completeopt-=preview " For No Previews

" Thème
if (has("termguicolors"))
	set termguicolors
endif
colorscheme dracula

" air-line

" airline symbols
if $TERM ==# 'linux'
	let g:airline_theme = 'monochrome'
	let g:airline#extensions#tabline#left_sep = ' '
	let g:airline#extension#tabline#left_alt_sep = '|'
else
	let g:airline_powerline_fonts = 1
	if !exists('g:airline_symbols')
		let g:airline_symbols = {}
	endif
	let g:airline_left_sep = ''
	let g:airline_left_alt_sep = ''
	let g:airline_right_sep = ''
	let g:airline_right_alt_sep = ''
	let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''
    let g:airline_symbols.linenr = ''
    let g:airline_theme = 'deus'
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Instant Markdown
let g:instant_markdown_autostart = 0
let g:instant_markdown_browser = "surf"
map <Leader>md :InstantMarkdownPreview<CR>
map <Leader>ms :InstantMarkdownStop<CR>

let g:python_highlight_all = 1

"Vifm
map <Leader>vv :Vifm<CR>
map <Leader>vs :VsplitVifm<CR>
map <Leader>sp :SplitVifm<CR>
map <Leader>dv :DiffVifm<CR>
map <Leader>tv :TabVifm<CR>

"Vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

""" Neovide
if !exists('g:neovide')
	let g:neovide_fullscreen=v:true
	let g:neovide_cursor_vfx_mode="pixiedust"
	let g:neovide_cursor_vfx_mode="wireframe"
	set guifont=UbuntuMono\ Nerd\ Font:h11
endif
