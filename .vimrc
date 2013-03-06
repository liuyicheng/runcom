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
set si "Smart indent
set wrap "Wrap lines
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

set comments=sl:/*,mb:*,ex:*/
"设置字典
autocmd FileType javascript set dictionary=~/.vim/dict/javascript.dict
autocmd FileType css set dictionary=~/.vim/dict/css.dict
autocmd FileType php set dictionary=~/.vim/dict/php.dict
"默认配色为candy
color candy
set background=dark
set cursorline
set t_Co=256
hi LineNr ctermfg=gray
"显示标签栏 0: 从不 1: 大于1个时显示 2: 总是
set showtabline=2

"设置制表符、回车、空格的显示
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

"设置backspace键可以删除行首
set backspace=indent,eol,start

"使Command-T插件忽略yui目录
"set wildignore=*static/yui*
"切换buffer不用强制保存
set hidden

"重新载入配置
map <leader>s :source ~/.vimrc<cr>

"visual模式修改缩进时不退出该模式
vnoremap < <gv
vnoremap > >gv 

"映射F12键为行号和list的开关
map <F12> :set number!<cr>:set list!<cr>

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
let php_folding = 1
"打开javascript折叠
let b:javascript_fold=1
"打开javascript对dom、html和css的支持
let javascript_enable_domhtmlcss=1
"使用空格键开关折叠
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<cr>

"Always show the status line
set laststatus=2

let statusHead="%1*\ %{getcwd()}\/\ %*"
let statusBreakPoint="%<"
let statusFileType="%3*\ %{((&ft==\"\")?\"none\":&ft)}\ %{(&fenc==\"\"?&enc:&fenc).(&bomb?\".BOM\":\"\")}\ %{&ff}\ %*"
let statusAscii="%4*\ %b:0x%B\ %*"
let statusBody=statusFileType.statusAscii.statusBreakPoint
let statusBlank="%4*%=%*"
let statusEnd="%4*\ %l/%L,%c\ %p%%%\\ %*"
let statusString=statusHead.statusBody.statusBlank.statusEnd
set statusline=%!statusString

hi User1 ctermbg=000 ctermfg=white
hi User2 ctermbg=lightgray ctermfg=black
hi User3 ctermbg=008 ctermfg=white
hi User4 ctermbg=darkgray ctermfg=016

"打开文件类型检测
filetype on

"插件pathogen，用于插件管理
execute pathogen#infect()

"NERDTree插件设置
"let NERDTreeWinPos = 'left'
map <leader>n :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif



""为特定文件类型允许插件文件的载入
"filetype plugin on
"filetype plugin indent on
"au BufNewFile,BufRead *.as set filetype=actionscript
"" Multiple filetype for freemarker
"au BufNewFile,BufRead *.ftl set filetype=ftl.html
"au BufReadCmd *.jar,*.xpi,*.egg call zip#Browse(expand("<amatch>"))
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType css set foldmethod=marker
"autocmd FileType python filetype plugin indent on
"autocmd FileType python setlocal et sta sw=4 sts=4
"
"" 设置javascriptlint
"autocmd FileType javascript set makeprg=jslint\ %
"autocmd FileType javascript set errorformat=%f(%l):\ %m
"autocmd FileType javascript inoremap <silent> <F9> <C-O>:make<cr>
"autocmd FileType javascript map <silent> <F9> :make<cr>
"
""" In visual mode, git blame the selection
""function! GitBlame() range
""" look up function-range-example for more information
""    let beg_line = line("'<")
""    let end_line = line("'>")
""    exec '!git blame -L '. beg_line. ','. end_line. ' %'
""endfunction
""vnoremap <leader>g :call GitBlame()<cr>
""" In normal mode, git blame the current line
""nnoremap <leader>g :exec '!git blame -L '. line("."). ','. line("."). ' %'<cr>
"
""初始化所有插件
"function! BundlesInit()
"    let bundles = {
"            \'vim-pathogen' : 'github.com/tpope/vim-pathogen.git',
"            \'vim-fugitive' : 'github.com/tpope/vim-fugitive.git',
"            \'nerdtree' : 'github.com/scrooloose/nerdtree.git',
"            \'nerdcommenter' : 'github.com/scrooloose/nerdcommenter.git',
"            \'ctrlp.vim' : 'github.com/kien/ctrlp.vim.git',
"            \'command-t' : 'git.wincent.com/command-t.git',
"            \'snipmate.vim' : 'github.com/msanders/snipmate.vim.git',
"            \'tagbar' : 'github.com/majutsushi/tagbar.git',
"            \'vim-taglist-plus' : 'github.com/int3/vim-taglist-plus.git',
"            \'zencoding-vim' : 'github.com/mattn/zencoding-vim.git',
"            \'syntastic' : 'github.com/scrooloose/syntastic.git',
"            \'vim-node.js' : 'github.com/mmalecki/vim-node.js.git',
"            \'vim-colors-solarized' : 'github.com/altercation/vim-colors-solarized.git',
"            \'vim-vividchalk' : 'github.com/tpope/vim-vividchalk.git'
"        \}
"    let bundleDir = $HOME . '/.vim/bundle/'
"    if !isdirectory(bundleDir)
"        let output = mkdir(bundleDir)
"    endif
"
"    for key in keys(bundles)
"        let dir = bundleDir . key
"        if !isdirectory(dir)
"            let cmd = 'git clone git://' . bundles[key] . ' ' . bundleDir . key
"            "execute cmd
"            echo 'fetching ' . key . '...'
"            let output = system(cmd)
"        endif
"    endfor
"
"    if exists(':Helptags')
"        :Helptags
"    endif
"
"    echo 'all bundles are ready.'
"endfunction
"nnoremap <leader>h :call BundlesInit()<cr>
"
""初始化配置及pathogen
"function! VimInitAll()
"    "载入本地扩展配置文件
"    let vimrc_extend  = $HOME . "/.vimrc.ext"
"    if filereadable(vimrc_extend)
"        execute "source " . vimrc_extend
"    endif
"
"    "初始化pathogen插件
"    let pathogen = $HOME . '/.vim/bundle/vim-pathogen/autoload/pathogen.vim'
"    if !filereadable(pathogen)
"        call BundlesInit()
"    endif
"
"    execute "source " . pathogen
"    call pathogen#infect()
"
"endfunction
"
""CtrlP插件设置
"let g:ctrlp_map = '<leader>p'
"let g:ctrlp_by_filename = 1
"
""Command-T插件设置
"let g:CommandTMaxHeight = 10
"let g:CommandTMinHeight = 10
"let g:CommandTCancelMap = ['<Esc>', '<C-c>']
"
""NERDTree插件设置
""let NERDTreeWinPos = 'left'
"nnoremap <leader>nt :NERDTree<cr>
"
""syntastic插件设置
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['javascript', 'php'] }
"let g:syntastic_auto_loc_list = 1
""let g:syntastic_javascript_gjslint_conf = '--strict'
"nnoremap <leader>sc :SyntasticCheck<cr>
"
"call VimInitAll()
"
"""""""""""""""""""""""""" below is for testing """""""""""""""""""""""""
"
"set background=dark
""set cursorline
""let g:solarized_termtrans = 1
""colorscheme solarized
""
"
"
""""""""""""""""""""""""""""""
"" TagList setting
""""""""""""""""""""""""""""""
""Exuberant ctags程序的位置
""let Tlist_Ctags_Cmd="/opt/local/bin/ctags"
""let Tlist_Ctags_Cmd="/usr/local/bin/jsctags"
""let Tlist_Inc_Winwidth=100
""let Tlist_WinWidth='auto'
""在右侧窗口打开
""let Tlist_Use_Right_Window=1
""只显示当前文件的tag
""let Tlist_File_Fold_Auto_Close=1
""如果Taglist是最后一个窗口则退出vim
""let Tlist_Exit_OnlyWindow = 1
""let g:tlist_javascript_settings = 'javascript;s:string;a:array;o:object;f:function'
"let g:tlist_javascript_settings = 'javascript;f:function;c:class;o:object;m:method;s:string;a:array;n:constant'
"
""let g:tagbar_ctags_bin = '/usr/local/bin/jsctags'
"
"""""""""""""""""""""""""""""""
"" BufExplore settingr
"""""""""""""""""""""""""""""""
"let g:bufExplorerDefaultHelp=0       " Do not show default help.
"let g:bufExplorerShowRelativePath=1  " Show relative paths.
"let g:bufExplorerSortBy='mru'        " Sort by most recently used.
"let g:bufExplorerSplitRight=0        " Split left.
"let g:bufExplorerSplitVertical=1     " Split vertically.
"let g:bufExplorerSplitVertSize = 30  " Split width
"let g:bufExplorerUseCurrentWindow=1  " Open in new window.
"
"""""""""""""""""""""""""""""""
"" winManager setting
"""""""""""""""""""""""""""""""
""let g:winManagerWindowLayout = \""BufExplorer,FileExplorer|TagList"
"let g:winManagerWindowLayout = "FileExplorer"
"let g:winManagerWidth = 30
"let g:defaultExplorer = 0
"nmap <C-W><C-F> :FirstExplorerWindow<cr>
"nmap <C-W><C-B> :BottomExplorerWindow<cr>
"nmap <silent> <leader>wm :WMToggle<cr> 


" ======= 引号 && 括号自动匹配 ======= "
"inoremap ( ()<ESC>i
"inoremap ) <c-r>=ClosePair(')')<cr>
"inoremap { {}<ESC>i
"inoremap } <c-r>=ClosePair('}')<cr>
"inoremap [ []<ESC>i
"inoremap ] <c-r>=ClosePair(']')<cr>
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
"inoremap ` ``<ESC>i
"function ClosePair(char)
"    if getline('.')[col('.') - 1] == a:char
"        return "\<Right>"
"    else
"        return a:char
"    endif
"endf
