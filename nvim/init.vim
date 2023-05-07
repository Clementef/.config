" Vim Config

" leader key
let mapleader =","

" Vim-Plug
call plug#begin(system('echo -n "$HOME/.config/nvim/plugged"'))

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-surround'
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'dkarter/bullets.vim'

call plug#end()

" theme, disable bg color
set termguicolors
colorscheme dracula
" highlight Normal guibg=NONE ctermbg=NONE
function! s:tweak_colors()
    set termguicolors
endfunction
autocmd! ColorScheme dracula call s:tweak_colors()

" highlight and live search
set hlsearch
set incsearch

" tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4

" soft break indentation
set breakindent
set showbreak=\ \ \ 

" tabs to spaces
set expandtab
set autoindent
set breakindent
" set briopt+=list:-1
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

" rebind command key
    noremap ; :

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
	noremap <C-v> "+p

" Move lines up and down
	nnoremap <C-m>  :<C-u>m-2<CR>==
	nnoremap <C-n> :<C-u>m+<CR>==
    xnoremap <C-m>  :m-2<CR>gv=gv
    xnoremap <C-n> :m'>+<CR>gv=gv

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
    nnoremap <leader>i :! s_runfile %:p<CR>

" update syntax
    nnoremap <leader>e :edit<CR>
    nnoremap <leader>E :write \| :edit <CR>

" source config file
    nnoremap <leader>v :so ~/.config/nvim/init.vim<CR>

" run in shell
    nnoremap <leader>I :! %:p<space>

" update vim-plug
	noremap <leader>p :PlugInstall<CR>

" vim-markdown
    noremap <leader>m <Plug>MarkdownPreviewToggle

" pandoc render
   noremap <leader>M :! s_mdtopdf %< && zathura %<.pdf <CR>

" Nerdtree
	noremap <leader>n :NERDTreeToggle<CR>

" make personal programs executable
    noremap <leader>b :!s_buildall<CR>

" Goyo/Pencil for writing prose:
    noremap <leader>g :Goyo \| set linebreak \| :w \| :edit \| :normal zz <CR>
" reload Goyo
    noremap <leader>G :Goyo \| :Goyo \| set linebreak \| :w \| :edit \| :normal zz <CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
	noremap <leader>o :setlocal spell! spelllang=en_us<CR>
