#!/usr/bin/env bash
DOTFILES="
  ackrc gitconfig gitignore_global hgignore_global hgrc
  profile zshrc dircolors
"
DOTDIR="dotfiles"

for f in $DOTFILES
do
  s=~/.$f
  t=$DOTDIR/$f
  # make sure $f exists
  if ! [[ -f $f ]]; then
    continue
  fi
  if stat $s > /dev/null 2>/dev/null; then
    # ~/.FILE already exist
    if [[ `readlink $s` == $t ]]; then
      echo "$f : Linked to right place."
    else
      echo "$f : Already exist, need fix?"
    fi
  else
    # ~/.FILE not exist, create link
    if ln -s $t $s; then
      echo "$f : Create link to $t"
    else
      echo "$f : Create link failed!"
    fi
  fi
done

