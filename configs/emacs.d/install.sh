#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

# sudo add-apt-repository ppa:kelleyk/emacs
# sudo apt update
# sudo apt install emacs26

sudo apt install git
git clone https://git.savannah.gnu.org/git/emacs.git emacs
cd emacs
sudo apt install autoconf build-essential texinfo libgtk-3-dev libjpeg-dev libxpm-dev libgif-dev libtiff-dev libgnutls28-dev libtinfo-dev libgccjit-8-dev
./autogen.sh
./configure --with-xml2 --with-mailutils --with-xwidgets --with-nativecomp

./setup.sh
