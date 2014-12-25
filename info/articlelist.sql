-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： Y-m-d: H:i:s
-- 伺服器版本: 5.6.17
-- PHP 版本： 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `articlelist`
--

-- --------------------------------------------------------

--
-- 資料表結構 `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `listId` varchar(10) NOT NULL,
  `userId` varchar(10) NOT NULL,
  `title` varchar(10) NOT NULL,
  `article` text NOT NULL,
  `good` int(11) NOT NULL,
  `bad` int(11) NOT NULL,
  PRIMARY KEY (`listId`,`userId`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每個文章的資料';

--
-- 資料表的匯出資料 `article`
--

INSERT INTO `article` (`listId`, `userId`, `title`, `article`, `good`, `bad`) VALUES
('1', '12', '大家來練習php', '外來鍵是一個(或數個)指向另外一個表格主鍵的欄位。外來鍵的目的是確定資料的參考完整性 (Referential Integrity)。換言之，只有被准許的資料值才會被存入資料庫內。\r\n\r\n舉例來說，假設我們有兩個表格：一個 CUSTOMER 表格，裡面記錄了所有顧客的資料；另一個 ORDERS 表格，裡面記錄了所有顧客訂購的資料。在這裡的一個限制，就是所有的訂購資料中的顧客，都一定是要跟在 CUSTOMER 表格中存在。在這裡，我們就會在 ORDERS 表格中設定一個外來鍵，而這個外來鍵是指向 CUSTOMER 表格中的主鍵。這樣一來，我們就可以確定所有在 ORDERS 表格中的顧客都存在 CUSTOMER 表格中。換句話說，ORDERS 表格之中，不能有任何顧客是不存在於 CUSTOMER 表格中的資料。', 50, 1),
('2', '12', '好想喝咖啡', '咖啡的來源已無從稽考。諸多傳說之一指咖啡原產地衣索比亞西南部的咖法省高原地區，據說是一千多年以前[1]一位牧羊人發現羊吃了一種植物後，變得非常興奮活潑，進而發現了咖啡。也有說法是由於一場野火，燒燬了一片咖啡林，燒烤咖啡的香味引起周圍居民注意。人們最初咀嚼這種植物果實來提神，後來烘烤磨碎摻入麵粉做成麵包，做為勇士的食物，提高作戰的勇氣。不過這些傳說故事都缺乏歷史文件佐證，只出現於後世的旅遊傳記中，因此無從考證咖啡起源的真正原因。\r\n\r\n直到11世紀左右，人們才開始用水煮咖啡做為飲料。13世紀時，衣索比亞軍隊入侵葉門，將咖啡帶到了阿拉伯世界。因為伊斯蘭教義禁止教徒飲酒，有的宗教界人士認為這種飲料刺激神經，違反教義，曾一度禁止並關閉咖啡店，但埃及蘇丹認為咖啡不違反教義，因而解禁，咖啡飲料迅速在阿拉伯地區流行開來。咖啡Coffee這個詞，就是來源於阿拉伯語Qahwa，意思是「植物飲料」，後來傳到土耳其，成為歐洲語言中這個詞的來源。咖啡種植，製作的方法也被阿拉伯人不斷地改進而逐漸完善。', 32, 512),
('3', '15', 'Git 好好玩', 'Git是一個分布式版本控制／軟體配置管理軟體，原是Linux核心開發者林納斯·托瓦茲（Linus Torvalds）為更好地管理Linux核心開發而設計。應注意的是，這與GNU Interactive Tools[4]（一個類似Norton Commander介面的檔案管理器）有所不同。\r\n\r\nGit最初的開發動力來自於BitKeeper和Monotone[5][6]。Git最初只是作為一個可以被其他前端（比如Cogito或StGIT[7]）包裝的後端而開發的，但後來Git核心已經成熟到可以獨立地用作版本控制[8]。很多著名的軟體都使用Git進行版本控制[9]，其中包括Linux核心、X.Org伺服器和OLPC核心等專案的開發流程[10]。', 999, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userId` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='使用者資料';

--
-- 資料表的匯出資料 `user`
--

INSERT INTO `user` (`userId`, `name`, `pwd`) VALUES
('12', '陳柏安', '123'),
('15', '雷尚樺', '123'),
('24', '洪于雅', '123'),
('31', '陳思璇', '123'),
('7', '蔡政欽', '123');

--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
