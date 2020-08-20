# ferhat's dot files

## prerequisites
```bash
sudo apt install curl
sudo apt install perl
sudo apt install m4

sudo apt install wget
sudo apt install xclip
sudo apt install silversearcher-ag
sudo apt install highlight

sudo apt install ctags
sudo apt install global

sudo apt install build-essential
sudo apt install autoconf
sudo apt install automake
sudo apt install cmdtest 
sudo apt install pkg-config
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

sudo snap install valgrind --classic
sudo snap install cmake --classic

sudo apt install libevent-dev 
sudo apt install libzip-dev
sudo apt install libcurl4-openssl-dev
sudo apt install libncursesw5-dev

sudo apt install python2 
sudo apt install python3
sudo apt install software-properties-common 
sudo apt install python-pygments
sudo apt install npm 

sudo apt install xcape

# root cern qt5
sudo apt install qt5-default
sudo apt install mesa-common-dev
sudo apt install qtwebengine5-dev
sudo apt install qtwebengine5-dev-tools (?)
sudo apt install qtwebengine5-dev-dbgsym (?)
```

## GnuPG
https://gnupg.org/download/index.html   
````
./configure
make
sudo make install
````
````
libgpg-error-1.38
libassuan-2.5.3
libksba-1.4.0
npth-1.6
libgcrypt-1.8.6
gnupg-2.2.21
gpgme-1.14.0
````

## Vim (watching) (my-vim-build)
Building Vim from source: https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source  
````
sudo apt remove my-vim-focal-build

./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp=yes \
            --enable-python3interp=yes \
            --with-python3-config-dir=$(python3-config --configdir) \
            --enable-perlinterp=yes \
            --enable-luainterp=yes \
            --enable-gui=gtk3 \
            --enable-cscope \
            --prefix=/usr/local

sudo checkinstall # my-vim-focal-build
```` 

## NeoVim (watching)
````
# https://github.com/neovim/neovim/wiki/Building-Neovim#third-party-dependencies
mkdir .deps
cd .deps
cmake ../third-party
make

mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make

sudo make install
````
https://github.com/neovim/neovim/wiki/Installing-Neovim#appimage-universal-linux-package  
Building Vim from source: https://github.com/neovim/neovim/wiki/Installing-Neovim#install-from-source   
Setting up Python for Neovim: https://github.com/deoplete-plugins/deoplete-jedi/wiki/Setting-up-Python-for-Neovim   
````
pip2 install --user neovim
pip3 install --user neovim  
pip3 install neovim-remote  
sudo gem install neovim
sudo apt install cpanminus
sudo cpanm Neovim::Ext
````

## tmux (watching)
terminal multiplexer
https://github.com/tmux/tmux   
cheatsheat: https://gist.github.com/andreyvit/2921703  
tmux + vim: https://www.bugsnag.com/blog/tmux-and-vim  
prerequisites:`sudo apt install libevent-dev libncurses-dev build-essential pkg-config`   
install: https://github.com/tmux/tmux/wiki/Installing   
````bash
git clone https://github.com/tmux/tmux.git
cd tmux
sh autogen.sh
./configure
make && sudo make install
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm       
````  

## vifm (watching) (my-vifm-build)
https://github.com/vifm/vifm   
https://wiki.vifm.info/index.php/Obtaining_Vifm  
```
sudo apt install libncursesw5-dev
autoreconf -f -i
./configure --sysconfdir=/etc
make
sudo checkinstall # my-vifm-focal-build
```
https://github.com/vifm/vifm-colors  
```
rm -rf ~/.config/vifm/colors
git clone https://github.com/vifm/vifm-colors ~/.config/vifm/colors
```

## gitmux (watching)
Git in your tmux status bar  
https://github.com/arl/gitmux  
Its binary is added to .local/bin folder.  

## xclip
command line interface to X selections (clipboard)  
`sudo apt install xclip`   

## ripgrep (rg) (watching)
ripgrep recursively searches directories for a regex pattern  
https://github.com/BurntSushi/ripgrep#installation   

## ag (watching)
The Silver Searcher: A code-searching tool similar to ack, but faster.    
https://github.com/ggreer/the_silver_searcher   
`sudo apt install silversearcher-ag`  

## htop
htop is an interactive text-mode process viewer for Unix systems. It aims to be a better 'top'.  
https://github.com/hishamhm/htop  
`sudo snap install htop`  

## most
browse or page through a text file   
`sudo apt install most`

## exa (watching)
A modern replacement for ls.  
https://the.exa.website/#installation  
`sudo apt install rustc`  
`sudo apt install libgit2-dev`   
`git clone https://github.com/­ogham/exa.git`  
`sudo make install`  

## fzf (watching)
A command-line fuzzy finder   
https://github.com/junegunn/fzf   
https://wiki.archlinux.org/index.php/Fzf  
`git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`
`~/.fzf/install`  
update: `cd ~/.fzf && git pull && ./install`  

## devicon-lookup (watching)
https://github.com/coreyja/devicon-lookup  
`cargo install devicon-lookup`  

## fd (watching)
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

## Ranger (-)
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

## highlight
Universal source code to formatted text converter  
`sudo apt-get install -y highlight`  

## bat (watching)
a cat(1) clone with syntax highlighting and Git integration.   
https://github.com/sharkdp/bat
https://github.com/sharkdp/bat/releases   
`sudo dpkg -i bat_0.13.0_amd64.deb # adapt version number and architecture`   

## python-pygments (watching)
Pygments is a generic syntax highlighter written in Python   
https://github.com/pygments/pygments  
`sudo apt-get install python-pygments`  
 
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

## lazygit (watching)
https://github.com/jesseduffield/lazygit/blob/master/README.md  

## github cli (watching)
GitHub’s official command line tool   
https://cli.github.com  
https://github.com/cli/cli/  
Download the .deb file from the releases page  
`sudo apt install ./gh_*_linux_amd64.deb` install the downloaded file  

## tldr (watching) (my-tldr-c-build)
A collection of simplified and community-driven man pages.  
https://github.com/tldr-pages/tldr   
https://github.com/tldr-pages/tldr-cpp-client  
```
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libzip-dev  
sudo apt-get install pkg-config  
make                # build tldr
sudo checkinstall   # my-tldr-c-client-build
```

# ferhat's c/c++ tool builds

## GNU's bison (watching)
General-purpose parser generator  
https://github.com/akimd/bison  

## Flex (watching)
The Fast Lexical Analyzer - scanner generator for lexing in C and C++  
https://github.com/westes/flex  

## Cmake (watching) 
The cross-platform, open-source build system.  
https://github.com/Kitware/CMake  
`sudo snap install cmake --classic`  

## Valgrind 
Instrumentation framework for building dynamic analysis tool  
https://valgrind.org/
`sudo snap install valgrind --classic`

## Cern's Root 
Data Analysis Framework  
https://github.com/root-project/root#building  
https://root.cern/install/build_from_source/  
````
cd ~/git
git clone git@github.com:root-project/root.git
mkdir root-build
cd root-build
cmake -DCMAKE_CXX_STANDARD=17 -Dgnuinstall=ON -Dcefweb=ON -Dgviz=ON -Drpath=ON -Dqt5web=ON ../root
sudo cmake --build . --target install
````

## LLVM-11 
LLVM Debian/Ubuntu nightly packages   
https://apt.llvm.org/  
Install (stable branch)  

# ferhat's solver builds

## SAT solvers

### minisat (watching) (my-minisat-build)
https://github.com/stp/minisat   
```
git clone https://github.com/stp/minisat.git
cd minisat
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr/local/ ../
sudo checkinstall
```

### CryptoMiniSat (watching) 
https://github.com/msoos/cryptominisat    
https://github.com/meelgroup/approxmc#how-to-build    
https://github.com/msoos/cryptominisat#compiling-in-linux    
https://github.com/msoos/cryptominisat#gaussian-elimination    
```
sudo apt-get install zlib1g-dev libboost-program-options-dev libm4ri-dev libsqlite3-dev help2man
git clone https://github.com/msoos/cryptominisat
cd cryptominisat
mkdir build && cd build
cmake -DUSE_GAUSS=ON ..
make
sudo make install
sudo ldconfig
```

### Cadical (watching)
CaDiCaL Simplified Satisfiability Solver   
https://github.com/arminbiere/cadical  
```
git clone https://github.com/arminbiere/cadical.git
cd cadical
./configure
make
make test
cd build
sudo cp cadical /usr/bin/cadical

mkdir debug; cd debug 
../configure -l # include code to really see what the solver is doing
make
sudo cp cadical /usr/bin/cadical-debug
```

## #SAT model counters
http://beyondnp.org/pages/solvers/model-counters-exact/  

### sharpSat (watching)
https://github.com/marcthurley/sharpSAT  
```
git clone https://github.com/marcthurley/sharpSAT.git
./setupdev.sh
cd build/Release
make
sudo cp sharpSAT /usr/bin/sharpSAT
```

### ApproxMC (watching) 
Approximate Model Counter   
https://github.com/meelgroup/approxmc   
https://www.msoos.org/tag/model-counting/  
```
git clone https://github.com/meelgroup/approxmc/
cd approxmc
mkdir build && cd build
cmake ..
make
sudo make install
```

## SMT solvers

### stp (watching) (my-stp-build)
Simple Theorem Prover, an efficient SMT solver for bitvectors  
https://github.com/stp/stp  
https://stp.github.io/  
```
git clone https://github.com/stp/stp.git
cd stp
git checkout tags/2.3.3
mkdir build
cd build
cmake ..
make
sudo checkinstall
```
You can make this persistent by editing the /etc/security/limits.conf file or 
adding the ulimit command into e.g, .bashrc.

### z3 (watching) 
The Z3 Theorem Prover 
https://github.com/Z3Prover/z3/blob/master/README.md   
```
opam install zanith
git clone https://github.com/Z3Prover/z3.git
cd z3
python scripts/mk_make.py --ml --java
cd build
make
sudo make install
;;sudo make uninstall
```

### cvc4 (watching) 
CVC4 is an efficient open-source automatic theorem prover for satisfiability modulo theories (SMT) problems.  
https://github.com/CVC4/CVC4   
https://github.com/CVC4/CVC4/blob/master/INSTALL.md   
```
git clone https://github.com/CVC4/CVC4
./contrib/get-antlr-3.4  # download and build ANTLR
# ./contrib/get-cryptominisat 
./contrib/get-symfpu     
./contrib/get-cadical
./contrib/get-lfsc-checker
./contrib/get-abc
./configure.sh --cryptominisat --cadical --symfpu --lfsc --abc
cd build 
make -j2                 # use -jN for parallel build with N threads
make check               # to run default set of tests
sudo make install        # to install into the prefix specified above
```

## Symbolic Simulation

### klee (watching) (my-klee-build)
KLEE Symbolic Execution Engine  
http://klee.github.io/  
https://github.com/klee/klee  
https://docs.google.com/document/d/1BDNfhUsCNRfYN3C2fm_R5UOkGKo3XvX3ty5oDj4fqOI/edit#heading=h.hjduzuuy8ufg  
```
LLVM_VERSION=6.0 SANITIZER_BUILD= BASE=/home/ferhat/.local/lib/ ./scripts/build/build.sh libcxx
 
cmake -DENABLE_SOLVER_STP=ON -DENABLE_SOLVER_Z3=ON -DENABLE_KLEE_UCLIBC=ON -DENABLE_POSIX_RUNTIME=ON -DKLEE_UCLIBC_PATH=/home/ferhat/git/klee-uclibc/ -DENABLE_KLEE_LIBCXX=ON -DKLEE_LIBCXX_DIR=/home/ferhat/.local/lib/libc++-install-60/ -DKLEE_LIBCXX_INCLUDE_DIR=/home/ferhat/.local/lib/libc++-install-60/include/c++/v1/ -DENABLE_UNIT_TESTS=ON -DGTEST_SRC_DIR=/home/ferhat/git/googletest-release-1.7.0/ -DLIT_TOOL=/home/ferhat/.local/lib/python2.7/site-packages -DENABLE_KLEE_ASSERTS=OFF /home/ferhat/git/klee/ 
```


