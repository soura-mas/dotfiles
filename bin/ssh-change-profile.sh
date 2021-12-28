#!/bin/bash

if [ "$@" = "maintenance" ] ; then
  # set profile 
  echo -ne "\033]1337;SetProfile=$@\a"

  # ssh login
  /usr/bin/ssh "$@"

  # set profile(default)
  echo -ne "\033]1337;SetProfile=Default\a"

else
  /usr/bin/ssh "$@"
fi

