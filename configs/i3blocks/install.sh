#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

git clone https://github.com/vivien/i3blocks
cd i3blocks
./autogen.sh
./configure
make
make install
cd ..
rm -rf ./i3blocks

# rm -rf ~/.config/i3blocks
# ln -s -r $SCRIPTPATH ~/.config/
