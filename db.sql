-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm0q5q3
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssm0q5q3`
--

/*!40000 DROP DATABASE IF EXISTS `ssm0q5q3`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm0q5q3` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm0q5q3`;

--
-- Table structure for table `chuqinqingkuang`
--

DROP TABLE IF EXISTS `chuqinqingkuang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chuqinqingkuang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `chuqinrenshu` int(11) DEFAULT NULL COMMENT '出勤人数',
  `queqinrenshu` int(11) DEFAULT NULL COMMENT '缺勤人数',
  `daokelv` float DEFAULT NULL COMMENT '到课率',
  `kaoqinriqi` date DEFAULT NULL COMMENT '考勤日期',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='出勤情况';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chuqinqingkuang`
--

LOCK TABLES `chuqinqingkuang` WRITE;
/*!40000 ALTER TABLE `chuqinqingkuang` DISABLE KEYS */;
INSERT INTO `chuqinqingkuang` VALUES (71,'2022-03-06 09:45:42','课程名称1','课程类型1',1,1,1,'2022-03-06','教师工号1','教师姓名1'),(72,'2022-03-06 09:45:42','课程名称2','课程类型2',2,2,2,'2022-03-06','教师工号2','教师姓名2'),(73,'2022-03-06 09:45:42','课程名称3','课程类型3',3,3,3,'2022-03-06','教师工号3','教师姓名3'),(74,'2022-03-06 09:45:42','课程名称4','课程类型4',4,4,4,'2022-03-06','教师工号4','教师姓名4'),(75,'2022-03-06 09:45:42','课程名称5','课程类型5',5,5,5,'2022-03-06','教师工号5','教师姓名5'),(76,'2022-03-06 09:45:42','课程名称6','课程类型6',6,6,6,'2022-03-06','教师工号6','教师姓名6');
/*!40000 ALTER TABLE `chuqinqingkuang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/picture1.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg'),(7,'APIKey','ihML0NfEM0jokUAuBD9tbYtW'),(8,'SecretKey','WK2bRUFf2uNe3oEoQXULpi8Y37aCvFdD');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskechengxinxi`
--

DROP TABLE IF EXISTS `discusskechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='课程信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskechengxinxi`
--

LOCK TABLES `discusskechengxinxi` WRITE;
/*!40000 ALTER TABLE `discusskechengxinxi` DISABLE KEYS */;
INSERT INTO `discusskechengxinxi` VALUES (91,'2022-03-06 09:45:42',1,1,'用户名1','评论内容1','回复内容1'),(92,'2022-03-06 09:45:42',2,2,'用户名2','评论内容2','回复内容2'),(93,'2022-03-06 09:45:42',3,3,'用户名3','评论内容3','回复内容3'),(94,'2022-03-06 09:45:42',4,4,'用户名4','评论内容4','回复内容4'),(95,'2022-03-06 09:45:42',5,5,'用户名5','评论内容5','回复内容5'),(96,'2022-03-06 09:45:42',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusskechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiaoshi`
--

DROP TABLE IF EXISTS `jiaoshi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiaoshigonghao` varchar(200) NOT NULL COMMENT '教师工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiaoshigonghao` (`jiaoshigonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiaoshi`
--

LOCK TABLES `jiaoshi` WRITE;
/*!40000 ALTER TABLE `jiaoshi` DISABLE KEYS */;
INSERT INTO `jiaoshi` VALUES (21,'2022-03-06 09:45:42','教师工号1','123456','教师姓名1','男','职称1','13823888881','upload/jiaoshi_zhaopian1.jpg'),(22,'2022-03-06 09:45:42','教师工号2','123456','教师姓名2','男','职称2','13823888882','upload/jiaoshi_zhaopian2.jpg'),(23,'2022-03-06 09:45:42','教师工号3','123456','教师姓名3','男','职称3','13823888883','upload/jiaoshi_zhaopian3.jpg'),(24,'2022-03-06 09:45:42','教师工号4','123456','教师姓名4','男','职称4','13823888884','upload/jiaoshi_zhaopian4.jpg'),(25,'2022-03-06 09:45:42','教师工号5','123456','教师姓名5','男','职称5','13823888885','upload/jiaoshi_zhaopian5.jpg'),(26,'2022-03-06 09:45:42','教师工号6','123456','教师姓名6','男','职称6','13823888886','upload/jiaoshi_zhaopian6.jpg');
/*!40000 ALTER TABLE `jiaoshi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengfenlei`
--

DROP TABLE IF EXISTS `kechengfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='课程分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengfenlei`
--

LOCK TABLES `kechengfenlei` WRITE;
/*!40000 ALTER TABLE `kechengfenlei` DISABLE KEYS */;
INSERT INTO `kechengfenlei` VALUES (41,'2022-03-06 09:45:42','类型1'),(42,'2022-03-06 09:45:42','类型2'),(43,'2022-03-06 09:45:42','类型3'),(44,'2022-03-06 09:45:42','类型4'),(45,'2022-03-06 09:45:42','类型5'),(46,'2022-03-06 09:45:42','类型6');
/*!40000 ALTER TABLE `kechengfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengqiandao`
--

DROP TABLE IF EXISTS `kechengqiandao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengqiandao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `qiandaoshijian` datetime DEFAULT NULL COMMENT '签到时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='课程签到';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengqiandao`
--

LOCK TABLES `kechengqiandao` WRITE;
/*!40000 ALTER TABLE `kechengqiandao` DISABLE KEYS */;
INSERT INTO `kechengqiandao` VALUES (51,'2022-03-06 09:45:42','课程名称1','课程类型1','2022-03-06 17:45:42','备注1','upload/kechengqiandao_tupian1.jpg','教师工号1','学号1','姓名1','是','',1),(52,'2022-03-06 09:45:42','课程名称2','课程类型2','2022-03-06 17:45:42','备注2','upload/kechengqiandao_tupian2.jpg','教师工号2','学号2','姓名2','是','',2),(53,'2022-03-06 09:45:42','课程名称3','课程类型3','2022-03-06 17:45:42','备注3','upload/kechengqiandao_tupian3.jpg','教师工号3','学号3','姓名3','是','',3),(54,'2022-03-06 09:45:42','课程名称4','课程类型4','2022-03-06 17:45:42','备注4','upload/kechengqiandao_tupian4.jpg','教师工号4','学号4','姓名4','是','',4),(55,'2022-03-06 09:45:42','课程名称5','课程类型5','2022-03-06 17:45:42','备注5','upload/kechengqiandao_tupian5.jpg','教师工号5','学号5','姓名5','是','',5),(56,'2022-03-06 09:45:42','课程名称6','课程类型6','2022-03-06 17:45:42','备注6','upload/kechengqiandao_tupian6.jpg','教师工号6','学号6','姓名6','是','',6);
/*!40000 ALTER TABLE `kechengqiandao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kechengxinxi`
--

DROP TABLE IF EXISTS `kechengxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kechengxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `kechengmingcheng` varchar(200) DEFAULT NULL COMMENT '课程名称',
  `kechengleixing` varchar(200) DEFAULT NULL COMMENT '课程类型',
  `kechengjianjie` longtext COMMENT '课程简介',
  `kaikeshijian` datetime DEFAULT NULL COMMENT '开课时间',
  `jiekeshijian` datetime DEFAULT NULL COMMENT '结课时间',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='课程信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kechengxinxi`
--

LOCK TABLES `kechengxinxi` WRITE;
/*!40000 ALTER TABLE `kechengxinxi` DISABLE KEYS */;
INSERT INTO `kechengxinxi` VALUES (31,'2022-03-06 09:45:42','课程名称1','课程类型1','课程简介1','2022-03-06 17:45:42','2022-03-06 17:45:42','upload/kechengxinxi_kechengtupian1.jpg','教师工号1','教师姓名1','2022-03-06 17:45:42',1),(32,'2022-03-06 09:45:42','课程名称2','课程类型2','课程简介2','2022-03-06 17:45:42','2022-03-06 17:45:42','upload/kechengxinxi_kechengtupian2.jpg','教师工号2','教师姓名2','2022-03-06 17:45:42',2),(33,'2022-03-06 09:45:42','课程名称3','课程类型3','课程简介3','2022-03-06 17:45:42','2022-03-06 17:45:42','upload/kechengxinxi_kechengtupian3.jpg','教师工号3','教师姓名3','2022-03-06 17:45:42',3),(34,'2022-03-06 09:45:42','课程名称4','课程类型4','课程简介4','2022-03-06 17:45:42','2022-03-06 17:45:42','upload/kechengxinxi_kechengtupian4.jpg','教师工号4','教师姓名4','2022-03-06 17:45:42',4),(35,'2022-03-06 09:45:42','课程名称5','课程类型5','课程简介5','2022-03-06 17:45:42','2022-03-06 17:45:42','upload/kechengxinxi_kechengtupian5.jpg','教师工号5','教师姓名5','2022-03-06 17:45:42',5),(36,'2022-03-06 09:45:42','课程名称6','课程类型6','课程简介6','2022-03-06 17:45:42','2022-03-06 17:45:42','upload/kechengxinxi_kechengtupian6.jpg','教师工号6','教师姓名6','2022-03-06 17:45:42',6);
/*!40000 ALTER TABLE `kechengxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qiandaomingling`
--

DROP TABLE IF EXISTS `qiandaomingling`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qiandaomingling` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `qiandaokecheng` varchar(200) DEFAULT NULL COMMENT '签到课程',
  `kechengtupian` varchar(200) DEFAULT NULL COMMENT '课程图片',
  `fabushijian` datetime DEFAULT NULL COMMENT '发布时间',
  `jiaoshigonghao` varchar(200) DEFAULT NULL COMMENT '教师工号',
  `jiaoshixingming` varchar(200) DEFAULT NULL COMMENT '教师姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='签到命令';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qiandaomingling`
--

LOCK TABLES `qiandaomingling` WRITE;
/*!40000 ALTER TABLE `qiandaomingling` DISABLE KEYS */;
INSERT INTO `qiandaomingling` VALUES (61,'2022-03-06 09:45:42','学号1','姓名1','签到课程1','upload/qiandaomingling_kechengtupian1.jpg','2022-03-06 17:45:42','教师工号1','教师姓名1',1),(62,'2022-03-06 09:45:42','学号2','姓名2','签到课程2','upload/qiandaomingling_kechengtupian2.jpg','2022-03-06 17:45:42','教师工号2','教师姓名2',2),(63,'2022-03-06 09:45:42','学号3','姓名3','签到课程3','upload/qiandaomingling_kechengtupian3.jpg','2022-03-06 17:45:42','教师工号3','教师姓名3',3),(64,'2022-03-06 09:45:42','学号4','姓名4','签到课程4','upload/qiandaomingling_kechengtupian4.jpg','2022-03-06 17:45:42','教师工号4','教师姓名4',4),(65,'2022-03-06 09:45:42','学号5','姓名5','签到课程5','upload/qiandaomingling_kechengtupian5.jpg','2022-03-06 17:45:42','教师工号5','教师姓名5',5),(66,'2022-03-06 09:45:42','学号6','姓名6','签到课程6','upload/qiandaomingling_kechengtupian6.jpg','2022-03-06 17:45:42','教师工号6','教师姓名6',6);
/*!40000 ALTER TABLE `qiandaomingling` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  `type` varchar(200) DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-06 09:45:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `yuanxi` varchar(200) DEFAULT NULL COMMENT '院系',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-06 09:45:42','学号1','123456','姓名1','男','院系1','专业1','班级1','upload/xuesheng_touxiang1.jpg'),(12,'2022-03-06 09:45:42','学号2','123456','姓名2','男','院系2','专业2','班级2','upload/xuesheng_touxiang2.jpg'),(13,'2022-03-06 09:45:42','学号3','123456','姓名3','男','院系3','专业3','班级3','upload/xuesheng_touxiang3.jpg'),(14,'2022-03-06 09:45:42','学号4','123456','姓名4','男','院系4','专业4','班级4','upload/xuesheng_touxiang4.jpg'),(15,'2022-03-06 09:45:42','学号5','123456','姓名5','男','院系5','专业5','班级5','upload/xuesheng_touxiang5.jpg'),(16,'2022-03-06 09:45:42','学号6','123456','姓名6','男','院系6','专业6','班级6','upload/xuesheng_touxiang6.jpg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-10 20:59:31
