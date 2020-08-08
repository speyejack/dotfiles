#!/bin/sh
# Absolute path to this script, e.g. /home/user/bin/foo.sh
SCRIPT=$(readlink -f "$0")
# Absolute path this script is in, thus /home/user/bin
SCRIPTPATH=$(dirname "$SCRIPT")

# sudo apt install offlineimap

echo "{\"personal\":\"\",\"professional\":\"\",\"school\":\"\",\"spam\":\"\"}" > ./users.json
echo "{\"personal\":\"\",\"professional\":\"\",\"school\":\"\",\"spam\":\"\"}" | gpg -c > ./passwds.json.gpg

ln -s -r $SCRIPTPATH/users.json ~/.offlineimapusers.json
ln -s -r $SCRIPTPATH/passwds.json.gpg ~/.offlineimappass.gpg
ln -s -r $SCRIPTPATH/offlineimap.py ~/.offlineimap.py
ln -s -r $SCRIPTPATH/offlineimaprc ~/.offlineimaprc
