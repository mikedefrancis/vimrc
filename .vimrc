" This file based off of a .vimrc inside of https://github.com/sebbekarlsson
" There is no warrantee for this software (implied or otherwise), including
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
Bundle 'vim-searchindex'
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
Plugin 'vim-scripts/darktango.vim'
Plugin 'jonathanfilip/vim-lucius'
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
set guifont=Monospace\ 10
set fillchars+=vert:\$
syntax enable
set background=dark
set ruler
set hidden
set number
set laststatus=2
set smartindent
set st=4 sw=4 et
set shiftwidth=4
set tabstop=4
let &colorcolumn="80"
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar
:set lines=999 columns=999

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

map <C-t> :NERDTreeToggle<CR>                                                   
map <C-g> :NERDTreeFind<CR>

nnoremap <C-l> <ESC>:call ToggleLines()<CR>                                               
inoremap <C-l> <ESC>:call ToggleLines()<CR>
vnoremap <C-l> <ESC>:call ToggleLines()<CR>

nnoremap <C-y> <ESC>:call ToggleMouse()<CR>
inoremap <C-y> <ESC>:call ToggleMouse()<CR>
vnoremap <C-y> <ESC>:call ToggleMouse()<CR>

nnoremap <C-d> <ESC>:Ack! 
inoremap <C-d> <ESC>:Ack!
vnoremap <C-d> <ESC>:Ack!
cnoremap <C-d> <ESC>:ACK!

nnoremap <C-x> <ESC>:q!<CR>
inoremap <C-x> <ESC>:q!<CR>
vnoremap <C-x> <ESC>:q!<CR>
cnoremap <C-x> <ESC>:q!<CR>

nnoremap <C-s> <ESC>:w<CR>
inoremap <C-s> <ESC>:w<CR>
vnoremap <C-s> <ESC>:w<CR>
cnoremap <C-s> <ESC>:w<CR>

nnoremap <C-b> <ESC>:
inoremap <C-b> <ESC>:
vnoremap <C-b> <ESC>:
cnoremap <C-b> <ESC>:

nnoremap <C-e> <ESC>:edit 
inoremap <C-e> <ESC>:edit
vnoremap <C-e> <ESC>:edit
cnoremap <C-e> <ESC>:edit

nnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
inoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
vnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>
cnoremap <C-n> <ESC>:vsplit<CR><ESC>:wincmd l<CR>

inoremap <C-h> <ESC>:split<CR><ESC>:wincmd j<CR>
nnoremap <C-h> <ESC>:split<CR><ESC>:wincmd j<CR>
vnoremap <C-h> <ESC>:split<CR><ESC>:wincmd j<CR>
cnoremap <C-h> <ESC>:split<CR><ESC>:wincmd j<CR>

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

inoremap <C-a> <ESC>l
nnoremap <C-a> <ESC>i
vnoremap <C-a> <ESC>i
cnoremap <C-a> <ESC>i

inoremap <C-c> <ESC>:yank<CR><ESC>i
vnoremap <C-c> <ESC>:yank<CR><ESC>i

set pastetoggle=<C-p>
inoremap <C-v> <ESC>pi
nnoremap <C-v> <ESC>pi
vnoremap <C-v> <ESC>pi

inoremap <C-w> <ESC>l
nnoremap <C-w> <ESC>l
vnoremap <C-w> <ESC>l
cnoremap <C-w> <ESC>l

" prev and next location cycling
inoremap <A-Left> <C-o>
nnoremap <A-Left> <C-o>
vnoremap <A-Left> <C-o>

inoremap <A-Right> <Tab>
nnoremap <A-Right> <Tab>
vnoremap <A-Right> <Tab>

noremap <Space> <ESC>:pwd<CR>
noremap <S-c> <ESC>:cd %:p:h<CR><ESC>:pwd<CR>

" @MPD
" 'starcraft' style hotkeys
" I KNOW THIS CLOBBERS SOME REGULAR FUNCTIONALIY AND I DONT CARE
nnoremap <S-q> <ESC>mQ<ESC>:echo "mapped bookmark B"<CR>
nnoremap qq 'Q
vnoremap qq 'Q

nnoremap <S-w> <ESC>mW<ESC>:echo "mapped bookmark W"<CR>
nnoremap ww 'W
vnoremap ww 'W

nnoremap <S-e> <ESC>mE<ESC>:echo "mapped bookmark E"<CR>
nnoremap ee 'E
vnoremap ee 'E

nnoremap <S-r> <ESC>mR<ESC>:echo "mapped bookmark R"<CR>
nnoremap rr 'R
vnoremap rr 'R

nnoremap <S-t> <ESC>mT<ESC>:echo "mapped bookmark T"<CR>
nnoremap tt 'T
vnoremap tt 'T

nnoremap <S-y> <ESC>mY<ESC>:echo "mapped bookmark Y"<CR>
nnoremap yy 'Y
vnoremap yy 'Y
"==== END @MPD EXTRA STUFF ==== 

set secure
