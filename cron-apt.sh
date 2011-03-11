#! /bin/sh

##
## Config
##
MAILTO=monemail@mondomaine.fr


FILE=/etc/cron-apt/config

aptitude install cron-apt

cp $FILE $FILE.orig
rm $FILE
touch $FILE
echo "APTCOMMAND=/usr/bin/aptitude"     >> $FILE
echo "MAILTO=\"$MAILTO\""               >> $FILE
echo "MAILON=\"always\""                >> $FILE
