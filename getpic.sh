#!/bin/bash
for file in /var/www/tmpfiles/*; do `ffmpeg  -itsoffset -5  -i $file -vcodec mjpeg -vframes 1 -an -f rawvideo -s 160x90 $file.thumb.jpg`;done

 
 

