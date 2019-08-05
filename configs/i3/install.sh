#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

sudo apt install i3
sudo apt install i3status
sudo apt install i3blocks
sudo apt install unclutter

echo -e "clear Lock\nkeycode 66 = Hyper_L\nadd mod4 = Hyper_L" >> ~/.Xmodmap
touch $SCRIPTPATH/i3startup
chmod +x $SCRIPTPATH/i3startup
ln -s -r $SCRIPTPATH ~/.config/
