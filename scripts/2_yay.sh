#!/bin/sh

YAYLIST="$(cd $(dirname $0); pwd)/../yaylist.txt"

yay -S - --save --nocleanmenu --nodiffmenu < $YAYLIST