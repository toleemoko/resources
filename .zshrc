# Toleemoko's starting place for a .zshrc file. - This file adds some custom commands to the shell on MacOS.
# This and other handy things. --> https://github.com/toleemoko/resources/

# File system commands:

# 'mkcd' This will create and automatically CD into a directory. 
# Code from "https://bit.ly/2Sfoebi"
# Like... "mkcd DIRECTORY"
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Enter a directory name"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}

# 'll' This will give a list view of items in a given directory. 'lla' will do the same, but show hidden files as well. Now with color!
# Like... "ll" or "ll DIRECTORY"
alias ll="ls -l"
alias lla="ls -la"

# 'ls' This will add color to the standard 'ls' command.
alias ls="ls -G"

# 'la' This will perform an 'ls' and show all hidden files. Now with color!
alias la="ls -a"

# '..' This will go back one directory.
alias ..="cd .."

# '~' This will go back to the root directory.
alias ~="cd ~"

# 'c' This will clear the console.
alias c="clear"
