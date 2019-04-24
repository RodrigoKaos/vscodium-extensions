#!/bin/bash

vseditor="vscodium"

if [ "$2" ]; then
  if [ $2 = "code" ]; then
    vseditor="code"
  fi
fi

if [ $1 = "export" ]; then
  $vseditor --list-extensions > extensions.txt
fi

if [ $1 = "install" ]; then
  for ext in `cat extensions.txt`
  do 
    $vseditor --$1-extension $ext 
  done
fi

if [ $1 = "uninstall" ]; then
  for ext in `cat extensions.txt`
  do 
    $vseditor --$1-extension $ext 
  done
fi
