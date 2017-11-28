# CTRL-VIM & FRIENDS

I use this directory in order to quickly set up my linux environment on other computers. Anyone is welcome to copy this configuration including my .bashrc.

* These tools assume you are using Ubuntu 16.04

* There are some useful tools and aliases in .bashrc

* You do not need my .bashrc to use ctrl-vim. You only need to use my .vimrc. You may need to add a line to your existing .bashrc.. my install script appends this line to the end of your .vimrc automatically.

* TODO: add an option to toggle code-completion options using commented-out plugins


## CTRL-VIM
* I give you a simplified and expanded vim IDE defined by my .vimrc file. 
* There are shortcuts that make vim a lot easier to use without having to enter many characters to do things like opening files, splitting tabs, etc.
* I broke some of the basic vim functionality in order to make these hotkeys work

![alt text](https://raw.githubusercontent.com/mikedefrancis/ctrl-vim/ctrl-vim.png)

* Navigation

      Space                    - toggle center-scroll mode
      Ctrl+a (or ESCAPE)       - enter normal mode
      Shift+v                  - enter visual mode
      ;                        - enter command mode
      a                        - enter insert mode
      Alt+Left/Right           - next/previous location
      Alt+Up/Down              - go up or down 10 lines at a time
      Ctrl+Left/Right/Up/Down  - move between windows
      Shift+Left/Right         - move between tab pages
      Shift+Up/Down            - equal to page up/page down
      Ctrl+t                   - toggle mouse 
      Ctrl+l                   - toggle line numbers

* Windows and Tabs

      Ctrl+b+enter             - create a new tab
      Ctrl+n                   - create a vertically split window
      Ctrl+h                   - create a horozontally split window
      b+{QWERTY} (normal mode) - bookmark the file in the current window to one of {QWERTY}
      Shift+{QWERTY} (nm)      - jump to {QWERTY} bookmark
      Shift+s (normal mode)    - switch background color

* Files and Directories

      Ctrl+s                   - save changes to current file
      Ctrl+q                   - attempt to save changes to file in current window and quit
      Ctrl+e                   - open a file in the current window
      Ctrl+b                   - open a file in a new tab
      Ctrl+g                   - open nerdtree showing current file (no cursor switch)
      ls (normal mode)         - open nerdtree showing current working directory
      cd (normal mode)         - change current working directory to that specified
      cc (normal mode)         - show current working directory
      Shift+c (normal mode)    - change current working directory to file in current window   
      Shift+x (normal mode)    - change write permissions of current file
      Shift+b (normal mode)    - refresh buffers


* Basic Editing

      Ctrl+w                   - write a newline from normal mode
      Ctrl+c                   - yank
      Ctrl+v                   - paste what is yanked
      Ctrl+z / Ctrl+u          - undo
      Ctrl+r                   - redo
      ,c+Space (normal mode)   - toggle block comments
  
* Search Tools

      ...Note that even though multi-file search looks like it is using Ack!, it really uses ag
      /                        - find text in file in current window
      Shift+d (normal mode)    - find text in all files under current working directory (cwd)
      Ctrl+d                   - find text in files in cwd where filename matches pattern 
      Ctrl+f                   - fuzzy filename search (Ctrl+p)
      Shift+f (normal mode)    - find and replace text in file in current window
      Shift+h                  - toggle search highlighting
    

* Miscellaneous
    
      I constantly update this .vimrc...
      ...you may find that a hotkey is broken or has been remapped to something else
      ...you may also find new goodies
      , is the leader key
      f controls various easymotion things besides what I remapped
      c controls various commenting functions from nerdcommenter
      I clobbed a lot of regular hotkeys in order to make this usable for me
      If you hate what I did, feel free to change whatever you want
      If you have suggestions, let me know

* Help
     
      :help                  - view general help
      :help <key-combo>      - see what default vim commands I clobbered for the key sequence specified
      :help nerdcommenter    - view commenting plugin help
      :help nerdtree         - view file searching help
      :help easymotion       - view navigation plugin help
      :help ctrlp            - view help for fuzzy file searching
      :help ack              - view help for ack multi-file search (not accurate if silversearcher-ag is installed which it is by my script)

* I believe that people should get credit for making the internet a better place. Many props to Sebastian Karlson from whom the vim stuff on this page has been copied and tweaked (https://github.com/sebbekarlsson)

## Installing CTRL-VIM

* Run the following commands

      git clone https://github.com/mikedefrancis/ctrl-vim ctrl-vim
      ./install_ctrl_vim
      source ~/.bashrc

* The install script only works with ubuntu

* If you encounter problems running the install script, please perform the following steps:
      
      git clone https://github.com/mikedefrancis/ctrl-vim ctrl-vim
      sudo apt-get install vim silversearcher-ag
      mkdir -p ~/.vim/bundle
      git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
      echo 'stty -ixon' >> ~/.bashrc
      p .vimrc ~/.vimrc
      vim -c ":PluginInstall" -c ":qa!" README.md
      source ~/.bashrc
      

* theoreticaly this work on other linuxes besides ubuntu but this has not been tested

* see https://www.youtube.com/watch?v=zF9EcpYb1KE for details using vundle and vim

## OPTIONAL: install i3

          sudo apt-get install i3

* there are better ways to install and configure i3, but this works on ubuntu

* logout, select i3 as the desktop, and log back in. for a tutorial on using i3, see:

* https://fedoramagazine.org/getting-started-i3-window-manager/
