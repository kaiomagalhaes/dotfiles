call plug#begin()
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'kien/ctrlp.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'tpope/vim-surround'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
nnoremap <leader>n :NERDTreeToggle<CR>

set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab



:map <C-a> maGVgg='a
set number
set hlsearch
set incsearch
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.swp$']

so /home/kaio/Dropbox/scripts/.custom_vim.vim
