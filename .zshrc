# Toleemoko's starting place for a .zshrc file. - This file adds some custom commands to the shell on MacOS.
# This and other handy things. --> https://github.com/toleemoko/resources/

# File system commands:

# 'mkcd' This will create and automatically CD into a directory.
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

# 'll' This will give a list view of items in a given directory. 'lla' will do the same, but show hidden files as well.
# Like... "ll" or "ll DIRECTORY"
alias ll="ls -l"
alias lla="ls -la"