#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

sudo apt install stumpwm

ln -s -r $SCRIPTPATH ~/.stumpwm.d

echo "(load \"~/.stumpwm.d/start.lisp\")" > ~/.stumpwm.d/init.lisp
