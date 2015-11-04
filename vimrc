
" Check Vundle is installed or not
filetype off
set guifont=Inconsolata_for_Powerline:h10:cANSI
let g:airline_powerline_fonts = 1
set encoding=utf-8


let g:molokai_original = 1

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
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" Bundle list
" To install these enter
Plugin 'gmarik/Vundle.vim' "BJ4
Plugin 'kien/ctrlp.vim' "快速搜尋檔案
Plugin 'bling/vim-airline' "排版
Plugin 'tpope/vim-fugitive' "git 相關
Plugin 'scrooloose/nerdtree' "檔案列表
Plugin 'scrooloose/syntastic' "語法檢查器
Plugin 'fatih/vim-go' " go 專用
Plugin 'majutsushi/tagbar' "搭配ctag 可以作到變數定位
Plugin 'Shougo/neocomplete' "自動完成
Plugin 'Townk/vim-autoclose'

call vundle#end()
filetype plugin on
" Vundle control block ends here

syntax on
set nocompatible   " Disable vi-compatibility

set t_Co=256
colorscheme xoria256
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15

set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
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
set cursorline

"Swap files
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

"Nerdtree key binding
map <C-\> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>



let g:neocomplete#enable_at_startup = 1

"air-line setting
set laststatus=2
" " 开启tabline
let g:airline#extensions#tabline#enabled = 1
" " tabline中当前buffer两端的分隔字符
let g:airline#extensions#tabline#left_sep = ' '
" " tabline中未激活buffer两端的分隔字符
let g:airline#extensions#tabline#left_alt_sep = '|'
" " tabline中buffer显示编号
let g:airline#extensions#tabline#buffer_nr_show = 1
" " 映射切换buffer的键位
nnoremap [b :bp<CR>
nnoremap ]b :bn<CR>

"Syntastic setting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_php_checkers = ['php']
let g:EclimFileTypeValidate = 0
let g:syntastic_error_symbol = '✗✗' 
let g:syntastic_style_error_symbol = '✠✠' 
let g:syntastic_warning_symbol = '∆∆' 
let g:syntastic_style_warning_symbol = '≈≈' 
let g:user_emmet_leader_key='<C-Z>'

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1



let mapleader = ","
au FileType go map <Leader>ds <Plug>(go-def-split)
au FileType go map <Leader>dv <Plug>(go-def-vertical)
au FileType go map <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <Leader>i <Plug>(go-info)

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
