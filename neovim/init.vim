" ---==========---
" --- vim plug ---
" ---==========---
call plug#begin('~/.vim/plugged')
" Plug 'mhinz/vim-startify'
Plug 'nine2/vim-copyright'
Plug 'ajmwagar/vim-deus'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug '/usr/local/opt/fzf', { 'on': 'FZF' }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle', 'for': 'markdown' }
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for': 'markdown', 'on': 'MarkdownPreview' }
" Plug 'vimwiki/vimwiki'
Plug 'dkarter/bullets.vim', { 'for': ['markdown'] }
" Plug 'lervag/vimtex', { 'for': ['markdown', 'vim-plug'] }
" Plug 'itchyny/vim-cursorword'
Plug 'rhysd/vim-clang-format', { 'on': 'ClangFormat', 'for': ['c', 'cpp']}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries', 'for': ['go'] }
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'ntpeters/vim-better-whitespace'
Plug 'luochen1990/rainbow'
" Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-scripts/taglist.vim', { 'on': 'TlistToggle' }
Plug 'AndrewRadev/switch.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'voldikss/vim-floaterm'
Plug 'honza/vim-snippets'
call plug#end()

" ---==========---
" --- settings ---
" ---==========---
syntax enable
let &t_ut=''
let mapleader=","
set hidden
set cursorline
set number
set relativenumber
set scrolloff=5
set colorcolumn=80
set signcolumn=number
set list
set listchars=tab:\|\ ,trail:▫
set shiftwidth=4
set softtabstop=4
set tabstop=4
autocmd Filetype html set tabstop=2
autocmd Filetype html set softtabstop=2
autocmd Filetype html set shiftwidth=2
set wrap
set linebreak
set wrapmargin=2
set foldenable
set foldmethod=indent
set foldlevel=99
set autochdir
set showmatch
set matchtime=1
set updatetime=100
set shortmess+=c
set ignorecase
set smartcase
set nobackup
set noswapfile
set nowritebackup
set completeopt=preview,menu
set rtp+=/usr/local/opt/fzf
let g:fzf_layout = { 'window': 'call OpenFloatingWin()' }
function! OpenFloatingWin()
  let height = &lines - 3
  let width = float2nr(&columns - (&columns * 2 / 10))
  let col = float2nr((&columns - width) / 2)
  let opts = {
        \ 'relative': 'editor',
        \ 'row': height * 0.3,
        \ 'col': col + 30,
        \ 'width': width * 2 / 3,
        \ 'height': height / 2
        \ }
  let buf = nvim_create_buf(v:false, v:true)
  let win = nvim_open_win(buf, v:true, opts)
  call setwinvar(win, '&winhl', 'Normal:Pmenu')
  setlocal
        \ buftype=nofile
        \ nobuflisted
        \ bufhidden=hide
        \ nonumber
        \ norelativenumber
        \ signcolumn=no
endfunction
set viminfo='10,\"100,:20,%,n~/.config/nvim/shada/main.shada
autocmd BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
nnoremap cp :vert diffsplit<space>
nnoremap tt :e %:p:h/<CR>
nnoremap - Nzz
nnoremap = nzz
nnoremap <space><CR> :nohlsearch<CR>
nnoremap gx :r !figlet<space>
nnoremap nf :tabnew .<CR>
nnoremap tb :tabe<CR>
nnoremap th :-tabnext<CR>
nnoremap tl :+tabnext<CR>
nnoremap sl :Ve<CR>
nnoremap su :Sex<CR>
nnoremap sr :set splitright<CR>:vsplit<CR>
nnoremap <space>h <C-w>h
nnoremap <space>l <C-w>l
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <right> :vertical resize+5<CR>
nnoremap <left> :vertical resize-5<CR>
noremap K 5k
noremap J 5j
noremap H 0
noremap L $
vnoremap > >gv
vnoremap < <gv
nnoremap < <<
nnoremap > >>
nnoremap ss :w<CR>
nnoremap S <nop>
nnoremap <space>q :qa<CR>
nnoremap <space>w :bwipe<CR>
nnoremap ; :
xmap ; :
nnoremap <space>se :set spell!<CR>
inoremap <C-x> <C-x>s
vnoremap Y "+y
noremap <space>dw /\(\<\w\+\>\)\_s*\1
nnoremap <space>tt :%s/    /\t/g
vnoremap <space>tt :s/    /\t/g
nnoremap tr :FloatermNew --autoclose=1<CR>
nnoremap <F5> :FloatermNew --autoclose=0 gcc % -o %< && ./%<
noremap <LEADER>/ :set splitbelow<CR>:split<CR>:res +10<CR>:term<CR>
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
" noremap ;f <esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ;f <esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ;w <esc>/<++><CR>:nohlsearch<CR>c4l<CR>
autocmd Filetype markdown inoremap ;n ---<Enter><Enter>
autocmd Filetype markdown inoremap ;b ****<++><esc>F*hi
autocmd Filetype markdown inoremap ;s ~~~~<++><esc>F~hi
autocmd Filetype markdown inoremap ;i **<++><esc>F*i
autocmd Filetype markdown inoremap ;d ``<++><esc>F`i
autocmd Filetype markdown inoremap ;c ```<enter><++><enter>```<enter><enter><++><esc>4kA
autocmd Filetype markdown inoremap ;h ====<++><esc>F=hi
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
autocmd Filetype markdown nnoremap <space>tm :TableModeToggle<CR>
autocmd BufRead,BufNewFile *.md setlocal spell

" ---===========---
" --- copyright ---
" ---===========---
let g:file_copyright_name = "Augists"
let g:file_copyright_email = "awzyc2010@163.com"

" ---===================---
" --- deus with airline ---
" ---===================---
colorscheme deus
let g:airline_theme='deus'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" ---==============---
" --- clang format ---
" ---==============---
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
nnoremap <space>fm :set expandtab<CR>:ClangFormat<CR>:set noexpandtab<CR>ggVG=<C-o>

" ---========---
" --- vim go ---
" ---========---
" let g:go_def_mapping_enabled = 0
" let g:go_template_autocreate = 0
" let g:go_textobj_enabled = 0
" let g:go_auto_type_info = 1
" let g:go_def_mapping_enabled = 0
" let g:go_highlight_array_whitespace_error = 1
" let g:go_highlight_build_constraints = 1
" let g:go_highlight_chan_whitespace_error = 1
" let g:go_highlight_extra_types = 1
" let g:go_highlight_fields = 1
" let g:go_highlight_format_strings = 1
" let g:go_highlight_function_calls = 1
" let g:go_highlight_function_parameters = 1
" let g:go_highlight_functions = 1
" let g:go_highlight_generate_tags = 1
" let g:go_highlight_methods = 1
" let g:go_highlight_operators = 1
" let g:go_highlight_space_tab_error = 1
" let g:go_highlight_string_spellcheck = 1
" let g:go_highlight_structs = 1
" let g:go_highlight_trailing_whitespace_error = 1
" let g:go_highlight_types = 1
" let g:go_highlight_variable_assignments = 0
" let g:go_highlight_variable_declarations = 0
" let g:go_doc_keywordprg_enabled = 0

" ---==============---
" --- coc settings ---
" ---==============---
let g:coc_global_extensions = [
    \ 'coc-explorer',
    \ 'coc-floaterm',
    \ 'coc-git',
    \ 'coc-highlight',
    \ 'coc-html',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-swagger',
    \ 'coc-yaml',
    \ 'coc-yank',
    \ 'coc-go',
    \ 'coc-snippets',
    \ 'coc-markdownlint',
    \ 'coc-jedi',
    \ 'coc-clangd',
    \]
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
let g:coc_snippet_next = '<tab>'
inoremap <silent><expr> <c-o> coc#refresh()
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> <LEADER>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nnoremap <silent> <space>y :<C-u>CocList -A --normal yank<cr>
nmap <leader>rn <Plug>(coc-rename)
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next='<c-e>'
let g:coc_snippet_prev='<c-n>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'Augists ZDCZ'
nnoremap <LEADER>e :CocCommand explorer<CR>

" ---=======================================---
" --- markdown preview ---
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
" --- whitespace auto delete on save ---
let g:better_whitespace_ctermcolor='red'
let g:strip_whitespace_on_save = 1
" --- rainbow paraentheses ---
let g:rainbow_active = 1
" --- highlight yank ---
let g:highlightedyank_highlight_duration = 500
" --- switch ---
nnoremap gs :Switch<CR>
" --- taglist ---
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let g:Tlist_Use_Right_Window = 1
let g:Tlist_Exit_OnlyWindow = 1
" let g:Tlist_Auto_Open = 1
let g:Tlist_GainFocus_On_ToggleOpen = 1
nnoremap <silent> <space>tl :TlistToggle<CR>
" --- undotree ---
noremap ut :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
if has("persistent_undo")
  let target_path = expand('~/.config/nvim/.undodir')
  let &undodir=target_path
  set undofile
endif
" ---=======================================---
