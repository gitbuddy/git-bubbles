#!/bin/bash
DIR=/var/www/tmpfiles
find $DIR -type f |
while read i
do
getsub.sh $i /var/www/public/subs
done

