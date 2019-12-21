#!/bin/sh

# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

XSESSIONFILE=/usr/share/xsessions/emacs.desktop

echo "[Desktop Entry]" > $XSESSIONFILE
echo "Name=EmacsWM" >> $XSESSIONFILE
echo "Comment=Emacs Window Manager" >> $XSESSIONFILE
echo "Exec=emacs -f jag-run-exwm" >> $XSESSIONFILE
echo "Type=Application" >> $XSESSIONFILE
