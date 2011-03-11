#! /bin/sh

FILE=/etc/cron.d/myslqcheck

MYSQL_USER=root
MYSQL_PASSWORD=MONMOTDEPASS

if [ ! -e $FILE ] ; then  
    touch $FILE
    echo "#"                                                                                       >> $FILE
    echo "# Regular cron jobs for mysqlcheck"                                                      >> $FILE
    echo "#"                                                                                       >> $FILE
    echo "# Every night at 4 o'clock."                                                             >> $FILE
    echo "0 4     * * *   root    mysqlcheck -Aaos --auto-repair -u $MYSQL_USER -p$MYSQL_PASSWORD" >> $FILE
    echo "$FILE created"
else
    echo "Error $FILE already exist, you must check it"
fi
