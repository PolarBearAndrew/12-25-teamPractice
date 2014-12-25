<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login</title>
</head>

<body>
<?php
$id=$_POST["Id"];
$pass=$_POST["Pass"];

if(($id!="")&&($pass!=""))
{
	$link= mysqli_connect("localhost","root","","articlelist")
	              or die("無法開啟資料庫<br/>");
	$sql="SELECT * FROM user WHERE userId='$id' and pwd='$pass'";
	
	mysqli_query($link,'SET NAMES utf-8');
	
	$result=mysqli_query($link,$sql);
	
	
	if(mysqli_num_rows($result)>= 1)
	{
		//echo "登入";
		setcookie("Login","OK",time()+10);
		header("localhost:list.php");
		
	}
	else
	{
		header("localhost:login_ui.html");
	}
					  
}

else
{
	header("localhost:login_ui.html");
}

?>
</body>
</html>