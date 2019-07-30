" VUNDLE
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

" PLUGINS
"================================================================================

let mapleader=" "

" ACK & Silversearcher
""""""""""""""""""""""""""""""""""""""""
let g:ackprg = 'ag --vimgrep --nogroup --nocolor --column'
let g:ackhighlight = 1
let g:ack_qhandler = "botright copen 30"
let g:ack_apply_qmappings = 1
nmap <leader><C-F> :Ack!<space>

" ALE
""""""""""""""""""""""""""""""""""""""""
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'

" ArgWrap
nnoremap <leader>a :ArgWrap<CR>

" Deoplete
""""""""""""""""""""""""""""""""""""""""
let g:deoplete#enable_at_startup = 1

" Emmet
""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_leader_key='<C-E>'
let g:emmet_html5 = 0

" FZF
""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = { 'up': '~40%' }
nmap <C-P> :Files<CR>
nmap <C-B> :Buffers<CR>
nmap <leader><C-T> :!{ctags}<CR>
nmap <C-T> :Tags<CR>
nmap <C-]> :Tags <C-R><C-W><CR>
nmap <C-Y> :BTags<CR>
let g:fzf_tags_command = 'ctags'
command! -bang -nargs=? -complete=dir Files
      \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" GitFugitive
""""""""""""""""""""""""""""""""""""""""
set diffopt+=vertical

" GitGutter
""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

" Greplace on buffer
nmap <leader><C-S> :Gqfopen<CR> <C-W>k :q<CR> <C-W>l <C-W>j <C-W>j
nmap <leader><C-R> :Greplace<CR>

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
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

" NERDTree
""""""""""""""""""""""""""""""""""""""""
let b:surround_indent = 0

" SuperTAB
""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType = "<c-n>"

" GENERAL
"================================================================================

set autoindent                 " Auto indent
set autoread                   " Set to auto read when a file is changed from the outside
set backspace=eol,start,indent " Configure backspace so it acts
set cmdheight=2                " Height of the command bar
set clipboard+=unnamedplus     " Yanked text get put onto clipboard
set cursorline                 " Highlight current line
set encoding=utf8              " Set utf8 as standard encoding and en_US as the standard language
set expandtab                  " Use spaces instead of tabs
set ffs=unix,dos,mac           " Use Unix as the standard file type
set hid                        " A buffer becomes hidden when it is abandoned
set history=500                " Sets how many lines of history VIM has to remember
set hlsearch                   " Highlight search results
set ignorecase                 " Ignore case when searching
set incsearch                  " Makes search act like search in modern browsers
set laststatus=2               " Always show the status line
set lazyredraw                 " Don't redraw while executing macros (good performance config)
set linebreak
set magic                      " For regular expressions turn magic on
set mat=2                      " How many tenths of a second to blink when matching brackets
set nobackup
set noswapfile
set nowritebackup
set number                     " Show current line number
" set relativenumber             " Use relative numbers
set ruler                      " Always show current position
set scrolloff=15               " Set 15 lines to the cursor - when moving vertically using j/k
set shiftwidth=2
set showcmd                    " Show Commands
set showmatch                  " Show matching brackets when text indicator is over them
set smartcase                  " When searching try to be smart about cases
set smartindent                " Smart indent
set smarttab                   " Be smart when using tabs ;)
set splitbelow                 " New windows as current window                                    "
set splitright
set tabstop=2
set textwidth=500              " Set linebreak for 500 chars
set whichwrap+=<,>,h,l         " as it should act
set wildmenu                   " Turn on the WiLd menu
set wrap                       " Wrap lines

" => INTERFACE
"================================================================================

syntax enable " Enable syntax highlighting

" Enable true colors support
if has("termguicolors")
  set termguicolors
endif

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Set extra options when running in GUI mode
if has("gui_running")
  set guioptions-=T
  set guioptions-=e
  set t_Co=256
  set guitablabel=%M\ %t
endif

set background=dark

try
  colorscheme OceanicNext
catch
endtry

" Airline
""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline_theme='oceanicnext'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#ale#enabled = 1

" Status Line
""""""""""""""""""""""""""""""""""""""""
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
set statusline+=%#warningmsg#
set statusline+=%*

" HasPaste
""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
  if &paste
    return 'PASTE MODE  '
  endif
  return ''
endfunction

" KEY BINDINGS
"================================================================================

" Turn off highlight on escape
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[

" Panes
""""""""""""""""""""""""""""""""""""""""
" Move between panes
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Pane management
nnoremap <leader>s :split<CR>
nnoremap <leader>v :vsplit<CR>

" Buffers
""""""""""""""""""""""""""""""""""""""""
" Move between buffers
map <Right> :bnext<cr>
map <Left> :bprevious<cr>

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" BufcloseCloseIt
""""""""""""""""""""
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

" Close all the buffers
map <leader>ba :bufdo bd<cr>

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>

" Tabs
""""""""""""""""""""""""""""""""""""""""
" Tab management
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Switch between tabs
nnoremap <Up> :tabprevious<CR>
nnoremap <Down> :tabnext<CR>

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path, useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Other
""""""""""""""""""""""""""""""""""""""""
" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

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

" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Insert a break point above
""""""""""""""""""""
nnoremap <leader>bp :call BreakPointInsert()<CR>

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

" VisualSelection
""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection, Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

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

function! CmdLine(str)
  exe "menu Foo.Bar :" . a:str
  emenu Foo.Bar
  unmenu Foo
endfunction

" MISC
"================================================================================

" Make help windows appear vertical split
autocmd FileType help wincmd L

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
  set wildignore+=.git\*,.hg\*,.svn\*
else
  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Properly disable sound on errors on MacVim
if has("gui_macvim")
  autocmd GUIEnter * set vb t_vb=
endif

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

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
