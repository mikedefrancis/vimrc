" ================================
" ============ GUNGNIR ===========
"
" Copyright 2017, Mike DeFrancis. mike(AT)defrancis(dot)org
"
" @Warrantee
" There is no warrantee provided for this software, not even an implied
" warrantee regarding fitness for a particular use. I am not responsible
" for anything bad that happens when you use this .vimrc or any of the
" corresponding scripts from the containing repository. FOR INSTANCE:
" I DISABLED SWAP FILES. THEY ARE NOT NECESSARY IF YOU REMEMBER TO SAVE OFTEN.
" I AM NOT RESPONSIBLE FOR YOUR LOST DATA!
"
" @Description
" GUNGNIR is a heavily edited vim configuration.
" Sometimes, Stock vim will do.
" Sometimes, you need the spear of odin.
" All of the modifications are contained within this .vimrc (except plugins)
" This has been tested within gnome-terminal on ubuntu 16.04 but may work on
" other systems. This version of vim uses Ctrl+a for switching to normal mode
" and a to switch to insert mode. In order to make this possible, your bashrc must be
" modified to allow remapping of Ctrl-a. To do this, add the following line to 
" your .bashrc file and then resource it.
"
" WARNING: You MUST add the following line to your .vimrc:
" stty -ixon
"
" GOAL:
" GUNGNIR is my personal vim configuration. You are welcome to try it out for yourself.
"
" NOTE:
"       The KEY REMAPPINGS listed BELOW may be OUT OF DATE (I am a bit lazy)
"       LOOK AT THE SOURCE IN THIS FILE TO BE SURE.
"
" CONTROL KEY REMAPPINGS FOR ALL MODES:
"
"       Ctrl+a: goto normal/insert mode, accordingly
"       Ctrl+q:   save and quit (one window/tab at a time)
"       Ctrl+s:   save
"       Ctrl+e:   edit (open) a file
"       Ctrl+x:   cut
"       Ctrl+c:   copy
"       Ctrl+v:   paste
"       Ctrl+d:   delete
"       Ctrl+z:   undo
"       Ctrl+r:   redo
"       Ctrl+o:   toggle line numbers
"       Ctrl+w:   new window
"       Ctrl+y:   new horozontal window
"       Ctrl+b:   new tab
"       Ctrl+f:   find in open file (same as /)
"       Ctrl+w:   insert newline
"       Ctrl+t:   toggle mouse
"       Ctrl+u:   toggle insert paste mode
"       Ctrl+g:   toggle nerdtree
"       Ctrl+p:   paste register p
"       Ctrl+{h,j,k,l}: go left, down, up, right by 100 lines at a time
"       Ctrl+Left: go to window to the Left (requires easymotion plugin)
"       Ctrl+Right:go to window to the Right(requires easymotion plugin)
"       Ctrl+Up:   go to window to the Up   (requires easymotion plugin)
"       Ctrl+Down: go to window to the Down (requires easymotion plugin)
"
" LETTER KEY REMAPPINGS FOR NORMAL MODE:

"       a              insert mode
"       ff             find word under cursor in open file
"       gg/q           start/stop recording macro g
"       i              ctrlp find in files
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
"       pp             open previous files
"       cp             copy current line into p register
"
" SHIFT KEY REMAPPINGS FOR NORMAL MODE:
"
"       Shift+z+z:   close all windows and tabs without saving
"       Shift+x+x:   close all windows and tabs and save all
"       Shift+{qwerty} go to qwerty bookmark
"       Shift+p        toggle colors (dark/light)
"       Shift+d        find in files using ACK/AG (REQUIRES PLUGIN)
"       Shift+f        find and replace in current file
"       Shift+u        edit notes file ~/.notes.txe
"       Shift+i        toggle search highlight
"       Shift+v        enter visual line/block mode
"       Shift+b        tabedit
"       Shift+c        set current working directory to current file (REQUIRES NERDTREE PLUGIN)
"       Shift+g        run macro g
"       Shift+a        back to prev location
"       Shift+s        forward to next location
"       Shift+h        toggle line highlight
"       Shift+l        toggle background color (light/dark)
"       shift+j        tjump to definitions for text under cursor (ctags)
"       Shift+n        go to previous search result in file
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
"   THERE IS A SEPARATE VERSION OF THIS FILE FOR THE PLUGINS BECAUSE IT CONTAINS PLUGIN REMAPS
"   Please look through this file to see which plugins have been added
"   (they are all included in one block of text down there so it should be
"   obvious)
"
"
" PLEASE NOT THAT:
"  - I love vim, but I am no vim guru. I needed to make it usable fast.
"  - I am removing some regular vim functionality
"    (usability is more important than features I hardly use)
"  - This vim may be used with or without plugins. The plugin version has remappings for the plugins.
"  - vim is designed to use <ESC>: (command) or <ESC>(command) for much of 
"    its regular functionality. I find this clunky, because" A) it requires memorizing a lot of key combinations
"     B) it requires a lot of typing 
"    THEREFORE, I created a lot of ctrl+{key} shortcuts
"  - I am not responsible for any pain in your pinky caused by use of 
"    these ctrl+{key} shortcuts!
"  - Feel free to enable the extra plugins and try them out, add your own,
"    etc. Some plugins are really awesome like syntastic but very slow.
"    so I don't always use them. If someone thinks that I should add one to this
"    list, please send me a message. I appreciate input.


* theoreticaly this work on other linuxes besides ubuntu but this has not been tested

* see https://www.youtube.com/watch?v=zF9EcpYb1KE for details using vundle and vim

## OPTIONAL: install i3

          sudo apt-get install i3

* there are better ways to install and configure i3, but this works on ubuntu

* logout, select i3 as the desktop, and log back in. for a tutorial on using i3, see:

* https://fedoramagazine.org/getting-started-i3-window-manager/


## REFERENCE

* Vim Cheatsheet For Programmers (note that I broke some of these hotkeys and may consider restoring their functionality later)

![alt text](http://michael.peopleofhonoronly.com/vim/vim_cheat_sheet_for_programmers_screen.png)


