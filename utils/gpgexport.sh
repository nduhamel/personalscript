#!/bin/sh
# gpg public/private keys export

#
# Config
#
DESTDIR=/mydest/dir
KEYEMAIL=monemail@mondomaine.fr

echo "---"
echo "This script export $KEYEMAIL plublic/private gpg key to $DESTDIR"
echo "Press enter to continue or CTRL-C for cancel"
read key

echo "Export public key to $DESTDIR/mypub.key"
gpg -ao $DESTDIR/mypub.key --export $KEYEMAIL

echo "Export private key to $DESTDIR/myprivate.key"
gpg -ao $DESTDIR/myprivate.key --export-secret-keys $KEYEMAIL
