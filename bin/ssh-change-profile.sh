#!/bin/bash

echo "$@" | xargs -n 1 | grep -qE "^maintenance$"
if [ $? = 0 ]; then
  # set profile 
  echo -ne "\033]1337;SetProfile=$@\a"

  # ssh login
  /usr/bin/ssh "$@"

  # set profile(default)
  echo -ne "\033]1337;SetProfile=Default\a"

else
  /usr/bin/ssh "$@"
fi
