#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install emacs26

ln -s -r $SCRIPTPATH ~/.emacs.d
$SCRIPTPATH/tangle.sh
