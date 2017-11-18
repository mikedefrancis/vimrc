# linux_devtools
I use this directory in order to quickly set up my linux environment on other computers. Anyone is welcome to copy this configuration.

* There are some useful tools and aliases in .bashrc

* I use vim as my IDE, and i3 for development when possible. Very fast. 

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
