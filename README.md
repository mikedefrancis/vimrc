# CAVIM & FRIENDS

I use this directory in order to quickly set up my linux environment on other computers. Anyone is welcome to copy this configuration including my .bashrc.

* These tools assume you are using Ubuntu 16.04

* There are some useful tools and aliases in .bashrc

* You do not need my .bashrc to use cavim. You only need to use my .vimrc. You may need to add a line to your existing .bashrc.. my install script appends this line to the end of your .vimrc automatically.

* TODO: add an option to toggle code-completion options using commented-out plugins

![alt text](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSP_T4R2Mnc8ja4jZ5pIBk0jlk7enzbcN3VeAFO52-QA3UpABlx)

## CAVIM
* Named CA-VIM because Ctrl+A returns the user to normal mode. The Ctrl key is used a lot.

* Mappings for copy, paste, save, quit, etc. now match most IDEs so you dont have to relearn them.

* I broke some of the basic vim functionality in order to make these hotkeys work, but don't worry - all of the really cool things that set vim apart from other editors still work (really, does anyone use EX mode?)


* GOAL:
 
      The goal of CAVIM is to create a highly usable vim that:
      1) is easy to learn.
      2) implements the essential features of IDEs like eclipse/sublime.
      3) improves coding/editing speed beyond that of standard IDEs.
           
* CONTROL KEY REMAPPINGS FOR ALL MODES:

      Ctrl+a/a: goto normal/insert mode, accordingly
      Ctrl+q:   save and quit (one window/tab at a time)
      Ctrl+s:   save
      Ctrl+e:   edit (open) a file
      Ctrl+x:   cut
      Ctrl+c:   copy
      Ctrl+v:   paste
      Ctrl+d:   delete
      Ctrl+j:   backspace
      Ctrl+z:   undo
      Ctrl+r:   redo
      Ctrl+l:   toggle line numbers
      Ctrl+n:   new window
      Ctrl+b:   new tab
      Ctrl+f:   ctrlp fuzzy file find
      Ctrl+w:   insert newline
      Ctrl+t:   toggle mouse
      Ctrl+y:   new horozontal window
      Ctrl+u:   toggle insert paste mode
      Ctrl+i:   toggle syntastic
      Ctrl+h:   show command history
      Ctrl+g:   toggle nerdtree
      Ctrl+k:   paste register k
      Ctrl+p:   find in certain files (ACK/AG/REGEX)
      Ctrl+Left: go to window to the Left
      Ctrl+Right:go to window to the Right
      Ctrl+Up:   go to window to the Up
      Ctrl+Down: go to window to the Down
           
* LETTER KEY REMAPPINGS FOR NORMAL MODE:

      gg/q           start/stop recording macro g
      ff             search for text under cursor in file
      ww             show whitespace characters
      cc             show current working directory
      ls             show current working directory in nerdtree
      cd             change directory using :cd command
      bb             go back one directory and show in nerdtree
      jj             jump to ctag definition of text under cursor
      kk             copy line under cursor to register k
      kw             copy word under cursor to register k
      gt             goto top of file
      gb             goto bottom of file
      gs             goto start of line
      gl             goto start of line (exclude whitespace)
      ga             insert at the of current line
      cw             change word under cursor
      ci{'"{[(}      change inside quotes/braces/etc.
      b+{qwerty}     create qwerty bookmark 
      dd             cut line
      de             cut to end of current line
      dw             delete word under cursor
      hhhh           toggle hex editing mode (DANGEROUS FOR NON BIN FILES!)
      z+Left         go 10 chars to the left
      z+Right        go 10 chars to the right
      pp             open previous files
      oo             open file type(s) in current working directory in tabs
           
* SHIFT KEY REMAPPINGS FOR NORMAL MODE:

      Shift+z+z+z:   close all windows and tabs without saving
      Shift+x+x+x:   close all windows and tabs and save all
      Shift+j+j+j:   regenerate ctags for current working directory
      Shift+{qwerty} go to qwerty bookmark
      Shift+d        find in files using ACK/AG
      Shift+f        find and replace in current file
      Shift+i        edit this file ~/.vimrc
      Shift+v        enter visual line/block mode
      Shift+b        edit ~/.bashrc
      Shift+c        set current working directory to current file
      Shift+g        run macro g
      Shift+a        back
      Shift+s        forward
      Shift+h        toggle line highlight
      Shift+l        toggle background color (light/dark)
      shift+j        tjump to definitions for text under cursor (ctags)  
      Shift+n        go to previous search result in file
      Shift+m        show bookmarks {qwerty + other}
      Shift+o        set write permissions on current file using sudo
      Shift+Left     go to previous tab
      Shift+Right    go to next tap
      Shift+Up       go up 6 lines
      Shift+Down     go down 6 lines
      Shift+Tab      unindent (visual mode)
           
* OTHER KEY REMAPPINGS:

      Alt+Left    back
      Alt+Right   forward
      Tab         autocomplete text (insert mode)
      Tab         toggle syntastic (normal mode)
      Tab         indent (visual mode)
      Space       toggle center-scroll (normal mode)
      ;           Enter command mode (:<command)
      '           Run external command (:!<command>)
      Ctrl+o      Insert snippet (for/while loop/struct/etc.) (insert mode)
      ,           Leader
      ,c<Space>   Toggle comment/uncomment selected line(s)
           
* SOME USEFUL COMMANDS NOT MAPPED:

      :<number>  Goto line number
      :make      Run make and capture output
      :cn        Jump to file containing make error
      :cc        Show make error message
           
* PLUGINS:

      I am using Vundle to install my plugins
      Please look through this file to see which plugins have been added
      (they are all included in one block of text down there so it should be
      obvious)
      
* MISCELLANEOUS
    
      I constantly update this .vimrc...
      ...you may find that a hotkey is broken or has been remapped to something else
      ...you may also find new goodies
      , is the leader key
      f controls various easymotion things besides what I remapped
      c controls various commenting functions from nerdcommenter
      I clobbed a lot of regular hotkeys in order to make this usable for me
      If you hate what I did, feel free to change whatever you want
      If you have suggestions, let me know

* HELP
     
      :help                  - view general help
      :help <key-combo>      - see what default vim commands I clobbered for the key sequence specified
      :help nerdcommenter    - view commenting plugin help
      :help nerdtree         - view file searching help
      :help easymotion       - view navigation plugin help
      :help ctrlp            - view help for fuzzy file searching
      :help ack              - view help for ack multi-file search (not accurate if silversearcher-ag is installed which it is by my script)

* Gnome-Terminal Fun (vim and terminal are designed to be used together. do it.)
      
      Ctrl+Shift+t           - create a new terminal tab
      Ctrl+[PageUp/PageDown] - switch between terminal tabs
      Alt+[number]           - jump to terminal tab # [number]



* I believe that people should get credit for making the internet a better place. Many props to Sebastian Karlson from whom the vim stuff on this page has been copied and tweaked (https://github.com/sebbekarlsson)

## Installing CAVIM

* Save your existing .vimrc file. For safety, you may also wish to save your .bashrc file too.

* Run the following commands

      git clone https://github.com/mikedefrancis/cavim cavim
      cd cavim
      ./install_cavim
      source ~/.bashrc

* Make double-sure that you resourced your .bashrc file or some functionality will be lost.

* The install script only works with ubuntu

* If you encounter problems running the install script, please perform the following steps:
      
      git clone https://github.com/mikedefrancis/cavim cavim
      cd cavim
      sudo apt-get install vim silversearcher-ag exuberant-ctags   
      mkdir -p ~/.vim/bundle
      git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
      echo 'stty -ixon' >> ~/.bashrc
      source ~/.bashrc
      cp .vimrc ~/.vimrc
      vim -c ":PluginInstall" -c ":qa!" README.md
      

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


