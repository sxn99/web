/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.49-community : Database - db_bbs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_bbs` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_bbs`;

/*Table structure for table `tb_bbs` */

DROP TABLE IF EXISTS `tb_bbs`;

CREATE TABLE `tb_bbs` (
  `bbs_id` int(11) NOT NULL AUTO_INCREMENT,
  `bbs_boardID` int(11) DEFAULT NULL,
  `bbs_title` varchar(70) DEFAULT NULL,
  `bbs_content` varchar(2000) DEFAULT NULL,
  `bbs_sender` varchar(20) DEFAULT NULL,
  `bbs_sendTime` datetime DEFAULT NULL,
  `bbs_face` varchar(10) DEFAULT NULL,
  `bbs_opTime` datetime DEFAULT NULL,
  `bbs_isTop` varchar(1) DEFAULT NULL,
  `bbs_toTopTime` datetime DEFAULT NULL,
  `bbs_isGood` varchar(1) DEFAULT NULL,
  `bbs_toGoodTime` datetime DEFAULT NULL,
  PRIMARY KEY (`bbs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bbs` */

insert  into `tb_bbs`(`bbs_id`,`bbs_boardID`,`bbs_title`,`bbs_content`,`bbs_sender`,`bbs_sendTime`,`bbs_face`,`bbs_opTime`,`bbs_isTop`,`bbs_toTopTime`,`bbs_isGood`,`bbs_toGoodTime`) values (1,1,'JSP程序开发中有那些设计模式？','请问各位，在JSP开发中有哪些开发模式？','tsoft','2013-08-05 10:43:03','face3.gif','2013-08-05 10:43:03','0','2013-08-05 10:43:03','1','2013-08-05 10:43:03'),(2,1,'乱码问题！！','请问，在JSP中如何解决获取表单数据后的中文乱码问题？？谢谢！！','tsoft','2013-08-05 10:43:03','face11.gif','2013-08-05 10:43:03','0','2013-08-05 10:43:03','1','2013-08-05 10:43:03'),(3,1,'开发JSP程序通常使用哪些框架？','请问，开发JSP程序比较常用和流行的开发框架有哪些？？','许久','2013-08-05 10:43:03','face3.gif','2013-08-05 10:43:03','1','2013-08-05 10:43:03','1','2013-08-05 10:43:03'),(10,2,'fdsfdsfd','fdsfdsfdsfdfdfdfdfd','00',NULL,'face0.gif','2013-08-05 10:43:03','0','2013-08-05 10:43:03','0','2013-08-05 10:43:03'),(13,19,'随时回答你的问题','如果你有什么问题或者疑问可随时发帖子给我，我会及时给您回复．','00','2013-08-05 10:43:03','face0.gif','2013-08-05 10:43:03','0','2013-08-05 10:43:03','0','2013-08-05 10:43:03'),(14,1,'随时回答你的问题','如果你有什么问题可随时发布帖了，我会及时的回复您．','tsoft','2013-08-05 10:43:03','face0.gif','2013-08-05 10:43:03','0','2013-08-05 10:43:03','0','2013-08-05 10:43:03'),(15,1,'测试发帖','测试发帖内容。<font color=red>请输入要设置颜色的文字！</font>','java1234','2013-08-05 11:10:54','face0.gif','2013-08-05 11:10:54','0',NULL,'0',NULL);

/*Table structure for table `tb_bbsanswer` */

DROP TABLE IF EXISTS `tb_bbsanswer`;

CREATE TABLE `tb_bbsanswer` (
  `bbsAnswer_id` int(11) NOT NULL AUTO_INCREMENT,
  `bbsAnswer_rootID` int(11) DEFAULT NULL,
  `bbsAnswer_title` varchar(70) DEFAULT NULL,
  `bbsAnswer_content` varchar(2000) DEFAULT NULL,
  `bbsAnswer_sender` varchar(20) DEFAULT NULL,
  `bbsAnswer_sendTime` datetime DEFAULT NULL,
  `bbsAnswer_face` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bbsAnswer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bbsanswer` */

insert  into `tb_bbsanswer`(`bbsAnswer_id`,`bbsAnswer_rootID`,`bbsAnswer_title`,`bbsAnswer_content`,`bbsAnswer_sender`,`bbsAnswer_sendTime`,`bbsAnswer_face`) values (6,2,'yrtyyrtyrty','<font color=blue>ytryrtytrytrytr</font>','00','2013-01-01 00:00:00','face0.gif'),(7,15,'测试回复','测试回复','java1234','2013-08-05 11:11:35','face0.gif');

/*Table structure for table `tb_board` */

DROP TABLE IF EXISTS `tb_board`;

CREATE TABLE `tb_board` (
  `board_id` int(11) NOT NULL AUTO_INCREMENT,
  `board_classID` int(11) DEFAULT NULL,
  `board_name` varchar(40) DEFAULT NULL,
  `board_master` varchar(20) DEFAULT NULL,
  `board_pcard` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

/*Data for the table `tb_board` */

insert  into `tb_board`(`board_id`,`board_classID`,`board_name`,`board_master`,`board_pcard`) values (1,1,'JSP开发','许久','欢迎进入 WEB开发/JSP开发 版面！'),(2,1,'PHP开发','tsoft','欢迎进入 WEB开发/PHP开发 版面！'),(3,1,'Ajax技术','tsoft','欢迎进入 WEB开发/Ajax技术 版面！'),(4,2,'Oracle开发','tsoft','欢迎进入 数据库开发/Oracle开发 版面！'),(5,2,'其他','tsoft','欢迎进入 数据库开发/其他版面！'),(6,3,'Java技术','许久','欢迎进入 软件开发/Java技术 版面！'),(7,3,'.NET技术','tsoft','欢迎进入 软件开发/.NET技术 版面！'),(8,1,'.NET/ASP开发','许久','欢迎进入 .NET/ASP开发 版面！'),(9,3,'VB技术','tsoft','欢迎进入 软件开发/VB技术 版面！'),(10,3,'C/C++技术','tsoft','欢迎进入 软件开发/C/C++技术 版面！'),(11,3,'其他','tsoft','欢迎进入 软件开发/其他 版面！'),(12,4,'汇编语言','yxq','欢迎进入 硬件开发/汇编语言 版面！'),(13,4,'单片机','tsoft','欢迎进入 硬件开发/单片机 版面！'),(14,4,'硬件设计','tsoft','欢迎进入 硬件开发/硬件设计 版面！'),(15,4,'其他','tsoft','欢迎进入 硬件开发/其他 版面！'),(16,1,'其他','tsoft','欢迎进入 WEB开发/其他 版面！'),(17,2,'MS-SQL Server开发','莫明','欢迎进入 数据库开发/MS-SQL Server开发 版面！'),(18,2,'PowerBuilder开发','莫明','欢迎进入 数据库开发/PowerBuilder开发 版面！'),(19,5,'问候','00','请不要乱写内容'),(20,5,'44444','00','4444');

/*Table structure for table `tb_class` */

DROP TABLE IF EXISTS `tb_class`;

CREATE TABLE `tb_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(40) DEFAULT NULL,
  `class_intro` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tb_class` */

insert  into `tb_class`(`class_id`,`class_name`,`class_intro`) values (1,'WEB开发','欢迎进入“WEB开发”世界，互相交流、互相学习！'),(2,'数据库开发','欢迎进入“数据库开发”世界，互相交流、互相学习！'),(3,'软件开发','欢迎进入“软件开发”世界，互相交流、互相学习！'),(4,'硬件开发','欢迎进入“硬件开发”世界，互相交流、互相学习！'),(5,'关爱','欢迎访问！');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `user_face` varchar(11) DEFAULT NULL,
  `user_sex` varchar(2) DEFAULT NULL,
  `user_phone` varchar(12) DEFAULT NULL,
  `user_OICQ` varchar(14) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_from` varchar(200) DEFAULT NULL,
  `user_able` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id`,`user_name`,`user_password`,`user_face`,`user_sex`,`user_phone`,`user_OICQ`,`user_email`,`user_from`,`user_able`) values (1,'tsoft','111','user0.gif','男','134****4783','10500646A','xujiu1@***.com.cn','吉林省长春市','2'),(2,'莫明','555','user4.gif','男','134****4783','10500646A','xujiu1@***.com.cn','吉林省长春市','1'),(5,'荣*天','888','user15.gif','男','134****4783','10500646A','xujiu1@***.com.cn','吉林省长春市','1'),(8,'雨飞','333','user18.gif','女','134****4783','10500646A','xujiu1@***.com.cn','吉林省长春市','1'),(9,'许久','444','user5.gif','男','134****4783','10500646A','xujiu1@***.com.cn','吉林省长春市','1'),(14,'00','000000','user6.gif','女','135*****117','5454','11@11.com','长春','1'),(15,'java1234','123','user15.gif','女','12345678900','12321','231@qq.com','江苏','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
