"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: Jose Elera Campana
"			http://www.twitter.com/jelera
"			https://github.com/jelera
"
" How_to_Install_on_Unix:
"    $ git clone
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE AND PLUGINS {{{
" Vundle Settings"{{{
set nocompatible	" For Vim to be incompatible with the original Vi
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

""""""""""""""""""""""""""""""
"  let Vundle manage Vundle  "
""""""""""""""""""""""""""""""
Bundle 'gmarik/vundle'
"}}}
"""""""""""""""""""""
"  My Bundles here  "
"""""""""""""""""""""
"  Github repos"{{{
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-rhubarb'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-ragtag'
Bundle 'mileszs/ack.vim'
Bundle 'DataWraith/auto_mkdir'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'sjl/gundo.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'mattn/gist-vim'
Bundle 'godlygeek/tabular'
Bundle 'tyru/current-func-info.vim'
Bundle 'majutsushi/tagbar'
Bundle 'gregsexton/MatchTag'
Bundle 'gregsexton/gitv'
Bundle 'skammer/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'groenewege/vim-less'
Bundle 'davidoc/taskpaper.vim'
Bundle 'dekomote/w3cvalidate.vim'
Bundle 'sukima/xmledit'
Bundle 'spf13/PIV'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'mikewest/vimroom'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'rosenfeld/conque-term'
Bundle 'jelera/vim-powerline'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'jelera/vim-nazca-colorscheme'
" Bundle 'SirVer/ultisnips'
" Bundle 'othree/fecompressor.vim'
" Bundle 'mattn/zencoding-vim'
"}}}
"  Vim-scripts repos {{{
Bundle 'TaskList.vim'
Bundle 'bash-support.vim'
"}}}
"  Other Git repos "{{{
Bundle 'git://git.wincent.com/command-t.git'
"}}}

filetype plugin indent on
"}}}

" BASIC CONFIGURATION{{{
" General Options "{{{
set title
set hidden
" This will setup the user's shell $PATH to vim/gvim/macvim
exe "set path=".expand("$PATH")

syntax on

set nomodeline
set autochdir                                           " Automatically use the current file's directory as the working directory
set backspace=indent,eol,start                          " Backspace will delete EOL chars, as well as indents
set matchpairs+=<:>                                     " For characters that forms pairs for using % commands, this is for HTML Tags
set shortmess=atToOI                                    " To avoid the 'Hit Enter' prompts caused by the file messages
set iskeyword+=_,$,@,%,#                                " Keywords are use to searching and recognized with many commands
set spelllang=en_us,es                                  " English and Spanish for spelling
try
	lang en_US
catch
endtry
set autoread                                            " Set to autoread when a file is changed from the outside
set mousehide                                           " Hide the mouse cursor when typing
set report=0                                            " Reports always the amount of changed lines
set viminfo='1000,f1,:1000,/1000,<1000,s100             " marks: 1000 files, history lines: 1000 lines, search queries: 1000 patterns, registers: 1000
set directory=$HOME/.vimfiles/swapfiles,/var/tmp,/tmp,. " Swap directory to store temporary files
set history=1000
set undolevels=1000
set confirm
set updatetime=1500
"}}}
" Encoding"{{{
set encoding=utf-8
set termencoding=utf-8
"}}}
" Fileformats"{{{
set fileformats=unix,mac,dos	" Read unix,mac,dos formatted files
set fileformat=unix	" The default format is UNIX
"}}}
"Mark Tabs not used for indentation in Code"{{{
match errorMsg /[^\t]\zs\t+/
"}}}
" Undo Directory and files" {{{
if version >= 730
	set undodir=$HOME/.undo
	set undofile
	set undolevels=999
endif
"}}}
" Instantly leave insert mode when pressing <ESC>" {{{
" This works by disabling the mapping timeout completely in normal
" mode, and enabling it in insert mode with a very low timeout length.
augroup fastescape
	autocmd!

	set notimeout
	set ttimeout
	set timeoutlen=10

	au InsertEnter * set timeout
	au InsertLeave * set notimeout
augroup END
"}}}
" Define , as map leader" {{{
let mapleader = ','
let g:mapleader = ','
"}}}
" Disable all bells" {{{
set noerrorbells visualbell t_vb=
"}}}
" Wild menu (Autocompletion)" {{{
set wildmenu
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.jpeg,*.png,*.xpm,*.gif
set wildmode=full
"}}}
" Backup and Swap"{{{
set nobackup	" Do not keep a backup file, since most of the work is in Git, Svn, Hg
set nowritebackup
set noswapfile
"}}}
" Search Options"{{{
set hlsearch   " Highlight search
set incsearch  " Incremental search
set magic      " Set magic on, for regular expressions
set ignorecase " Searches are Non Case-sensitive
set smartcase
"}}}
" Conflict markers {{{

" Highlight conflict markers
match ErrorMsg '^\(<\|=\|>\)\{7\}\([^=].\+\)\?$'

" Shortcut to jump to next conflict marker
nmap <silent> <leader>c /^\(<\\|=\\|>\)\{7\}\([^=].\+\)\?$<CR>
" }}}
" Highlight problematic whitespace (spaces before tabs) {{{
hi RedundantSpaces ctermfg=214 ctermbg=160 cterm=bold guifg=red gui=bold
match RedundantSpaces / \+\ze\t/
" }}}
" Omnicompletion options"{{{
set completeopt=menu,menuone,longest
"}}}
"}}}

" FOLDING {{{
" General Folding Options "{{{
set foldenable
set foldmethod=marker
set foldlevel=0
set foldcolumn=0
set foldtext=FoldText()
"}}}
" Universal FoldText function {{{
function! FoldText(...)
	" This function uses code from doy's vim-foldtext: https://github.com/doy/vim-foldtext
	" Prepare fold variables {{{

	" Use function argument as line text if provided
	let l:line = a:0 > 0 ? a:1 : getline(v:foldstart)
	let l:line_count = v:foldend - v:foldstart + 1
	let l:indent = repeat(' ', indent(v:foldstart))
	let l:w_win = winwidth(0)
	let l:w_num = getwinvar(0, '&number') * getwinvar(0, '&numberwidth')
	let l:w_fold = getwinvar(0, '&foldcolumn')
	" }}}
	" Handle diff foldmethod {{{
	if &fdm == 'diff'
		let l:text = printf(' ⋆ %s matching lines ⋆ ', l:line_count)

		" Center-align the foldtext
		return repeat('=', (l:w_win - strchars(l:text) - l:w_num - l:w_fold) / 2) . l:text
	endif
	" }}}
	" Handle other foldmethods {{{
	let l:text = l:line
	" Remove foldmarkers {{{
	let l:foldmarkers = split(&foldmarker, ',')
	let l:text = substitute(l:text, '\V' . l:foldmarkers[0] . '\%(\d\+\)\?\s\*', '', '')
	" }}}
	" Remove comments {{{
	let l:comment = split(&commentstring, '%s')
	if l:comment[0] != ''
		let l:comment_begin = l:comment[0]
		let l:comment_end = ''
		if len(l:comment) > 1
			let l:comment_end = l:comment[1]
		endif
		let l:pattern = '\V' . l:comment_begin . '\s\*' . l:comment_end . '\s\*\$'
		if l:text =~ l:pattern
			let l:text = substitute(l:text, l:pattern, ' ', '')
		else
			let l:text = substitute(l:text, '.*\V' . l:comment_begin, ' ', '')
			if l:comment_end != ''
				let l:text = substitute(l:text, '\V' . l:comment_end, ' ', '')
			endif
		endif
	endif
	" }}}
	" Remove preceding non-word characters {{{
	let l:text = substitute(l:text, '^\W*', '', '')
	" }}}
	" Remove surrounding whitespace {{{
	let l:text = substitute(l:text, '^\s*\(.\{-}\)\s*$', '\1', '')
	" }}}
	" Make unmatched block delimiters prettier {{{
	let l:text = substitute(l:text, '([^)]*$',   '( ... )', '')
	let l:text = substitute(l:text, '{[^}]*$',   '{ ... }', '')
	let l:text = substitute(l:text, '\[[^\]]*$', '[ ... ]', '')
	" }}}
	" Add arrows when indent level > 2 spaces {{{
	if indent(v:foldstart) > 2
		let l:cline = substitute(l:line, '^\s*\(.\{-}\)\s*$', '\1', '')
		let l:clen = strlen(matchstr(l:cline, '^\W*'))
		let l:indent = repeat(' ', indent(v:foldstart) - 2)
		let l:text = '⊙  ' . l:text
	endif
	" }}}
	" Prepare fold text {{{
	let l:fnum = printf(' [ Lines : %s ]           ', l:line_count)
	let l:ftext = printf('+  %s%s ', l:indent, l:text)
	" }}}
	return l:ftext . repeat(' ', l:w_win - strchars(l:fnum) - strchars(l:ftext) - l:w_num - l:w_fold) . l:fnum . ' '
	" }}}
endfunction
" }}}
" PHP FoldText function {{{
function! FoldText_PHP()
	" This function uses code from phpfolding.vim
	let l:curline = v:foldstart
	let l:line = getline(l:curline)
	" Did we fold a DocBlock? {{{
	if strridx(l:line, '#@+') != -1
		if (matchstr(l:line, '^.*#@+..*$') == l:line)
			let l:line = substitute(l:line, '^.*#@+', '', 'g') . ' ' . g:phpDocBlockIncludedPostfix
		else
			let l:line = getline(l:curline + 1) . ' ' . g:phpDocBlockIncludedPostfix
		endif
		" }}}
		" Did we fold an API comment block? {{{

	elseif strridx(l:line, "\/\*\*") != -1
		let s:state = 0

		while l:curline < v:foldend
			let l:loopline = getline(l:curline)

			if s:state == 0 && strridx(l:loopline, "\*\/") != -1
				let s:state = 1
			elseif s:state == 1 && (matchstr(l:loopline, '^\s*$') != l:loopline)
				break
			endif

			let l:curline = l:curline + 1
		endwhile

		let l:line = getline(l:curline)
	endif

	" }}}
	" Cleanup {{{

	let l:line = substitute(l:line, '/\*\|\*/\d\=', '', 'g')
	let l:line = substitute(l:line, '^\s*\*\?\s*', '', 'g')
	let l:line = substitute(l:line, '{$', '', 'g')
	let l:line = substitute(l:line, '($', '(...)', 'g')

	" }}}
	" Append postfix if there is PhpDoc in the fold {{{

	if l:curline != v:foldstart
		let l:line = l:line . " " . g:phpDocIncludedPostfix . " "
	endif

	" }}}
	return FoldText(l:line)
endfunction

" Enable PHP FoldText function {{{

let g:DisableAutoPHPFolding = 1

" au FileType php EnableFastPHPFolds
au FileType php setlocal foldtext=FoldText() | setl foldtext=FoldText_PHP()

" }}}
" }}}
" JavaScriptFold Function {{{

function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

	setl foldtext=FoldText()
endfunction

au FileType javascript call JavaScriptFold()

" }}}
" }}}

" USER INTERFACE {{{
" Look and Feel settings {{{
set background=dark
if has('gui_running')
	" For gVim / MacVim
	set guioptions-=T
	set guioptions+=c
	set linespace=6 "Space betweeen lines
	colorscheme nazca
	" Font Selection
	if has('mac')
		" For MacVim
		set guifont=DejaVu\ Sans\ Mono\:h14
	else
		" For Linux gVim
		set guifont=DejaVu\ Sans\ Mono\ 10
	endif
else
	" For Terminal Vim
	if $TERM =~ '^xterm'
		set t_Co=256
		colorscheme nazca
	elseif $TERM =~ '^screen'
		set t_Co=256
		colorscheme nazca
	elseif $TERM =~ '^rxvt'
		set t_Co=88
		colorscheme pablo
	elseif $TERM =~ '^linux'
		set t_Co=8
		colorscheme vividchalk
	else
		set t_Co=16
		colorscheme pablo
	endif
endif
" }}}
" Use custom fillchars/listchars/showbreak icons {{{
set fillchars=vert:║,diff:∓
set listchars=tab:▸\ ,eol:¬
set showbreak=⋯⋯
" }}}
" Lines, columns and Break Indent"{{{
if exists('+lines')
	set lines=45
endif
if exists('+columns')
	set columns=137
endif
if exists('+breakindent')
	set breakindent
endif
"}}}
" General UI Options"{{{
set laststatus=2       " Always show the statusline
" set number           " Show Line Numbers
set relativenumber     " Show Relative Line Numbers
set numberwidth=4      " Width value of the Line Number Column
set ruler

set showmatch          " Shows matching brackets when text indicator is over them
set scrolloff=5        " Show 5 lines of context around the cursor
set sidescrolloff=20
set lazyredraw         " The screen won't be redrawn unless actions took place
set cursorline
set scrolljump=10
set showcmd
set ttyfast            " Improves redrawing for newer computers
" set virtualedit=all
set pumheight=10
set diffopt+=context:3
set nostartofline      " when moving thru the lines, the cursor will try to stay in the previous columns
"}}}
" }}}

" LAYOUT / TEXT FORMATTING {{{
" Formatting Options "{{{
set wrap	" Soft Wrap in all files, while hard wrap can be allow by filetype
set linebreak " It maintains the whole words when wrapping

" set formatoptions=croqwanl1
" c = auto wrap comments using textwidth
" r = Auto insert the comment leader after hitting ENTER in insert mode
" o = Auto insert the comment leader after hitting 'o' or 'O' in insert mode
" q = Allows formatting of comments with "gq"
" w = Trailing whitespace indicates a new line continues in the next line
" a = Auto formatting of paragraphs.
" n = Recognize numbered lists
" l = long lines are not broken in insert mode
" 1 = Don't break a line after a one-letter word

" This is the width of the text after the filter (par) goes thru the file
" set textwidth=79

" }}}
" Indentation"{{{
set autoindent
set cindent
set smartindent
"}}}
" Tab Options"{{{
set shiftwidth=4
set tabstop=4
set smarttab
set noexpandtab
"}}}
" }}}

" MAPPINGS {{{
" General "{{{
" Vertically split window and select it  {{{
nnoremap <Leader>v <C-w>v<C-w>l
" }}}
" Clear search highlighting {{{
nnoremap <silent> <Leader><space> :nohlsearch<CR>
" }}}
" Buffers and Tabs {{{
"Buffer Configuration {{{
" Specify the behaviour when switching between buffers
try
	set switchbuf=usetab
	set stal=2
catch
endtry

map <Leader>bc :Bclose<CR>
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")

	if buflisted(l:alternateBufNum)
		buffer #
	else
		bnext
	endif

	if bufnr("%") == l:currentBufNum
		new
	endif

	if buflisted(l:currentBufNum)
		execute("bdelete! ".l:currentBufNum)
	endif
endfunction

" }}}
" Tab configuration {{{
map <leader>tb :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" }}}
" }}}
" Repurpose left and right arrow keys to move between the buffers {{{
nnoremap <silent> <Left>   :bn<CR>
nnoremap <silent> <Right>  :bp<CR>
" }}}
" Toggle between 'Relative' and 'Absolute' line numbers (only Vim >7.3{{{
" by aj3423
map <leader>ln :call g:ToggleNuMode()<cr>
function! g:ToggleNuMode()
	if(&rnu == 1)
		set nu
	else
		set rnu
	endif
endfunc
" }}}
" Show Invisible Characters {{{
nmap <Leader>l :set list!<CR>
" }}}
" Toggle Foldings with the space bar {{{
nnoremap <Space> za
" }}}
" Using vimdiff to track changes {{{

" nmap <Leader>wd :call DiffWithFileFromDisk()<CR><Leader>u

" function! DiffWithFileFromDisk()
" let filename=expand('%')
" let diffname = filename.'.fileFromBuffer'
" exec 'saveas! '.diffname
" diffthis
" vsplit
" exec 'edit '.filename
" diffthis
" endfunction

" }}}
" Indent visual selected code without unselecting {{{
" As seen in vimcasts.org
vmap > >gv
vmap < <gv
vmap = =gv
" }}}
" Switch the PWD to open buffer's {{{ nmap <Leader>cd :cd %:p:h<CR>
" }}}
" Edit files that are in the main project root dir"{{{
nmap <Leader>ew :e <C-R>=expand("%:p:h")."/"<CR>
"}}}
"}}}
" Editing {{{
" Quick edit .vimrc and the Nazca Colorscheme {{{
nnoremap <silent> <Leader>vim :edit   $MYVIMRC<CR>
nnoremap <silent> <Leader>sv :source $MYVIMRC<CR>
nnoremap <silent> <Leader>naz :e $HOME/.vim/colors/nazca.vim<CR>
" }}}
" Strip trailing whitespace {{{
nnoremap <leader>nw :%s/\s\+$//e<cr>:let @/=''<CR>
" }}}
" Autocomplete {} indent and reposition of the cursor in the middle {{{
" inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
""inoremap {{     {
"inoremap {}     {}

"inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
""inoremap ((     (
"inoremap ()     ()

"inoremap [      []<Left>
"inoremap [<CR>  [<CR>]<Esc>O
""inoremap [[     [
"inoremap []     []

" Taken from https://github.com/acustodioo/vim-enter-indent
func! EnterIndent()
	let EnterIndentActive = [
				\ {'left' : '[\{\[\(]','right' : '[\)\]\}]'},
				\ {'left' : '<[^>]*>', 'right' : '</[^>]*>'},
				\ {'left' : '<?\(php\)\?', 'right' : '?>'},
				\ {'left' : '<%', 'right' : '%>'},
				\ {'left' : '\[[^\]]*\]', 'right' : '\[/[^\]]*\]'},
				\ {'left' : '<!--', 'right' : '-->'},
				\ {'left' : '\(#\)\?{[^\}]*\}', 'right' : '\(#\)\?{[^\}]*\}'},
				\ ]

	let GetLine = getline('.')
	let ColNow = col('.') - 1

	let RightGetLine = substitute(
				\ strpart(GetLine, ColNow, col('$')),
				\ '^[ ]*', '', ''
				\ )

	if RightGetLine == "" | call feedkeys("\<CR>", 'n') | return '' | endif

	for value in EnterIndentActive
		if matchstr(RightGetLine, '^' . value.right) != ""
			let EnterIndentRun = 1 | break
		endif
	endfor

	if !exists('EnterIndentRun') | call feedkeys("\<CR>", 'n') | return '' | endif

	let LeftGetLine = substitute(
				\ strpart(GetLine, 0, ColNow),
				\ '[ ]*$', '', ''
				\ )

	if matchstr(LeftGetLine, value.left . '$') == ""
		call feedkeys("\<CR>", 'n') | return ''
	endif

	let LineNow = line('.')
	let Indent = substitute(LeftGetLine, '^\([ |\t]*\).*$', '\1', '')

	call setline(LineNow, LeftGetLine)
	call append(LineNow, Indent . RightGetLine)
	call append(LineNow, Indent)
	call feedkeys("\<Down>\<Esc>\A\<Tab>", 'n')

	return ''
endf

inoremap <silent> <cr> <c-r>=EnterIndent()<cr>
" }}}
" Code Comment Banners {{{
autocmd FileType vim map <leader>ccb I"<DEL>  <ESC>A  "<DEL><ESC>yyp0lv$hhr"yykPjj
autocmd FileType javascript,php,c map <leader>ccb I//  <ESC>A  //<ESC>yyp0llv$hhhr-yykPjj
autocmd FileType python,ruby,sh,zsh map <leader>ccb I#  <ESC>A  #<ESC>yyp0lv$hhr-yykPjj
autocmd FileType css map <leader>ccb I/*  <ESC>A  */<ESC>yyp0llv$r-$hc$*/<ESC>yykPjj
" }}}
" HEX Color Picker {{{
if has("mac")
	map <leader>hex :PickHEX<CR>
else
	map <leader>hex <Esc>:ColorPicker<Cr>a
	vmap <leader>hex <Del><Esc>h:ColorPicker<Cr>a
endif
" }}}
" Sort CSS Properties {{{
nnoremap <leader>sort ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
" }}}
" Expand Compressed HTML with Tidy {{{
map <leader>td :%!tidy -q -config ~/.vim/tidy.conf --tidy-mark 0 2>/dev/null<CR><ESC>gg=G
" }}}
" Documentation Writing and Formatting {{{
map <leader>h1 yypVr=o
map <leader>h2 yypVr-o
" }}}
" Copy, Cut, Paste and Blockwise Visual Selection {{{

" Use CTRL-Q to do what CTRL-V used to do, Blockwise Visual Selection
noremap <C-Q>   <C-V>

"CTRL-X is cut
vnoremap <C-X> "+x

"CTRL-C is copy
vnoremap <C-C> "+y

" Smart Paste CTRL-V from the system's clipboard and indents code automatically
nnoremap <C-V> "+P=']
inoremap <C-V> <C-o>"+P<C-o>=']

" Select All
map <C-A> ggVG

" Pasting blockwise and linewise selections is not possible in Insert and
" Visual mode without the +virtualedit feature.  They are pasted as if they
" were characterwise instead.
" Uses the paste.vim autoload script.

"exe 'inoremap <script> <C-V>' paste#paste_cmd['i']
"exe 'vnoremap <script> <C-V>' paste#paste_cmd['v']

imap <S-Insert> <C-V>
vmap <S-Insert> <C-V>

" }}}
" QuickFix {{{
map <leader>cope :botright cope<cr>
map <leader>cn :cn<cr>
map <leader>cp :cp<cr>
" }}}
" Spell Checking {{{

"toggle spell checking
map <leader>spl :setlocal spell!<cr>

" Spell checking in Mail textfiles (mutt)
au FileType mail au BufEnter,BufWinEnter <buffer> setlocal spell

" Movement - spell errors
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

map <leader>ss ]sz=
" }}}
" Word and Character swapping {{{
nnoremap <silent> gc xph
" }}}
" }}}
" Git related (Fugitive and Vim-git)"{{{
" nmap <Leader>gst :Gstatus<CR>
" nmap <Leader>gl :Git pull<CR>
" nmap <Leader>gp :Git push<CR>
" nmap <Leader>gdf :Gdiff<CR>
" nmap <Leader>gc :Gcommit<CR>
" nmap <Leader>ga :Gwrite<CR>
" nmap <Leader>gb :Git Branch<CR>
"}}}
" }}}

" AUTOCOMMANDS {{{
augroup General " {{{
	autocmd!
	" Help file settings {{{
	function! s:SetupHelpWindow()
		wincmd L
		vertical resize 80
		setl nonumber winfixwidth colorcolumn=

		let b:stl = "#[Branch] HELP#[BranchS] [>] #[FileName]%<%t #[FileNameS][>>]%* %=#[LinePercentS][<<]#[LinePercent] %p%% " " Set custom statusline

		nnoremap <buffer> <Space> <C-]> " Space selects subject
		nnoremap <buffer> <BS>    <C-T> " Backspace to go back
	endfunction

	au FileType help au BufEnter,BufWinEnter <buffer> call <SID>SetupHelpWindow()
	" }}}
	" Fix space highlighting in diff files {{{
	au FileType diff hi clear RedundantSpaces
				\ | hi DiffCol ctermbg=238 cterm=bold
				\ | match DiffCol /^[ +-]\([+-]\)\@!/
	" }}}
	" Save on losing focus (after tabbing away or switching buffers) {{{
	au FocusLost * :wa
	" }}}
	" Open in last edit place {{{
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
	" }}}
	"Open URL in browser  {{{

	nmap <leader>url : call OpenURLBrowser()
	function! OpenURLBrowser()
		let line = getline (".")
		let line = matchstr (line, "http[^ ]*")
		exec "!konqueror ".line
	endfunction

	"}}}
augroup END " }}}
augroup Formatting " {{{
	autocmd!
	" Fix gitcommit formatting {{{
	au FileType gitcommit setl formatoptions+=at formatoptions-=l textwidth=72 colorcolumn=72
	" }}}
	" Format plain text and e-mails correctly {{{
	au BufNewFile,BufRead *.txt setl ft=text
	au FileType mail,text setl formatoptions+=t formatoptions-=l textwidth=72 colorcolumn=72
	" }}}
augroup END" }}}
augroup Whitespace " {{{
	autocmd!
	" Remove trailing whitespace from selected filetypes {{{
	function! <SID>StripTrailingWhitespace()
		" Preparation: save the last search, and curson position"
		let _s=@/
		let l = line(".")
		let c = col(".")
		" Do the business"
		%s/\s\+$//e
		"Clean up: restore previous search history and cursor position"
		let @/=_s
		call cursor(l, c)
	endfunction

	au FileType html,css,sass,javascript,php,python,ruby,sql,vim au BufWritePre <buffer> :silent! call <SID>StripTrailingWhitespace()
	" }}}
augroup END " }}}
augroup Filetype Specific " {{{
	autocmd!
	" Script templates {{{
	" au BufNewFile *.sh  so ~/.vim/templates/tpl.sh
	" au BufNewFile *.py  so ~/.vim/templates/tpl.py
	" au BufNewFile *.php so ~/.vim/templates/tpl.php
	" au BufNewFile *.tex Vimplate LaTeX
	" au BufNewFile *.sh Vimplate shell
	" au BufNewFile *.c Vimplate c
	" au BufNewFile *.vim Vimplate vim
	" au BufNewFile *.rb Vimplate ruby
	" au BufNewFile Makefile Vimplate Makefile-C
	" }}}
	" SQL {{{
	au BufNewFile,BufRead *.sql set ft=sql foldmethod=marker
	" }}}
	" Nginx {{{
	au BufNewFile,BufRead /etc/nginx/conf/* setl ft=nginx
	" }}}
	" Arch Linux {{{
	au BufNewFile,BufRead PKGBUILD setl syntax=sh ft=sh
	au BufNewFile,BufRead *.install setl syntax=sh ft=sh
	" }}}
	" PHP {{{
	let g:php_folding = 1
	let g:php_html_in_strings = 1
	let g:php_parent_error_close = 1
	let g:php_parent_error_open = 1
	let g:php_no_shorttags = 1
	" }}}
	" LESS {{{
	au BufNewFile,BufRead *.less setl ft=less
	" }}}
	" SASS {{{
	au FileType sass SyntasticDisable
	" }}}
	" Python highlighting {{{
	let g:python_highlight_all = 1
	let g:python_show_sync = 1
	let g:python_print_as_function = 1
	" }}}
	" Ruby {{{
	au FileType ruby setlocal ts=2 sts=2 sw=2 noexpandtab foldmethod=syntax
	" }}}
	" HTML/XHTML {{{
	" for HTML, generally format text, but if a long line has been created
	" leave it alone when editing:
	autocmd FileType html,xhtml setlocal formatoptions+=tl
	" autocmd FileType html,xhtml setlocal foldmethod=indent smartindent
	autocmd FileType html,xhtml setlocal textwidth=0
	autocmd FileType html,xhtml setlocal noexpandtab tabstop=3 shiftwidth=3
	au FileType html,xhtml,xml so ~/.vim/ftplugin/html_autoclosetag.vim
	autocmd FileType html,xhtml setlocal wildignore-=*.jpg,*.jpeg,*.png,*.gif
	" Load the Current buffer in default web browser of Firefox {{{
	au Filetype html,xhtml nmap <silent> <leader>pv : call PreviewInBrowser()<CR>
	func! PreviewInBrowser()
		if has("mac")
			"exec "!open %"
			exec "!open -a /Applications/Firefox.app/ %"
			"exec "!open -a firefox.app %:p"
		else
			exec "!firefox %"
		endif
	endfunc
	" }}}
	" }}}
	" CSS {{{
	autocmd FileType css setlocal smartindent foldmethod=indent
	autocmd FileType css setlocal noexpandtab tabstop=2 shiftwidth=2
	autocmd FileType css map <leader>css %s/{\_.\{-}}/\=substitute(submatch(0), '\n', '', 'g')/
	autocmd filetype css setlocal equalprg=csstidy\ -\ --silent=true

	" }}}
	" Javascript {{{
	" au BufNewFile,BufRead *.js setlocal ft javascript
	au BufNewFile,BufRead *.jsm setlocal ft javascript
	au BufNewFile,BufRead Jakefile setlocal ft javascript
	au FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
	au FileType javascript setlocal foldenable
	au FileType javascript setlocal nocindent
	au FileType javascript call JavaScriptFold()

	" jQuery syntax
	au BufRead,BufNewFile jquery.*.js setlocal ft=javascript syntax=jquery

	" JSON syntax
	au BufRead,BufNewFile *.json setlocal ft=json

	" Expand compressed (minified) Javascript with JSBeautify.vim
	au FileType javascript nmap <leader>jsb : call g:Jsbeautify()<CR>

	" }}}
	" SQL {{{
	" http://stepanoff.org/wordpress/archives/1536

	" Select Database
	map <leader>db :call SwitchDB()<CR>
	function! SwitchDB()
		let g:current_db = input("Database > ")
	endfunction

	" Run SQL Query
	map <leader>sql :call Doquery()<CR>
	function! Doquery()
		if !exists("g:current_db")
			call SwitchDB()
		endif
		let query_string = input(g:current_db . " > " )
		if query_string != ""
			exe "!mysql " . g:current_db . " -e \"" . escape(query_string, '"') . "\""
		endif
	endfunction
	" }}}
	" Python {{{
	au FileType python setlocal nocindent
	let python_highlight_all = 1
	au FileType python syn keyword pythonDecorator True None False self

	au BufNewFile,BufRead *.jinja setlocal syntax=htmljinja
	au BufNewFile,BufRead *.mako setlocal ft=mako
	" }}}
	" Markdown {{{

	" Markdown to HTML
	au FileType markdown nnoremap <silent> <leader>md :%!markdown 2>/dev/null<CR>

	" Markdown formatting
	au FileType markdown set ai formatoptions=tcroqn2 comments=n:>

	" Preview Markdown text
	au Filetype markdown nnoremap <silent> <leader>pv : call MarkdownPreview()<CR>
	func! MarkdownPreview()
		exec "w /tmp/previewmkd.markdown"
		if has("mac")
			exec "!markdown /tmp/previewmkd.markdown > /tmp/previewmkd.html && open /tmp/previewmkd.html"
		else
			exec "!markdown /tmp/previewmkd.markdown > /tmp/previewmkd.html && firefox /tmp/previewmkd.html"
		endif
	endfunc
	" }}}

augroup END " }}}
" }}}

" ABBREVIATIONS {{{
iab xdate <c-r>=strftime("%m/%d/%y %H:%M:%S")<cr>

iab #pl #!/usr/bin/env perl
iab #py #!/usr/bin/env python
iab #e #!/usr/bin/env
iab #r #!/usr/bin/env ruby
iab #b #!/bin/bash

iabbrev lorem Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras sollicitudin quam eget libero pulvinar id condimentum velit sollicitudin. Proin cursus scelerisque dui ac condimentum. Nullam quis tellus leo. Morbi consectetur, lectus a blandit tincidunt, tortor augue tincidunt nisi, sit amet rhoncus tortor velit eu felis.

iab llorem Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
" }}}

" 3RD-PARTY PLUGINS SETTINGS {{{
	" Syntastic {{{
	let g:syntastic_enable_signs = 1
	let g:syntastic_auto_loc_list = 0
	nmap <F5> :SyntasticCheck<CR>
	nmap <F6> :Errors<CR><C-W>j
	" }}}
	" neocomplcache {{{
	" TODO: Still need to tweak behavior with <TAB> to expand
	"       snippets, change throughout the autocompletion list

	" Use neocomplcache.
	let g:neocomplcache_enable_at_startup = 1
	" Use smartcase.
	let g:neocomplcache_enable_smart_case = 1
	" Use camel case completion.
	let g:neocomplcache_enable_camel_case_completion = 1
	" Use underbar completion.
	let g:neocomplcache_enable_underbar_completion = 1
	" Set minimum syntax keyword length.
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
	let g:neocomplcache_snippets_dir = '~/.vim/snippet/'
	" Define dictionary.
	let g:neocomplcache_dictionary_filetype_lists = {
				\ 'default' : '',
				\ 'vimshell' : $HOME.'/.vimshell_hist',
				\ 'scheme' : $HOME.'/.gosh_completions'
				\ }

	" Define keyword.
	if !exists('g:neocomplcache_keyword_patterns')
		let g:neocomplcache_keyword_patterns = {}
	endif
	let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

	" Plugin key-mappings.
	imap <C-k>     <Plug>(neocomplcache_snippets_expand)
	smap <C-k>     <Plug>(neocomplcache_snippets_expand)
	inoremap <expr><C-g>     neocomplcache#undo_completion()
	inoremap <expr><C-l>     neocomplcache#complete_common_string()

	" SuperTab like snippets behavior.
	imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

	" Recommended key-mappings.
	" <CR>: close popup and save indent.
	" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
	" <TAB>: completion.
	inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
	" <C-h>, <BS>: close popup and delete backword char.
	inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
	inoremap <expr><C-y>  neocomplcache#close_popup()
	inoremap <expr><C-e>  neocomplcache#cancel_popup()

	" AutoComplPop like behavior.
	"let g:neocomplcache_enable_auto_select = 1

	" Shell like behavior(not recommended).
	"set completeopt+=longest
	"let g:neocomplcache_enable_auto_select = 1
	"let g:neocomplcache_disable_auto_complete = 1
	"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
	"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

	" Enable omni completion.
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

	" Enable heavy omni completion.
	if !exists('g:neocomplcache_omni_patterns')
		let g:neocomplcache_omni_patterns = {}
	endif
	let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
	"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
	let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'

	au BufNewFile,BufRead *.snip set syntax=snippet ft=snippet foldmethod=indent
	" }}}
	" NERD tree {{{
	let g:NERDTreeChristmasTree = 1
	let g:NERDTreeCaseSensitiveSort = 1
	let g:NERDTreeQuitOnOpen = 1
	let g:NERDTreeWinPos = 'left'
	let g:NERDTreeWinSize = 50
	let g:NERDTreeShowBookmarks = 1
	map <F2> :NERDTreeToggle<CR>
	" }}}
	" Autoclose {{{
	nmap <Leader>ac <Plug>ToggleAutoCloseMappings
	" }}}
	" MiniBufExpl {{{
	let g:miniBufExplModSelTarget = 1
	let g:miniBufExplorerMoreThanOne = 2
	let g:miniBufExplModSelTarget = 0
	let g:miniBufExplUseSingleClick = 1
	let g:miniBufExplMapWindowNavVim = 1
	let g:miniBufExplVSplit = 20
	let g:miniBufExplSplitBelow=1

	let g:bufExplorerSortBy = "name"

	autocmd BufRead,BufNew :call UMiniBufExplorer

	map <leader>u :TMiniBufExplorer<cr>
	map <F3> :TMiniBufExplorer<cr>
	" }}}
	" Vim Indent Guides {{{
	" let g:indent_guides_start_level = 2
	" let g:indent_guides_guide_size = 1
	" }}}
	" Tagbar {{{
	map <F4> :TagbarToggle<CR>
	" }}}
	" Gundo {{{
	map <F7> :GundoToggle<CR>
	" }}}
	" Fugitive {{{
	" automatically delete fugitive buffers when leaving them
	autocmd BufReadPost fugitive://* setlocal bufhidden=delete
	" }}}
	"  Sparkup"{{{
	imap <C-y> <ESC><C-e>
	"}}}
	" Command-T"{{{
	map <C-t> :CommandT<cr>
	"}}}
	"ConqueTerm"{{{
	nmap <Leader>sh :ConqueTermSplit zsh<CR>
	"}}}
	" Powerline"{{{
	let g:Powerline_symbols = 'fancy'
	"}}}
"}}}
