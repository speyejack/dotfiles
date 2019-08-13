#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

sudo apt install i3blocks

rm -rf ~/.config/i3blocks
ln -s -r $SCRIPTPATH ~/.config/
