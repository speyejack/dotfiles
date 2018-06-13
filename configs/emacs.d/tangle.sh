#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")
emacs --batch --eval "(require 'org)" --eval "(org-babel-tangle-file \"$SCRIPTPATH/init.org\")"
