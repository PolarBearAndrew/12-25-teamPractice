<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>無標題文件</title>
</head>

<body>
<?php

//抓花花的listId
$art_ID=$_GET["listId"];

//拿去和資料庫的listId比對，比對後抓文章內容
$link=mysqli_connect("localhost","root","usbw","articlelist")or die("無法開啟articlelist資料庫");
echo "articlelist資料庫，開啟成功";
//require_once("articlelist_open.inc");
$sql="SELECT* FROM article WHERE listId=" . $art_ID ;
$result=mysqli_query($link,$sql);

//一筆一筆顯示
while ($row=mysqli_fetch_assoc($result)){
	$Author=$row["authorId"];
	$Title=$row["title"];
	$Article=$row["article"];
	$Good=$row["good"];
	$Bad=$row["bad"];
}

//還有+和-


?>

<!--title-->
<h1 style="font-size: xx-large"><?php echo $Title?></h1>

<!--authorld-->
<h3><em><?php echo $Author?></em></h3>

<!--article-->
<h3 style="font-size: x-large"><?php echo $Article?></h3>

<!--+or--->
<h2 style="text-align: right"><input type="button" value="+"><?php echo $Good ?></h2>
<h2 style="text-align: right"><input type="button" value="-"><?php echo $Bad?></h2>
</body>
</html>