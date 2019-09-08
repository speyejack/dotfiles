#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

sudo apt install i3 i3status unclutter
#Install playerctl
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/libplayerctl2_2.0.1-1_amd64.deb
wget http://ftp.nl.debian.org/debian/pool/main/p/playerctl/playerctl_2.0.1-1_amd64.deb
sudo dpkg -i libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb
rm libplayerctl2_2.0.1-1_amd64.deb playerctl_2.0.1-1_amd64.deb

# Make caps lock the mod key
echo -e "clear Lock\nkeycode 66 = Hyper_L\nadd mod4 = Hyper_L" >> ~/.Xmodmap

touch $SCRIPTPATH/i3startup
chmod +x $SCRIPTPATH/i3startup

ln -s -r $SCRIPTPATH ~/.config/
