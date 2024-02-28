/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm89in6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm89in6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm89in6`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm89in6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm89in6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm89in6/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618671197026 DEFAULT CHARSET=utf8 COMMENT='交流论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`addtime`,`title`,`content`,`parentid`,`userid`,`username`,`isdone`) values (41,'2021-04-17 22:48:25','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(42,'2021-04-17 22:48:25','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(43,'2021-04-17 22:48:25','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(44,'2021-04-17 22:48:25','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(45,'2021-04-17 22:48:25','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(46,'2021-04-17 22:48:25','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1618671188580,'2021-04-17 22:53:07','快去叫老爸回来吃饭','快去叫老爸回来吃饭弟弟',0,1618671004733,'1','开放'),(1618671197025,'2021-04-17 22:53:16',NULL,'立马去',1618671188580,1618671004733,'1',NULL);

/*Table structure for table `jiatingchengyuan` */

DROP TABLE IF EXISTS `jiatingchengyuan`;

CREATE TABLE `jiatingchengyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiatingjiaose` varchar(200) DEFAULT NULL COMMENT '家庭角色',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618671004734 DEFAULT CHARSET=utf8 COMMENT='家庭成员';

/*Data for the table `jiatingchengyuan` */

insert  into `jiatingchengyuan`(`id`,`addtime`,`zhanghao`,`xingming`,`mima`,`jiatingjiaose`,`xingbie`,`shouji`,`zhaopian`) values (11,'2021-04-17 22:48:25','家庭成员1','姓名1','123456','女儿','女','13823888881','http://localhost:8080/ssm89in6/upload/jiatingchengyuan_zhaopian1.jpg'),(12,'2021-04-17 22:48:25','家庭成员2','姓名2','123456','家庭角色2','男','13823888882','http://localhost:8080/ssm89in6/upload/jiatingchengyuan_zhaopian2.jpg'),(13,'2021-04-17 22:48:25','家庭成员3','姓名3','123456','家庭角色3','男','13823888883','http://localhost:8080/ssm89in6/upload/jiatingchengyuan_zhaopian3.jpg'),(14,'2021-04-17 22:48:25','家庭成员4','姓名4','123456','家庭角色4','男','13823888884','http://localhost:8080/ssm89in6/upload/jiatingchengyuan_zhaopian4.jpg'),(16,'2021-04-17 22:48:25','家庭成员6','姓名6','123456','家庭角色6','男','13823888886','http://localhost:8080/ssm89in6/upload/jiatingchengyuan_zhaopian6.jpg'),(1618671004733,'2021-04-17 22:50:04','1','1','1','儿子','男','17817685412','http://localhost:8080/ssm89in6/upload/1618671027874.jpg');

/*Table structure for table `jiatingshiwu` */

DROP TABLE IF EXISTS `jiatingshiwu`;

CREATE TABLE `jiatingshiwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiwumingcheng` varchar(200) DEFAULT NULL COMMENT '事务名称',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shiwuleixing` varchar(200) DEFAULT NULL COMMENT '事务类型',
  `shiwuxiangqing` longtext COMMENT '事务详情',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shiwujindu` varchar(200) DEFAULT NULL COMMENT '事务进度',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618671151122 DEFAULT CHARSET=utf8 COMMENT='家庭事务';

/*Data for the table `jiatingshiwu` */

insert  into `jiatingshiwu`(`id`,`addtime`,`shiwumingcheng`,`tupian`,`shiwuleixing`,`shiwuxiangqing`,`fabushijian`,`zhanghao`,`xingming`,`shiwujindu`,`wanchengshijian`) values (31,'2021-04-17 22:48:25','事务名称1','http://localhost:8080/ssm89in6/upload/jiatingshiwu_tupian1.jpg','生活缴费事务','事务详情1','2021-04-17 22:48:25','家庭成员3','姓名3','进行中','2021-04-18 22:48:25'),(32,'2021-04-17 22:48:25','事务名称2','http://localhost:8080/ssm89in6/upload/jiatingshiwu_tupian2.jpg','事务类型2','事务详情2','2021-04-17 22:48:25','账号2','姓名2','未完成','2021-04-17 22:48:25'),(33,'2021-04-17 22:48:25','事务名称3','http://localhost:8080/ssm89in6/upload/jiatingshiwu_tupian3.jpg','事务类型3','事务详情3','2021-04-17 22:48:25','账号3','姓名3','未完成','2021-04-17 22:48:25'),(34,'2021-04-17 22:48:25','事务名称4','http://localhost:8080/ssm89in6/upload/jiatingshiwu_tupian4.jpg','事务类型4','事务详情4','2021-04-17 22:48:25','账号4','姓名4','未完成','2021-04-17 22:48:25'),(35,'2021-04-17 22:48:25','事务名称5','http://localhost:8080/ssm89in6/upload/jiatingshiwu_tupian5.jpg','事务类型5','事务详情5','2021-04-17 22:48:25','账号5','姓名5','未完成','2021-04-17 22:48:25'),(36,'2021-04-17 22:48:25','事务名称6','http://localhost:8080/ssm89in6/upload/jiatingshiwu_tupian6.jpg','事务类型6','事务详情6','2021-04-17 22:48:25','账号6','姓名6','未完成','2021-04-17 22:48:25'),(1618671151121,'2021-04-17 22:52:30','去交水电费','http://localhost:8080/ssm89in6/upload/1618671122021.jpg','事务类型5','去交水电费','2021-04-17 22:51:16','家庭成员2','姓名2','未完成','2021-04-19 22:51:16');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='家庭公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (51,'2021-04-17 22:48:25','每人轮流整理一天卫生','每人轮流整理一天卫生','http://localhost:8080/ssm89in6/upload/news_picture1.jpg','<p>每人轮流整理一天卫生</p>'),(52,'2021-04-17 22:48:25','标题2','简介2','http://localhost:8080/ssm89in6/upload/news_picture2.jpg','内容2'),(53,'2021-04-17 22:48:25','标题3','简介3','http://localhost:8080/ssm89in6/upload/news_picture3.jpg','内容3'),(54,'2021-04-17 22:48:25','标题4','简介4','http://localhost:8080/ssm89in6/upload/news_picture4.jpg','内容4'),(55,'2021-04-17 22:48:25','标题5','简介5','http://localhost:8080/ssm89in6/upload/news_picture5.jpg','内容5'),(56,'2021-04-17 22:48:25','标题6','简介6','http://localhost:8080/ssm89in6/upload/news_picture6.jpg','内容6');

/*Table structure for table `shiwuleixing` */

DROP TABLE IF EXISTS `shiwuleixing`;

CREATE TABLE `shiwuleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shiwuleixing` varchar(200) DEFAULT NULL COMMENT '事务类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='事务类型';

/*Data for the table `shiwuleixing` */

insert  into `shiwuleixing`(`id`,`addtime`,`shiwuleixing`) values (21,'2021-04-17 22:48:25','生活缴费事务'),(22,'2021-04-17 22:48:25','通信网络事务'),(23,'2021-04-17 22:48:25','事务类型3'),(24,'2021-04-17 22:48:25','事务类型4'),(25,'2021-04-17 22:48:25','事务类型5'),(26,'2021-04-17 22:48:25','事务类型6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1618671004733,'1','jiatingchengyuan','家庭成员','m8b68okocitpi3h82qxlexkis5g6doyw','2021-04-17 22:50:08','2021-04-17 23:50:09'),(2,1,'abo','users','管理员','nriem2a5z6tj3soyrtvaww5lauw12q47','2021-04-17 22:53:59','2021-04-17 23:53:59');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-17 22:48:25');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
