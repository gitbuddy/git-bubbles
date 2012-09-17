<?php
$count = 0;
if ($handle = opendir('tmpfiles')) {
while (false !== ($file = readdir($handle))) {
    if ($file != "." && $file != ".." 
	
    
    && substr($file,-strlen(".mkv")) != ".mkv" //if you don't want to include .html files, for instance
    && substr($file,-strlen(".jpg")) != ".jpg" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".wmv")) != ".wmv" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".mpg")) != ".mpg" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".mpeg")) != ".mpeg" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".vob")) != ".vob" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".mp4")) != ".mp4" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".mp4v")) != ".mp4v" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".avi")) != ".avi" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".divx")) != ".divx" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".ogg")) != ".ogg" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".ogv")) != ".ogv" //if you don't want to include .js files, for instance


    && $file != ""
    ) {$count++;
        print("


 



$file





\n");
    }
}

closedir($handle);
}
?>