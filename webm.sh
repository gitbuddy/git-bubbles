#!/bin/bash
DIR=/var/www/tmpfiles
find $DIR -type f |
while read i
do
ffmpeg -i "$i"  "$i".webm 2> /var/www/logs/progress.txt
done

