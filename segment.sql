-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: segment
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `articleList`
--

DROP TABLE IF EXISTS `articleList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articleList` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `typeid` int(11) NOT NULL,
  `title` varchar(240) NOT NULL,
  `content` varchar(6000) NOT NULL,
  `uid` bigint(20) NOT NULL,
  `looknum` bigint(20) NOT NULL DEFAULT '0',
  `renum` int(11) NOT NULL DEFAULT '0',
  `finished` tinyint(4) NOT NULL DEFAULT '0',
  `updatetime` timestamp NULL DEFAULT NULL,
  `createtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `subTitle` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `titleLabel` varchar(45) DEFAULT NULL,
  `sort` int(11) DEFAULT '0',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articleList`
--

LOCK TABLES `articleList` WRITE;
/*!40000 ALTER TABLE `articleList` DISABLE KEYS */;
INSERT INTO `articleList` VALUES (11,3,'公司注销-普通-资质审批-首页显示','               <p>撒发生纠纷；alsfsafasfasfsaffas</p>',7,0,0,0,'2018-05-25 02:59:45','2018-05-25 02:59:45','普通二级标题',1,'fdafdas',0),(12,1,'注销-首页推荐','  阿法',7,0,0,0,'2018-05-25 03:25:30','2018-05-25 03:25:30','二级表头',1,'推荐文字111',0),(13,1,'注销2','      fas',7,0,0,0,'2018-05-25 03:38:35','2018-05-25 03:38:35','注销二级文字',1,'大法2',0),(14,2,'外资注册-普通',' fasf',7,0,0,0,'2018-05-25 03:40:00','2018-05-25 03:40:00','fasf',0,'',0),(15,1,'普通注销',' faf',7,0,0,0,'2018-05-25 03:26:27','2018-05-25 03:26:27','gsg',0,' ',0),(16,3,'资质审批普通','阿发发',7,0,0,0,'2018-05-25 03:39:11','2018-05-25 03:39:11','资质二级',0,' ',0),(17,2,'外资注册 推荐首页','发发是发撒风发',7,0,0,0,'2018-05-25 03:40:30','2018-05-25 03:40:30','大法舒服',1,' 首页推荐文字---外资注册',0),(18,1,'2015 JBC_Inhibition of Neisseria gonorrhoeae Type II Topoisomerases by the Novel Spiropyrimidinetrione AZD0914','<style type=\"text/css\">li.li1 {margin: 0.0px 0.0px 0.0px 0.0px; text-align: justify; font: 10.5px \'Trebuchet MS\'; color: #000000; -webkit-text-stroke: #000000}\r\nspan.s1 {-webkit-text-stroke: 0px #000000}\r\nspan.s2 {font-kerning: none}\r\nspan.s3 {font: 10.5px \'PingFang SC\'; font-kerning: none}\r\nspan.Apple-tab-span {white-space:pre}\r\nol.ol1 {list-style-type: decimal}</style><ol class=\"ol1\"><li class=\"li1\"><span class=\"s1\"><span>	</span>1.</span><span class=\"s2\">AZD0914</span><span class=\"s3\">的作用机制</span></li><li class=\"li1\"><span>	</span>2.<span class=\"s2\">SOS Induction in E. coli</span></li><li class=\"li1\"><span>	</span>3.<span class=\"s2\">Supercoiling and Decatenation</span></li><li class=\"li1\"><span>	</span>4.<span class=\"s2\">Cleaved Complex Assay</span></li><li class=\"li1\"><span>	</span>5.<span class=\"s2\">Religation of Double Strand DNA in the Cleaved Complex</span></li><li class=\"li1\"><span>	</span>6.<span class=\"s2\">Selectivity for Bacterial Topoisomerases</span></li></ol><br /> ',7,0,0,0,'2018-06-19 01:22:44','2018-06-19 01:22:44','Inhibition of Neisseria gonorrhoeae Type II Topoisomerases by the Novel Spiropyrimidinetrione AZD0914*(新型螺旋嘧啶三嗪AZD0914抑制淋病奈瑟氏球菌II型拓扑异构酶)\r\n',0,' ',0);
/*!40000 ALTER TABLE `articleList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_user`
--

DROP TABLE IF EXISTS `client_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `socket_client_id` varchar(100) NOT NULL,
  `server_socket_id` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_user`
--

LOCK TABLES `client_user` WRITE;
/*!40000 ALTER TABLE `client_user` DISABLE KEYS */;
INSERT INTO `client_user` VALUES (140,'xkrzVOSak8UhQm7tgv2frbokLrtaZQ1526890819916',1,'/client/consult#EIVmpioMayHKlq9EAACA','0veuA3uJn3P3V4NrAAA4'),(141,'5goBaX8lNE4GwHB4j5SJaBCaoeusdv1526890838955',1,'/client/consult#Hus6Huuw-QIlg5cxAACB','0veuA3uJn3P3V4NrAAA4'),(142,'jsnQYITcZREO06wScdkRTLkgqNAxTU1526890935371',0,'/client/consult#folnbTIV3cYyGjujAAAE','0veuA3uJn3P3V4NrAAA4'),(143,'lS8ZaeSesMEKYxOljN0WpqSddQNqHA1526890967872',0,'/client/consult#QxtaXLbQODIaAV1mAAAG','0veuA3uJn3P3V4NrAAA4'),(144,'qdNTfvS19UWK1mvsUKtkBCJT3UQBaW1526891673810',0,'/client/consult#XWXEmB3VJMIbpabeAAAB','0veuA3uJn3P3V4NrAAA4'),(145,'WNBCpSZ9PT8Idxkc2Q8LDWYlL9JOgn1526904497276',0,'/client/consult#cjVPD3fEaGzTTYi3AAAN','0veuA3uJn3P3V4NrAAA4'),(146,'jY3kHQtuSTKZcqJyDDMARmAe3cJUd31526910058557',0,'/client/consult#nZJIlrH6NmhX3KGNAAAO','0veuA3uJn3P3V4NrAAA4'),(147,'2Q5MhuKeAFMYhH8hauw14s1gQIRND31526912994607',0,'/client/consult#1qL_mVGP1zvnRKCoAAAP','0veuA3uJn3P3V4NrAAA4'),(148,'lwlU3o5J81RAFqWMH95f0bgTjysxlh1526940768426',0,'/client/consult#zkjSLCj5I_VKPhBgAAAQ','0veuA3uJn3P3V4NrAAA4'),(149,'cLT07RJ6t6TUcHsfy6nQdOH2sKlc3a1526940906696',0,'/client/consult#eDZKLXWDsd78G_SRAAAR','0veuA3uJn3P3V4NrAAA4'),(150,'NBDgTdCehLGD8bXLeoeNAi6E1sxV4t1526993221231',0,'/client/consult#xbmOEfzM3MU6GeQMAABI','0veuA3uJn3P3V4NrAAA4'),(151,'jNG2uFLj4X7FIOyC2SBsYNP5eZkjId1526993629881',0,'/client/consult#6MrnMEbgc8xrtXWCAABJ','0veuA3uJn3P3V4NrAAA4'),(152,'NruIViljgExndI8bHu0DgnG96KcaSg1527001030186',0,'/client/consult#9AJ0dw9J2ych_xDOAAAB','0veuA3uJn3P3V4NrAAA4'),(153,'kihoa0mbbY9saqVlmDfm7brMdK7rWa1527047977300',0,'/client/consult#4Hgq45s6YrHCFlB4AADe','0veuA3uJn3P3V4NrAAA4'),(154,'iThLoVfFA63lvIS0hIbfZh06rRcy6C1527055250001',0,'/client/consult#wIkJNlltX4jeWYnjAADf','0veuA3uJn3P3V4NrAAA4'),(155,'9tS14rsseTn9RKXdmbXj99JiT4ZspB1527055509263',0,'/client/consult#yAI9jdO-ngtUUF7lAADg','0veuA3uJn3P3V4NrAAA4'),(156,'O8Nr0R9sin5YPLkitScgpZ29WfNZ4m1527057475171',0,'/client/consult#bRmjICSgt3rekDAJAADh','0veuA3uJn3P3V4NrAAA4'),(157,'RDGr32QGlww0OpSbqBJoi3qvu84pGP1527060545291',0,'/client/consult#DwTm0ZKNgoef9eUjAADi','0veuA3uJn3P3V4NrAAA4'),(158,'KXqv25oBBdZoxS04eID1y0iaYUAVc31527063357951',0,'/client/consult#zLRQuquDndD9I6cmAADj','0veuA3uJn3P3V4NrAAA4'),(159,'EOwFfWa6VlfdGD80akVZs39pyJEcko1527066407430',0,'/client/consult#9yzNQlhTcWL8qrOyAADk','0veuA3uJn3P3V4NrAAA4'),(160,'bBn4CBLoZE8i5O5gBI1RpmWuc8JvvA1527066429480',0,'/client/consult#Au60NMv42ZI9jKt2AADm','0veuA3uJn3P3V4NrAAA4'),(161,'gzPS009l7TTRt12GgxH937rKEM2HVk1527076202756',0,'/client/consult#7iv_sb4TdUx0tnfXAADx','0veuA3uJn3P3V4NrAAA4'),(162,'3YXkKH9YkFa09qiF0QMZbHc3jFjs4V1527076203465',0,'/client/consult#4wwFNniOhhYvHFtPAADy','0veuA3uJn3P3V4NrAAA4'),(163,'aziuistudt2cZMxL7LfSB40HZhBFeC1527085443509',0,'/client/consult#B3d7kCzl0cSr2ABjAAAK','0veuA3uJn3P3V4NrAAA4'),(164,'NoC0GN4fAqUlT8mNRkfXjETqgpghGO1527131864332',0,'/client/consult#dtQdqe7PwNvPG_0SAABI','0veuA3uJn3P3V4NrAAA4'),(165,'WT1v10X8aQTrlmEp9wfUYcgYbLgVsf1527133235714',0,'/client/consult#smPL7fDM3kHPK2OVAABJ','0veuA3uJn3P3V4NrAAA4'),(166,'7sSiSc77PYPQ8tPnveKwyZLFKAlbuj1527136905659',0,'/client/consult#6oCb_wPGdu2R1s-EAABK','0veuA3uJn3P3V4NrAAA4'),(167,'5R5iqAdOIGYJhgFC0eKQ4nQPmnvmFl1527138246493',0,'/client/consult#MfAETqzXdkB1YnQlAAAA','0veuA3uJn3P3V4NrAAA4'),(168,'byklLs2ilBOhy6VfvGMebFxdbuhagm1527148648371',1,'/client/consult#Cdfi0hCKoUcM_UNMAAAC','0veuA3uJn3P3V4NrAAA4'),(169,'L5EFNw9Jo9MAD9XeCEwiSlhoASA5Qo1527174498076',1,'/client/consult#XGKKJthyMn95PfN8AAAC','0veuA3uJn3P3V4NrAAA4'),(170,'wv2gpKC40N5Lw5Rw096G87C0Og4ihM1527201500315',1,'/client/consult#CIK7in_HbXEfh_3zAAAH','0veuA3uJn3P3V4NrAAA4'),(171,'DFtwcCJrwWfwvhdxJ3JHMhyjp1eQ9X1527201857974',0,'/client/consult#hj5rHCdxJaGHYt2jAAAD','0veuA3uJn3P3V4NrAAA4'),(172,'jFNmgAyYGuRH5vupfEj4NKvPldVjb01527217047902',1,'/client/consult#8RcWA1Z2iBuyLPwFAAAB','0veuA3uJn3P3V4NrAAA4'),(173,'DO8vm5Nma1Q4Rj8LDttEho1IbJFVdj1527223484096',0,'/client/consult#cTjQEF7H6S3BEtHrAAAB','0veuA3uJn3P3V4NrAAA4'),(174,'kaQI5W6BzxbI9qf5E4W7ijHsnTj0hF1527223937310',0,'/client/consult#Funntms9_tJ8EkNDAAAI','0veuA3uJn3P3V4NrAAA4'),(175,'gN6V7RiqWzz0cfMfy1gK9JdFklKge81527223941686',0,'/client/consult#sGB0XUzlWR5av7geAAAJ','0veuA3uJn3P3V4NrAAA4'),(176,'WmaOdAspIJ2ep7depXZ64DCGh9JdFk1527232401206',0,'/client/consult#j_pA9yOJ67--c7sYAAAT','0veuA3uJn3P3V4NrAAA4'),(177,'bVvo5vpIem7dUeH4ByeRSTam5neb7S1527338785763',1,'/client/consult#bIXLB_4BLdr6XEDDAAAA','0veuA3uJn3P3V4NrAAA4'),(178,'BPyg6LIHAhLVCycpYiYwwIxt7pOo3W1527492847340',1,'/client/consult#_Q52jGQuzGsxFFXVAAAA','0veuA3uJn3P3V4NrAAA4'),(179,'plaMaUPh7Z9Ap1JvRw5Ivf08cdGRlN1527492869993',1,'/client/consult#hsCTkruQwT4-kUKfAAAB','0veuA3uJn3P3V4NrAAA4'),(180,'FRNarCrFUT3TbkI2upaadFqakYe9wJ1527493935128',1,'/client/consult#F6POmvxY0vFytxXhAAAC','0veuA3uJn3P3V4NrAAA4'),(181,'l5Y75TYUyFLA1Je11SfdQk5ygJcwfy1527494054197',0,'/client/consult#1MS4On1h6NsaPY3HAAAD','0veuA3uJn3P3V4NrAAA4'),(182,'nb7kov2M2A2c44JBJwO1I0wbGptuvh1527494449793',1,'/client/consult#mMpYSMOyQM4EnTv5AAAE','0veuA3uJn3P3V4NrAAA4'),(183,'kP36rIxBtsZFO6dv1zgtMkvkrVXgQh1527494473425',1,'/client/consult#AfWqmXrGeYQ1Cjx8AAAF','0veuA3uJn3P3V4NrAAA4'),(184,'IQeh5zz0lij1E0se11kwJq2lTyBR131527495006692',0,'/client/consult#t7whsk_8EhJ0qE_9AAAF','0veuA3uJn3P3V4NrAAA4'),(185,'MhWMrNUdGZmdSgMpuyKHlLpoIgpSW01527495204924',0,'/client/consult#0CgBE_8tjJZ2mTUYAAAG','0veuA3uJn3P3V4NrAAA4'),(186,'lYxg0QiusvARBmSp8Ft0qZ5zokSV9v1527505030923',0,'/client/consult#3HEQ1KgPpGJvMDkEAAAI','0veuA3uJn3P3V4NrAAA4'),(187,'mf2c5racBJlXsLjnkQVX2dGbCkuexe1527505205196',0,'/client/consult#O1JldfAMlVUkR0BjAAAJ','0veuA3uJn3P3V4NrAAA4'),(188,'17otxUezQP7LEXWJDIRMN87tiiud3Y1527512125973',0,'/client/consult#R2KSzLx02yxanaiaAAAK','0veuA3uJn3P3V4NrAAA4'),(189,'YBJxBTSDJEy73a97NPq5DZA89E3uxB1527515359167',1,'/client/consult#tlTVu_fSb8ax5J98AAAL','0veuA3uJn3P3V4NrAAA4'),(190,'Vo7wWrylZp6rI2kg3HmHqwYUep3amY1527516389349',0,'/client/consult#3BkeC5Qqoxe97bi1AAAB','0veuA3uJn3P3V4NrAAA4'),(191,'vcoakOotxDLaJr1Qwyyvr2YxaHJzJn1529371168340',0,'/client/consult#16KifhbpjkkpeLWmAAAA','0veuA3uJn3P3V4NrAAA4'),(192,'kTAe41Ja001rjdFQ3KZ3tR6jhn8Nbc1531221282540',1,'/client/consult#Uvppkp8MGJqez34GAAAA','0veuA3uJn3P3V4NrAAA4');
/*!40000 ALTER TABLE `client_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `client_ip` varchar(100) NOT NULL COMMENT '客户ip',
  `chattime` datetime NOT NULL COMMENT '聊天时间',
  `message` varchar(1000) NOT NULL COMMENT '聊天消息',
  `client_id` varchar(100) DEFAULT NULL COMMENT '客户端id',
  `whosaid` char(1) NOT NULL COMMENT '该条信息是谁发送的  S 客服      C 用户',
  `hasread` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=768 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (745,7,'::1','2018-05-21 16:20:27','发发','xkrzVOSak8UhQm7tgv2frbokLrtaZQ1526890819916','C',0),(746,7,'::1','2018-05-21 16:20:43','fasts ad232','5goBaX8lNE4GwHB4j5SJaBCaoeusdv1526890838955','C',0),(747,7,'::1','2018-05-21 16:20:55','bbbb','5goBaX8lNE4GwHB4j5SJaBCaoeusdv1526890838955','C',0),(748,7,'::1','2018-05-21 16:21:17','发顺丰','xkrzVOSak8UhQm7tgv2frbokLrtaZQ1526890819916','C',0),(749,7,'::1','2018-05-21 16:21:34','fast ','xkrzVOSak8UhQm7tgv2frbokLrtaZQ1526890819916','S',0),(750,7,'::1','2018-05-21 16:21:37','放大舒服','xkrzVOSak8UhQm7tgv2frbokLrtaZQ1526890819916','C',0),(751,7,'::1','2018-05-21 16:22:26','发','jsnQYITcZREO06wScdkRTLkgqNAxTU1526890935371','C',0),(752,7,'::1','2018-05-21 16:22:35','fas ','jsnQYITcZREO06wScdkRTLkgqNAxTU1526890935371','S',0),(753,7,'::1','2018-05-21 16:22:37','发','jsnQYITcZREO06wScdkRTLkgqNAxTU1526890935371','C',0),(754,7,'::1','2018-05-21 16:22:40','fsa ','jsnQYITcZREO06wScdkRTLkgqNAxTU1526890935371','S',0),(755,7,'::1','2018-05-21 16:22:56','fas ','lS8ZaeSesMEKYxOljN0WpqSddQNqHA1526890967872','C',0),(756,7,'::1','2018-05-21 16:23:02','sad ','lS8ZaeSesMEKYxOljN0WpqSddQNqHA1526890967872','C',0),(757,7,'::1','2018-05-21 16:23:08','fa ','lS8ZaeSesMEKYxOljN0WpqSddQNqHA1526890967872','C',0),(758,7,'::1','2018-05-21 16:23:12','fas ','lS8ZaeSesMEKYxOljN0WpqSddQNqHA1526890967872','S',0),(759,7,'::1','2018-05-21 16:23:15','发送 ','jsnQYITcZREO06wScdkRTLkgqNAxTU1526890935371','C',0),(760,7,'::1','2018-05-23 17:07:14','你好','bBn4CBLoZE8i5O5gBI1RpmWuc8JvvA1527066429480','C',0),(761,7,'::1','2018-05-23 17:07:30','有什么事','bBn4CBLoZE8i5O5gBI1RpmWuc8JvvA1527066429480','S',0),(762,7,'::1','2018-05-23 17:07:57','的','bBn4CBLoZE8i5O5gBI1RpmWuc8JvvA1527066429480','C',0),(763,7,'::1','2018-05-23 17:08:08','订单','bBn4CBLoZE8i5O5gBI1RpmWuc8JvvA1527066429480','C',0),(764,7,'::1','2018-05-23 17:08:24','的','bBn4CBLoZE8i5O5gBI1RpmWuc8JvvA1527066429480','C',0),(765,7,'::1','2018-05-23 17:08:33','d ','bBn4CBLoZE8i5O5gBI1RpmWuc8JvvA1527066429480','C',0),(766,7,'::1','2018-05-23 19:50:07','放大对方','3YXkKH9YkFa09qiF0QMZbHc3jFjs4V1527076203465','C',0),(767,7,'::1','2018-05-23 19:50:30','你好，','3YXkKH9YkFa09qiF0QMZbHc3jFjs4V1527076203465','C',0);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(60) DEFAULT NULL,
  `pwd` varchar(60) DEFAULT NULL,
  `nicheng` varchar(120) DEFAULT NULL,
  `updtime` timestamp(6) NULL DEFAULT NULL,
  `createtime` timestamp(6) NULL DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `phone` varchar(45) DEFAULT NULL,
  `socketId` varchar(100) NOT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `emailuniq` (`email`),
  UNIQUE KEY `nichenguiq` (`nicheng`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (7,'aa','aa','李沛谊',NULL,'2018-03-14 19:01:23.000000',1,'13910825707','0veuA3uJn3P3V4NrAAA4'),(8,'b','bb','bb',NULL,'2018-03-14 19:01:40.000000',0,NULL,'vvv'),(9,'c','cc','cc',NULL,'2018-03-15 01:07:42.000000',0,NULL,''),(10,'dd','d','d',NULL,'2018-03-15 02:53:28.000000',0,NULL,''),(11,'vv','vv','',NULL,'2018-03-15 03:02:55.000000',0,NULL,''),(12,'vvv','vvv','vvv',NULL,'2018-03-15 03:38:38.000000',0,NULL,''),(13,'vvvv','vv','vvvv',NULL,'2018-03-15 03:39:14.000000',0,NULL,''),(14,'qq','qq','qq',NULL,'2018-03-15 03:39:59.000000',0,NULL,''),(15,'ccc','ccc','ccc',NULL,'2018-03-15 03:45:06.000000',0,NULL,''),(16,'vbbnn','nnn','nn',NULL,'2018-03-23 08:30:24.000000',0,NULL,'');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-15 20:42:47
