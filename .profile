# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
      . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi


# OPAM configuration
. /home/ferhat/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

# KLEE LLVM
PATH=/usr/lib/llvm-6.0/bin/:$PATH
#PATH=/home/ferhat/git/klee/build/bin/:$PATH

# Scaling problems in Plasma using GTK
export PLASMA_USE_QT_SCALING=1
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

# Shorten the Shell Prompt
#export PROMPT_DIRTRIM=1

# doom emacs utility binaries
PATH="$HOME/doom-emacs/bin:$PATH"

# https://spacevim.org/layers/gtags/
export GTAGSLABEL=pygments

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
export PATH=$PATH:$JAVA_HOME/bin

