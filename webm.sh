#!/bin/bash
DIR=/var/www/tmpfiles
find $DIR -type f |
while read i
do
ffmpeg -i "$i" -vcodec libx264 -fpre "/usr/local/bin/libx264-ipod320.ffpreset" -crf 20 -threads 0 "$i".mp4 2> /var/www/logs/progress.txt

sleep 5

qt-faststart "$i".mp4 "$i".qt.mp4

sleep 3

rm "$i"

sleep 3

"$i".mp4

done