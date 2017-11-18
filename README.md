# linux_devtools

I use this directory in order to quickly set up my linux environment on other computers. Anyone is welcome to copy this configuration.

* These tools assume you are using Ubuntu 16.04

* There are some useful tools and aliases in .bashrc


## MIKEYVIM
* I give you a simplified and expanded vim IDE defined by my .vimrc file. There are shortcuts that make vim a lot easier to use without having to enter many characters to do things like opening files, splitting tabs, etc.
* I use vim as my IDE, and i3 for development when possible. Very fast. This tutorial turns vim into a fully-functional IDE with fuzzy filename search, multi-file search (ack/ag functionality) from within vim, file-tree viewing with nerd-tree.

        much functionality added by default including syntax coloring, line numbers, etc.
        use <ctrl+w> to save the file in the current window
        use <ctrl+x> to close the current window 
        use <ctrl+e> to open a new file in the current window
        use <ctrl+h> to do a horozontal split (open new window to the right)
        use <ctrl+v> to do a vertical split (open new window to the bottom)
        use <ctrl+t> to toggle nerdtree
        use <ctrl+g> to jump show current file in nerdtree
        use <ctrl+f> to search for files
        use <ctrl+r> to find text in files with Ack (or ag if ag is installed)
        use <ctrl+y> to toggle mouse clicks (useful for nerdtree/filetree things)
        use <ctrl+l> to toggle showing line nums
        use <alt+ARROWS> to switch windows

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

## install i3

          sudo apt-get install i3

* logout, select i3 as the desktop, and log back in. for a tutorial on using i3, see:

* https://fedoramagazine.org/getting-started-i3-window-manager/
