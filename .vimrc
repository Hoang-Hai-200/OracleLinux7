set encoding=UTF8
set mouse=
set tabstop=4
set shiftwidth=4
set expandtab
set number
set visualbell
set relativenumber
set rnu
set formatoptions=coql
set noshowmode
"set shortmess=filnxtToO


call plug#begin()
    Plug 'morhetz/gruvbox'
    Plug 'shmup/vim-sql-syntax'
    Plug 'vim-scripts/dbext.vim'
    Plug 'mtdl9/vim-log-highlighting'

    Plug 'preservim/nerdtree'
    Plug 'francoiscabrol/ranger.vim'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'jremmen/vim-ripgrep'
    
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'Hoang-Hai-200/vim-paste'
call plug#end()

syntax enable
set background=dark
colorscheme gruvbox

" Enable filetype detection and plugin system
filetype plugin on

" Use autocmd to force formatoptions after filetype is loaded
autocmd FileType * setlocal formatoptions=coql



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Map Key
"autocmd VimEnter * unmap <leader>f
let g:ranger_map_keys = 0

" Map F5 to toggle NERDTree
nnoremap <F5> :NERDTreeToggle<CR>

" Map NERDTree 
nnoremap <Space> <C-w>w
nnoremap <F2> :let NERDTreeShowHidden = !NERDTreeShowHidden<CR>:NERDTreeRefreshRoot<CR>

" Range
map <leader>r :Ranger<CR>

" FZF
nnoremap <leader>f :Files<CR>
nnoremap <C-g> :Ag<Cr>
"nnoremap <silent><leader>l :Buffers<CR>

"Buffer
nnoremap <silent> <C-b> :Buffers<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Exit Vim if NERDTree is the only window remaining in the only tab.

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Disable NERDTree icons
let g:NERDTreeDirArrowExpandable = ' >'
let g:NERDTreeDirArrowCollapsible = ' v'


""""""""""""""""""""""""""""""""""""""""""""
"" FZF
"let g:fzf_layout = { 'window': { 'width': 0.5, 'height': 0.5 } }
"let g:fzf_layout = { 'tmux': '-p70%,60%' }



