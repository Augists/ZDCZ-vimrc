		 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
		 "	    	__     _____ __  __ ____   ____			  "
		 "	      	\ \ Y / /_ _|  \/  |  _ \ / ___|		  "
		 "	      	 \ \ / / | || |\/| | |_) | |			  "
		 "	   	Z \ V /  | || |  | |  _ <| |__			  "
		 "	   	   \_/  |___|_| C|_|_| \_\\____|		  "
		 "	   		    					  "
		 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



" ==================================================================== "
" =========================== usage of vim =========================== "
" ==================================================================== "
" 
" ===== normal =====
" sp: compare file
" nf: temp file
" tt: open the directory of the file(cover)
" tb: new tab
" th: tab left
" tl: tab right
" -: search last and keep cursor at the center
" =: search next and keep cursor at the center
" <space><CR>: no highlight search
" <space>f: fuzzy file finder
" sl: new file on the left screen
" su: new file on the top half screen
" sr: open as same as the current on the right
" <space>h: cursor to the left
" <space>l: cursor to the right
" <space>j: cursor down to the half screen
" <space>k: cursor up to the half screen
" <left>: narrow the screen with cursor
" <right>: widen the screen with cursor
" <up>: adjust the size of the half screen
" <down>: adjust the size of the half screen
" K: 5k
" J: 5j
" H: cursor to the start of the line
" L: cursor to the end of the line
" W: 5w
" B: 5b
" ;: :
" <space>se: check spell of English
" z=: look up the choices of wrong spell
" tr: open a terminal in vim(opened on the top)(<ctrl>d to quit the terminal)
" <ctrl>a: select all and copy
" f5: complie and run
" nt: nerdtree
"
"
" ===== insert =====
" f<space><space>: find the next signal and change it
" <ctrl>c: keep cursor at the center
" ({["' can auto match
" <esc>N: auto completion
" <tab>: if there are choices when auto completion, use tab to choose next
" <shift><tab>: choose the last
" main: for c and c++
" #in<: for #include <>
" <ctrl>a: select all and copy
" <ctrl>j: snipmate and snipmate next
" <ctrl>k: snipmate back
" ;n: divided line
" ;b: bold text
" ;s: sliced text
" ;i: italic text
" ;d: code block
" ;c: big block of code
" ;h: highlight text
" ;m: check mark
" ;p: picture
" ;a: link
" ;1: # headline1
" ;2: ## headline2
" ;3: ### headline3
" ;4: #### headline4
" ;5: ##### headline5
" ;6: ###### headline6
" ;l: --------


" ==================================================================== "
" ======================= configuration of vim ======================= "
" ==================================================================== "
set nocompatible	"remove the old compatible of vi
" may set <LEADER> as <SPACE>
"let mapleader=" "

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
"set cmdheight=2		"set the height of status bar 1
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
nmap nf :tabnew .<CR>
"open the directory of this file
nmap tt :e %:p:h/<CR>
"as the same as :Ex<CR>
set autochdir


""""""""""tab management""""""""""
nmap tb :tabe<CR>
nmap th :-tabnext<CR>
nmap tl :+tabnext<CR>


"""""""""""match"""""""""""
set showmatch		"highlight the match brackets
set matchtime=1		"time of highlight match(unit tenth of a second)


""""""""""searching""""""""""
set hlsearch		"highlight the search
set incsearch		"highlight when typing
set ignorecase
set smartcase

"search last
nnoremap - Nzz
"search next
nnoremap = nzz
"no highlight search
nnoremap <space><CR> :nohlsearch<CR>	

inoremap f<space><space> <esc>/<++><CR>:nohlsearch<CR>c4l

"""fuzzy file finder"""
set rtp+=/usr/local/opt/fzf
nmap <space>f :FZF<CR>


""""""""""split screen""""""""""
nmap sl :Ve<CR>
nmap su :Sex<CR>
nmap sr :set splitright<CR>:vsplit<CR>
"map sl :set nosplitright<CR>:vsplit<CR>
"map su :set nosplitbelow<CR>:split<CR>

nmap <space>h <C-w>h
nmap <space>l <C-w>l
nmap <space>j <C-w>j
nmap <space>k <C-w>k

nmap <right> :vertical resize+5<CR>
nmap <left> :vertical resize-5<CR>
map <up> :res +5<CR>
map <down> :res -5<CR>

"change split screen mode
"map sv <C-w>t<C-w>H
"map sh <C-w>t<C-w>K


""""""""""shortcut for quickly move and save""""""""""
noremap K 5k
noremap J 5j
noremap W 5w
noremap B 5b
noremap H 0
noremap L $

nmap s <nop>
nmap ; :

imap <C-c> <Esc>zza


""""""""""no temp file""""""""""
set nobackup
set noswapfile
set nowritebackup


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
nmap <space>se :set spell!<CR>
"use z= to look up the choices


""""""""""code completion""""""""""
set completeopt=preview,menu
set completeopt=longest,menu
"when needing prompting, use esc + N
"if there are choices, use tab to choose
noremap N a<C-n>
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

inoremap main main()<CR>{<CR>}<esc>Oreturn 0;<esc>O<esc>O
inoremap #in< #include <><esc>i


""""""""""select all and copy""""""""""
"nmap <C-a> ggVGY


""""""""""complie and run""""""""""
"C，C++ use F5 to complie and run(no space in the file name)
map <f5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		":sp
		":res -10
		:term ./%<
		:res -10
        "exec "!g++ % -o %<"
        "exec "!time ./%<"
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

nmap tr :term<CR>


""""""""""history""""""""""
set history=500		"history number


"""""""""""markdown shortcut"""""""""
autocmd Filetype markdown inoremap ;n ---<Enter><Enter>
autocmd Filetype markdown inoremap ;b **** <++><esc>F*hi
autocmd Filetype markdown inoremap ;s ~~~~ <++><esc>F~hi
autocmd Filetype markdown inoremap ;i ** <++><esc>F*i
autocmd Filetype markdown inoremap ;d '' <++><esc>F'i
autocmd Filetype markdown inoremap ;c ```<enter><++><enter>```<enter><enter><++><esc>4kA
autocmd Filetype markdown inoremap ;h ==== <++><esc>F=hi
autocmd Filetype markdown inoremap ;m - []<space>
autocmd Filetype markdown inoremap ;p ![](<++>) <++><esc>F[a
autocmd Filetype markdown inoremap ;a [](<++>) <++><esc>F[a
autocmd Filetype markdown inoremap ;1 # <enter><++><esc>kA
autocmd Filetype markdown inoremap ;2 ## <enter><++><esc>kA
autocmd Filetype markdown inoremap ;3 ### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;4 #### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;5 ###### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;6 ####### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;l --------<enter>


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

" snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" markdown
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
"Plug 'vimwiki/vimwiki'
"Plug 'dkarter/bullets.vim'

" ranger in vim
"Plug 'francoiscabrol/ranger.vim'

call plug#end()


" ================
" === NERDTree ===
" ================
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


" =================
" === Syntastic ===
" =================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0


" ===========================
" === SnipMate & Snippets ===
" ===========================
" show available snips
" use <C-R><tab> in insert mode
:imap <C-J> <Plug>snipMateNextOrTrigger
:smap <C-J> <Plug>snipMateNextOrTrigger
:imap <C-k> <Plug>snipMateBack
:smap <C-k> <Plug>snipMateBack


" ======================
" === vim-table-mode ===
" ======================
autocmd Filetype markdown nmap <space>tm :TableModeToggle<CR>
"https://github.com/dhruvasagar/vim-table-mode



""""""""""haven't been put into the plug list""""""""""

" ============
" === wiki ===
" ============
"https://github.com/vimwiki/vimwiki

" =====================
" === ranger in vim ===
" =====================
"let g:ranger_map_keys = 0
"map <,>r :Ranger<CR>
"https://github.com/francoiscabrol/ranger.vim


" ==============
" === bullet ===
" ==============
" https://github.com/dkarter/bullets.vim
