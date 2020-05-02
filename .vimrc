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
set nocompatible

"""color and theme"""
syntax enable
let &t_ut=''

"""line and command setting"""
set cursorline
set number
set relativenumber
set ruler
set showcmd
set laststatus=2
set scrolloff=5
" set backspace=indent,eol,start		"can backspace to the upper line
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

set list
set listchars=tab:\|\ ,trail:▫

"""tab and backspace setting"""
set shiftwidth=4
set softtabstop=4
set tabstop=4
set wrap
set linebreak
set wrapmargin=2

"""encoding setting"""
set encoding=utf-8

"""foldable setting"""
set foldenable
set foldmethod=indent
set foldlevel=99


""""""""""file type""""""""""
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on


""""""""""file directory""""""""""
nnoremap cp :vert diffsplit<space>
nnoremap nf :tabnew .<CR>
nnoremap tt :e %:p:h/<CR>
set autochdir
" auto reload vimrc when editing it
" autocmd! bufwritepost .vimrc source ~/.vimrc
nnoremap <space>td :set splitright<CR>:vsplit<CR>:e ~/Downloads/.todo.md<CR>/TODO<CR>:vertical resize-10<CR>


""""""""""tab management""""""""""
nnoremap tb :tabe<CR>
nnoremap th :-tabnext<CR>
nnoremap tl :+tabnext<CR>


"""""""""""match"""""""""""
set showmatch
set matchtime=1


""""""""""searching""""""""""
set hlsearch
set incsearch
set ignorecase
set smartcase

nnoremap - Nzz
nnoremap = nzz
nnoremap <space><CR> :nohlsearch<CR>


"""fuzzy file finder"""
set rtp+=/usr/local/opt/fzf


""""""""""figlet""""""""""
nnoremap gx :r !figlet<space>


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

vnoremap > >gv
vnoremap < <gv
nnoremap < <<
nnoremap > >>

nnoremap <space>s :w<CR>
nnoremap S <nop>
nnoremap s <nop>
nnoremap <space>q :qa<CR>
nnoremap ; :
xmap ; :

inoremap <C-c> <Esc>zza

" inoremap <C-l> <esc>
" vnoremap <C-l> <esc>


""""""""""no temp file""""""""""
set nobackup
set noswapfile
set nowritebackup


""""""""""auto indent""""""""""
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

" inoremap main main()<CR>{<CR>}<esc>Oreturn 0;<esc>O<esc>O
" inoremap #in< #include <><esc>i


""""""""""spell check in English""""""""""
nnoremap <space>se :set spell!<CR>
inoremap <C-x> <C-x>s


""""""""""code completion""""""""""
set wildmenu
set wildmode=longest:list,full	" to be checked
set completeopt=preview,menu
set completeopt=longest,menu
nnoremap N a<C-n>


""""""""""clipboard""""""""""
vnoremap Y "+y
" set clipboard=unnamed
" set paste                   " enable paste mode
" set copyindent		" copy the previous indentation on autoindenting
" ,p toggles paste mode
" nmap <leader>p :set paste!<BAR>set paste?<CR>"


""""""""""complie and run""""""""""
map <F5> :call CompileRunGcc()<CR>
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
		" exec "!time go run %"
		"exec ":GoRun %"
		set splitbelow
		:sp
		:term go run %
	elseif &filetype == 'java'
		" exec "!javac %"
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
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
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
set history=500
set undofile
silent !mkdir -p ~/.vim/undo
set undodir=~/.vim/undo
set autoread


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

autocmd BufRead,BufNewFile *.md setlocal spell


""""""""""plug magegement""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
	silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'

Plug 'nine2/vim-copyright'

Plug 'connorholyday/vim-snazzy'
Plug 'ajmwagar/vim-deus'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

Plug '/usr/local/opt/fzf', { 'on': 'FZF' }

Plug 'w0rp/ale'

Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Plug 'ervandew/supertab'

Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for': 'markdown', 'on': 'MarkdownPreview' }
" Plug 'vimwiki/vimwiki'
Plug 'dkarter/bullets.vim', { 'for': ['markdown'] }
" Plug 'lervag/vimtex', { 'for': ['markdown', 'vim-plug'] }

" Plug 'jceb/vim-orgmode'

Plug 'itchyny/vim-cursorword'
" Plug 'RRethy/vim-illuminate'
Plug 'terryma/vim-multiple-cursors'

Plug 'jiangmiao/auto-pairs'

Plug 'rhysd/vim-clang-format', { 'on': 'ClangFormat' }

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go'] }

Plug 'itchyny/dictionary.vim', { 'on': 'Dictionary' }

" Plug 'vim-scripts/indentpython.vim'
" Plug 'tmhedberg/SimpylFold'
Plug 'nathanaelkane/vim-indent-guides', { 'for': ['python', 'html'] }

" Plug 'mattn/emmet-vim'
" Plug 'xml.vim'
" Plug 'othree/html5.vim'
" Plug 'gko/vim-coloresque', { 'for': ['vim-plug', 'php', 'html', 'javascript', 'css', 'less'] }

" Plug 'pangloss/vim-javascript'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

Plug 'ntpeters/vim-better-whitespace', { 'for': ['vim-plug', 'c', 'cpp', 'go', 'markdown', 'python', 'html', 'vim'] }

Plug 'junegunn/goyo.vim'

Plug 'luochen1990/rainbow'

" Plug 'godlygeek/tabular' " type ;Tabularize /= to align the =

" Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/taglist.vim', { 'on': 'TlistToggle' }

Plug 'AndrewRadev/switch.vim', { 'on': 'Switch' }

Plug 'machakann/vim-highlightedyank'

call plug#end()


" ================
" === startify ===
" ================
let g:ascii = [
		\ '              _               _     _           ',
		\ '             / \  _   _  __ _(_)___| |_ ___     ',
		\ '            / _ \| | | |/ _` | / __| __/ __|    ',
		\ '           / ___ \ |_| | (_| | \__ \ |_\__ \    ',
		\ '          /_/   \_\__,_|\__, |_|___/\__|___/    ',
		\ '                        |___/                   ',
		\ ]
let g:startify_custom_header =
	\ 'startify#center(g:ascii + startify#fortune#boxed())'
let g:startify_bookmarks = [ {'rc': '~/.vimrc'}, {'td': '~/Downloads/.todo.md'}, {'dx': '~/Downloads/from_github/Augists.github.io/index.md'}, {'us': '~/Downloads/from_github/ZDCZ-vimrc/usage_of_vim.md'} ]
let g:startify_padding_left = 60
" let g:startify_files_number = 10
let g:startify_enable_special = 0
let s:startify_footer = [
	\ '----------------------------------------------------------------------------------',
	\ '                                   Enjoy Coding!                                  ',
	\ ]
function! s:Startify_center(lines) abort
    let longest_line   = max(map(copy(a:lines), 'strwidth(v:val)'))
    let centered_lines = map(copy(a:lines),
                \ 'repeat(" ", (&columns / 2) - (longest_line / 2)) . v:val')
    return centered_lines
endfunction
let g:startify_custom_footer = s:Startify_center(s:startify_footer)
nnoremap sf :Startify<CR>


" =================
" === copyright ===
" =================
let g:file_copyright_name = "Augists"
let g:file_copyright_email = "awzyc2010@163.com"


" ==============
" === snazzy ===
" ==============
let g:SnazzyTransparent = 1

colorscheme snazzy
nnoremap sn :colorscheme snazzy<CR>:AirlineTheme soda<CR>


" ============
" === deus ===
" ============
nnoremap sd :set background=dark<CR>:AirlineTheme simple<CR>:colorscheme deus<CR>:AirlineTheme deus<CR>
" colorscheme deus


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


" ===========
" === ale ===
" ===========
let g:ale_linters = {'java': [], 'yaml': [], 'scala': [], 'clojure': []}
let g:ale_fixers = {'ruby': ['rubocop']}
let g:ale_lint_delay = 1000
nnoremap ]a <Plug>(ale_next_wrap)
nnoremap [a <Plug>(ale_previous_wrap)


" ====================
" === clang format ===
" ====================
" let g:clang_format#code_style="mozilla"
"
" own code style
" let g:clang_format#code_style="chromium"
" let g:clang_format#style_options = {
"             \ "AccessModifierOffset" : -4,
"             \ "AllowShortIfStatementsOnASingleLine" : "true",
"             \ "AlwaysBreakTemplateDeclarations" : "true",
"             \ "AlignTrailingComments" : "true",
"             \ "Standard" : "C++11"}
" nnoremap <space>fm :ClangFormat<CR>ggVG=

" visual studio style
let g:clang_format#code_style="llvm"
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "IndentWidth" : 4,
            \ "BreakBeforeBraces" : "Allman",
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "IndentCaseLabels" : "false",
            \ "AlignTrailingComments" : "true",
            \ "ColumnLimit" : 0,
            \ "Standard" : "C++11"}
nnoremap <space>fm :set expandtab<CR>:ClangFormat<CR>

            " \ "AlwaysBreakTemplateDeclarations" : "true",
            " \ "Standard" : "Latest"}


" ===========================
" === SnipMate & Snippets ===
" ===========================
" :imap <C-J> <Plug>snipMateNextOrTrigger
" :smap <C-J> <Plug>snipMateNextOrTrigger
" :imap <C-k> <Plug>snipMateBack
" :smap <C-k> <Plug>snipMateBack


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
nnoremap <space>gy :Goyo<CR>
let g:goyo_width = 120


" ======================
" === vim-table-mode ===
" ======================
autocmd Filetype markdown nnoremap <space>tm :TableModeToggle<CR>


" ========================
" === markdown preview ===
" ========================
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0


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


noremap <space>dw /\(\<\w\+\>\)\_s*\1
nnoremap <space>tt :%s/    /\t/g
vnoremap <space>tt :s/    /\t/g


" ============================
" === rainbow paraentheses ===
" ============================
let g:rainbow_active = 1	"0 if you want to enable it later via :RainbowToggle


" ======================
" === highlight yank ===
" ======================
let g:highlightedyank_highlight_duration = 500


" ==============
" === switch ===
" ==============
nnoremap gs :Switch<CR>


" ===============
" === taglist ===
" ===============
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
nnoremap <silent> tl :TlistToggle<CR>
let g:Tlist_Use_Right_Window = 1
let g:Tlist_Exit_OnlyWindow = 1
" let g:Tlist_Auto_Open = 1
let g:Tlist_GainFocus_On_ToggleOpen = 1
nnoremap R :w<CR>:e<CR>


" ================
" === undotree ===
" ================
nnoremap nd :UndotreeToggle<CR>


" replace the current word in all opened buffers
" map <leader>r :call Replace()<CR>
" ---------------------------------------------------------------------------
" Tip #382: Search for <cword> and replace with input() in all open buffers
" ---------------------------------------------------------------------------
" fun! Replace()
"     let s:word = input("Replace " . expand('<cword>') . " with:")
"     :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/ge'
"     :unlet! s:word
" endfun


" open the error console
" map <space>cc :botright cope<CR>
" move to next error
" map <space>] :cn<CR>
" move to the prev error
" map <space>[ :cp<CR>


function! RangeChooser()
	let temp = tempname()
	" The option "--choosefiles" was added in ranger 1.5.1. Use the next line
	" with ranger 1.4.2 through 1.5.0 instead.
	"exec 'silent !ranger --choosefile=' . shellescape(temp)
	if has("gui_running")
		exec 'silent !xterm -e ranger --choosefiles=' . shellescape(temp)
	else
		exec 'silent !ranger --choosefiles=' . shellescape(temp)
	endif
	if !filereadable(temp)
		redraw!
		" Nothing to read.
		return
	endif
	let names = readfile(temp)
	if empty(names)
		redraw!
		" Nothing to open.
		return
	endif
	" Edit the first item.
	exec 'edit ' . fnameescape(names[0])
	" Add any remaning items to the arg list/buffer list.
	for name in names[1:]
		exec 'argadd ' . fnameescape(name)
	endfor
	redraw!
endfunction
command! -bar RangerChooser call RangeChooser()
nnoremap <space>r :<C-U>RangerChooser<CR>
