#!/bin/bash
DIR=/var/www/tmpfiles
find $DIR -type f |
while read i
do
fmpeg -i "$i" -vcodec libx264 -fpre "/usr/local/bin/libx264-ipod320.ffpreset" -crf 20 -threads 0 "$i".wmp4 2> /var/www/logs/progress.txt
done

