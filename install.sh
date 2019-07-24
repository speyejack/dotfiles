#!/bin/sh

SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

source $SCRIPTPATH/configs/emacs.d/install.sh
source $SCRIPTPATH/configs/i3/install.sh
source $SCRIPTPATH/configs/i3blocks/install.sh
source $SCRIPTPATH/configs/zsh/install.sh
source $SCRIPTPATH/configs/ssh/install.sh
