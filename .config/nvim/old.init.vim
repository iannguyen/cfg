" Vundle Settings
"================================================================================

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'mileszs/ack.vim'
Plugin 'w0rp/ale'
Plugin 'rrrene/credo'
Plugin 'raimondi/delimitmate'
Plugin 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'yegappan/greplace'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'FooSoft/vim-argwrap'
Plugin 'easymotion/vim-easymotion'
Plugin 'elixir-editors/vim-elixir'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'jeetsukumaran/vim-indentwise'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'

Plugin 'morhetz/gruvbox'
Plugin 'mhartington/oceanic-next'

call vundle#end()
filetype plugin indent on

" Plugin Settings
"================================================================================

" ACK & Silversearcher
""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
let g:ackhighlight = 1
let g:ack_qhandler = "botright copen 30"
let g:ack_apply_qmappings = 1

" ALE
""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'

" Deoplete
""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

" Emmet
""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<C-E>'
let g:emmet_html5 = 0

" GitFugitive
""""""""""""""""""""""""""""""""""""""""
set diffopt+=vertical

" FZF
""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'up': '~40%' }

" GitGutter
""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" JSX
""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0

" Multiplecursors & Deoplete
""""""""""""""""""""""""""""""""""""""""
function! Multiple_cursors_before()
  let b:deoplete_disable_auto_complete = 1
endfunction

function! Multiple_cursors_after()
  let b:deoplete_disable_auto_complete = 0
endfunction

" Neosnippet
""""""""""""""""""""""""""""""""""""""""
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
let g:neosnippet#enable_snipmate_compatibility = 1

" NERDTree
""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1
let g:NERDSpaceDelims = 1
let g:NERDTreeWinSize = 35
let g:NERDTreeWinPos = "right"
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Jump to the main window.
autocmd VimEnter * wincmd p

" SuperTAB
""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"

" General
"================================================================================
" Sets how many lines of history VIM has to remember
set history=500

" Space mapleader for more commands
let mapleader=" "

" Set to auto read when a file is changed from the outside
set autoread

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show Commands
set showcmd

" Make help windows appear vertical split
autocmd FileType help wincmd L

" Set 7 lines to the cursor - when moving vertically using j/k
set scrolloff=15

" Highlight current line
set cursorline

" Show current line number and relative numbers
set number
set relativenumber

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

"Always show current position
set ruler

" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Ruler
" set colorcolumn=100

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
  autocmd GUIEnter * set vb t_vb=
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable

" Enable true colors support
if has("termguicolors")
  set termguicolors
endif

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

set background=dark

try
  colorscheme OceanicNext
catch
endtry

" Airline theme
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#ale#enabled = 1

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set new windows as current window
set splitbelow
set splitright

" Disable highlight when <leader><cr> is pressed
" map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>

map <Right> :bnext<cr>
map <Left> :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Switch between tabs
nnoremap <Up> :tabprevious<CR>
nnoremap <Down> :tabnext<CR>

" Pane management
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <C-B> :buffers<CR>:buffer<Space>

nnoremap <leader>bp :call BreakPointInsert()<CR>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when switching between buffers
" try
  " set switchbuf=useopen,usetab,newtab
  " set stal=2
" catch
" endtry

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

" Statusline
set statusline+=%#warningmsg#
set statusline+=%*

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Yanked text get put onto clipboard
set clipboard+=unnamedplus

" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk]
nmap ∆ mz:m+<cr>`z
nmap ˚ mz:m-2<cr>`z
vmap ∆ :m '>+<cr>`<my`>mzgv`yo`z
vmap ˚ :m '<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
  let save_cursor = getpos(".")
  let old_query = getreg('/')
  silent! %s/\s\+$//e
  call setpos('.', save_cursor)
  call setreg('/', old_query)
endfun

if has("autocmd")
  autocmd BufWritePre *.txt,*.js,*.py,*.wiki,*.sh,*.coffee :call CleanExtraSpaces()
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Spell checking
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" FzF
nmap <C-P> :Files<CR>
nmap <C-B> :Buffers<CR>
nmap <leader><C-T> :!{ctags}<CR>
nmap <C-T> :Tags<CR>
nmap <C-]> :Tags <C-R><C-W><CR>
nmap <C-Y> :BTags<CR>
let g:fzf_tags_command = 'ctags'

" Generate Tags on launch
" autocmd VimEnter * :!{ctags}

" Files command with preview window
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Silversearcher
nmap <leader><C-F> :Ack!<space>

" Greplace on buffer
nmap <leader><C-S> :Gqfopen<CR> <C-W>k :q<CR> <C-W>l <C-W>j <C-W>j
nmap <leader><C-R> :Greplace<CR>

" NERDTree
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

" Remove highlight on esc
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" ArgWrap
nnoremap <leader>a :ArgWrap<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction

" Don't close window, when deleting a buffer
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

function! CmdLine(str)
  exe "menu Foo.Bar :" . a:str
  emenu Foo.Bar
  unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
  let l:saved_reg = @"
  execute "normal! vgvy"

  let l:pattern = escape(@", "\\/.*'$^~[]")
  let l:pattern = substitute(l:pattern, "\n$", "", "")

  if a:direction == 'gv'
    call CmdLine("Ack '" . l:pattern . "' " )
  elseif a:direction == 'replace'
    call CmdLine("%s" . '/'. l:pattern . '/')
  endif

  let @/ = l:pattern
  let @" = l:saved_reg
endfunction

function! BreakPointInsert()
  let g:pry_map = {
        \ 'ruby' : "require 'pry'; binding.pry",
        \ 'javascript' : 'debugger;',
        \ 'javascript.jsx' : 'debugger;',
        \ 'elixir' : 'require IEx; IEx.pry',
        \ 'eelixir': '<% require IEx; IEx.pry %>'
        \}

  if has_key(g:pry_map, &filetype)
    let text = get(g:pry_map, &filetype)
    call feedkeys('O', 'i')
    call feedkeys(text)
    call feedkeys("\<Esc>")
  else
    echo 'No mapping defined for filetype: ' . &filetype
  endif
endfunction
