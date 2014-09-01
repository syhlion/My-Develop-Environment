let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
echo "Installing Vundle.."
echo ""
silent !mkdir -p ~/.vim/bundle
silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
let iCanHazVundle=0
endif
set nocompatible " be iMproved, required
filetype off " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install bundles
"let path = '~/some/path/here'
"call vundle#rc(path)
" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'
" The following are examples of different formats supported.
" Keep bundle commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
"Bundle 'taglist.vim'
Bundle 'FuzzyFinder'
Bundle 'mattn/emmet-vim'
" scripts not on GitHub
Bundle 'git://git.wincent.com/command-t.git'
"Bundle 'donnut/vim-php54-syntax'
Bundle 'jelera/vim-javascript-syntax'
"Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdtree'
"Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "tomtom/tlib_vim"
"Bundle "garbas/vim-snipmate"
"Bundle "honza/vim-snippets"
"Bundle "marijnh/tern_for_vim"
"Bundle "kien/ctrlp.vim.git"
" git repos on your local machine (i.e. when working on your own plugin)
"Bundle 'file:///home/gmarik/path/to/plugin'
" ...
filetype plugin indent on " required
"
" Brief help
" :BundleList - list configured bundles
" :BundleInstall(!) - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!) - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle commands are not allowed.
syntax on
set nu "set number line
set tabstop=4 "set tab length
set shiftwidth=4
set expandtab
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"map <f9> :Tlist<CR>
map <f5> :NERDTree<CR>
map <f6> :ProjectsTree<CR>
map <c-p> :LocateFile<CR>
map <f2> :tabn<CR>
"au FileType javascript call JavaScriptFold()"
au BufNewFile,BufRead *.ejs set filetype=html
