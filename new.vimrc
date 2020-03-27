		 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
		 "	       __     _____ __  __ ____   ____	            "
		 "	       \ \ Y / /_ _|  \/  |  _ \ / ___|		    "
		 "	        \ \ / / | || |\/| | |_) | |		    "
		 "             Z \ V /  | || |  | |  _ <| |__              "
		 "	   	  \_/  |___|_| C|_|_| \_\\____|		    "
		 "	   		    			            "
		 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""




" ==================================================================== "
" =========================== usage of vim =========================== "
" ==================================================================== "
" 
" It could be better if you read the content instead of just reading the usage I wrote
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
"# <up>: adjust the size of the half screen		// can't use my trackpad
"# <down>: adjust the size of the half screen	// to quickly move
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
"# <esc>N: auto completion
"# <tab>: if there are choices when auto completion, use tab to choose next
"# <shift><tab>: choose the last
"# main: for c and c++			// no longer use
"# #in<: for #include <>		// no longer use
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
set wrap			"backspace between lines

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
"temp file (not cover)
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

"inoremap f<space><space> <esc>/<++><CR>:nohlsearch<CR>c4l

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
"map <up> :res +5<CR>
"map <down> :res -5<CR>

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

nmap > >>
nmap < <<

nmap S :w<CR>
nmap s <nop>
nmap Q :q<CR>
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

":inoremap ( ()<++><ESC>F)i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {<CR>}<++><ESC>O
":autocmd Filetype go inoremap ;{ {}<CR><++><ESC>kf}a
":autocmd Filetype go inoremap : :=
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<++><ESC>F]i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " "" <++><ESC>F"i
":inoremap ' '' <++><ESC>F'i
"function! ClosePair(char)
"    if getline('.')[col('.') - 1] == a:char
"        return "\<Right>"
"    else
"        return a:char
"    endif
"endfunction


""""""""""file type""""""""""
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


""""""""""auto add head""""""""""
autocmd BufNewFile *.[ch]pp,*.[ch],*.sh,*.py,*.cc,*.java exec ":call SetTitle()"
func SetTitle()
	"如果文件类型为.sh文件
	if &filetype == 'sh'
		call setline(1,          "\#########################################################################")
		call append(line("."),   "\#    File Name: ".expand("%"))
		call append(line(".")+1, "\#       Author: Augists")
		call append(line(".")+2, "\#        Email: awzyc2010@163.com")
		call append(line(".")+3, "\# Created Time: ".strftime("%c"))
		call append(line(".")+4, "\#########################################################################")
		call append(line(".")+5, "\#!/bin/bash")
		call append(line(".")+6, "")
	elseif &filetype == 'python'
		call setline(1,          "\#########################################################################")
		call append(line("."),   "\#    File Name: ".expand("%"))
		call append(line(".")+1, "\#       Author: Augists")
		call append(line(".")+2, "\#        Email: awzyc2010@163.com")
		call append(line(".")+3, "\# Created Time: ".strftime("%c"))
		call append(line(".")+4, "\#########################################################################")
		call append(line(".")+5, "\#!/usr/bin/python")
		call append(line(".")+6, "")
	else
		call setline(1,			 "\/************************************************************************")
		call append(line("."),   " *	>    File Name: ".expand("%"))
		call append(line(".")+1, " *	>       Author: Augists")
		call append(line(".")+2, " *	>        Email: awzyc2010@163.com")
		call append(line(".")+3, " *	> Created Time: ".strftime("%c"))
		call append(line(".")+4, " ************************************************************************/")
		call append(line(".")+5, "")
	endif
	if &filetype == 'cpp'
		call append(line(".")+6, "#include <iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'hpp'
		call append(line(".")+6, "#include <iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'cc'
		call append(line(".")+6, "#include <iostream>")
		call append(line(".")+7, "using namespace std;")
		call append(line(".")+8, "")
	endif
	if &filetype == 'c'
		call append(line(".")+6, "#include <stdio.h>")
		call append(line(".")+7, "")
	endif
	if &filetype == 'java'
		call append(line(".")+6,"public class ".expand("%"))
		call append(line(".")+7,"")
	endif
	"新建文件后，自动定位到文件末尾
	autocmd BufNewFile * normal G
endfunc


""""""""""spell check in English""""""""""
"use <space>+sc to open and close the check(English)
nmap <space>se :set spell!<CR>
"use z= to look up the choices


""""""""""code completion""""""""""
set completeopt=preview,menu
set completeopt=longest,menu
"when needing auto completion, use esc + N
"if there are choices, use tab to choose
"noremap N a<C-n>
"inoremap <silent><expr> <TAB>
"      \ pumvisible() ? "\<C-n>" :
"      \ <SID>check_back_space() ? "\<TAB>" :
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! CleverTab()
           if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
              return "\<Tab>"
           else
              return "\<C-N>"
           endif
        endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>

"inoremap main main()<CR>{<CR>}<esc>Oreturn 0;<esc>O<esc>O
"inoremap #in< #include <><esc>i


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
		"set splitbelow
		"exec "!g++ -std=c++11 % -Wall -o %<"
		":term ./%<
		":res -10
        exec "!g++ % -o %<"
        exec "!time ./%<"
		":sp
		":res -10
    elseif &filetype == 'go'
        exec "!time go run %"
		"exec ":GoRun %"
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
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
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
"noremap ;f <esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ;f <esc>/<++><CR>:nohlsearch<CR>c4l
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
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['vim-plug', 'markdown'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for': ['vim-plug', 'markdown'] }
"Plug 'vimwiki/vimwiki'
Plug 'dkarter/bullets.vim', { 'for': ['markdown', 'vim-plug'] }
Plug 'lervag/vimtex', { 'for': ['markdown', 'vim-plug'] }

" ranger in vim
"Plug 'francoiscabrol/ranger.vim'

" underline the word under the cursor
Plug 'itchyny/vim-cursorword'

" multiple section
"Plug 'terryma/vim-multiple-cursors'
"https://github.com/terryma/vim-multiple-cursors

" auto pairs
Plug 'jiangmiao/auto-pairs'

" go plug
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" python
"Plug 'vim-scripts/indentpython.vim'
"Plug 'tmhedberg/SimpylFold'
Plug 'nathanaelkane/vim-indent-guides', { 'for': ['python', 'html'] }

" html
"Plug 'mattn/emmet-vim'
"Plug 'xml.vim'
"Plug 'othree/html5.vim'
"Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }

" javascript
"Plug 'pangloss/vim-javascript'

" surround and commentary from tpope
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'tpope/vim-commentary'	"gc

" highlight the whitespace at the end of each line
Plug 'ntpeters/vim-better-whitespace'

" goyo for focus
Plug 'junegunn/goyo.vim'	"use :GoYo or :GoYo! to turn on or turn off

" easy align
"Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =

" Bookmarks
"Plug 'kshenoy/vim-signature'

call plug#end()


" ===============
" === airline ===
" ===============
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline#extensions#tabline#formatter = 'unique_tail'


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


" ==============
" === vim go ===
" ==============
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0


" ============
" === goyo ===
" ============
map <space>gy :Goyo<CR>


" ======================
" === vim-table-mode ===
" ======================
autocmd Filetype markdown nmap <space>tm :TableModeToggle<CR>
"https://github.com/dhruvasagar/vim-table-mode



""""""""""haven't been put into the plug list""""""""""

" ========================
" === markdown preview ===
" ========================
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

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

" =====================
" === indent guides ===
" =====================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


" ======================================
" === whitespace auto delete on save ===
" ======================================
let g:better_whitespace_ctermcolor='red'
let g:strip_whitespace_on_save = 1
