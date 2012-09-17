bubbles has been coded to encode anything from your bittorrent downloads folder, you just need few linux binary tools

currently the requirements are simple

ubuntu 32bit, web server, apache2, or lighttpd , php5 and latest ffmpeg  binary, mkvtoolnix are required also to mux 
out the sub titles, and embed them into the html5 player after encoding has completed. 


the idea behind bubbles is to only use bash,php,ffmpeg to create a automated transcoding server, for example lets say
i want to download some latest news video from France, its in a mkv torrent with subtitles and x264,  I normally download the torrent
and when its complete, the torrent client for example supports scripting such as tranmission BT, basically triggers a bash script to process the downloaded video
and start to strip the subtitles out, next start the encoding to webm, and push to public folder, where a php script just reads and outputs the $file with a thumbnail. 

thats about it. its turning out like a little bittorent youtube, the best thing about this system is, bittorrent download is
actually the upload system.

if you have problems with the setup drop me an email

cheers
bubble wrappper 

....XD.............