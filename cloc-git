#!/usr/bin/env bash

# Credits to https://stackoverflow.com/a/29012789/13397758

git clone --depth 1 "$1" temp-linecount-repo &&
  printf "('temp-linecount-repo' will be deleted automatically)\n\n\n" &&
  cloc temp-linecount-repo &&
  rm -rf temp-linecount-repo


