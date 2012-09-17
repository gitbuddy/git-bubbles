<?Php

function formatBytes($bytes, $precision = 2) {
    $units = array('B', 'KB', 'MB', 'GB', 'TB');
  
    $bytes = max($bytes, 0);
    $pow = floor(($bytes ? log($bytes) : 0) / log(1024));
    $pow = min($pow, count($units) - 1);
  
    $bytes /= pow(1024, $pow);
  
    return round($bytes, $precision) . ' ' . $units[$pow];
}

//define the path as relative
$path = "tmpfiles";

//using the opendir function
$dir_handle = @opendir($path) or die("Unable to open $path");

echo " ";

while ($file = readdir($dir_handle)) 
{
   
 
if($file!="." && $file!="..")
 



    echo $file . ': ' . formatBytes(filesize($path."/".$file), 2) . ' </a><br>';
}


//closing the directory
closedir($dir_handle);

?>


