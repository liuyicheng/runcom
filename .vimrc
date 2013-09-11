"非兼容模式
set nocp
"底部标尺
set ru
"Sets how many lines of history VIM has to remember
set history=1000
"With a map leader it's possible to do extra key combinations
"like <leader>w saves the current file
let mapleader = "\\"
let g:mapleader = "\\"
"Set 5 lines to the cursor - when moving vertically using j/k
set so=5
"Height of the command bar
set cmdheight=1
"Highlight search results
set hlsearch
set ignorecase
set smartcase
"Makes search act like search in modern browsers
set incsearch
"显示行号
set number
"使用:e命令的时候 可选项预览
set wildmenu
"文件默认编码
set enc=utf-8
"文件保存时使用的编码
set fileencoding=utf-8
"打开文件进行解码的猜测列表，优先以utf-8打开
set fileencodings=utf-8,gbk
"文件默认格式unix
set ff=unix
set encoding=utf-8
"缩进为4个空格宽度
set tabstop=4
"自动缩进使用的空格数
set shiftwidth=4
"编辑插入tab时，把tab算作的空格数
set softtabstop=4
map <F2> :set tabstop=2<cr>:set shiftwidth=2<cr>:set softtabstop=2<cr>
map <F4> :set tabstop=4<cr>:set shiftwidth=4<cr>:set softtabstop=4<cr>
"缩进使用空格
set expandtab
"自动缩进
set autoindent
"set si "Smart indent
"Be smart when using tabs ;)
set smarttab
"鼠标捕捉
"set mouse=a
"打开语法高亮
syntax on
"Show matching brackets when text indicator is over them
set showmatch
"How many tenths of a second to blink when matching brackets
set mat=1
"Linebreak on 500 characters
set lbr
set tw=500
set wrap "Wrap lines

"默认配色为candy
color desert
set cursorline
hi LineNr ctermfg=darkgray
hi Comment ctermfg=darkgray
hi StatusLine ctermbg=white ctermfg=darkgray
"显示标签栏 0: 从不 1: 大于1个时显示 2: 总是
set showtabline=2

"设置制表符、回车、空格的显示
set list
set listchars=tab:>\ ,trail:·,eol:¬,nbsp:_

"设置backspace键可以删除行首
set backspace=indent,eol,start


"重新载入配置
map <leader>s :source ~/.vimrc<cr>
"Tabnext
map <C-n> :tabnext<cr>
map <C-p> :tabprevious<cr>
map <leader>t :tabedit 
"visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv
"映射F12键为行号和list的开关
map <F12> :set number!<cr>:set list!<cr>:set autoindent!<cr>
"Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk
"insert mode shortcut
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
inoremap <C-d> <DELETE>
"command line
cnoremap <C-A> <Home>
cnoremap <C-E> <End>
cnoremap <C-B> <Left>
cnoremap <C-F> <Right>
"Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
"Remember info about open buffers on close
set viminfo^=%
"Always show the status line
set laststatus=2

