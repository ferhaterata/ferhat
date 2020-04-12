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
