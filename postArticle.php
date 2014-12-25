<?php 
    if( isset($_POST["info"]) ){
        echo $title = $_POST["info"];
        echo $article = $_POST["article"];
//        $userId = $_POST["Id"];
        $userId = 12;
    }
    
    //建立mySQL的資料庫鏈結
    $link = @mysqli_connect('localhost',  //MySQL主機名稱
                           'root',       //使用者名稱
                           '',           //密碼
                           'articlelist')  //預設使用資料表名稱
        or die("MySQl資料庫鏈結錯誤!<br/>");

    mysqli_query($link, 'SET NAMES utf8');

    //檢查是否登入成功
    //echo "MySQLy資料庫myschool鏈結成功!<br/>";

    $result = mysqli_query($link, "select max(listId) from article "); //取得最大的id
    $num = mysqli_fetch_assoc($result)['max(listId)']; //從SQLresult轉到變數num中
    $num++;

    //INSERT INTO `article`(`listId`,`userId`,`title`,`article`) VALUES ( '4' , '12' , '我又PO聞了' , '沒東西拉哈哈y');

    echo $insert = 'INSERT INTO `article`(`listId`,`userId`,`title`,`article`) VALUES ( ' . 
                    $num . ' , ' . $userId . ' , "' . $title . '" , "' . $article . '");';
    mysqli_query($link, $insert) or die("PO文失敗");

    echo "po文完成";
?>