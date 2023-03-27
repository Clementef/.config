" leader key
let mapleader =","

" Vim-Plug
call plug#begin(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/plugged"'))

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

" theme, disable bg color
colorscheme dracula
highlight Normal guibg=NONE ctermbg=NONE
 function! s:tweak_colors()
 	highlight Normal guibg=NONE ctermbg=NONE
 endfunction
autocmd! ColorScheme dracula call s:tweak_colors()

" highlight and live search
set hlsearch
set incsearch

" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" tabs to spaces
set expandtab
set autoindent
set fileformat=unix

" basics
    set nocompatible
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number relativenumber
" Enable autocompletion:
	set wildmenu
	set wildmode=longest,list,full
" Disables automatic commenting on newline:
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" default right split
    set splitbelow splitright
" clear search highlights
    nnoremap <leader><space> :nohlsearch<cr>

" save
   nnoremap <leader>w :w<CR>

" cut
    nnoremap c "_c

" select all
    nnoremap <leader>a ggVG

" replace and replace all in selection. 
    noremap <leader>r :s//<Left>
    noremap <leader>R :%s//g<Left><Left>

" clipboard copy/paste
	noremap <C-c> "+y
	map <C-v> "+p

" Shortcutting split navigation, saving a keypress:
	map <C-h> <C-w>h
	map <C-j> <C-w>j
	map <C-k> <C-w>k
	map <C-l> <C-w>l

" new tab
	nnoremap <leader>t :tabnew<CR>

" window split vertical
    nnoremap <leader>s <C-w>v    

" window split horizontal
    nnoremap <leader>S <C-w>s

" split resizing
    nnoremap <leader>l <C-w>>
    nnoremap <leader>h <C-w><
    nnoremap <leader>j <C-w>+
    nnoremap <leader>k <C-w>-

" shellcheck
    nnoremap <leader>c :! s_runfile %:p<CR>

" update syntax
    nnoremap <leader>e :edit<CR>

" source config file
    nnoremap <leader>v :so ~/.config/nvim/init.vim<CR>

" run in shell
    nnoremap <leader>C :! %:p<space>

" update vim-plug
	map <leader>p :PlugInstall<CR>

" Nerdtree
	map <leader>n :NERDTreeToggle<CR>

" Goyo plugin makes text more readable when writing prose:
	map <leader>g :Goyo \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	map <leader>o :setlocal spell! spelllang=en_us<CR>
