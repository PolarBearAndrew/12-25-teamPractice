<meta charset="utf-8"/>
<?php
print "<b>��ܸ��:</b><br/>";
require_once("login_check");
$id=$_POST["Id"];
$sql = "selecet * from user where id = '$id'";
$reasult = mysqli_query($link,$sql);
$row = mysqli_fetch_assoc($reasult);
if($row){
  print $row["id"]."-".$row["name"];
 }
?>