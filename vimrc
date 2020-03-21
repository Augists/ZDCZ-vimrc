		"""""""""""""""""""""""""""""""""""""""""""""""""
		"	 	__     _____ __  __ ____   ____			"
		"		\ \ Y / /_ _|  \/  |  _ \ / ___|		"
		"		 \ \ / / | || |\/| | |_) | |			"
		"		Z \ V /  | || |  | |  _ <| |__			"
		"		   \_/  |___|_| C|_|_| \_\\____|		"
		"												"
		""""""""""""""""""""'""""""""""""""""""""""""""""



set nocompatible	"remove the old compatible of vi

"""color and theme"""
syntax enable		"highlight syntax
"set background=dark"no neccessary
"colorscheme evening	"color mode
"let &t_ut='			"reset the color if there is any problem

"""line and command setting"""
set cursorline		"use the underline to reming the current line
set number			"show line number
set relativenumber
set ruler			"open the status bar ruler
set showcmd
"set cmdheight=1	"set the height of status bar 1
set wildmenu
set laststatus=2
set scrolloff=5		"keep 5 lines distance from the top and the status bar
"set list
"set backspace=indent,eol,start		"can backspace to the upper line
"au BufReadPost * if line("'\'") > 1 && line("'\'") <= line("$") | exe "normal! g'\"" | endif		"set the cursor at the postion before last close(but no use)

"""tab and backspace setting"""
set shiftwidth=4	"when using << or >>, move 4
set softtabstop=4	"a backspace can delete 4 space
set tabstop=4		"set the length of tab 4
set wrap

"""encoding setting"""
set encoding=utf-8	"utf8 encoding

"""foldable setting"""
set foldenable
set foldmethod=indent	"zc to fold and zo to unfold
set foldlevel=99
"set foldmethod=manual


""""""""""file directory""""""""""
"compare files
nnoremap cp :vert diffsplit
"temp file
map nf :tabnew .<CR>
"open the directory of this file
map tt :e %:p:h/<CR>
"as the same as :Ex<CR>
set autochdir


""""""""""tab management""""""""""
map tb :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>


"""""""""""match"""""""""""
set showmatch		"highlight the match brackets
set matchtime=1		"time of highlight match(unit tenth of a second)


""""""""""searching""""""""""
set hlsearch		"highlight the search
set incsearch		"highlight when typing
set ignorecase
set smartcase

"search last
noremap - Nzz
"search next
noremap = nzz
"no highlight search
noremap <space><CR> :nohlsearch<CR>	

inoremap f<space><space> <esc>/<++><CR>:nohlsearch<CR>c4l

"""fuzzy file finder"""
set rtp+=/usr/local/opt/fzf


""""""""""split screen""""""""""
map sl :Ve<CR>
map su :Sex<CR>
map sr :set splitright<CR>:vsplit<CR>
"map sl :set nosplitright<CR>:vsplit<CR>
"map su :set nosplitbelow<CR>:split<CR>

map <space>h <C-w>h
map <space>l <C-w>l
map <space>j <C-w>j
map <space>k <C-w>k

map <right> :vertical resize+5<CR>
map <left> :vertical resize-5<CR>
"map <up> :res +5<CR>
"map <down> :res -5<CR>

"change split screen mode
"map sv <C-w>t<C-w>H
"map sh <C-w>t<C-w>K


""""""""""shortcut for quickly move and save""""""""""
noremap K 5k
noremap J 5j

map s <nop>
map ; :


""""""""""no temp file""""""""""
set nobackup
set noswapfile


""""""""""auto indent""""""""""
set smarttab
set smartindent
set autoindent

"inoremap ( ()<ESC>i
"inoremap { {<CR>}<ESC>O
"inoremap [ []<ESC>i
"inoremap " "" <ESC>i
"inoremap ' ''<ESC>i
:inoremap ( ()<++><ESC>F)i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<++><ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<++><ESC>F]i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " "" <++><ESC>F"i
:inoremap ' '' <++><ESC>F'i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction


""""""""""file type""""""""""
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


""""""""""spell check in English""""""""""
"use <space>+sc to open and close the check(English)
map <space>se :set spell!<CR>
"use z= to look up the choices


""""""""""code completement""""""""""
set completeopt=preview,menu
set completeopt=longest,menu
"when needing prompting, use esc + N
noremap N a<C-n>
inoremap main main()<CR>{<CR>}<esc>Oreturn 0;<esc>O<esc>O
inoremap #in< #include <><esc>i


""""""""""select all and copy""""""""""
map <C-a> ggVGY
map! <C-A> <Esc>ggVGY


""""""""""complie and run""""""""""
"C，C++ use F5 to complie and run(no space in the file name)
map <f5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java' 
        exec "!javac %" 
        exec "!time	java %<"
	elseif &filetype == 'python'
		silent! exec "!clear"
		exec "!time python3 %"
	elseif &filetype == 'html'
		exec "!safari % &"
    elseif &filetype == 'sh'
        :!./%
    endif
endfunc

""C,C++ debug(can use lldb)
"map <F8> :call Rungdb()<CR>
"func! Rungdb()
"    exec "w"
"    exec "!g++ % -g -o %<"
"    exec "!gdb ./%<"
"endfunc


""""""""""history""""""""""
set history=500		"history number



""""""""""plug magegement""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'

" NERDTree
Plug 'preservim/nerdtree'

" Fuzzy File Finder
Plug '/usr/local/opt/fzf'

" syntax check
Plug 'scrooloose/syntastic'

call plug#end()


" ===
" === NERDTree
" ===
map nt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


