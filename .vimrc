"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=1000

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=5

" Turn on the WiLd menu
set wildmenu

"Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Highlight search results
set hlsearch
set ignorecase
set smartcase

"Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

colorscheme candy
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%


""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

let statusHead="%1*\ %{getcwd()}\/\ %*%2*\ %F%m%r%h%w\ %*"
let statusBreakPoint="%<"
let statusFileType="%3*\ %{((&ft==\"help\"\|\|&ft==\"\")?\"\":&ft)}\ %{(&fenc==\"\"?&enc:&fenc).(&bomb?\".BOM\":\"\")}\ %{&ff}\ %*"
let statusAscii="%4*\ %b:0x%B\ %*"
let statusBody=statusFileType.statusAscii.statusBreakPoint
let statusBlank="%4*%=%*"
let statusRuler="%4*\ %l/%L,%c\ %p%%%\\ %*"
let statusTime="%1*\ %{strftime(\"%F\ %T\")}\ %*"
let statusEnd=statusRuler.statusTime
let statusString=statusHead.statusBody.statusBlank.statusEnd
set statusline=%!statusString

set t_Co=256
hi User1 ctermbg=white ctermfg=black
hi User2 ctermbg=lightgray ctermfg=black
hi User3 ctermbg=gray ctermfg=black
hi User4 ctermbg=darkgray ctermfg=white

set nu
set cursorline
"filetype plugin indent on
hi LineNr ctermfg=gray
"设置制表符、回车、空格的显示
set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

" ======= 引号 && 括号自动匹配 ======= "
"inoremap ( ()<ESC>i
"inoremap ) <c-r>=ClosePair(')')<CR>
"inoremap { {}<ESC>i
"inoremap } <c-r>=ClosePair('}')<CR>
"inoremap [ []<ESC>i
"inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
"inoremap ` ``<ESC>i
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf
