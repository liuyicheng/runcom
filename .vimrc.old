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

"打开文件类型检测
filetype on
filetype plugin on

set comments=sl:/*,mb:*,ex:*/
"设置字典
"autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict
"autocmd FileType css set dictionary=~/.vim/dict/css.dict
"autocmd FileType php set dictionary=~/.vim/dict/php.dict
"默认配色为candy
color candy
set background=dark
set cursorline
set t_Co=256
hi LineNr ctermfg=gray
hi Comment ctermfg=gray
hi Visual ctermfg=black ctermbg=white
"显示标签栏 0: 从不 1: 大于1个时显示 2: 总是
set showtabline=2

"设置制表符、回车、空格的显示
set list
set listchars=tab:>\ ,trail:·,eol:¬,nbsp:_

"设置backspace键可以删除行首
set backspace=indent,eol,start

"切换buffer不用强制保存
set hidden

"重新载入配置
map <leader>s :source ~/.vimrc<cr>

"visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv

"映射F12键为行号和list的开关
map <F12> :set number!<cr>:set list!<cr>:set autoindent!<cr>
"Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Tabnext
map <C-n> :tabnext<cr>
map <C-p> :tabprevious<cr>
map <leader>t :tabedit 

"nnoremap <C-c> :update<cr>
"cnoremap <C-c> <Esc>:update<cr>
"inoremap <C-c> <Esc>:update<cr>

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

"打开php折叠
"let php_folding = 1
"打开javascript折叠
"let b:javascript_fold=1
"打开javascript对dom、html和css的支持
"let javascript_enable_domhtmlcss=1
"使用空格键开关折叠
"nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<cr>

"Always show the status line
set laststatus=2

let statusHead="%1*\ %{getcwd()}\/\ %*"
let statusBreakPoint="%<"
let statusFileType="%2*\ %{((&ft==\"\")?\"none\":&ft)}\ %{(&fenc==\"\"?&enc:&fenc).(&bomb?\".BOM\":\"\")}\ %{&ff}\ %*"
let statusAscii="%3*\ %b:0x%B\ %*"
let statusBody=statusFileType.statusAscii.statusBreakPoint
let statusBlank="%3*%=%*"
let statusEnd="%3*\ %l/%L,%c\ %p%%%\\ %*"
"let statusString=statusHead.statusBody.statusBlank.statusEnd
let statusString=statusBlank.statusEnd
set statusline=%!statusString

hi User1 ctermbg=015 ctermfg=008
hi User2 ctermbg=007 ctermfg=008
hi User3 ctermbg=black ctermfg=white

"NERDTree插件设置
"let NERDTreeWinPos = 'left'
map <leader>n :NERDTreeToggle<CR>
