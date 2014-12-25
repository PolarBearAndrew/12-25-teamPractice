<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
//require_once("login_check");
//$id=$_POST["Id"];
$id=15;
$link = mysqli_connect("localhost","root","","articlelist");
$sql = "selecet * from user where id = '$id'";
mysqli_query($link, 'SET NAMES utf8');
$reasult = mysqli_query($link,$sql);
$row = mysqli_fetch_assoc($reasult);
print "<b>顯示資料:</b><br/>";
if($row){
  print $row["id"]."-".$row["name"];
 }
?>