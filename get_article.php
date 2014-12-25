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

//編碼
mysqli_query($link, 'SET NAMES utf8');

//選article資料表，找到的丟到$result
$sql="SELECT* FROM article WHERE listId=" . $art_ID ;
$result=mysqli_query($link,$sql);

//顯示資料
$row=mysqli_fetch_assoc($result);
$Author=$row["authorId"];
$Title=$row["title"];
$Article=$row["article"];
$Good=$row["good"];
$Bad=$row["bad"];

?>

<!--title-->
<h1 style="font-size: xx-large"><?php echo $Title?></h1>

<!--authorld-->
<h3><em><?php echo $Author?></em></h3>

<!--article-->
<h3 style="font-size: x-large"><?php echo $Article?></h3>

<!--+or--->
<h2 style="text-align: right"><input type="button" value="+" onClick="<?php $Good++ ?>"><?php echo $Good ?></h2>
<h2 style="text-align: right"><input type="button" value="-" onClick="<?php $Bad-- ?>"><?php echo $Bad?></h2>

</body>
</html>