# CTRL-VIM & FRIENDS

I use this directory in order to quickly set up my linux environment on other computers. Anyone is welcome to copy this configuration.

* These tools assume you are using Ubuntu 16.04

* There are some useful tools and aliases in .bashrc

* TODO: create an easy install script!
* TODO: add an option to toggle code-completion options using commented-out plugins


## CTRL-VIM
* I give you a simplified and expanded vim IDE defined by my .vimrc file. There are shortcuts that make vim a lot easier to use without having to enter many characters to do things like opening files, splitting tabs, etc.
* I use vim as my IDE, and i3 for development when possible. Very fast. This tutorial turns vim into a fully-functional IDE with fuzzy filename search, multi-file search (ack/ag functionality) from within vim, file-tree viewing with nerd-tree.

* TODO ADD KEY MAPPINGS
* for now please look at my .vimrc file to determine what hotkeys to use, or ask me xD

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
0
## copy my configuration to your home directory     
    
          sudo cp .bashrc ~/.bashrc    
          sudo cp .vimrc ~/.vimrc    
          sudo cp .cdb ~/.cdb    
          sudo cp .gdbinit ~/.gdbinit

* <RUN THIS FROM INSIDE OF VIM> Once installed, you can install the other plugins specified in the .vimrc file automagically using

          :PluginInstall

* FIX YOUR .bashrc file by adding this line (if you did not copy mine):

          stty -ixon


## silver searcher (ag)
* if you want to use a super fast search that is faster than grep by an order of magnitude, install the silver searcher (ag) using:

          sudo apt-get install silversearcher-ag

## OPTIONAL: install i3

          sudo apt-get install i3

* there are better ways to install and configure i3, but this works on ubuntu

* logout, select i3 as the desktop, and log back in. for a tutorial on using i3, see:

* https://fedoramagazine.org/getting-started-i3-window-manager/
