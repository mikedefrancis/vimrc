
" fitness for a particular use.
" @Author Mike DeFrancis. mike (AT) defrancis (DOT) org.
set nocompatible              " be iMproved, required
filetype off                  " required
set exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ====  CONTROL VIM  ====
" @MPD
" The goal of CONTROL VIM is to create an easymode vim / easy vim that is easy to learn.
" PLEASE NOT THAT
"  - I love vim, but I am no vim guru. I needed to make it usable fast.
"  - dont care that I am removing some regular vim functionality
"    usability is more important than features I hardly use
"  - have some plugins in here and a lot of them are commented out
"    speed of vim is more important than resource heavy features
"    exception is nerdtree and cntrlp because they are so useful 
"    that it is worth the speed trade-off!
"  - vim is designed to use <ESC>: (command) or <ESC>(command) for much of 
"    its regular functionality. I find this clunky, because
"     A) it requires memorizing a lot of key combinations
"     B) it requires a lot of typing 
"    THEREFORE (as name implies), I created a lot of sorta-emacs-style ctrl+{key} shortcuts
"  - I am not responsible for any pain in your pinky caused by use of 
"    these ctrl+{key} shortcuts!
"  - Feel free to enable the extra plugins and try them out, add your own,
"    etc. Some plugins are really awesome like syntastic but very slow.
"    so I don't use them, but if someone thinks that I should add one to this
"    list, please send me a message. I appreciate input.
"
" ==== PLUGINS ====
" search index is pretty much required if you want to study large c files
Plugin 'google/vim-searchindex'
" having a built-in search inside of vim is also pretty much required if you
" want to be able to use it for large projects
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'

" Commenting out some of SK's plugins for speed reasons
Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-scripts/L9'
"Plugin 'tpope/vim-fugitive'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'airblade/vim-gitgutter'
"Plugin 'scrooloose/syntastic'
"Plugin 'christoomey/vim-conflicted'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'mattn/emmet-vim'
"Plugin 'sjl/gundo.vim'
Plugin 'easymotion/vim-easymotion'
"Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'SirVer/ultisnips'

" ==== PLUGIN THEMES ====
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'vim-scripts/darktango.vim'
"Plugin 'jonathanfilip/vim-lucius'
Plugin 'morhetz/gruvbox'
" ==== END PLUGIN THEMES ====

" ==== PLUGIN SYNTAXES ====
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'hdima/python-syntax'
"Plugin 'othree/yajs.vim'
"Plugin 'mitsuhiko/vim-jinja'
"Plugin 'evanmiller/nginx-vim-syntax'
" === END PLUGIN SYNTAXES ====

" ==== END PLUGINS ====

call vundle#end()
filetype plugin indent on

" ==== BASIC ====
colorscheme gruvbox
"colorscheme solarized
syntax enable
set background=dark

set guifont=Monospace\ 10
set fillchars+=vert:\$
set ruler
set hidden
set number
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
"let &colorcolumn="80"
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar

" I AM COMMENTING OUT THIS LINE BECAUSE I WANT USER TO DECIDE SIZE OF VIM WINDOW
":set lines=999 columns=999
" more hacks
" DANGER WILL ROBINSON! I do not like the backup files vim creates. It is a clunky system and causes problems.
" I am disabling the backup files here. Do not break your files. Save them using git or something frequently!
set history=1000
set undolevels=1000
set title
set nobackup
" this is an awesome one. makes all '/' searches non-case sensitive unless the search contains an upper case letter
set ignorecase smartcase 
set incsearch
set autoindent smartindent
" note that the swapfile is still used here in case your terminal crashes.
set clipboard=unnamedplus

let g:gruvbox_contrast_dark ='hard'
let g:gruvbox_contrast_light ='hard'
let g:gruvbox_number_column_dark ='blue'

" ==== NERDTREE ====
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0

" @MPD I am not using syntastic anymore.
" It is very, very slow, and doesn't always work
" for my use cases. I think it is better with javascript and other high level
" stuff. 
" ==== Syntastic ====
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_mri_args = "--config=$HOME/.jshintrc"
"let g:syntastic_python_checkers = [ 'pylint', 'flake8', 'pep8', 'pyflakes', 'python']
"let g:syntastic_yaml_checkers = ['jsyaml']
"let g:syntastic_html_tidy_exec = 'tidy5'

" ==== Snips ====
"let g:UltiSnipsExpandTrigger="<A-ENTER>"
"let g:UltiSnipsJumpForwardTrigger="<A-ENTER>"
"let g:UltiSnipsJumpBackwardTrigger="<A-BACKSPACE>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"

" ==== Easymotion ====
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1
nmap f <Plug>(easymotion-s)

nmap <silent> <C-Up> :wincmd k<CR>
nmap <silent> <C-Down> :wincmd j<CR>
nmap <silent> <C-Left> :wincmd h<CR>
nmap <silent> <C-Right> :wincmd l<CR>

" ==== MIKE (@MPD) EXTRA STUFF ====
" adding to navigate between windows even in insert mode
inoremap <silent> <C-Up> <ESC>:wincmd k<CR>
inoremap <silent> <C-Left> <ESC>:wincmd h<CR>
inoremap <silent> <C-Down> <ESC>:wincmd j<CR>
inoremap <silent> <C-Right> <ESC>:wincmd l<CR>

nnoremap <silent> <C-Up> <ESC>:wincmd k<CR>
nnoremap <silent> <C-Left> <ESC>:wincmd h<CR>
nnoremap <silent> <C-Down> <ESC>:wincmd j<CR>
nnoremap <silent> <C-Right> <ESC>:wincmd l<CR>

map <silent> <A-Up> 10k
map <silent> <A-Down> 10j

noremap <silent> <A-PageUp> 4<PageUp>
noremap <silent> <A-PageDown> 4<PageDown>


function! ToggleMouse()
    if &mouse == 'a'
        set mouse=
    else
        set mouse=a
    endif
endfunc

function! ToggleLines()
    set invnumber
endfunc

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
cnoreabbrev ag Ack!

"NERDCOMMENTER
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" CUSTOM KEY MAPPINGS
" mode switches (hotkeys only available when the correct switch used):
" nnoremap - normal mode
" inoremap - insert mode
" vnoremap - visual and select mode
" xnoremap - visual mode
" snoremap - select mode
" cnoremap - command line mode
" onoremap - operator pending mode

let hlstate=1
nnoremap <S-h> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR><ESC>:echo "toggle search highlight"<CR>

let g:ctrlp_map = '<c-f>'

nnoremap <S-b> <ESC>:bufdo e<CR>:echo "Buffers Rereshed"<CR>
map <C-g> <ESC>:NERDTreeToggle %<CR><ESC>:wincmd l<CR>

nnoremap <C-l> <ESC>:call ToggleLines()<CR>                                               
inoremap <C-l> <ESC>:call ToggleLines()<CR>
vnoremap <C-l> <ESC>:call ToggleLines()<CR>
cnoremap <C-l> <ESC>:call ToggleLines()<CR>

nnoremap <C-t> <ESC>:call ToggleMouse()<CR>
vnoremap <C-t> <ESC>:call ToggleMouse()<CR>

inoremap <S-Tab> <ESC><<i
nnoremap <Tab>   >>
vnoremap <Tab>   >><ESC>
nnoremap <S-Tab> <<
vnoremap <S-Tab> <<<ESC>
  
nnoremap <C-d> <ESC>:Ack! <search> -G ".*(<filepat>)$" 
vnoremap <C-d> <ESC>:Ack! <search> -G ".*(<filepat>)$" 
cnoremap <C-d> <ESC>:Ack! <search> -G ".*(<filepat>)$" 
inoremap <C-d> <ESC>:Ack! <search> -G ".*(<filepat>)$" 

nnoremap <S-d> <ESC>:Ack! 
vnoremap <S-d> <ESC>:Ack!

nnoremap <C-q> <ESC>:x!<CR>
inoremap <C-q> <ESC>:x!<CR>
vnoremap <C-q> <ESC>:x!<CR>
cnoremap <C-q> <ESC>:x!<CR>

nnoremap <C-s> <ESC>:w<CR>
inoremap <C-s> <ESC>:w<CR>
vnoremap <C-s> <ESC>:w<CR>
cnoremap <C-s> <ESC>:w<CR>

nnoremap <S-f> <ESC>:%s/<find>/<replace>/g
vnoremap <S-f> <ESC>:%s/<find>/<replace>/g

" This is a really fun hack. If you don't have write permissions hit <ESC>shift-x
nnoremap <S-x> <ESC>:w !sudo tee %<CR>

nnoremap <C-e> <ESC>:edit 
inoremap <C-e> <ESC>:edit
vnoremap <C-e> <ESC>:edit
cnoremap <C-e> <ESC>:edit

nnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
inoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
vnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
cnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>

inoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
nnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
vnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
cnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>

cnoremap <C-u> <ESC>:undo<CR>
vnoremap <C-u> <ESC>:undo<CR>
nnoremap <C-u> <ESC>:undo<CR>
inoremap <C-u> <ESC>:undo<CR>

inoremap <C-z> <ESC>:undo<CR>
nnoremap <C-z> <ESC>:undo<CR>
vnoremap <C-z> <ESC>:undo<CR>
cnoremap <C-z> <ESC>:undo<CR>

nnoremap <C-r> <ESC>:redo<CR>
inoremap <C-r> <ESC>:redo<CR>
vnoremap <C-r> <ESC>:redo<CR>
cnoremap <C-r> <ESC>:redo<CR>

inoremap <C-a> <ESC>
nnoremap <C-a> <ESC>
vnoremap <C-a> <ESC>
cnoremap <C-a> <ESC>

"using control +z, x, c, v, r for undo, cut, copy, paste, redo
"like all other programs
"note that for copy paste compatibility with other editors is broken
"because vim uses yank instead of copy
"also note that you need to be in visual mode to block copy
vnoremap <C-c> y
nnoremap <C-c> yy
inoremap <C-c> <ESC>yyi

set pastetoggle=<C-p>
inoremap <C-v> <ESC>pi

nnoremap <C-v> <ESC><Up>p<Down>
vnoremap <C-v> <ESC>pv

vnoremap <C-x> d
nnoremap <C-x> dd
inoremap <C-x> <ESC>ddi

nnoremap <C-w> i<CR><ESC>

" prev and next location cycling
inoremap <A-Left> <C-o>
nnoremap <A-Left> <C-o>
vnoremap <A-Left> <C-o>

inoremap <A-Right> <Tab>
nnoremap <A-Right> <Tab>
vnoremap <A-Right> <Tab>

let scrollstate=1
nnoremap <Space> :if (scrollstate%2 == 0) \| set scrolloff=0 \| else \| set scrolloff=999 \| endif \| let scrollstate=scrollstate+1<CR><ESC>:echo "toggle center scroll"<CR>


nnoremap cc <ESC>:pwd<CR>
nnoremap <S-c> <ESC>:cd %:p:h<CR><ESC>:NERDTree .<CR><ESC>:wincmd l<CR><ESC>:pwd<CR>

nnoremap cd <ESC>:cd 

nnoremap bb :cd ..<CR><ESC>:NERDTree .<CR><ESC>:wincmd l<CR>

noremap ls <ESC>:NERDTree .<CR><ESC>:wincmd l<CR>

" @MPD
" 'starcraft' style bookmarks
nnoremap bq <ESC>mQ<ESC>:echo "mapped bookmark B"<CR>
nnoremap <S-q> 'Q

nnoremap bw <ESC>mW<ESC>:echo "mapped bookmark W"<CR>
nnoremap <S-w> 'W

nnoremap be <ESC>mE<ESC>:echo "mapped bookmark E"<CR>
nnoremap <S-e> 'E

nnoremap br <ESC>mR<ESC>:echo "mapped bookmark R"<CR>
nnoremap <S-r> 'R

nnoremap bt <ESC>mT<ESC>:echo "mapped bookmark T"<CR>
nnoremap <S-t> 'T

nnoremap by <ESC>mY<ESC>:echo "mapped bookmark Y"<CR>
nnoremap <S-y> 'Y
"==== END @MPD EXTRA STUFF ==== 

" some more hacks
nnoremap ; :
let mapleader=","

let g:ackhighlight = 1
let g:ackpreview = 1

" FUN WITH TABS
nnoremap <C-b> <ESC>:tabedit  
vnoremap <C-b> <ESC>:tabedit  
cnoremap <C-b> <ESC>:tabedit  
inoremap <C-b> <ESC>:tabedit  

vnoremap <S-Left> <ESC>gT
nnoremap <S-Left> <ESC>gT
vnoremap <S-Right> <ESC>gt
nnoremap <S-Right> <ESC>gt

inoremap <C-h> <ESC>q:
vnoremap <C-h> <ESC>q:
cnoremap <C-h> <ESC>q:
nnoremap <C-h> <ESC>q:

nnoremap a i

nnoremap <S-s> <ESC>:call ToggleBackground()<CR>

function! ToggleBackground()
	if &background == "dark"
		set background=light
	else
		set background=dark
	endif
endfunction

" kill all
nnoremap <S-z><S-z><S-z> <ESC>:qa!<CR>
nnoremap <S-s><S-s><S-s> <ESC>:xa!<CR>


" EXECUTION
nnoremap . <ESC>:! 


" FUN WITH CTAGS!!!
set tags=./tags,tags;

nnoremap <S-j> <ESC>:tjump 
nnoremap <C-j><C-j><C-j> <ESC>:!ctags -R --exclude=.git .<CR>
nnoremap jj <ESC><C-]>


set secure

