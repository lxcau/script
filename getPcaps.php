<?php
	include('includes/conf.php');
	$dir = "/opt/iou/data/Sniffer/";
   // Open a known directory, and proceed to read its contents
   $open_dir = opendir($dir);

while ($file = readdir($open_dir)) {
 if ($file!= "." && $file != "..") {
  echo "(" . $file . ")";
 }
 
}
?>
