# Programs Installed

This is the list of most important programs i have installed on my arch.
This list is intended as a reminder for me.

## I3

I use i3 as my window manager

* dmenu
* conky - Used for status informations in i3bar
* i3lock
* imagemagick - Used for i3lock script for blur efect
* polkit - Allow unprivileged users to run power management commands, needed by
  i3exit script

## Terminal

* rxvt-unicode
  - urxvt-perls - perl extentions for urxvt
* zsh
  - zsh-completions
* ranger
* tmux 
* git
* tar, unrar, unzip
* lm-sensors - CPU temperature, used in conky
* youtube-dl
* transmission-cli
* udisks2 - For mounting
* htop

## Firefox 

Add-ons:

* vimperator
* adblock plus
* pocket

Flashplugin 

## VIM

Plugins used:

* Syntax
  - [tmux.vim](https://github.com/Keithbsmiley/tmux.vim)
  - [i3-vim-syntax](https://github.com/PotatoesMaster/i3-vim-syntax)

* Git
  - [vim-fugitive](https://github.com/tpope/vim-fugitive)
  - [vim-signify](https://github.com/mhinz/vim-signify)
  - [vim-git](https://github.com/tpope/vim-git)
* Search
  - [vim-indexed-search](https://github.com/henrik/vim-indexed-search)

* C++
  - [a.vim](https://github.com/vim-scripts/a.vim)
  - [YouComleteMe](https://github.com/Valloric/YouComleteMe)
    - Install clang from repos
    - Install YCM with: ./install.sh --clang-completer --system-libclang
    - Laptop may overheat running install.sh, in that case run command with cpulimit -l 30
    
* General
  - [matchit.zip](https://github.com/vim-scripts/matchit.zip)
  - [delimitMate](https://github.com/Raimondi/delimitMate)
  - [Gundo](https://github.com/vim-scripts/Gundo)
  - [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
  - [vim-surround](https://github.com/tpope/vim-surround)
  - [vim-unimpaired](https://github.com/tpope/vim-unimpaired)
  - [vim-repeat](https://github.com/tpope/vim-repeat)
  - [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides)
  - [ultisnips](https://github.com/SirVer/ultisnips)
  - [vim-exchange](https://github.com/tommcdo/vim-exchange)
  - [file-line](https://github.com/bogado/file-line)
  - [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
  - [unite.vim](https://github.com/Shougo/unite.vim)
  - [supertab](https://github.com/ervandew/supertab)

File [vimother](vimother.md) contains plugins and settings that are
interesting, but not currentky used.

## Media

* mplayer
* mpd
* ncmpcpp
* feh
* zathura
  - zathura-pdf-mupdf - Pdf support(poppler is alternative)

## Other

* acpi 
* alsa-utils
* ntfs-3g 
* numlockx - Enable numlock, launched at i3 startup 
* parcellite - Clipboard manager, launched at i3 startup 
* scrot - Screenshot, binded to Print
* Xorg - X related stuff
  - xorg-server 
  - xorg-server-utils 
  - xorg-xinit
  - xf86-input-synaptics - Touchpad
  - xf86-video-intel - Driver
  - xf86-video-vesa - Fall back driver 
  - mesa 
* Fonts
  - adobe-source-code-pro-fonts - Currently used
  - ttf-dejavu 
  - ttf-inconsolata 


## AUR

* cower
* submarine - cli subtitle downloader
