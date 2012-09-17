#!/bin/bash
chmod 777 -R /var/www/downloads/*

sleep 5

find /var/www/downloads -regextype posix-egrep -regex '.*\.(avi|mkv|ogv|mp4|mpg|divx|mpeg|wmv)$' -exec mv "{}" /var/www/tmp/ \;

sleep 5

rm -rf /var/www/downloads/*

sleep 5

cd /var/www/tmp
for infile in *.*;
do 
#replace " - " with a single underscore.
NEWFILE1=`echo $infile | sed 's/\s-\s/_/g'`; 
#replace spaces with underscores
NEWFILE2=`echo $NEWFILE1 | sed 's/\s/_/g'`; 
#replace "-" dashes with underscores.
NEWFILE3=`echo $NEWFILE2 | sed 's/-/_/g'`; 
#remove exclamation points
NEWFILE4=`echo $NEWFILE3 | sed 's/!//g'`; 
#remove commas
NEWFILE5=`echo $NEWFILE4 | sed 's/,//g'`; 
mv "$infile" "/var/www/tmpfiles/$NEWFILE5";
done;

sleep 5 

/var/www/pullsubs.sh


sleep 5

/var/www/webm.sh

sleep 5

/var/www/getpic.sh

sleep 5

find /var/www/tmpfiles -regextype posix-egrep -regex '.*\.(jpg|webm)$' -exec mv "{}" /var/www/public/ \;

sleep 5

rm -rf /var/www/tmpfiles/*

sleep 5

rm -rf /var/www/logs/*