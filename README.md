# ferhat's dot files

## tmux
terminal m
https://github.com/tmux/tmux   
cheatsheat: https://gist.github.com/andreyvit/2921703  
tmux + vim: https://www.bugsnag.com/blog/tmux-and-vim  
prerequisites:`sudo apt install libevent-dev ncurses-* build-essential pkg-config`   
install: https://github.com/tmux/tmux/wiki/Installing   
````bash
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make && sudo make install
````  

## xclip
command line interface to X selections (clipboard)  
`sudo apt-get install xclip -y`   

## ripgrep (rg)
ripgrep recursively searches directories for a regex pattern  
https://github.com/BurntSushi/ripgrep#installation   

## htop
htop is an interactive text-mode process viewer for Unix systems. It aims to be a better 'top'.  
https://github.com/hishamhm/htop  
`sudo snap install htop`  

## most
browse or page through a text file   
`sudo apt install most`

## highlight
Universal source code to formatted text converter  
`sudo apt-get install -y highlight`  

## exa
A modern replacement for ls.  
https://the.exa.website/#installation  
`sudo apt install rustc`  
`sudo apt install libgit2-dev`   
`git clone https://github.com/­ogham/exa.git`  
`sudo make install`  

## fzf 
A command-line fuzzy finder   
https://github.com/junegunn/fzf   
https://wiki.archlinux.org/index.php/Fzf  
`git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`
`~/.fzf/install`  
update: `cd ~/.fzf && git pull && ./install`  

## bat
a cat(1) clone with syntax highlighting and Git integration.   
https://github.com/sharkdp/bat
https://github.com/sharkdp/bat/releases   
`sudo dpkg -i bat_0.13.0_amd64.deb # adapt version number and architecture`   

## fd
https://github.com/sharkdp/fd  
https://github.com/sharkdp/fd/releases  
`sudo dpkg -i fd_7.5.0_amd64.deb  # adapt version number and architecture`    

## fz
Cli shell plugin, the missing fuzzy tab completion feature of z jump around command.   
https://github.com/changyuheng/fz   

## z
z - jump around   
https://github.com/rupa/z   

## forgit
A utility tool powered by fzf for using git interactively.  
https://github.com/wfxr/forgit  
tracking .forgit.bash   

## ag
The Silver Searcher: A code-searching tool similar to ack, but faster.    
https://github.com/ggreer/the_silver_searcher   
`sudo apt-get install silversearcher-ag`  

## fast-p
Quickly find and open a pdf among a collection of thousands of unsorted pdfs through fzf (fuzzy finder)  
https://github.com/bellecp/fast-p  
`sudo apt-get install poppler-utils`  
download and follow installation steps: https://github.com/bellecp/fast-p/releases  
clear cache: `fast-p --clear-cache'`

## googler
Google from the terminal  
https://github.com/jarun/googler  
`snap install googler`  

## Readline
GNU's Emacs and vi editing modes for command lines.   
https://wiki.archlinux.org/index.php/Readline

* [Readline VI Editing Mode Cheat Sheet](https://catonmat.net/ftp/bash-vi-editing-mode-cheat-sheet.pdf)
* [Readline Emacs Editing Mode Cheat Sheet](https://catonmat.net/ftp/readline-emacs-editing-mode-cheat-sheet.pdf)

## Ranger
A VIM-inspired filemanager for the console.  
https://github.com/ranger/ranger  
https://wiki.archlinux.org/index.php/ranger  
https://github.com/alexanderjeurissen/ranger_devicons  
`sudo pip3 install ueberzug`  

## Fonts
https://github.com/adobe-fonts/source-code-pro/  
https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/SourceCodePro  

## Doom-Emacs
https://github.com/hlissner/doom-emacs  

## CTags
Exuberant Ctags
http://ctags.sourceforge.net/
`sudo apt-get install ctags`  
In `~/.vimrc`, add `set tags=tags`  
Go to your project directory, and run `ctags -R`  
When editing, put your cursor over a variable, method or class and hit `Ctrl-]` to jump to its definition.  
https://courses.cs.washington.edu/courses/cse451/10au/tutorials/tutorial_ctags.html

## python-pygments
Pygments is a generic syntax highlighter written in Python   
https://github.com/pygments/pygments  
`sudo apt-get install python-pygments`  

## Vim
Building Vim from source: https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source  
`sudo apt remove my-vim-build`
example configuration: 
  https://github.com/axiaoxin/vim-settings  
  https://dougblack.io/words/a-good-vimrc.html  
  Better Defaults: https://github.com/liuchengxu/vim-better-default/wiki/a-brief-introduction-to-key-bindings  
  

## NeoVim
https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package  
Building Vim from source: https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source   
Setting up Python for Neovim: https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim   
`pip3 install --user neovim`
`pip3 install neovim-remote`
 
## SpaceVim
https://spacevim.org/  
  Documentation: https://spacevim.org/documentation  
  Available Layers: https://spacevim.org/layers/   
  Available Options: https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim.vim  
  Space: https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/mapping/space.vim   
  Leader: https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/mapping/leader.vim   
  z: https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/mapping/z.vim  
  g: https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/mapping/g.vim   
  leaderF: https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/layers/leaderf.vim   
  fzf: https://github.com/SpaceVim/SpaceVim/blob/master/autoload/SpaceVim/layers/fzf.vim   

## vifm ??
https://github.com/vifm/vifm  

## lazygit ?? 
https://github.com/jesseduffield/lazygit/blob/master/README.md  

## github cli
GitHub’s official command line tool   
https://cli.github.com  
https://github.com/cli/cli/  
Download the .deb file from the releases page  
`sudo apt install ./gh_*_linux_amd64.deb` install the downloaded file  

## sdcv !!
StarDict Command-Line Version (SDCV) dictionary program  
https://github.com/Dushistov/sdcv   
https://vimawesome.com/plugin/vim-stardict  
`sudo apt install sdcv`   

