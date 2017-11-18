# linux_devtools
Useful superuser scripts

I use vim as my IDE, and i3 for development when possible. Very fast. 

copy the .vimrc, .bashrc, and other files from this repo into your user directory. This will blow away whatever . file you already have there.. so make sure to make a backup if you have any custom configurations there already. In particular, you should back up your .bashrc file.. some applications add their paths to it on install, and you might need to recover back to your original if something breaks for some reason.

see https://www.youtube.com/watch?v=zF9EcpYb1KE for details using vundle and vim

install vundle first using:
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


install the silver searcher (ag) using:
* Ubuntu >= 13.10 (Saucy) or Debian >= 8 (Jessie)

          apt-get install silversearcher-ag
