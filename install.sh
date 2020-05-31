#!/bin/bash
  
DOTPATH=~/dotfiles
TARBALL="https://github.com/marzdog0319/dotfiles/archive/master.tar.gz"

curl -L $TARBALL | tar xvz
if [ ! -d dotfiles-master ]; then
  echo "dotfiles-master: not found"
  exit 1
fi

mv -f dotfiles-master $DOTPATH
