#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

ln -s -r $SCRIPTPATH ~/.emacs.d

echo ";; This is here to prevent emacs from doing it" > ~/.emacs.d/init.el
echo ";; (package-initialize)" >> ~/.emacs.d/init.el
echo "(load-file \"~/.emacs.d/start.el\")" >> ~/.emacs.d/init.el
