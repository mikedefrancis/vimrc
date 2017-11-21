# CTRL-VIM & FRIENDS

I use this directory in order to quickly set up my linux environment on other computers. Anyone is welcome to copy this configuration.

* These tools assume you are using Ubuntu 16.04

* There are some useful tools and aliases in .bashrc

* TODO: create an easy install script!


## CTRL-VIM
* I give you a simplified and expanded vim IDE defined by my .vimrc file. There are shortcuts that make vim a lot easier to use without having to enter many characters to do things like opening files, splitting tabs, etc.
* I use vim as my IDE, and i3 for development when possible. Very fast. This tutorial turns vim into a fully-functional IDE with fuzzy filename search, multi-file search (ack/ag functionality) from within vim, file-tree viewing with nerd-tree.


* Summary of key mapping available from both insert mode and command mode

    <Space>   - Display current working directory                                               
    <Shift-c> - Change the current working directory to the location of the open file
    <Ctrl-a>  - Toggle between insert mode and command mode
    <Ctrl-w>  - Alias for <ESC>       
	<Ctrl-b>  - Open the ': ' prompt directly

	<Ctrl-z>  - Undo
	<Ctrl-c>  - Copy (same as y. compatibility: only works from insert mode)
	<Ctrl-v>  - Paste (same as pi)
    <Ctrl-u>  - Duplicate Undo...                                                                                                
    <Ctrl-r>  - Redo
	<Ctrl-p>  - Enter Paste Mode (ready to paste content into file in vim. must already be in insert mode)
	
    <Ctrl-x>   - Close the active window                                                                                   
    <Ctrl-s>   - Save the file in the active window    
    <Ctrl-e>   - Open a new file by specifying the path relative to the current working directory
    <Ctrl-n>   - Create a new window to the right of the current window and jump to it                                
    <Ctrl-h>   - Create a new window below the current one and jump to it                         
    <Ctrl-l>   - Toggle line numbers

    <Ctrl-Up>    - Move up one window                                     
    <Ctrl-Left>  - Move left one window                                
    <Ctrl-Down>  - Move down one window                                
    <Ctrl-Right> - Move right one window


* Summary of plugin key mappings

    <Ctrl-f> - (CTRLP) Perform a fuzzy file search from current working directory                                                  
    <Ctrl-g> - (NT) Go to current file in nerdtree file browser
    <Ctrl-t> - (NT) Toggle nerdtree file browser                                             
    <Ctrl-y> - (NT) Toggle mouse clicking (for use with nerdtree file browser)
    <Ctrl-d> - (ACK) Perform a grep-like search from current working directory using ack or ag if it is installed                    


* Summary of key mapping available from command mode only

    <Shift-q through Shift-y> (e.g., Shift+QWERTY LETTER) - set 'starcraft-style' bookmark for current file
	  (ex: type <Shift+q> to bookmark line 511 in file main.c)
    <qq through yy> (e.g., qq / ww / ee / rr / tt / yy) - jump to 'starcraft-style' bookmark
	  (ex: type <qq> to open main.c and set cursor to line 511)
    <Alt-Left> - Go to previous location   

* I believe that people should get credit for making the internet a better place. Many props to Sebastian Karlson from whom the vim stuff on this page has been copied and tweaked (https://github.com/sebbekarlsson)

* In addition to whatever is on here. I recommend installing the following programs:

      sudo apt-get install meld
      sudo apt-get install htop
      sudo apt-get install filezilla
      sudo apt-get install git

## Notes regarding using this stuff

copy the .vimrc, .bashrc, and other files from this repo into your user directory. This will blow away whatever . file you already have there.. so make sure to make a backup if you have any custom configurations there already. In particular, you should back up your .bashrc file.. some applications add their paths to it on install, and you might need to recover back to your original if something breaks for some reason.

## install vim first to make sure you have the latest version

        sudo apt-get install vim
        
## install vim-searchindex
* This plugin is not set up to use vundle so download it as a first step to prevent the vundle install from breaking

          cd ~/.vim/bundle
          git clone https://github.com/google/vim-searchindex.git

## install vundle using:
* I use vundle in my .vimrc file. It is very useful. You need to install it "manually" first, in order for the other vim plugins I am using to be installable automagically.

          git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* see https://www.youtube.com/watch?v=zF9EcpYb1KE for details using vundle and vim

## copy my configuration to your home directory     
    
          sudo cp .bashrc ~/.bashrc    
          sudo cp .vimrc ~/.vimrc    
          sudo cp .cdb ~/.cdb    
          sudo cp .gdbinit ~/.gdbinit

* <RUN THIS FROM INSIDE OF VIM> Once installed, you can install the other plugins specified in the .vimrc file automagically using

          :PluginInstall

## silver searcher (ag)
* if you want to use a super fast search that is faster than grep by an order of magnitude, install the silver searcher (ag) using:

          sudo apt-get install silversearcher-ag

## OPTIONAL: install i3

          sudo apt-get install i3

* there are better ways to install and configure i3, but this works on ubuntu

* logout, select i3 as the desktop, and log back in. for a tutorial on using i3, see:

* https://fedoramagazine.org/getting-started-i3-window-manager/
