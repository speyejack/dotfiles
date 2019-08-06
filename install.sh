#!/bin/sh

SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

$SCRIPTPATH/configs/emacs.d/install.sh
$SCRIPTPATH/configs/i3/install.sh
$SCRIPTPATH/configs/i3blocks/install.sh
$SCRIPTPATH/configs/zsh/install.sh
$SCRIPTPATH/configs/ssh/install.sh
$SCRIPTPATH/configs/termite/install.sh
