" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'


Plug 'junegunn/vim-github-dashboard'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }


Plug 'fatih/vim-go', {'do': ':GoUpdateBinaries'}
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'ctrlpvim/ctrlp.vim'


" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" color scheme
Plug 'fatih/molokai'

" tag bar
Plug 'majutsushi/tagbar'

Plug 'AndrewRadev/splitjoin.vim'

Plug 'matze/vim-move'
Plug 'mkitt/tabline.vim'

"git"
Plug 'tpope/vim-fugitive'

Plug 'JamshedVesuna/vim-markdown-preview', { 'for': 'markdown' }
Plug 'junegunn/goyo.vim', { 'for': 'markdown' }


Plug 'scrooloose/vim-slumlord'
Plug 'aklt/plantuml-syntax'

" find and replace vim plugin
Plug 'brooth/far.vim'



" Initialize plugin system
call plug#end()


set showmode                    " always show what mode we're currently editing in
set wrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
" 自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式
" :set paste 再進行貼上。
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set visualbell           " don't beep
set noerrorbells         " don't beep
set laststatus=2
"set cursorline
"
"
"

let mapleader = ","
"Swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

"Nerdtree key binding
map <C-\> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>


"vim tabline
let g:tablineclosebutton=1

"" vim-go setting

autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>i  <Plug>(go-info)
let g:go_fmt_command = "goimports"

"" YouCompleteMe
let g:ycm_key_list_previous_completion=['<Up>']

"" Ultisnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsListSnippets="<c-s-j>"


let g:move_key_modifier = 'S'

let vim_markdown_preview_github=1
let g:go_auto_type_info = 1
set updatetime=100

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

let g:tagbar_autoclose = 1
set guifont=Menlo\ Regular:h15
