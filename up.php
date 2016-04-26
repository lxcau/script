<?php
if ($_FILES["file"]["error"] > 0)
  {
  echo "failed";
  }
else
  {
  //echo "Upload: " . $_FILES["file"]["name"] . "<br />";
  //echo "Type: " . $_FILES["file"]["type"] . "<br />";
  //echo "Size: " . ($_FILES["file"]["size"] / 1024) . " Kb<br />";
  //echo "Stored in: " . $_FILES["file"]["tmp_name"] . "<br />";
      move_uploaded_file($_FILES["file"]["tmp_name"],
      $_POST['dir'] . $_FILES["file"]["name"]);
      //echo "success<br/>";
	$str=$_POST['dir'] . $_FILES["file"]["name"];
	exec("/bin/chmod 666 $str",$res,$rc);
	echo $rc;
   }

?>
