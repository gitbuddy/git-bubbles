<?php include ("domains.php"); $get_domain = GetRootDomain();?>
<?php
$count = 0;
if ($handle = opendir('public')) {
while (false !== ($file = readdir($handle))) {
    if ($file != "." && $file != ".." 
	
    
    && substr($file,-strlen(".html")) != ".html" //if you don't want to include .html files, for instance
    && substr($file,-strlen(".jpg")) != ".jpg" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".sh")) != ".sh" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".srt")) != ".srt" //if you don't want to include .js files, for instance
	&& substr($file,-strlen(".sub")) != ".sub" //if you don't want to include .js files, for instance
	&& substr($file,-strlen("subs")) != "subs" //if you don't want to include .js files, for instance

    && $file != ""
    ) {$count++;
        print("


 


<div class=\"bs-docs-example\">
            <table class=\"table table-hover\">
              <thead>
                <tr>
                  
                  <th>  $file</th>
                   
                </tr>
              </thead> 
              <tbody>
                <tr>   
                  <td> <img src=\"http://$get_domain/public/$file.thumb.jpg\"  height=\"260\" width=\"190\" class=\"img-polaroid\" /> <br><br>
    <a class=\"btn btn-primary\" href=\"http://$get_domain/public/$file\">download</a> <a class=\"btn\" href=\"http://$get_domain/get.php?url=http://$get_domain/public/$file\">play</a>
</td>


                </tr>
                 
              </tbody>
            </table>
          </div>






\n");
    }
}

closedir($handle);
}
?>


  