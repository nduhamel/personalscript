#! /bin/sh

##
## Config
##
MAILTO=monemail@mondomaine.fr


FILE=/etc/cron-apt/config

aptitude install cron-apt

cp $FILE $FILE.org
rm $FILE
touch $FILE
echo "APTCOMMAND=/usr/bin/aptitude"     >> $FILE
echo "MAILTO=\"$MAILTO\""               >> $FILE
echo "MAILON=\"always\""                >> $FILE
