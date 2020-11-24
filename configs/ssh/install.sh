#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
cp ~/.ssh/* $SCRIPTPATH
rm -r ~/.ssh
ln -s -r $SCRIPTPATH ~/.ssh
./setup.sh
