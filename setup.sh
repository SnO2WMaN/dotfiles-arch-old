#!/bin/sh

DOTFILES_BASE="$(cd $(dirname $0); pwd)"
DOTFILES_LINKS_DIR="$DOTFILES_BASE/links"
DOTFILES_SCRIPTS_DIR="$DOTFILES_BASE/scripts"

for file in `ls $DOTFILES_SCRIPTS_DIR -1 | sort`; do
  source $DOTFILES_SCRIPTS_DIR/$file
done
