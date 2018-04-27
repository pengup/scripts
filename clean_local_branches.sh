#!/bin/bash

if [ "$1" = "ls" ]; then
  git branch  | grep -v "\*" |  xargs -n 1 git branch -D
elif [ "$1" = "clean" ]; then
  git branch  | grep -v "\*" |  xargs -n 1 git branch -D
else
  echo "Unknow commands"
  echo "Usage: $0 ls|clean"
fi

