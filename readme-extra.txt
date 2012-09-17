just a little info about the files and what they do
-----------------------------------------------------------------------
cron.sh --- > this is used for cron to delete files older than xxx amount of mints
delete.sh --> this bash script is fired right at the end to clean up the original files 
getpic.sh --> this gets the thumbnails 
getsub.sh --> Basic script to dump subtitle track from mkv files into .idx/.sub files for 
move.sh ---> the main bash script - runs all the scripts one by one, 
pullsubs.sh ---> this is just a rely script gets fired from move.sh and starts getsub.sh 
webm.sh -- > the encoding script , you need latest ffmpeg not from ubuntu repos ! 

------------------------------------------------------------------------
side note, before you ever start messing with bubbles make sure you follow this

https://forum.transmissionbt.com/viewtopic.php?f=1&t=13785
========================================================================

the index.php ---> pulls -- > scanlist.php -- > public folder -- ready to download or stream
you might see lots of broken code, really bad way of coding, sorry :p i don't code for real ! 

bubbles is based on a php directory code, which is in scanlist.php its basic. you get the idea.

domains.php, is needed to get the ROOT url, without menually typing it out for scanlist.php

if you know better ways go ahead fix my broken code ! 

hmm thats about it.

happy torrenting, i wanted to create a encoding script for transmissionbt and i find that this works great
for me, 

the only thing that is left, is the mkvtoolnix to be fixed,

the files are getsub.sh --> this does the dirty work, gets pulled from move.sh 

move.sh --->  pullsubs.sh --- > getsub.sh 

something like that, my head is hurting now lol

anyways ....XD.......... let me know if you need help ! 



