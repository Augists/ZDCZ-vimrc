		 """"""""""""""""""""""""""""""""""""""""""""""""""""""
		 "          __     _____ __  __ ____   ____           "
		 "          \ \ Y / /_ _|  \/  |  _ \ / ___|          "
		 "           \ \ / / | || |\/| | |_) | |              "
		 "          Z \ V /  | || |  | |  _ <| |__           "
		 "             \_/  |___|_| C|_|_| \_\\____|          "
		 "                                                    "
		 """"""""""""""""""""""""""""""""""""""""""""""""""""""



" ==================================================================== "
" =========================== usage of vim =========================== "
" ==================================================================== "
" Please read the usage_of_vim.md


" ==================================================================== "
" ======================= configuration of vim ======================= "
" ==================================================================== "
set nocompatible	"remove the old compatible of vi
" may set <LEADER> as <SPACE>
" let mapleader=" "

"""color and theme"""
syntax enable		"highlight syntax
" set background=dark"no neccessary
" colorscheme evening	"color mode
" reset the color if there is any problem
let &t_ut=''

"""line and command setting"""
set cursorline		"use the underline to reming the current line
set number			"show line number
set relativenumber
set ruler			"open the status bar ruler
set showcmd
" set cmdheight=2		"set the height of status bar 1
set laststatus=2
set scrolloff=5		"keep 5 lines distance from the top and the status bar
" set backspace=indent,eol,start		"can backspace to the upper line
" Restore cursor to file position in previous editing session
set viminfo='10,\"100,:20,%,n~/.viminfo
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" set mouse=a
" n: normal mode
" v: visual mode
" i: insert mode
" c: command line mode
" h: help man
" a: all these modes above
" r: jump hit enter
" A: auto selection in visual
" nothing: close cursor mode

set list			"show invisible signal
set listchars=tab:\|\ ,trail:▫		"show a tail of space
" set listchars=tab:➤\ ,trail:▫		"show a tail of space

"""tab and backspace setting"""
set shiftwidth=4	"when using << or >>, move 4
set softtabstop=4	"a backspace can delete 4 space
set tabstop=4		"set the length of tab 4
set wrap			"backspace between lines
set linebreak		"only swap when it should
set wrapmargin=2	"leave space for swap
" set expandtab		"tab to space

"""encoding setting"""
set encoding=utf-8	"utf8 encoding

"""foldable setting"""
set foldenable
set foldmethod=indent	"zc to fold and zo to unfold
set foldlevel=99
" set foldmethod=manual


""""""""""file type""""""""""
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


""""""""""file directory""""""""""
" compare files
nnoremap cp :vert diffsplit
" temp file (not cover)
nnoremap nf :tabnew .<CR>
" open the directory of this file
nnoremap tt :e %:p:h/<CR>
" as the same as :Ex<CR>
set autochdir
" Open the vimrc file anytime
nnoremap <space>rc :e ~/.vimrc<CR>
nnoremap <space>td :set splitright<CR>:vsplit<CR>:e ~/Downloads/.todo.md<CR>/TODO<CR>:vertical resize-10<CR>


""""""""""tab management""""""""""
nnoremap tb :tabe<CR>
nnoremap th :-tabnext<CR>
nnoremap tl :+tabnext<CR>


"""""""""""match"""""""""""
set showmatch		"highlight the match brackets
set matchtime=1		"time of highlight match(unit tenth of a second)


""""""""""searching""""""""""
set hlsearch		"highlight the search
set incsearch		"highlight when typing
set ignorecase
set smartcase

" search last
nnoremap - Nzz
" search next
nnoremap = nzz
"no highlight search
nnoremap <space><CR> :nohlsearch<CR>

" inoremap f<space><space> <esc>/<++><CR>:nohlsearch<CR>c4l

"""fuzzy file finder"""
set rtp+=/usr/local/opt/fzf
nnoremap <space>f :FZF<CR>


""""""""""split screen""""""""""
nnoremap sl :Ve<CR>
nnoremap su :Sex<CR>
nnoremap sr :set splitright<CR>:vsplit<CR>
" map sl :set nosplitright<CR>:vsplit<CR>
" map su :set nosplitbelow<CR>:split<CR>

nnoremap <space>h <C-w>h
nnoremap <space>l <C-w>l
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k

nnoremap <right> :vertical resize+5<CR>
nnoremap <left> :vertical resize-5<CR>
" map <up> :res +5<CR>
" map <down> :res -5<CR>

" Rotate screens
" noremap sh <C-w>b<C-w>K
" noremap sv <C-w>b<C-w>H


""""""""""shortcut for quickly move and save""""""""""
noremap K 5k
noremap J 5j
noremap W 5w
noremap B 5b
noremap H 0
noremap L $

nnoremap > >gv
nnoremap < <gv
" nnoremap < <<
" nnoremap > >>

" nnoremap S :w<CR>
nnoremap s <nop>
" nnoremap Q :q<CR>
nnoremap ; :

inoremap <C-c> <Esc>zza

" inoremap <C-l> <esc>
" vnoremap <C-l> <esc>


""""""""""clipboard""""""""""
" set clipboard=unnamed


""""""""""no temp file""""""""""
set nobackup
set noswapfile
set nowritebackup


""""""""""auto indent""""""""""
" set expandtab
set smarttab
set smartindent
set autoindent

" C/C++ specific settings
" autocmd FileType c,cpp,cc  set cindent comments=sr:/*,mb:*,el:*/,:// cino=>s,e0,n0,f0,{0,}0,^-1s,:0,=s,g0,h1s,p2,t0,+2,(2,)20,*30

" inoremap ( ()<ESC>i
" inoremap { {<CR>}<ESC>O
" inoremap [ []<ESC>i
" inoremap " "" <ESC>i
" inoremap ' ''<ESC>i

" :inoremap ( ()<++><ESC>F)i
" :inoremap ) <c-r>=ClosePair(')')<CR>
" :inoremap { {<CR>}<++><ESC>O
" :autocmd Filetype go inoremap ;{ {}<CR><++><ESC>kf}a
" :autocmd Filetype go inoremap : :=
" :inoremap } <c-r>=ClosePair('}')<CR>
" :inoremap [ []<++><ESC>F]i
" :inoremap ] <c-r>=ClosePair(']')<CR>
" :inoremap " "" <++><ESC>F"i
" :inoremap ' '' <++><ESC>F'i
" function! ClosePair(char)
"     if getline('.')[col('.') - 1] == a:char
"         return "\<Right>"
"     else
"         return a:char
"     endif
" endfunction


""""""""""spell check in English""""""""""
" use <space>+sc to open and close the check(English)
nnoremap <space>se :set spell!<CR>
" use z= to look up the choices
inoremap <C-x> <C-x>s


""""""""""code completion""""""""""
set wildmenu
set wildmode=longest:list,full	" to be checked
set completeopt=preview,menu
set completeopt=longest,menu
" when needing auto completion, use esc + N
" if there are choices, use tab to choose
nnoremap N a<C-n>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       " \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

" function! CleverTab()
"            if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
"               return "\<Tab>"
"            else
"               return "\<C-N>"
"            endif
"         endfunction
" inoremap <Tab> <C-R>=CleverTab()<CR>

" inoremap main main()<CR>{<CR>}<esc>Oreturn 0;<esc>O<esc>O
" inoremap #in< #include <><esc>i


""""""""""select all and copy""""""""""
" nnoremap <C-a> ggVGY
vnoremap Y "+y


""""""""""complie and run""""""""""
" C，C++ use F5 to complie and run(no space in the file name)
map <f5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
		"
		" set splitbelow
		" exec "!g++ -std=c++11 % -Wall -o %<"
		" :term ./%<
		" :res -10
		"
        exec "!g++ % -o %<"
        exec "!time ./%<"
		"
		":sp
		":res -10
		"
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

" C,C++ debug(can use lldb)
map <F8> :call Rungdb()<CR>
func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    " exec "!gdb ./%<"
    exec "!lldb ./%<"
endfunc

nnoremap tr :term<CR>


""""""""""history""""""""""
set history=500		"history number
set undofile
" set backup, swap, history directory
" end with // for full path. use % to replace directory seperator on purpose
" to prevent another file using the same filename
silent !mkdir -p ~/.vim/backup
silent !mkdir -p ~/.vim/undo
" set backupdir=~/.vim/backup//
" set directory=~/.vim/backup//
" set undodir=~/.vim/undo//
set backupdir=~/.vim/backup
set directory=~/.vim/backup
set undodir=~/.vim/undo
set autoread		"open supervision for not being edited by other editor
" if has("persistent_undo")
"     set undodir=$HOME."/.vim/.undodir"
"     set undofile
" endif


"""""""""""markdown shortcut"""""""""
" noremap ;f <esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ;f <esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ;w <esc>/<++><CR>:nohlsearch<CR>c4l<CR>
autocmd Filetype markdown inoremap ;n ---<Enter><Enter>
autocmd Filetype markdown inoremap ;b **** <++><esc>F*hi
autocmd Filetype markdown inoremap ;s ~~~~ <++><esc>F~hi
autocmd Filetype markdown inoremap ;i ** <++><esc>F*i
autocmd Filetype markdown inoremap ;d `` <++><esc>F`i
autocmd Filetype markdown inoremap ;c ```<enter><++><enter>```<enter><enter><++><esc>4kA
autocmd Filetype markdown inoremap ;h ==== <++><esc>F=hi
autocmd Filetype markdown inoremap ;m - [ ]<space>
autocmd Filetype markdown inoremap ;p ![](<++>) <++><esc>F[a
autocmd Filetype markdown inoremap ;a [](<++>) <++><esc>F[a
autocmd Filetype markdown inoremap ;1 # <enter><++><esc>kA
autocmd Filetype markdown inoremap ;2 ## <enter><++><esc>kA
autocmd Filetype markdown inoremap ;3 ### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;4 #### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;5 ##### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;6 ###### <enter><++><esc>kA
autocmd Filetype markdown inoremap ;l --------<enter>
autocmd Filetype markdown nnoremap td /TODO<CR>

" auto spell
autocmd BufRead,BufNewFile *.md setlocal spell


""""""""""plug magegement""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" auto add head
Plug 'nine2/vim-copyright'

" dress up
Plug 'connorholyday/vim-snazzy'
Plug 'ajmwagar/vim-deus'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Tree
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Fuzzy File Finder
Plug '/usr/local/opt/fzf', { 'on': 'FZF' }

" complete
" Plug 'jayli/vim-dictionary'
" Plug 'jayli/vim-easycomplete'

" syntax check
" Plug 'scrooloose/syntastic'	"not as good as ale
Plug 'w0rp/ale'

" snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" markdown
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': ['vim-plug', 'markdown'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for': ['vim-plug', 'markdown'] }
" Plug 'vimwiki/vimwiki'
Plug 'dkarter/bullets.vim', { 'for': ['markdown', 'vim-plug'] }
" Plug 'lervag/vimtex', { 'for': ['markdown', 'vim-plug'] }

" ranger in vim
"Plug 'francoiscabrol/ranger.vim'

" underline the word under the cursor
Plug 'itchyny/vim-cursorword'
" Plug 'RRethy/vim-illuminate'
" multiple section
Plug 'terryma/vim-multiple-cursors'

" auto pairs
Plug 'jiangmiao/auto-pairs'

" c family plug
Plug 'rhysd/vim-clang-format'
" go plug
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go'] }

" dictionary
Plug 'itchyny/dictionary.vim', { 'for': ['markdown'] }

" python
" Plug 'vim-scripts/indentpython.vim'
" Plug 'tmhedberg/SimpylFold'
Plug 'nathanaelkane/vim-indent-guides', { 'for': ['python', 'html'] }

" html
" Plug 'mattn/emmet-vim'
" Plug 'xml.vim'
" Plug 'othree/html5.vim'
" Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }

" javascript
" Plug 'pangloss/vim-javascript'

" surround and commentary from tpope
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

" highlight the whitespace at the end of each line
Plug 'ntpeters/vim-better-whitespace'

" goyo for focus
Plug 'junegunn/goyo.vim'	"use :GoYo or :GoYo! to turn on or turn off

" rainbow parentheses
Plug 'luochen1990/rainbow'

" easy align
" Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =

" wordy
" Plug 'reedes/vim-wordy'

" Bookmarks
Plug 'kshenoy/vim-signature'

" Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/taglist.vim'

" switch between true and false, and also other switch(. to -> in c++)
Plug 'AndrewRadev/switch.vim'

Plug 'machakann/vim-highlightedyank'

call plug#end()


" =================
" === copyright ===
" =================
let g:file_copyright_name = "Augists"
let g:file_copyright_email = "awzyc2010@163.com"


" ==============
" === snazzy ===
" ==============
let g:SnazzyTransparent = 1
" let g:lightline = {
" \ 'colorscheme': 'snazzy',
" \ }
"
colorscheme snazzy
nnoremap sn :colorscheme snazzy<CR>:AirlineTheme soda<CR>
"
" nnoremap sd :colorscheme default<CR>


" ============
" === deus ===
" ============
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

nnoremap sd :set background=dark<CR>:AirlineTheme simple<CR>:colorscheme deus<CR>:AirlineTheme deus<CR>
" set background=dark    " Setting dark mode
" colorscheme deus
" let g:deus_termcolors=256



" ===============
" === airline ===
" ===============
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'unique_tail'
" let g:airline_statusline_ontop=1

" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'
" let g:airline_left_sep = '➤'

" let g:airline_left_sep = ''
" let g:airline_left_alt_sep = ''
" let g:airline_right_sep = ''
" let g:airline_right_alt_sep = ''

" let g:airline_symbols.branch = ''
" let g:airline_symbols.readonly = ''
" let g:airline_symbols.linenr = '☰'
" let g:airline_symbols.maxlinenr = ''

" =====================
" === airline theme ===
" =====================
" let g:airline_theme='simple'
let g:airline_theme='soda'
" let g:airline_theme='deus'


" ================
" === NERDTree ===
" ================
noremap nt :NERDTreeToggle<CR>
" NERDTress File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
	exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
	exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('cpp', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('c', 'green', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('md', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('html', 'green', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('py', 'green', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('go', 'Red', 'none', 'red', '#151515')
call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
call NERDTreeHighlightFile('java', 'Magenta', 'none', '#ff00ff', '#151515')


" ==================================
" === Syntastic(use ale instead) ===
" ==================================
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0


" ===========
" === ale ===
" ===========
let g:ale_linters = {'java': [], 'yaml': [], 'scala': [], 'clojure': []}
let g:ale_fixers = {'ruby': ['rubocop']}
let g:ale_lint_delay = 1000
nmap ]a <Plug>(ale_next_wrap)
nmap [a <Plug>(ale_previous_wrap)


" ====================
" === clang format ===
" ====================
" let g:clang_format#code_style="mozilla"
"
" own code style
let g:clang_format#code_style="chromium"
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "AlignTrailingComments" : "true",
            \ "Standard" : "C++11"}
nnoremap <space>fm :ClangFormat<CR>ggVG=

" visual studio style
" let g:clang_format#code_style="llvm"
" let g:clang_format#style_options = {
"             \ "AccessModifierOffset" : -4,
"             \ "IndentWidth" : 4,
"             \ "BreakBeforeBraces" : "Allman",
"             \ "AllowShortIfStatementsOnASingleLine" : "false",
"             \ "IndentCaseLabels" : "false",
"             \ "ColumnLimit" : 0,
"             \ "Standard" : "C++11"}
" nnoremap <space>fm :ClangFormat<CR>

            " \ "AlignTrailingComments" : "true",
            " \ "AlwaysBreakTemplateDeclarations" : "true",
            " \ "Standard" : "Latest"}

" imap <Tab>   <Plug>EasyCompTabTrigger
" imap <S-Tab> <Plug>EasyCompShiftTabTrigger


" ===========================
" === SnipMate & Snippets ===
" ===========================
" show available snips
" use <C-R><tab> in insert mode
" :imap <C-J> <Plug>snipMateNextOrTrigger
" :smap <C-J> <Plug>snipMateNextOrTrigger
" :imap <C-k> <Plug>snipMateBack
" :smap <C-k> <Plug>snipMateBack
" <Plug>snipMateShow


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


" ====================
" === vim surround ===
" ====================
" Details follow on the exact semantics, but first, consider the following
" examples.  An asterisk (*) is used to denote the cursor position.

"   Old text                  Command     New text ~
"   "Hello *world!"           ds"         Hello world!
"   <div>Yo!*</div>           dst         Yo!
"   [123+4*56]/2              cs])        (123+456)/2
"   "Look ma, I'm *HTML!"     cs"<q>      <q>Look ma, I'm HTML!</q>
"   if *x>3 {                 ysW(        if ( x>3 ) {
"   my $str = *whee!;         vllllS'     my $str = 'whee!';


" ============
" === goyo ===
" ============
nnoremap <space>gy :Goyo<CR>
let g:goyo_width = 120


" ======================
" === vim-table-mode ===
" ======================
autocmd Filetype markdown nnoremap <space>tm :TableModeToggle<CR>


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
" leave from insert mode, default 0 is auto refresh markdown as you edit or move the cursor
" default: 0
let g:mkdp_refresh_slow = 0


" =====================
" === ranger in vim ===
" =====================
" let g:ranger_map_keys = 0
" map <,>r :Ranger<CR>
" https://github.com/francoiscabrol/ranger.vim


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


" Adjacent duplicate words
" noremap <space>dw /\(\<\w\+\>\)\_s*\1
" Space to Tab
" nnoremap <space>tt :%s/    /\t/g
" vnoremap <space>tt :s/    /\t/g


" ============================
" === rainbow paraentheses ===
" ============================
let g:rainbow_active = 1	"0 if you want to enable it later via :RainbowToggle


" ======================
" === highlight yank ===
" ======================
let g:highlightedyank_highlight_duration = 500


" =======================
" === multiple cursor ===
" =======================
" let g:multi_cursor_use_default_mapping=0
" Default mapping
" let g:multi_cursor_start_word_key      = '<C-n>'
" let g:multi_cursor_select_all_word_key = '<A-n>'
" let g:multi_cursor_start_key           = 'g<C-n>'
" let g:multi_cursor_select_all_key      = 'g<A-n>'
" let g:multi_cursor_next_key            = '<C-n>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'


" ==============
" === switch ===
" ==============
" let g:switch_mapping = ""


" let g:python_host_skip_check=1
" let g:python_host_prog = '/usr/bin/python'
" let g:python3_host_skip_check=1
" let g:python3_host_prog = '/usr/local/bin/python3'


" ===============
" === taglist ===
" ===============
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
nnoremap <silent> tl :TlistToggle<CR>
let g:Tlist_Use_Right_Window = 1
let g:Tlist_Exit_OnlyWindow = 1
" let g:Tlist_Auto_Open = 1
let g:Tlist_GainFocus_On_ToggleOpen = 1		" open taglist and move cursor to the list"
" reload the current file
nnoremap R :w<CR>:e<CR>
" reload all files
" nnoremap R :bufdo e
" or :bufdo :e!


" ================
" === undotree ===
" ================
nnoremap nd :UndotreeToggle<CR>
