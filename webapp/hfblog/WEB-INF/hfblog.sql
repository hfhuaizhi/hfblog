/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.7.17-log : Database - stu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`stu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `stu`;

/*Table structure for table `artical` */

DROP TABLE IF EXISTS `artical`;

CREATE TABLE `artical` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` varchar(4000) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `img` varchar(10) DEFAULT NULL,
  `username` varbinary(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Data for the table `artical` */

insert  into `artical`(`id`,`title`,`content`,`date`,`img`,`username`) values 
(8,'开始写文件上传了','<p>恩，接下来就要开始写文件上传部分了<img src=\"http://img.baidu.com/hi/jx2/j_0019.gif\"/></p>','2017-10-19 19:47','1.jpg','admin'),
(12,'长文章测试','<p>长文章测试</p><p>长文章测试长文章测试</p><p>长文章测试</p><p>长文章测试长文章测试长文章测试长文章测试长文章测试长文章测试</p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试</p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试长文章测试长文章测试长文章测试长文章测试</p><p><br/></p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试</p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试长文章测试长文章测试长文章测试长文章测试</p><p><br/></p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试</p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试长文章测试长文章测试长文章测试长文章测试</p><p><br/></p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试</p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试长文章测试长文章测试长文章测试长文章测试</p><p><br/></p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试</p><p style=\"white-space: normal;\">长文章测试</p><p style=\"white-space: normal;\">长文章测试长文章测试长文章测试长文章测试长文章测试长文章测试</p><p><br/></p>','2017-10-19 21:16','2.jpg','admin'),
(13,'上传文件总结以及遇到的问题','<ol class=\" list-paddingleft-2\" style=\"list-style-type: decimal;\"><li><p>以&quot;.&quot;为标记使用split方法将文件名分割为字符串的时候会出现无法替换的问题</p><p>解决方法：先用replace方法将&quot;.&quot;替换为&quot;,&quot;再进行split操作</p></li><li><p>删除文件需要删除数据库记录以及在本地的存储，删除本地存储时可以便利文件夹下所有文件，代码如下</p><p><br/></p></li><li><pre class=\"brush:java;toolbar:false\">&nbsp;File&nbsp;files[]&nbsp;=&nbsp;file.listFiles();\r\n		&nbsp;for(int&nbsp;i=0;i&lt;files.length;i++){\r\n			&nbsp;if((files[i].getName().equals(name))){\r\n				&nbsp;files[i].delete();\r\n				&nbsp;break;\r\n			&nbsp;}\r\n		&nbsp;}</pre></li></ol>','2017-10-20 17:21','4.jpg','admin'),
(14,'开始写购物车功能啦','<p>日程功能就不写了，没什么意思</p>','2017-10-20 17:24','1.jpg','hfhuaizhi'),
(15,'购物车功能总结','<p>购物车做的不是太完善，不过就这样了吧，</p><p>添加物品用了ajax，</p><p>从购物车删除也使用了ajax，本来想着点一个删除一个的，但是目前水平无法实现，所以就是点一个删除直接将dialog给dismiss掉了</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0036.gif\"/></p>','2017-10-21 19:49','3.jpg','hfhuaizhi'),
(16,'购物车功能有bug','<p>刚发现的，增加商品购物车弹出框数据不更新</p><p>只有刷新了才gengxin</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0064.gif\"/></p><p><img src=\"http://img.baidu.com/hi/jx2/j_0068.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0070.gif\"/></p>','2017-10-21 20:33','1.jpg','hfhuaizhi'),
(17,'测试布局','<p>占位用的</p>','2017-10-21 20:38','3.jpg','hfhuaizhi'),
(18,'用户测试','<p>这篇文章用于测试不同的用户登录后可以看到不同的文章</p><p><img src=\"http://img.baidu.com/hi/jx2/j_0059.gif\"/><img src=\"http://img.baidu.com/hi/jx2/j_0024.gif\"/></p>','2017-10-31 22:13','5.jpg','hfhuaizhi'),
(19,'tesy','<p>jhvhjvhjv</p>','2017-11-02 15:53','5.jpg','hfhuaizhi');

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

/*Data for the table `file` */

insert  into `file`(`id`,`name`) values 
(12,'新建文本文档.txt'),
(13,'数学建模题目.doc'),
(14,'新建文本文档1.txt');

/*Table structure for table `good` */

DROP TABLE IF EXISTS `good`;

CREATE TABLE `good` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `img` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

/*Data for the table `good` */

insert  into `good`(`id`,`name`,`price`,`img`) values 
(10,'haha',111,'1.jpg'),
(11,'yy',112,'2.jpg'),
(12,'啊啊啊',22,'3.jpg'),
(13,'去去去',334,'4.jpg'),
(14,'啧啧啧',33,'5.jpg'),
(15,'商品p',11,'1.jpg'),
(16,'吖吖',33,'2.jpg'),
(17,'皇甫淮智',66666,'3.jpg');

/*Table structure for table `tongxun` */

DROP TABLE IF EXISTS `tongxun`;

CREATE TABLE `tongxun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `work` varchar(100) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `tongxun` */

insert  into `tongxun`(`id`,`name`,`phone`,`email`,`work`,`username`) values 
(6,'asfaaa','asfaaa','asf@qq.comaa','asf','admin'),
(9,'asfaaa','asfaaa','asf@qq.comaa','asf','admin'),
(10,'哈哈哈','1785417802','2323089526@qq','济南大学','hfhuaizhi'),
(11,'哈哈哈','1785417802','2323089526@qq','济南大学','hfhuaizhi'),
(12,'hahaaa','11111111','213123123@com','asdasd','hfhuaizhi'),
(13,'hz','1111','123124@qq.com','aaaaa哈哈哈','hfhuaizhi'),
(14,'提醒包','110','119@qq.com','厕所','hfhuaizhi'),
(15,'智智嘿嘿','110','110@qq.com','ujn','hfhuaizhi'),
(16,'智智嘿嘿','222','2323@qq.com','1111','hfhuaizhi');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `NONCLUSTERED` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`name`,`phone`,`email`,`address`) values 
(2,'admin','asd','asd','asd','asd@qq.com','asd'),
(3,'åå','asd','',NULL,NULL,NULL),
(4,'ååå','123','',NULL,NULL,NULL),
(5,'haha','111','',NULL,NULL,NULL),
(6,'hahaaa','asdasd','','','',''),
(9,'hfhuaizhi','huaizhi123','皇甫淮智','17854178022','2323089526@qq.com','ujn'),
(10,'1','1','1','1','1@qq.com','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
