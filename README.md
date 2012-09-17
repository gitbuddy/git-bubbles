bubbles has been coded to encode anything from a folder, from your bittorrent client and have them encoded to 
Google's VP8 WebM. bubbles works on all html5 web browsers that support Html5 video tag

currently the requirements are simple

ubuntu 32bit, web server, apache2, or lighttpd , php5 and latest ffmpeg  binary, mkvtoolnix are required also to mux 
out the sub titles, and embed them into the html5 player after encoding has completed. 


the idea behind bubbles is to only use bash,php,web,ffmpeg to create a automated transcoding server, for eample lets say
i want to download some latest news video from France, its in a mkv with subtitles and x264,  I normally download the torrent
and when its complete, the torrent client for example supports scripting, basically fires a bash script to process the downloaded video
strip the subtitles out, start the encoding to webm, and push to public folder, where a php script just reads and outputs the $file with a thumbnail. 

thats about it. its turning out like a little bittorent youtube, the best thing about this system is, bittorrent download is
actually the upload system, as one would see from video sharing sites. 

if you have problems with the setup drop me an email

cheers
bubble wrappper 

....XD.............