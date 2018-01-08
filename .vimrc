" ==============================
" ============ CAVIM ===========
"
" Copyright 2017, Mike DeFrancis. mike(AT)defrancis(dot)org
"
" @Warrantee
" There is no warrantee provided for this software, not even an implied
" warrantee regarding fitness for a particular use.
"
" @Description
" CAVIM is a modified version of VIM
" All of the modifications are contained within this .vimrc (except plugins)
" This has been tested within gnome-terminal on ubuntu 16.04 but may work on
" other systems. This version of vim uses Ctrl+a for switching to normal mode
" hence the name C-A-VIM. In order to make this possible, your bashrc must be
" modified to allow remapping of Ctrl-a. To do this, add the following line to 
" your .bashrc file and then resource it:
" 
" stty -ixon
"
" GOAL:
" The goal of CAVIM is to create a highly usable vim that:
" 1) is easy to learn.
" 2) implements the essential features of IDEs like eclipse/sublime.
" 3) improves coding/editing speed beyond that of standard IDEs.

" CONTROL KEY REMAPPINGS FOR ALL MODES:
"
"       Ctrl+a/a: goto normal/insert mode, accordingly
"       Ctrl+q:   save and quit (one window/tab at a time)
"       Ctrl+s:   save
"       Ctrl+e:   edit (open) a file
"       Ctrl+x:   cut
"       Ctrl+c:   copy
"       Ctrl+v:   paste
"       Ctrl+d:   delete
"       Ctrl+j:   backspace
"       Ctrl+z:   undo
"       Ctrl+r:   redo
"       Ctrl+l:   toggle line numbers
"       Ctrl+n:   new window
"       Ctrl+b:   new tab
"       Ctrl+f:   ctrlp fuzzy file find
"       Ctrl+w:   insert newline
"       Ctrl+t:   toggle mouse
"       Ctrl+y:   new horozontal window
"       Ctrl+u:   toggle insert paste mode
"       Ctrl+i:   toggle syntastic
"       Ctrl+h:   show command history
"       Ctrl+g:   toggle nerdtree
"       Ctrl+k:   paste register k
"       Ctrl+p:   find in certain files (ACK/AG/REGEX)
"       Ctrl+Left: go to window to the Left
"       Ctrl+Right:go to window to the Right
"       Ctrl+Up:   go to window to the Up
"       Ctrl+Down: go to window to the Down
"
" LETTER KEY REMAPPINGS FOR NORMAL MODE:
"
"       gg/q           start/stop recording macro g
"       ff             search for text under cursor in file
"       ww             show whitespace characters
"       cc             show current working directory
"       ls             show current working directory in nerdtree
"       cd             change directory using :cd command
"       bb             go back one directory and show in nerdtree
"       gt             goto top of file
"       gb             goto bottom of file
"       gs             goto start of line
"       gl             goto start of line (exclude whitespace)
"       ga             insert at the of current line
"       cw             change word under cursor
"       ci{'"{[(}      change inside quotes/braces/etc.
"       b+{qwerty}     create qwerty bookmark
"       dd             cut line
"       de             cut to end of current line
"       dw             delete word under cursor
"       hm             toggle hex editing mode (DANGEROUS FOR NON BIN FILES!)
"       z+Left         go 10 chars to the left
"       z+Right        go 10 chars to the right
"       pp             open previous files
"       oo             open file type(s) in current working directory in tabs
"       rn             rename file in buffer
"       mv             move file in buffer
"       tag            regenerate ctags for current working directory
"
" SHIFT KEY REMAPPINGS FOR NORMAL MODE:
"
"       Shift+z+z+z:   close all windows and tabs without saving
"       Shift+x+x+x:   close all windows and tabs and save all
"       Shift+{qwerty} go to qwerty bookmark
"       Shift+d        find in files using ACK/AG
"       Shift+f        find and replace in current file
"       Shift+u        edit notes file ~/.notes.txe
"       Shift+i        edit this file ~/.vimrc
"       Shift+v        enter visual line/block mode
"       Shift+b        edit ~/.bashrc
"       Shift+j        jump to ctag definition of text under cursor
"       Shift+c        set current working directory to current file
"       Shift+g        run macro g
"       Shift+a        back
"       Shift+s        forward
"       Shift+k        copy contents into k register
"       Shift+h        toggle line highlight
"       Shift+l        toggle background color (light/dark)
"       shift+j        tjump to definitions for text under cursor (ctags)
"       Shift+n        go to previous search result in file
"       Shift+m        show bookmarks {qwerty + other}
"       Shift+o        set write permissions on current file using sudo
"       Shift+Left     go to previous tab
"       Shift+Right    go to next tap
"       Shift+Up       go up 6 lines
"       Shift+Down     go down 6 lines
"       Shift+Tab      unindent (visual mode)
"
" OTHER KEY REMAPPINGS:
"
"       Alt+Left    back
"       Alt+Right   forward
"       Tab         autocomplete text (insert mode)
"       Tab         toggle syntastic (normal mode)
"       Tab         indent (visual mode)
"       Space       toggle center-scroll (normal mode)
"       ;           Enter command mode (:<command)
"       '           Run external command (:!<command>)
"       Ctrl+o      Insert snippet (for/while loop/struct/etc.) (insert mode)
"       ,           Leader
"       ,c<Space>   Toggle comment/uncomment selected line(s)
"
" SOME USEFUL COMMANDS NOT MAPPED:
"
"       :<number>  Goto line number
"       :make      Run make and capture output
"       :cn        Jump to file containing make error
"       :cc        Show make error message
"       :Delete    delete file in buffer
"       :SudoEdit  edit a file using sudo
"       :Find      use find and output results to quickfix window
"       :Chmod     change the permission of the current file
"
" PLUGINS:
"   I am using Vundle to install my plugins
"   Please look through this file to see which plugins have been added
"   (they are all included in one block of text down there so it should be
"   obvious)
"
"
" PLEASE NOT THAT:
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
"    THEREFORE (as name implies), I created a lot of ctrl+{key} shortcuts
"  - I am not responsible for any pain in your pinky caused by use of 
"    these ctrl+{key} shortcuts!
"  - Feel free to enable the extra plugins and try them out, add your own,
"    etc. Some plugins are really awesome like syntastic but very slow.
"    so I don't always use them. If someone thinks that I should add one to this
"    list, please send me a message. I appreciate input.


" ==== PLUGINS ====
set nocompatible
filetype off
set exrc

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" All plugins using vundle
Plugin 'VundleVim/Vundle.vim'

" useful tools for renaming files, etc.
" :Rename, :Mkdir, :Delete, :Wall, :SudoEdit, :SudoWrite, :Move, :Chmod,
" :Find, etc.
Plugin 'tpope/vim-eunuch'

" search index is pretty much required if you want to study large c files
Plugin 'google/vim-searchindex'
" having a built-in search inside of vim is also pretty much required if you
" want to be able to use it for large projects
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'itchyny/lightline.vim'
"Plugin 'vim-scripts/L9'
"Plugin 'tpope/vim-fugitive'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"
"SUPER AWESOME EVERYONE SHOULD USE NERDTREE
Plugin 'scrooloose/nerdtree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'airblade/vim-gitgutter'
" DANGERWILLROBINSON syntastic is slow and often shows 
" errors that are not really there in complex makefile systems
Plugin 'scrooloose/syntastic'
"Plugin 'christoomey/vim-conflicted'
"Plugin 'terryma/vim-multiple-cursors'
"Plugin 'mattn/emmet-vim'
"Plugin 'sjl/gundo.vim'

" SUPER AWESOME EVERYONE SHOULD USE EASYMOTION
Plugin 'easymotion/vim-easymotion'
"Plugin 'tpope/vim-surround'
"
" SUPER AWESOME EVERYONE SHOULD USE CTRLP
Plugin 'kien/ctrlp.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'SirVer/ultisnips'

" ==== PLUGIN THEMES ====
"Plugin 'altercation/vim-colors-solarized'
"Plugin 'vim-scripts/darktango.vim'
"Plugin 'jonathanfilip/vim-lucius'
Plugin 'morhetz/gruvbox'
" ==== END PLUGIN THEMES ====

" ======== SNIPMATE ==
"SnipMate Plugins (code snippet completion)
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" =================

"press tab to autocomplete anything you are typing.
"This one is awesome
Plugin 'ervandew/supertab'


" ==== PLUGIN SYNTAXES ====
"Plugin 'cakebaker/scss-syntax.vim'
"Plugin 'hdima/python-syntax'
"Plugin 'othree/yajs.vim'
"Plugin 'mitsuhiko/vim-jinja'
"Plugin 'evanmiller/nginx-vim-syntax'
" === END PLUGIN SYNTAXES ====

" STAGING LIST TO TRY LATER:
"better block comments than already in here?
"Plugin 'tomtom/tcomment_vim'
"
"shows git changes in the corresponding files!
"Plugin 'airblade/vim-gitgutter'
"
"python autocomplete:
"THIS IS COOL BUT THERE ARE SOME ISSUES WITH IT SOMETIMES
"Plugin 'Valloric/YouCompleteMe'


call vundle#end()
filetype plugin indent on

" PLUGIN CONFIGURATIONS...
colorscheme gruvbox

let g:gruvbox_contrast_dark ='hard'
let g:gruvbox_contrast_light ='hard'
let g:gruvbox_number_column_dark ='blue'

" ==== NERDTREE ====
let NERDTreeIgnore = ['\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*', '[a-zA-Z]*egg[a-zA-Z]*', '[a-zA-Z]*cache[a-zA-Z]*']
let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0

" UPDATE: I am in fact using syntastic again but only with RECOMMENDED
" settings https://github.com/vim-syntastic/syntastic 
" SYNTAX checking is not performed at file open. You need to hit tab!
" ==== Syntastic ====

" I am adding this hack so that I can use syntastic 99% of the time, and
" disable it when there only when it has a problem with something
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
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

" adding to navigate between windows even in insert mode
inoremap <silent> <C-Up> <ESC>:wincmd k<CR>
inoremap <silent> <C-Left> <ESC>:wincmd h<CR>
inoremap <silent> <C-Down> <ESC>:wincmd j<CR>
inoremap <silent> <C-Right> <ESC>:wincmd l<CR>

nnoremap <silent> <C-Up> <ESC>:wincmd k<CR>
nnoremap <silent> <C-Left> <ESC>:wincmd h<CR>
nnoremap <silent> <C-Down> <ESC>:wincmd j<CR>
nnoremap <silent> <C-Right> <ESC>:wincmd l<CR>


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


if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

cnoreabbrev Ack Ack!
cnoreabbrev ag Ack!

let hlstate=1
nnoremap <C-h> :if (hlstate%2 == 0) \| nohlsearch \| else \| set hlsearch \| endif \| let hlstate=hlstate+1<CR><ESC>:echo "toggle search highlight"<CR>

let g:ctrlp_map = '<c-f>'
map <C-g> <ESC>:NERDTreeToggle %<CR><ESC>:wincmd l<CR>    



nnoremap <C-i> :SyntasticToggleMode<CR>

nnoremap <C-p> <ESC>:Ack! <search> -G ".*(<filepat>)$" 
vnoremap <C-p> <ESC>:Ack! <search> -G ".*(<filepat>)$" 
cnoremap <C-p> <ESC>:Ack! <search> -G ".*(<filepat>)$" 
"inoremap <C-p> <ESC>:Ack! <search> -G ".*(<filepat>)$" 

nnoremap <S-d> <ESC>:Ack! 
vnoremap <S-d> <ESC>:Ack!


nnoremap <S-c> <ESC>:cd %:p:h<CR><ESC>:NERDTree .<CR><ESC>:wincmd l<CR><ESC>:pwd<CR>
nnoremap bb :cd ..<CR><ESC>:NERDTree .<CR><ESC>:wincmd l<CR>
noremap ls <ESC>:NERDTree .<CR><ESC>:wincmd l<CR>


"let g:UltiSnipsExpandTrigger="<C-i>"

imap <C-o> <Plug>snipMateNextOrTrigger
inoremap <Tab> <Plug>SuperTabForward



" ==== END PLUGINS ====




" ______________________________________________________________ "





" ==== BASIC ====

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

nnoremap <silent> <A-Up> 32<Up>
nnoremap <silent> <A-Down> 32<Down>
vnoremap <silent> <A-Up> 32<Up>
vnoremap <silent> <A-Down> 32<Down>
inoremap <silent> <A-Up> <ESC>32<Up>i
inoremap <silent> <A-Down> <ESC>32<Down>i

nnoremap <silent> <S-Up> 6<Up>
nnoremap <silent> <S-Down> 6<Down>
inoremap <silent> <S-Up> <ESC>6<Up>i
inoremap <silent> <S-Down> <ESC>6<Down>i

" In insert mode, left and right arrows move cursor very fast
" inoremap <A-Left> <ESC>6<Left>i
inoremap <S-Left> <ESC>10<Left>i
" inoremap <A-Right> <ESC>6<Right>i
inoremap <S-Right> <ESC>10<Right>i

nnoremap <silent> <A-PageUp> 4<PageUp>
nnoremap <silent> <A-PageDown> 4<PageDown>
vnoremap <silent> <A-PageUp> 4<PageUp>
vnoremap <silent> <A-PageDown> 4<PageDown>
inoremap <silent> <A-PageUp> 4<PageUp>
inoremap <silent> <A-PageDown> 4<PageDown>

nnoremap z<Left> 10<Left>
nnoremap z<Right> 10<Right>

nnoremap de d$

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



" CUSTOM KEY MAPPINGS
" mode switches (hotkeys only available when the correct switch used):
" nnoremap - normal mode
" inoremap - insert mode
" vnoremap - visual and select mode
" xnoremap - visual mode
" snoremap - select mode
" cnoremap - command line mode
" onoremap - operator pending mode


nnoremap <S-m> <ESC>:marks<CR>


nnoremap <C-l> <ESC>:call ToggleLines()<CR>                                               
inoremap <C-l> <ESC>:call ToggleLines()<CR>
vnoremap <C-l> <ESC>:call ToggleLines()<CR>
cnoremap <C-l> <ESC>:call ToggleLines()<CR>

nnoremap <C-t> <ESC>:call ToggleMouse()<CR>
vnoremap <C-t> <ESC>:call ToggleMouse()<CR>

"inoremap <S-Tab> <EVS><<i
"nnoremap <Tab>   >>
vnoremap <Tab>   >><ESC>gv
"nnoremap <S-Tab> <<
vnoremap <S-Tab> <<<ESC>gv

" adding easy use of an additional copy and paste buffer
" so that I can cut and paste things around without blowing away 
" all of that good stuff that I found somewhere to insert
" [kappa] buffer
" nnoremap kk <Home>"ky$
" vnoremap kk <Home>"ky$

" removing this one so that k is faster for movement
" nnoremap kw "kyiw
" vnoremap kw "kyw

nnoremap ck <Home>"ky$<ESC>:echo "copied line to k register"<CR> 
vnoremap ck "ky<ESC>:echo "copied selection to k register"<CR>

inoremap <C-k> <ESC>"kpi<Right><ESC>:echo "pasted contents from k register"<CR>
vnoremap <C-k> "kp<Right><ESC>:echo "pasted contents from k register"<CR>
cnoremap <C-k> "kp<Right><ESC>:echo "pasted contents from k register"<CR>
nnoremap <C-k> "kp<Right><ESC>:echo "pasted contents from k register"<CR>


" making it slightly easier to go to the start and end of real text in a line
" (ignore whitespace)
nnoremap ge g_
nnoremap gl _
nnoremap gs 0
nnoremap gf - 
nnoremap ga g_i<Right>

vnoremap ge g_
vnoremap gs _
vnoremap gf - 

nnoremap i :echo "use a for insert and not i!"<CR>

nnoremap <C-d> <Delete>
inoremap <C-d> <Delete>
vnoremap <C-d> <Delete>
cnoremap <C-d> <Delete>

nnoremap <C-q> <ESC>:x!<CR>
inoremap <C-q> <ESC>:x!<CR>
vnoremap <C-q> <ESC>:x!<CR>
cnoremap <C-q> <ESC>:x!<CR>

nnoremap <C-s> <ESC>:w<CR>
inoremap <C-s> <ESC>:w<CR>l
vnoremap <C-s> <ESC>:w<CR>
cnoremap <C-s> <ESC>:w<CR>

nnoremap <S-f> <ESC>:%s/<find>/<replace>/gc
vnoremap <S-f> <ESC>:%s/<find>/<replace>/gc

" This is a really fun hack. If you don't have write permissions hit <ESC>shift-x
nnoremap <S-o> <ESC>:w !sudo tee %<CR>

nnoremap <C-e> <ESC>:edit 
inoremap <C-e> <ESC>:edit
vnoremap <C-e> <ESC>:edit
cnoremap <C-e> <ESC>:edit

nnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
"inoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
vnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
cnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>

inoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
"nnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
vnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>
cnoremap <C-y> <ESC>:split<CR><ESC>:wincmd j<CR>

inoremap <C-z> <ESC>:undo<CR>
nnoremap <C-z> <ESC>:undo<CR>
vnoremap <C-z> <ESC>:undo<CR>
cnoremap <C-z> <ESC>:undo<CR>

nnoremap <C-r> <ESC>:redo<CR>
inoremap <C-r> <ESC>:redo<CR>
vnoremap <C-r> <ESC>:redo<CR>
cnoremap <C-r> <ESC>:redo<CR>


inoremap <C-a> <ESC>l
nnoremap <C-a> <ESC><ESC>
vnoremap <C-a> <ESC>l
cnoremap <C-a> <C-c><ESC><ESC>

"using control +z, x, c, v, r for undo, cut, copy, paste, redo
"like all other programs
"note that for copy paste compatibility with other editors is broken
"because vim uses yank instead of copy
"also note that you need to be in visual mode to block copy
vnoremap <C-c> y+
nnoremap <C-c> <Home>y$+
inoremap <C-c> <ESC><Home>y$i+

set pastetoggle=<C-u>
inoremap <C-v> <ESC>pi<Right>

nnoremap <C-v> <ESC>p<Right>
vnoremap <C-v> <ESC>pv

vnoremap <C-x> d+
nnoremap <C-x> <Home>d$+
" weird issue with this one...
"inoremap <C-x> <ESC><Home>d$i

nnoremap <C-w> i<CR><ESC>

" prev and next location cycling
"inoremap <A-Left> <C-o>
nnoremap <A-Left> <C-o>
vnoremap <A-Left> <C-o>

"inoremap <A-Right> <Tab>
nnoremap <A-Right> <Tab>
vnoremap <A-Right> <Tab>

nnoremap <S-a> <C-o>
nnoremap <S-s> <Tab>

let scrollstate=1
nnoremap <Space> :if (scrollstate%2 == 0) \| set scrolloff=0 \| else \| set scrolloff=999 \| endif \| let scrollstate=scrollstate+1<CR><ESC>:echo "toggle center scroll"<CR>

nnoremap cc <ESC>:pwd<CR>
nnoremap cd <ESC>:cd 


" @MPD
" 'starcraft' style bookmarks
nnoremap bq <ESC>mQ<ESC>:echo "mapped bookmark Q"<CR>
nnoremap <S-q> 'Q

nnoremap bw <ESC>mW<ESC>:echo "mapped bookmark W"<CR>
nnoremap <S-w> 'W

nnoremap be <ESC>mE<ESC>:echo "mapped bookmark E"<CR>
nnoremap <S-e> 'E

 noremap br <ESC>mR<ESC>:echo "mapped bookmark R"<CR>
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
nnoremap <C-b> <ESC>:tabedit<CR>  
vnoremap <C-b> <ESC>:tabedit<CR>  
cnoremap <C-b> <ESC>:tabedit<CR>  
inoremap <C-b> <ESC>:tabedit<CR>  

vnoremap <S-Left> <ESC>gT
nnoremap <S-Left> <ESC>gT
vnoremap <S-Right> <ESC>gt
nnoremap <S-Right> <ESC>gt

" inoremap <C-h> <ESC>q:
" vnoremap <C-h> <ESC>q:
" cnoremap <C-h> <ESC>q:
" nnoremap <C-h> <ESC>q:

nnoremap a i


" == REMAPPING HJKL KEYS FOR FASTER MOVEMENT
" nnoremap j 10j
" vnoremap j 10j
" nnoremap h 10h
" nnoremap k 10k
" nnoremap l 10l
" vnoremap h 10h
" vnoremap k 10k
" vnoremap l 10l

vnoremap <S-j> 10j
nnoremap <S-j> 10j
vnoremap <S-h> 10h
nnoremap <S-h> 10h

vnoremap <S-k> 10k
nnoremap <S-k> 10k
vnoremap <S-l> 10l
nnoremap <S-l> 10l

"nnoremap <ESC> <ESC><Right>

nnoremap <S-p> <ESC>:call ToggleBackground()<CR>

function! ToggleBackground()
	if &background == "dark"
		set background=light
	else
		set background=dark
	endif
endfunction

" kill all
nnoremap <S-z><S-z> <ESC>:qa!<CR>
nnoremap <S-x><S-x> <ESC>:xa!<CR>

" recording fun
nnoremap <S-g> @g
nnoremap gg qg

" EXECUTION
nnoremap ' <ESC>:! 

" FUN WITH CTAGS!!!
set tags=./tags,tags;

nnoremap gj <ESC><C-]> 
nnoremap tag <ESC>:!ctags -R --exclude=.git .
" nnoremap <C-j> <ESC><C-]>

" SEARCH for word under cursor
nnoremap ff g*
vnoremap ?? *

nnoremap #d i/****************************************/

nnoremap yw yiw
nnoremap yl yy

"nnoremap cw yiw
"vnoremap cw yiw

"nnoremap cl yy
"vnoremap cl yy

"toggle whitespace chars with ww
nnoremap ww <ESC>:set list!<CR>

"Toggle Hexmode Fun

nnoremap hm <ESC>:Hexmode<CR>

" ex command for toggling hex mode - define mapping if desired
command! -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function! ToggleHex()
  " hex mode should be considered a read-only operation
  " save values for modified and read-only for restoration later,
  " and clear the read-only flag for now
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    " save old options
    let b:oldft=&ft
    let b:oldbin=&bin
    " set new options
    setlocal binary " make sure it overrides any textwidth, etc.
    silent :e " this will reload the file without trickeries 
              "(DOS line endings will be shown entirely )
    let &ft="xxd"
    " set status
    let b:editHex=1
    " switch to hex editor
    %!xxd
  else
    " restore old options
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    " set status
    let b:editHex=0
    " return to normal editing
    %!xxd -r
  endif
  " restore values for modified and read only state
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction

" vim -b : edit binary using xxd-format!
augroup Binary
  au!
  au BufReadPre  *.bin let &bin=1
  au BufReadPost *.bin if &bin | %!xxd
  au BufReadPost *.bin set ft=xxd | endif
  au BufWritePre *.bin if &bin | %!xxd -r
  au BufWritePre *.bin endif
  au BufWritePost *.bin if &bin | %!xxd
  au BufWritePost *.bin set nomod | endif
  "elf files
  au BufReadPre  *.elf let &bin=1
  au BufReadPost *.elf if &bin | %!xxd
  au BufReadPost *.elf set ft=xxd | endif
  au BufWritePre *.elf if &bin | %!xxd -r
  au BufWritePre *.elf endif
  au BufWritePost *.elf if &bin | %!xxd
  au BufWritePost *.elf set nomod | endif
augroup END

" Note that the following gg and G are remapped later in this, but work for go
" top and go bottom listed below.
nnoremap gt gg
nnoremap gb G

vnoremap gt gg
vnoremap gb G


" nnoremap gt <ESC>:0<CR>
" nnoremap gb <ESC>:99999999<CR>


" OPEN PREVIOUS FILES
nnoremap pp <ESC>:browse oldfiles!<CR>


com! -complete=file -nargs=* Edit silent! exec "!vim --servername " . v:servername . " --remote-tab-silent <args>"

nnoremap oo <ESC>:Edit 

" Change cursors on INSERT mode

"function! ChangeToInsertCursor()

if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' | 
    \   silent execute '!echo -ne "\e[3 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

"endfunction

nnoremap <C-j> <Backspace>
inoremap <C-j> <Backspace>

nnoremap cw ciw

nnoremap vim <ESC>:edit ~/.vimrc<CR>
nnoremap bash <ESC>:edit ~/.bashrc<CR>
nnoremap zsh <ESC>:edit ~/.zshrc<CR>
nnoremap notes <ESC>:edit ~/.notes.txt<CR>Gi
nnoremap <S-b> <ESC>:tabedit 

nnoremap rn <ESC>:Rename 
nnoremap mv <ESC>:Move 

" Adding this line to allow manpage viewing
runtime ftplugin/man.vim

set secure

