syntax on           " 语法高亮
set nocompatible    " 去除兼容模式
set number          " 显示行号
set cursorline      " 突出显示当前行
set ruler           " 打开状态栏标尺
set autoindent      " 自动保持缩进
set showmatch       " 自动高亮对应括号
set autowrite       " 自动保存
set tabstop=4       " tab四个空格
set shiftwidth=4
set softtabstop=4   " tab为4个空格长度
set noexpandtab     " 不使用空格代替tab
set backspace=2     " 回退键删除生效
set noeb            " 去除错误提示音
set visualbell      " 出错时屏幕闪烁
set history=1000    " 历史记录数
set encoding=utf-8  " 编码格式
set showmode        " 底部显示当前命令模式
set t_Co=256        " 启用256色
set hlsearch        " 搜索时高亮显示匹配结果
set autochdir       " 自动切换文件到文件目录
set colorcolumn=82	" 某列突出显示
set laststatus=2	" 永远显示状态栏
"----------------------------插件begin--------------------------
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
" other plugin
"call vundle#end()
"filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
call plug#end()
let g:airline_powerline_fonts = 1	" 支持powerline字体
let g:airline#extensions#tabline#enabled = 1 "显示窗口tab和buffer
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code
"indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/'  }  }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1"
map <F2> :NERDTreeToggle<CR>
"----------------------------插件end----------------------------
