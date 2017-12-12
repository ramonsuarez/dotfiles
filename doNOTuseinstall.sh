# Backup config files if they exist
# TODO  Add script to include .vim folder, backup old and link to new in dotfiles folder

backup() {
  target=$1
  if [ -e "$target"] || [ -d "$target" ]; then           # Does the config file/dir already exist?
    if [ ! -L "$target" ]; then       # a a pure file?
      mv "$target" "$target.backup"   # Then backup it
      echo "-----> Moved your old $target config file or directory to $target.backup"
    fi
  fi
}

#!/bin/bash
for name in *; do
#  if [ ! -d "$name" ]; then
    target="$HOME/.$name"
    if [[ ! "$name" =~ '\.sh$' ]] && [ "$name" != 'README.md' ] && [ "$name" != 'tags' ]; then
      backup $target

      if [ ! -e "$target" ]; then
        echo "-----> Symlinking your new $target"
        ln -s "$PWD/$name" "$target"
      fi
    fi
#  fi
done
