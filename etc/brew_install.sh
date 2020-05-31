#!/bin/bash

which brew >/dev/null 2>&1
if [ $? = 1 ]; then
  echo '# install homebrew'
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

echo '# brew update'
brew update

echo '# brew bundle'
brew bundle --file ~/dotfiles/etc/Brewfile

echo '# brew cleanup'
brew cleanup

echo '# brew doctor'
brew doctor
