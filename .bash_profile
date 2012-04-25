#!/usr/bin/bash

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{exports,bash_alias,bash_custom_alias,inputrc,bash_prompt}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # load RVM
