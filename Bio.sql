-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: Bio
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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `uid` int(11) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pwd` varchar(45) NOT NULL,
  `nicheng` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `pwd_UNIQUE` (`pwd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'aa','123','123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agency`
--

DROP TABLE IF EXISTS `agency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '经销商id',
  `agencyName` varchar(100) NOT NULL COMMENT '经销商名称',
  `agencyStatus` enum('Y','N') DEFAULT 'Y' COMMENT '经销商状态  Y 营业中   N停业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agency`
--

LOCK TABLES `agency` WRITE;
/*!40000 ALTER TABLE `agency` DISABLE KEYS */;
INSERT INTO `agency` VALUES (6,'aaa','Y');
/*!40000 ALTER TABLE `agency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experiment`
--

DROP TABLE IF EXISTS `experiment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experiment` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文献id',
  `experiment_name` varchar(2000) DEFAULT NULL COMMENT '文献名称',
  `issue_year` varchar(2000) DEFAULT NULL COMMENT '发表年份',
  `issue_time` datetime DEFAULT NULL COMMENT '发表时间',
  `magazine_name` varchar(2000) DEFAULT NULL COMMENT '出版物',
  `author` varchar(2000) DEFAULT NULL COMMENT '作者',
  `address` varchar(2000) DEFAULT NULL COMMENT '地址',
  `experiment_result` varchar(2055) DEFAULT NULL COMMENT '实验结果',
  `experiment_method` varchar(2055) DEFAULT NULL COMMENT '实验方法',
  `summary` varchar(2000) DEFAULT NULL COMMENT '摘要',
  `user_id` int(11) DEFAULT NULL COMMENT '添加用户ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `userId_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experiment`
--

LOCK TABLES `experiment` WRITE;
/*!40000 ALTER TABLE `experiment` DISABLE KEYS */;
INSERT INTO `experiment` VALUES (23,'fa','df','2018-07-15 11:54:40','fda','','','fdf','','',1,'2018-07-15 11:54:57');
/*!40000 ALTER TABLE `experiment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '货号Id',
  `item_name` varchar(200) DEFAULT NULL COMMENT '货号名称',
  `english_tag` int(11) DEFAULT '0' COMMENT '英文说明书数量',
  `chinese_tag` int(11) DEFAULT '0' COMMENT '中文说明书数量',
  `experiment_tag` int(11) DEFAULT '0' COMMENT '文献数量',
  `video_tag` int(11) DEFAULT '0' COMMENT '视频数量',
  `stock_tag` int(11) DEFAULT '0' COMMENT '库存数量',
  `samples_tag` int(11) DEFAULT '0' COMMENT '试用品数量',
  `message_tag` int(11) DEFAULT '0' COMMENT '评论数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=571 DEFAULT CHARSET=utf8 COMMENT='货号表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (568,'A1250',1,0,0,0,0,0,0),(569,'A1260',1,0,0,0,0,0,0),(570,'A1280',1,0,0,0,0,0,0);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemApply`
--

DROP TABLE IF EXISTS `itemApply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemApply` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '试用品申请id',
  `item_name` varchar(255) DEFAULT NULL,
  `agency_name` varchar(255) DEFAULT NULL COMMENT '经销商名称',
  `sample_amount` int(11) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `sale_price` int(11) DEFAULT NULL,
  `sales_area` varchar(255) DEFAULT NULL,
  `goods_standard` varchar(255) DEFAULT NULL,
  `manufacturer_name` varchar(255) DEFAULT NULL,
  `manufactur_price` int(11) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL COMMENT '申请人姓名',
  `user_phone` varchar(45) DEFAULT NULL COMMENT '申请人电话',
  `user_address` varchar(200) DEFAULT NULL COMMENT '申请人地址',
  `user_company` varchar(100) DEFAULT NULL COMMENT '申请人公司名称',
  `user_email` varchar(45) DEFAULT NULL COMMENT '申请人email',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `product_name` varchar(100) DEFAULT NULL COMMENT '试用品名称',
  `user_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemApply`
--

LOCK TABLES `itemApply` WRITE;
/*!40000 ALTER TABLE `itemApply` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemApply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemGoods`
--

DROP TABLE IF EXISTS `itemGoods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemGoods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '库存商品id',
  `agency_id` int(11) DEFAULT NULL COMMENT '经销商id',
  `item_id` int(11) DEFAULT NULL COMMENT '货号id',
  `manufacturer_name` varchar(255) DEFAULT NULL COMMENT '品牌名称',
  `goods_name` varchar(100) DEFAULT NULL COMMENT '商品名称',
  `goods_standard` varchar(100) DEFAULT NULL COMMENT '商品规格 ',
  `stock` varchar(100) DEFAULT NULL COMMENT '库存数量',
  `unit` varchar(100) DEFAULT NULL COMMENT '规格单位',
  `manufactur_price` int(11) DEFAULT NULL COMMENT '目录价格',
  `sale_price` int(11) DEFAULT NULL COMMENT '零售价格',
  `sales_area` varchar(100) DEFAULT NULL COMMENT '销售区域',
  `person_name` varchar(100) DEFAULT NULL COMMENT '联系人姓名',
  `person_phone` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type_id` tinyint(1) DEFAULT NULL COMMENT '“0”库存商品；“1”试用品',
  `sample_amount` varchar(100) DEFAULT NULL COMMENT '试用品数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemGoods`
--

LOCK TABLES `itemGoods` WRITE;
/*!40000 ALTER TABLE `itemGoods` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemGoods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemManufacturer`
--

DROP TABLE IF EXISTS `itemManufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL COMMENT '货号id',
  `manufacturer_id` int(11) DEFAULT NULL COMMENT '品牌id',
  `manufacturer_sub_id` int(11) DEFAULT NULL COMMENT '子品牌id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=567 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemManufacturer`
--

LOCK TABLES `itemManufacturer` WRITE;
/*!40000 ALTER TABLE `itemManufacturer` DISABLE KEYS */;
INSERT INTO `itemManufacturer` VALUES (1,2,22,0),(2,6,22,0),(3,3,22,0),(4,4,22,0),(5,1,22,0),(6,7,22,0),(7,9,22,0),(8,5,22,0),(9,10,22,0),(10,12,22,0),(11,8,22,0),(12,11,22,0),(13,13,22,0),(14,14,22,0),(15,15,22,0),(16,16,22,0),(17,17,22,0),(18,18,22,0),(19,19,22,0),(20,20,22,0),(21,25,22,0),(22,21,22,0),(23,22,22,0),(24,23,22,0),(25,24,22,0),(26,26,22,0),(27,27,22,0),(28,28,22,0),(29,29,22,0),(30,30,22,0),(31,31,22,0),(32,32,22,0),(33,33,22,0),(34,35,22,0),(35,37,22,0),(36,39,22,0),(37,41,22,0),(38,53,22,0),(39,45,22,0),(40,57,22,0),(41,48,22,0),(42,51,22,0),(43,55,22,0),(44,34,22,0),(45,42,22,0),(46,36,22,0),(47,44,22,0),(48,38,22,0),(49,47,22,0),(50,40,22,0),(51,50,22,0),(52,43,22,0),(53,54,22,0),(54,46,22,0),(55,58,22,0),(56,49,22,0),(57,60,22,0),(58,52,22,0),(59,62,22,0),(60,56,22,0),(61,64,22,0),(62,59,22,0),(63,66,22,0),(64,61,22,0),(65,68,22,0),(66,63,22,0),(67,70,22,0),(68,65,22,0),(69,72,22,0),(70,67,22,0),(71,74,22,0),(72,69,22,0),(73,76,22,0),(74,71,22,0),(75,78,22,0),(76,73,22,0),(77,75,22,0),(78,77,22,0),(79,79,22,0),(80,80,22,0),(81,81,22,0),(82,83,22,0),(83,91,22,0),(84,94,22,0),(85,82,22,0),(86,84,22,0),(87,85,22,0),(88,86,22,0),(89,87,22,0),(90,88,22,0),(91,89,22,0),(92,90,22,0),(93,92,22,0),(94,93,22,0),(95,95,22,0),(96,96,22,0),(97,97,22,0),(98,98,22,0),(99,99,22,0),(100,100,22,0),(101,101,22,0),(102,102,22,0),(103,103,22,0),(104,104,22,0),(105,105,22,0),(106,106,22,0),(107,107,22,0),(108,108,22,0),(109,109,22,0),(110,110,22,0),(111,111,22,0),(112,112,22,0),(113,113,22,0),(114,114,22,0),(115,115,22,0),(116,116,22,0),(117,117,22,0),(118,118,22,0),(119,119,22,0),(120,120,22,0),(121,121,22,0),(122,122,22,0),(123,123,22,0),(124,124,22,0),(125,125,22,0),(126,129,22,0),(127,127,22,0),(128,126,22,0),(129,131,22,0),(130,128,22,0),(131,130,22,0),(132,132,22,0),(133,133,22,0),(134,134,22,0),(135,136,22,0),(136,135,22,0),(137,138,22,0),(138,137,22,0),(139,139,22,0),(140,140,22,0),(141,141,22,0),(142,142,22,0),(143,143,22,0),(144,144,22,0),(145,145,22,0),(146,146,22,0),(147,147,22,0),(148,148,22,0),(149,161,22,0),(150,149,22,0),(151,150,22,0),(152,151,22,0),(153,152,22,0),(154,153,22,0),(155,154,22,0),(156,155,22,0),(157,156,22,0),(158,157,22,0),(159,158,22,0),(160,159,22,0),(161,165,22,0),(162,160,22,0),(163,162,22,0),(164,163,22,0),(165,164,22,0),(166,166,22,0),(167,167,22,0),(168,168,22,0),(169,169,22,0),(170,170,22,0),(171,174,22,0),(172,171,22,0),(173,172,22,0),(174,173,22,0),(175,175,22,0),(176,176,22,0),(177,177,22,0),(178,179,22,0),(179,181,22,0),(180,178,22,0),(181,180,22,0),(182,182,22,0),(183,183,22,0),(184,184,22,0),(185,185,22,0),(186,186,22,0),(187,187,22,0),(188,188,22,0),(189,189,22,0),(190,191,22,0),(191,190,22,0),(192,192,22,0),(193,193,22,0),(194,194,22,0),(195,195,22,0),(196,196,22,0),(197,197,22,0),(198,198,22,0),(199,199,22,0),(200,200,22,0),(201,201,22,0),(202,202,22,0),(203,203,22,0),(204,204,22,0),(205,205,22,0),(206,206,22,0),(207,207,22,0),(208,208,22,0),(209,209,22,0),(210,210,22,0),(211,211,22,0),(212,212,22,0),(213,213,22,0),(214,214,22,0),(215,215,22,0),(216,216,22,0),(217,217,22,0),(218,218,22,0),(219,219,22,0),(220,220,22,0),(221,222,22,0),(222,221,22,0),(223,223,22,0),(224,224,22,0),(225,225,22,0),(226,227,22,0),(227,226,22,0),(228,228,22,0),(229,230,22,0),(230,229,22,0),(231,231,22,0),(232,232,22,0),(233,233,22,0),(234,236,22,0),(235,234,22,0),(236,238,22,0),(237,235,22,0),(238,240,22,0),(239,237,22,0),(240,239,22,0),(241,241,22,0),(242,242,22,0),(243,244,22,0),(244,243,22,0),(245,246,22,0),(246,245,22,0),(247,248,22,0),(248,249,22,0),(249,247,22,0),(250,250,22,0),(251,251,22,0),(252,252,22,0),(253,253,22,0),(254,257,22,0),(255,255,22,0),(256,254,22,0),(257,258,22,0),(258,256,22,0),(259,260,22,0),(260,259,22,0),(261,261,22,0),(262,262,22,0),(263,263,22,0),(264,264,22,0),(265,269,22,0),(266,270,22,0),(267,271,22,0),(268,272,22,0),(269,273,22,0),(270,274,22,0),(271,275,22,0),(272,276,22,0),(273,277,22,0),(274,278,22,0),(275,279,22,0),(276,280,22,0),(277,281,22,0),(278,283,22,0),(279,282,22,0),(280,284,22,0),(281,285,22,0),(282,287,22,0),(283,286,22,0),(284,288,22,0),(285,289,22,0),(286,290,22,0),(287,291,22,0),(288,292,22,0),(289,294,22,0),(290,296,22,0),(291,293,22,0),(292,295,22,0),(293,299,22,0),(294,297,22,0),(295,298,22,0),(296,300,22,0),(297,301,22,0),(298,302,22,0),(299,303,22,0),(300,304,22,0),(301,305,22,0),(302,306,22,0),(303,307,22,0),(304,308,22,0),(305,309,22,0),(306,310,22,0),(307,311,22,0),(308,312,22,0),(309,313,22,0),(310,314,22,0),(311,315,22,0),(312,316,22,0),(313,317,22,0),(314,318,22,0),(315,319,22,0),(316,320,22,0),(317,321,22,0),(318,322,22,0),(319,323,22,0),(320,324,22,0),(321,325,22,0),(322,326,22,0),(323,327,22,0),(324,328,22,0),(325,329,22,0),(326,330,22,0),(327,331,22,0),(328,332,22,0),(329,333,22,0),(330,334,22,0),(331,335,22,0),(332,336,22,0),(333,337,22,0),(334,338,22,0),(335,339,22,0),(336,340,22,0),(337,341,22,0),(338,342,22,0),(339,343,22,0),(340,344,22,0),(341,345,22,0),(342,346,22,0),(343,347,22,0),(344,348,22,0),(345,349,22,0),(346,350,22,0),(347,351,22,0),(348,352,22,0),(349,353,22,0),(350,354,22,0),(351,355,22,0),(352,356,22,0),(353,357,22,0),(354,358,22,0),(355,359,22,0),(356,360,22,0),(357,361,22,0),(358,362,22,0),(359,363,22,0),(360,364,22,0),(361,365,22,0),(362,366,22,0),(363,367,22,0),(364,368,22,0),(365,369,22,0),(366,370,22,0),(367,371,22,0),(368,372,22,0),(369,373,22,0),(370,374,22,0),(371,375,22,0),(372,376,22,0),(373,377,22,0),(374,378,22,0),(375,379,22,0),(376,380,22,0),(377,381,22,0),(378,382,22,0),(379,383,22,0),(380,384,22,0),(381,385,22,0),(382,386,22,0),(383,387,22,0),(384,388,22,0),(385,389,22,0),(386,390,22,0),(387,391,22,0),(388,392,22,0),(389,393,22,0),(390,394,22,0),(391,395,22,0),(392,396,22,0),(393,397,22,0),(394,398,22,0),(395,399,22,0),(396,400,22,0),(397,401,22,0),(398,402,22,0),(399,403,22,0),(400,404,22,0),(401,405,22,0),(402,406,22,0),(403,407,22,0),(404,408,22,0),(405,409,22,0),(406,410,22,0),(407,411,22,0),(408,412,22,0),(409,413,22,0),(410,414,22,0),(411,415,22,0),(412,416,22,0),(413,417,22,0),(414,418,22,0),(415,419,22,0),(416,420,22,0),(417,421,22,0),(418,422,22,0),(419,423,22,0),(420,424,22,0),(421,425,22,0),(422,426,22,0),(423,427,22,0),(424,428,22,0),(425,429,22,0),(426,430,22,0),(427,431,22,0),(428,432,22,0),(429,433,22,0),(430,434,22,0),(431,435,22,0),(432,436,22,0),(433,437,22,0),(434,438,22,0),(435,439,22,0),(436,440,22,0),(437,441,22,0),(438,442,22,0),(439,443,22,0),(440,444,22,0),(441,445,22,0),(442,446,22,0),(443,447,22,0),(444,448,22,0),(445,449,22,0),(446,450,22,0),(447,451,22,0),(448,452,22,0),(449,453,22,0),(450,454,22,0),(451,455,22,0),(452,456,22,0),(453,457,22,0),(454,458,22,0),(455,459,22,0),(456,460,22,0),(457,461,22,0),(458,462,22,0),(459,463,22,0),(460,464,22,0),(461,465,22,0),(462,466,22,0),(463,467,22,0),(464,468,22,0),(465,469,22,0),(466,470,22,0),(467,471,22,0),(468,472,22,0),(469,473,22,0),(470,474,22,0),(471,475,22,0),(472,476,22,0),(473,478,22,0),(474,480,22,0),(475,477,22,0),(476,479,22,0),(477,481,22,0),(478,482,22,0),(479,483,22,0),(480,484,22,0),(481,485,22,0),(482,486,22,0),(483,487,22,0),(484,488,22,0),(485,489,22,0),(486,490,22,0),(487,491,22,0),(488,492,22,0),(489,493,22,0),(490,494,22,0),(491,495,22,0),(492,496,22,0),(493,497,22,0),(494,498,22,0),(495,499,22,0),(496,501,22,0),(497,500,22,0),(498,503,22,0),(499,502,22,0),(500,504,22,0),(501,505,22,0),(502,506,22,0),(503,507,22,0),(504,508,22,0),(505,509,22,0),(506,511,22,0),(507,513,22,0),(508,515,22,0),(509,517,22,0),(510,519,22,0),(511,510,22,0),(512,512,22,0),(513,514,22,0),(514,516,22,0),(515,518,22,0),(516,520,22,0),(517,521,22,0),(518,522,22,0),(519,523,22,0),(520,524,22,0),(521,525,22,0),(522,526,22,0),(523,527,22,0),(524,528,22,0),(525,529,22,0),(526,530,22,0),(527,531,23,0),(528,534,23,0),(529,532,23,0),(530,533,23,0),(531,535,23,0),(532,538,23,0),(533,539,23,0),(534,537,23,0),(535,536,23,0),(536,540,22,0),(537,541,22,0),(538,542,22,0),(539,543,22,0),(540,544,22,0),(541,545,22,0),(542,546,22,0),(543,547,22,0),(544,548,22,0),(545,549,22,0),(546,550,22,0),(547,551,22,0),(548,552,22,0),(549,553,22,0),(550,554,22,0),(551,555,22,0),(552,556,22,0),(553,557,22,0),(554,558,22,0),(555,559,22,0),(556,560,22,0),(557,561,22,0),(558,562,22,0),(559,563,22,0),(560,564,22,0),(561,565,22,0),(562,566,22,0),(563,567,22,0),(564,568,22,0),(565,569,22,0),(566,570,22,0);
/*!40000 ALTER TABLE `itemManufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemMaterials`
--

DROP TABLE IF EXISTS `itemMaterials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemMaterials` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文献中实验材料id',
  `item_id` int(11) NOT NULL COMMENT '货号id',
  `experiment_id` int(11) NOT NULL COMMENT '文献id',
  `material_name` varchar(2000) DEFAULT NULL COMMENT '实验材料名称',
  PRIMARY KEY (`id`),
  KEY `item_Id_idx` (`item_id`),
  KEY `experiment_Ex_Id_idx` (`experiment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemMaterials`
--

LOCK TABLES `itemMaterials` WRITE;
/*!40000 ALTER TABLE `itemMaterials` DISABLE KEYS */;
INSERT INTO `itemMaterials` VALUES (58,540,23,'');
/*!40000 ALTER TABLE `itemMaterials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemMessage`
--

DROP TABLE IF EXISTS `itemMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemMessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `pdf_id` int(11) DEFAULT NULL COMMENT 'pdf_id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `create_time` varchar(45) DEFAULT NULL,
  `type_id` tinyint(1) DEFAULT NULL COMMENT '“0”发表； “1”回复',
  `message_content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `user_ip` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `check_status` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemId_idx` (`pdf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemMessage`
--

LOCK TABLES `itemMessage` WRITE;
/*!40000 ALTER TABLE `itemMessage` DISABLE KEYS */;
INSERT INTO `itemMessage` VALUES (5,17,1,'2018-07-12 08:05:20',0,'fdf',1,'127.0.0.1-17a696d7cc7015588dc3e6c0c130693a',1,0),(6,17,1,'2018-07-12 08:05:42',1,'fggsg',1,'127.0.0.1-17a696d7cc7015588dc3e6c0c130693a',1,5),(7,17,1,'2018-07-12 08:06:13',0,'222',1,'127.0.0.1-17a696d7cc7015588dc3e6c0c130693a',0,0),(8,17,1,'2018-07-12 11:17:44',0,'lll\n',1,'127.0.0.1-53ea26d59f5623b7f508c7d001b12c8d',0,0);
/*!40000 ALTER TABLE `itemMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemPdf`
--

DROP TABLE IF EXISTS `itemPdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemPdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `pdf_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemPdf`
--

LOCK TABLES `itemPdf` WRITE;
/*!40000 ALTER TABLE `itemPdf` DISABLE KEYS */;
INSERT INTO `itemPdf` VALUES (427,568,146),(428,569,146),(429,570,146);
/*!40000 ALTER TABLE `itemPdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemVideo`
--

DROP TABLE IF EXISTS `itemVideo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemVideo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '货号视频id',
  `video_id` int(11) NOT NULL COMMENT '视频id',
  `item_id` int(11) NOT NULL COMMENT '货号id',
  PRIMARY KEY (`id`),
  KEY `vedioId_idx` (`video_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemVideo`
--

LOCK TABLES `itemVideo` WRITE;
/*!40000 ALTER TABLE `itemVideo` DISABLE KEYS */;
INSERT INTO `itemVideo` VALUES (38,23,540);
/*!40000 ALTER TABLE `itemVideo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌商id',
  `manuName` varchar(100) NOT NULL COMMENT '品牌商名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='品牌表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer`
--

LOCK TABLES `manufacturer` WRITE;
/*!40000 ALTER TABLE `manufacturer` DISABLE KEYS */;
INSERT INTO `manufacturer` VALUES (22,'Fisher'),(23,'brand1');
/*!40000 ALTER TABLE `manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operation`
--

DROP TABLE IF EXISTS `operation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '操作记录id',
  `pdf_id` int(11) NOT NULL COMMENT 'pdf id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `operation_type` int(11) DEFAULT NULL COMMENT '“0”下载；“1”打印；“2”收藏；“3”分享',
  `operation_time` datetime DEFAULT NULL COMMENT '操作时间',
  `user_ip` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operation`
--

LOCK TABLES `operation` WRITE;
/*!40000 ALTER TABLE `operation` DISABLE KEYS */;
INSERT INTO `operation` VALUES (57,17,1,2,'2018-07-12 08:06:39','127.0.0.1-17a696d7cc7015588dc3e6c0c130693a');
/*!40000 ALTER TABLE `operation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pdf`
--

DROP TABLE IF EXISTS `pdf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pdf` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'pdf的id',
  `pdf_name` varchar(100) DEFAULT NULL COMMENT 'pdf名称',
  `pdf_url` varchar(255) DEFAULT NULL COMMENT 'pdf访问url',
  `pdf_path` varchar(200) DEFAULT NULL COMMENT '保存路径',
  `thumb_img` varchar(255) DEFAULT NULL,
  `download_num` int(11) DEFAULT '0' COMMENT '被“下载”次数',
  `print_num` int(11) DEFAULT '0' COMMENT '被“打印”次数',
  `collection_num` int(11) DEFAULT '0' COMMENT '被“收藏”次数',
  `share_num` int(11) DEFAULT '0' COMMENT '被“分享”次数',
  `language` int(11) DEFAULT NULL COMMENT '“0”英文，“1”中文；',
  `sub_pdf_id` int(11) DEFAULT '0' COMMENT '翻译版本pdf 的id',
  `txt` mediumtext COMMENT '转为文字内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8 COMMENT='pdf表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pdf`
--

LOCK TABLES `pdf` WRITE;
/*!40000 ALTER TABLE `pdf` DISABLE KEYS */;
INSERT INTO `pdf` VALUES (146,'Access_RT PCR试剂盒','/uploads/file-1531657604014.pdf','public/uploads/file-1531657604014.pdf','/uploads/file-1531657604014-0.png',0,0,0,0,0,0,'Technical Bulletin\r\nAccess RT-PCR System\r\nINSTRUCTIONS FOR USE OF PRODUCTS A1250, A1260 AND A1280.\r\nPRINTED IN USA.\r\nRevised 12/10                                                          Part# TB220\r\n----------------Page (0) Break----------------\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 1\r\n1. Description..........................................................................................................1\r\n2. Product Components and Storage Conditions............................................3\r\n3. Optimizing RT-PCR..........................................................................................4\r\nA. RNA Template......................................................................................................4\r\nB. Control Reactions .................................................................................................4\r\nC. Avoiding Contamination of Nucleic Acids......................................................5\r\nD. Magnesium Concentration..................................................................................6\r\nE. Primer Design .......................................................................................................6\r\nF. Temperature..........................................................................................................6\r\nG. Incubation Times and Number of Cycles.........................................................7\r\n4. Synthesis and Analysis of RT-PCR Products \r\nUsing the Access RT-PCR System..................................................................7\r\nA. Protocol ..................................................................................................................8\r\nB. Analysis..................................................................................................................9\r\n5. Troubleshooting...............................................................................................11\r\n6. References.........................................................................................................13\r\n7. Appendix...........................................................................................................14\r\nA. Composition of Buffers and Solutions............................................................14\r\nB. Control Primer Sequences.................................................................................14\r\nC. Related Products.................................................................................................14\r\n1.   Description\r\nNumerous techniques have been developed to measure gene expression in\r\ntissues and cells. These include Northern blots, coupled reverse transcription\r\nand PCR amplification [RT-PCR], RNase protection assays, in situ\r\nhybridization, dot blots and S1 nuclease assays. Of these methods, RT-PCR is\r\nthe most sensitive and versatile. This technique can be used to determine the\r\npresence or absence of a transcript, estimate expression levels and clone cDNA\r\nproducts without the necessity of constructing and screening a cDNA library.\r\nThe Access RT-PCR System(a,b,c)is designed for the reverse transcription (RT)\r\nand polymerase chain reaction (PCR) amplification of a specific target RNA\r\nfrom either total RNA or mRNA (1). This one-tube, two-enzyme system\r\nprovides sensitive, quick and reproducible analysis of even rare RNAs. The\r\nsystem uses AMV Reverse Transcriptase (AMV RT) from Avian Myeloblastosis\r\nAccess RT-PCR System\r\nAll technical literature is available on the Internet at: www.promega.com/tbs/ \r\nPlease visit the web site to verify that you are using the most current version of this\r\nTechnical Bulletin. Please contact Promega Technical Services if you have questions on use\r\nof this system. E-mail: techserv@promega.com.\r\n----------------Page (1) Break----------------\r\nVirus for first strand DNA synthesis and the thermostable TflDNA Polymerase\r\nfrom Thermus flavus(2) for second strand cDNA synthesis and DNA\r\namplification. The Access RT-PCR System includes an optimized single-buffer\r\nsystem that permits extremely sensitive detection of RNA transcripts without a\r\nrequirement for buffer additions between the reverse transcription and PCR\r\namplification steps (Figure 1). This simplifies the procedure and reduces the\r\npotential for contaminating the samples. In addition, the improved\r\nperformance of AMV Reverse Transcriptase at elevated temperatures [45°C(b)]\r\nin the AMV/Tfl5X Reaction Buffer minimizes problems encountered with\r\nsecondary structures in RNA.\r\nFigure 1. Outline of the Access RT-PCR System protocol.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 2Revised 12/10\r\nAMV-RT and TflDNA Polymerase,\r\nAMV/TflReaction Buffer, dNTP mix,\r\nspecific upstream and downstream\r\nprimers, MgSO4, RNA template\r\n45°C, 45 minutes\r\n94°C, 2 minutes\r\n40 cycles\r\nAssemble Reactions\r\nSynthesize First Strand cDNA\r\nDenature Template\r\nSynthesize Second Strand \r\nand Amplify DNA\r\n----------------Page (2) Break----------------\r\n2.   Product Components and Storage Conditions\r\nProduct                                                              Cat.#\r\nAccess RT-PCR System                                                A1250\r\nEach system contains sufficient reagents for 100 reactions (50μl), including 25 reactions\r\ncontaining Positive Control RNA and Primers. Includes:\r\n•     500u   AMV Reverse Transcriptase, 5u/μl\r\n•     500uTflDNA Polymerase, 5u/μl\r\n•      1ml   AMV/Tfl5X Reaction Buffer\r\n•   1.25ml   MgSO4, 25mM\r\n•     100μl   dNTP Mixture, 10mM each of dATP, dCTP, dGTP and dTTP\r\n•     50μl   Positive Control RNA with Carrier (1.25 attomole/μl)\r\n•     100μl   Upstream Control Primer, 15μM\r\n•     100μl   Downstream Control Primer, 15μM\r\n•     13ml   Nuclease-Free Water\r\nProduct                                                              Cat.#\r\nAccess RT-PCR System                                                A1280\r\nEach system contains sufficient reagents for 500 reactions (5 kits × 100 reactions, 50μl\r\neach), including 25 reactions containing Positive Control RNA and Primers (provided\r\nin one of the kits).\r\nProduct                                                              Cat.#\r\nAccess RT-PCR Introductory System                                    A1260\r\nEach system contains sufficient reagents for 20 reactions (50μl) and includes reagents\r\nfor positive control reactions (Positive Control RNA and Primers). Includes:\r\n•     100u   AMV Reverse Transcriptase, 5u/μl\r\n•     100uTflDNA Polymerase, 5u/μl\r\n•      1ml   AMV/Tfl5X Reaction Buffer\r\n•   1.25ml   MgSO4, 25mM\r\n•     20μl   dNTP Mixture, 10mM each of dATP, dCTP, dGTP and dTTP\r\n•     50μl   Positive Control RNA with Carrier (1.25 attomole/μl)\r\n•     100μl   Upstream Control Primer, 15μM\r\n•     100μl   Downstream Control Primer, 15μM\r\n•     13ml   Nuclease-Free Water\r\nStorage Conditions:Store all system components at –20°C. For long-term\r\nstorage, the Positive Control RNA with Carrier may be stored at –70°C. \r\nSee the expiration date on the kit label.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 3\r\n----------------Page (3) Break----------------\r\n3.   Optimizing RT-PCR\r\n3.A. RNA Template\r\nSuccessful reverse transcription is dependent on the integrity and purity of the\r\nmRNA used as the template. Procedures for creating and maintaining an\r\nRNase-free environment are described in reference 3. Use sterile tubes, pipette\r\ntips, gloves and diethyl pyrocarbonate (DEPC)-treated water. When isolating\r\nRNA from samples high in ribonuclease activity, use of a ribonuclease\r\ninhibitor such as Recombinant RNasin®Ribonuclease Inhibitor (Cat.# N2511)\r\nis recommended.\r\nFor the routine and rapid purification of total RNA from eukaryotic sources,\r\nwe recommend the SV Total RNA Isolation System (Cat.# Z3100). \r\nPoly(A)+ RNA can be efficiently isolated from total RNA using the\r\nPolyATtract®mRNA Isolation Systems (Cat.# Z5200, Z5300) or directly from\r\neukaryotic sources using the PolyATtract®System 1000 (Cat.# Z5420, Z5400).\r\nThese systems enable the isolation of total or poly(A)+ RNA from crude cell or\r\ntissue lysates and result in RNA preparations sufficiently pure for use in the\r\nAccess RT-PCR System.\r\nFor optimal results using this system, the RNA template, whether a total RNA\r\npreparation, an mRNA population or a synthesized RNA transcript, should be\r\nDNA-free. The system’s TflDNA Polymerase has no reverse transcriptase\r\nactivity under the standard reaction conditions (1), but amplification product\r\nwill be generated out of these reactions if trace amounts of DNA with similar\r\nsequences are present in the template preparation.\r\nThe minimum amount of RNA that can be amplified using RT-PCR is both\r\ntemplate- and primer-dependent. For the Positive Control RNA provided, the\r\nminimum amount of RNA required is 103molecules (1.66 zeptomoles, 1.66 ×\r\n10–21moles) (Figure 2, Panel A). Excellent amplification results can be obtained\r\nwith the Access RT-PCR System using total RNA template levels in the range\r\nof 10pg–1μg per reaction (Figure 2, Panel B), or poly(A)+ RNA template levels\r\nin the range of 1pg–100ng.\r\n3.B.  Control Reactions\r\nTo facilitate optimization and troubleshooting, perform both positive and\r\nnegative control reactions. For positive control reactions, use the supplied\r\nPositive Control RNA with Carrier (see Section 7.A) and the Upstream \r\nand the Downstream Control Primers (see Figure 2, Panel A). For a negative\r\ncontrol, substitute sterile nuclease-free water for the RNA template in the\r\nreaction.\r\nNote:The Upstream and Downstream Control Primers will only amplify the\r\nPositive Control RNA.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 4Revised 12/10\r\n----------------Page (4) Break----------------\r\nFigure 2. Amplification of specific RNAs using the Access RT-PCR System. \r\nPanel A.Serial tenfold dilutions of the Positive Control RNA supplied with the\r\nsystem were prepared in Nuclease-Free Water. RT-PCR reactions containing the\r\nindicated amounts of Positive Control RNA were performed as described in \r\nSection 4 using the control oligonucleotide primers provided. Equivalent aliquots of\r\neach amplification reaction were separated on a 3% NuSieve®/1% agarose gel in 1X\r\nTAE buffer containing 0.5μg/ml ethidium bromide. The specific 323bp amplimer is\r\nindicated. Lane M, 100bp DNA Ladder (Cat.# G2101). Panel B.RT-PCR reactions\r\ncontaining the indicated amounts of mouse liver total RNA were performed as\r\ndescribed in Section 4 using oligonucleotide primers specific to the mouse β-actin\r\ntranscript. The specific 540bp amplimer is indicated. Equivalent aliquots of each\r\namplification reaction were separated on a 3% NuSieve®/1% agarose gel in 1X TAE\r\nbuffer containing 0.5μg/ml ethidium bromide. Lane M, 100bp DNA Ladder (Cat.#\r\nG2101).\r\n3.C.  Avoiding Contamination of Nucleic Acids\r\nTake great care to minimize the potential for cross-contamination between\r\nsamples and prevent carryover of nucleic acid (RNA and DNA) from one\r\nexperiment to the next. Use a separate work area and pipettor for pre- and\r\npost-amplification steps. Use positive displacement pipettes or aerosol-\r\nresistant tips to reduce cross-contamination during pipetting. Wear gloves \r\nand change them often. Use UNG (4) or another sterilization technique to\r\nprevent DNA carryover to subsequent reactions.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 5\r\nbp\r\n1166TE09_6A\r\n1,500 –1,000 –\r\n– 540bp\r\n  β-actin\r\n  amplimer\r\n500 –\r\n100 –\r\npg total RNA per reaction\r\n106M10510410310210110M\r\nbp\r\n–1,500\r\n–1,000\r\n–500\r\n323bp–\r\npositive  \r\ncontrol  \r\namplimer  \r\n–100\r\nMolecules of RNA per reaction\r\n106M10510410310210110 M\r\nA.\r\nB.\r\n----------------Page (5) Break----------------\r\n3.D. Magnesium Concentration\r\nThe magnesium requirement of both the AMV Reverse Transcriptase and the\r\nTflDNA Polymerase in the Access RT-PCR System reactions is affected by the\r\nfinal concentration of nucleotides, oligonucleotide primers and template. The\r\nmagnesium sulfate concentration should be optimized for each experimental\r\ntarget/primer combination. Although 1.0–2.5mM magnesium sulfate is\r\nsuitable for most applications, titration of the magnesium sulfate concentration\r\ncan significantly improve the sensitivity, specificity and quality of the reverse\r\ntranscription and amplification products.\r\nTo determine the optimal magnesium concentration for a specific template/\r\nprimer combination, prepare a reaction series containing 1.0–3.0mM\r\nmagnesium sulfate in 0.5mM increments by adding 2, 3, 4, 5 or 6μl of the\r\n25mM Magnesium Sulfate stock to 50μl reactions.\r\nIt is critical to vortex the magnesium stock prior to use.\r\n3.E.  Primer Design\r\nA specific primer should be used for first strand synthesis. Specific primers\r\nanneal only to defined sequences and can be used to synthesize cDNA from\r\nparticular mRNAs rather than from the entire mRNA population in the\r\nsample. To differentiate between amplification of cDNA and amplification of\r\ncontaminating genomic DNA, primers may be designed to anneal to sequences\r\nin exons on opposite sides of an intron. An amplification product derived from\r\ngenomic DNA will be much larger than the product of the RT-PCR\r\namplification reaction. This size difference not only makes it possible to\r\ndifferentiate the two products by gel electrophoresis, it also favors the\r\nsynthesis of the smaller cDNA-derived product (PCR favors the amplification\r\nof smaller fragments). Regardless of primer choice, the final concentration of\r\nthe primer in the reaction may need to be optimized. We recommend adding\r\n50pmol of primer (1μM final concentration in reaction) as a starting point for\r\noptimization.\r\n3.F.  Temperature\r\nThe Access RT-PCR System does not require a template denaturation step\r\nprior to initiation of the reverse transcription reaction. If desired, a\r\ndenaturation step may be incorporated by incubating a separate tube\r\ncontaining the primers and RNA template at 94°C for 2 minutes. The\r\ntemplate/primer mixture can then be added to the RT-PCR reaction mix \r\nfor the standard reverse transcription incubation at 45°C.\r\nDo not incubate the AMV RT at 94°C; it will be inactivated.\r\nAMV Reverse Transcriptase is active in the AMV/Tfl5X Reaction Buffer at\r\ntemperatures between 37°C and 45°C. We recommend that the reverse\r\ntranscription reaction be performed at 45°C to minimize the effects of RNA\r\nsecondary structure and to encourage full-length cDNA synthesis. Following\r\nthe reverse transcription incubation, we recommend a two-minute incubation\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 6Revised 12/10\r\n!\r\n!\r\n----------------Page (6) Break----------------\r\nat 94°C to denature the RNA/cDNA hybrid and inactivate the AMV Reverse\r\nTranscriptase. It has been reported that the AMV Reverse Transcriptase\r\nenzyme must be inactivated to obtain high yields of amplification product\r\nusing thermophilic DNA polymerases such as TflDNA Polymerase (5,6).\r\nThe sequences of the primers are a major consideration in determining the\r\ntemperature of the PCR amplification cycles. An amplification cycle typically\r\nconsists of a denaturation step (94°C), a template/primer annealing step\r\n(42–60°C) and an extension step (68°C). For primers with a high Tm, it may be\r\nadvantageous to increase the suggested annealing and extension temperatures.\r\nThe higher temperature minimizes nonspecific primer annealing, thus\r\nincreasing the amount of specific product produced. For primers with a low\r\nTm, it may be necessary to decrease the annealing temperature to allow the\r\nprimer to anneal to the target template.\r\n3.G. Incubation Times and Number of Cycles\r\nEfficient first strand cDNA synthesis can be accomplished in a 15- to 60-minute\r\nincubation at 37–45°C. We recommend a 45-minute incubation at 45°C as a\r\ngeneral starting point.\r\nFollowing the first strand cDNA synthesis, the AMV Reverse Transcriptase is\r\ninactivated and the RNA/cDNA hybrid denatured using a 2-minute\r\nincubation at 94°C. This step leads directly into the second strand cDNA\r\nsynthesis and PCR amplification phase of the procedure. Most RNA samples\r\ncan be detected using 40 cycles of amplification. If the target RNA is rare or if\r\nonly a small amount of starting material is available, it may be necessary to\r\nincrease the number of cycles to 45 or 50. During the extension step, allow\r\napproximately 1 minute for every 1kb of amplimer (minimum extension time\r\n= 1 minute). A final 7-minute extension at 68°C improves the quality of the\r\nfinal product by extending truncated product to full-length.\r\n4.   Synthesis and Analysis of RT-PCR Products Using the Access RT-PCR \r\nSystem\r\nThe reverse transcription and PCR cycling profile provided in Figure 3 should\r\nserve as a guideline for initial experiments. These conditions work well for the\r\ndetection of the 323bp PCR product generated from the Positive Control RNA\r\nusing the Upstream and Downstream Control Primers provided with the\r\nAccess RT-PCR System. We recommend optimizing the parameters discussed\r\nin Section 3 for each combination of primers and target RNA.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 7\r\n----------------Page (7) Break----------------\r\nFigure 3. Reverse transcription and PCR cycling profile.\r\n4.A. Protocol\r\nMaterials to Be Supplied by the User\r\n•    downstream oligonucleotide primer\r\n•    upstream oligonucleotide primer\r\n•    nuclease-free light mineral oil (e.g., Sigma Cat.# M5904)\r\n1. Prepare the reaction mix by combining the indicated volumes of the first\r\nsix components in a thin-walled 0.5ml reaction tube on ice. Mix by\r\npipetting. Add the AMV Reverse Transcriptase and TflDNA Polymerase to\r\nthe reaction. Gently vortex the tube for 10 seconds to mix the components.\r\nIf working with multiple samples, a Master Mix may be assembled on ice\r\nby combining appropriate multiples of each of the indicated components\r\nand transfering 48μl of the master mix to each reaction tube. Initiate the\r\nreaction by adding the template. Use individual pipet tips for all additions,\r\nbeing careful not to cross-contaminate the samples.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 8Revised 12/10\r\n1 cycle\r\n1 cycle\r\n1 cycle\r\n40 cycles\r\n1 cycle (optional)\r\n45°C for 45 minutes\r\n94°C for 2 minutes\r\nreverse transcription\r\nAMV RT inactivation \r\nand RNA/cDNA/primer\r\ndenaturation\r\ndenaturation\r\nannealing\r\nextension\r\n68°C for 7 minutes\r\n4°C\r\nfinal extension\r\nsoak\r\n94°C for 30 seconds\r\n60°C for 1 minute\r\n68°C for 2 minutes\r\nFirst Strand cDNA Synthesis\r\nSecond Strand cDNA Synthesis and PCR Amplification\r\n----------------Page (8) Break----------------\r\nFinal\r\nComponent                                    Volume   Concentration\r\nNuclease-Free Water (to a final volume of 50μl)         Xμl\r\nAMV/Tfl5X Reaction Buffer (see Note 1)              10μl             1X\r\ndNTP Mix (10mM each dNTP) (see Note 2)             1μl         0.2mM\r\ndownstream primer (see Note 3)                   50pmol           1μM\r\nupstream primer (see Note 3)                     50pmol           1μM\r\n25mM MgSO4(see Note 2)                            2μl           1mM\r\nAMV Reverse Transcriptase (5u/μl)                    1μl         0.1u/μl\r\nTflDNA Polymerase (5u/μl)                          1μl         0.1u/μl\r\nRNA sample or control (see Section 3.A and Note 4)         Yμl\r\nfinal volume                                      50μl\r\n2. Overlay the reaction with one or two drops (20–40μl) of nuclease-free\r\nmineral oil to prevent condensation and evaporation.\r\n3. Place the tubes in a controlled temperature heat block equilibrated at 45°C\r\nand incubate for 45 minutes.\r\n4. Proceed directly to thermal cycling the reactions for second strand cDNA\r\nsynthesis and amplification (see the thermal cycling profile outlined above).\r\nNotes:\r\n1. If a precipitate forms in the AMV/Tfl5X Reaction Buffer, resolubilize by\r\nincubating at 65°C for 15 minutes.\r\n2. Vortex prior to use.\r\n3. A general formula for calculating the number of nanograms of primer\r\nequivalent to 50pmol is: 50pmol = 16.3ng × b; where b is the number of\r\nbases in the primer. For the positive control reaction, use 3.3μl of both the\r\nDownstream and Upstream Control Primers (50pmol).\r\n4. 103–106copies of a specific target template or 1pg–1μg total RNA. Use 2μl\r\nof the Positive Control RNA with Carrier (2.5 attomoles or 1 × 106copies).\r\n4.B.  Analysis\r\n1. Analyze the PCR products by agarose gel electrophoresis of 5% of the total\r\nreaction. The products will be readily visible by UV transillumination of an\r\nethidium bromide-stained gel. The amplification product obtained using\r\nthe Positive Control RNA with the Upstream and Downstream Control\r\nPrimers is 323bp long (Figure 4).\r\n2. Store the reaction products at –20°C until needed. The reaction products\r\nmay be purified using the Wizard®SV Gel and PCR Clean-Up System\r\n(Cat.# A9281; 7).\r\nNote:An amplification product at approximately 220bp is occasionally\r\nobserved with the Positive Control RNA. This product arises from the\r\namplification of a sequence in the carrier E. coliRNA added to the Positive\r\nControl RNA.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 9\r\n----------------Page (9) Break----------------\r\n1 GAATACAAGC  TTGGGCGTGT  CTCAAAATCT  CTGATGTTAC  ATTGCACAAG\r\n51 ATAAAAATAT  ATCATCATGA  ACAATAAAAC  TGTCTGCTTA  CATAAACAGT\r\n101 AATACAAGGG  GTGTTATGAG  CCATATTCAA  CGGGAAACGT  CTTGCTCGAG\r\n151 GCCGCGATTA  AATTCCAACA  TGGATGCTGA  TTTATATGGG  TATAAATGGG\r\n201 CTCGCGATAA  TGTCGGGCAA  TCAGGTGCGA  CAATCTATCG  ATTGTATGGG\r\n251 AAGCCCGATG  CGCCAGAGTT  GTTTCTGAAA  CATGGCAAAG  GTAGCGTTGC\r\n301 CAATGATGTT  ACAGATGAGA  TGGTCAGACT  AAACTGGCTG  ACGGAATTTA\r\n351 TGCCTCTTCC  GACCATCAAG  CATTTTATCC  GTACTCCTGA  TGATGCATGG\r\n401 TTACTCACCA  CTGCGATCCC  CGGGAAAACA  GCATTCCAGG  TATTAGAAGA\r\n451 ATATCCTGAG  TCAGGTGAAA  ATATTGTTGA  TGCGCTGGCA  GTGTTCCTGC\r\n501 GCCGGTTGCA  TTCGATTCCT  GTTTGTAATT  GTCCTTTTAA  CAGCGATCGC\r\n551 GTATTTCGTC  TCGCTCAGGC  GCAATCACGA  ATGAATAACG  GTTTGGTTGA\r\n601 TGCGAGTGAT  TTTGATGACG  AGCGTAATGG  CTGGCCTGTT  GAACAAGTCT\r\n651 GGAAAGAAAT  GCATAAGCTT  TTGCCATTCT  CACCGGATTC  AGTCGTCACT\r\nUpstream Control Primer5 ́-GCCATTCT  CACCGGATTC  AGTCGTC-3 ́\r\n701 CATGGTGATT  TCTCACTTGA  TAACCTTATT  TTTGACGAGG  GGAAATTAAT\r\n751 AGGTTGTATT  GATGTTGGAC  GAGTCGGAAT  CGCAGACCGA  TACCAGGATC\r\n801 TTGCCATCCT  ATGGAACTGC  CTCGGTGAGT  TTTCTCCTTC  ATTACAGAAA\r\n851 CGGCTTTTTC  AAAAATATGG  TATTGATAAT  CCTGATATGA  ATAAATTGCA\r\n901 GTTTCATTTG  ATGCTCGATG  AGTTTTTCTA  ATCAGAATTG  GTTAATTGGT\r\n951 TGTAACACTG  GCAGAGCATT  ACGCTGACTT  GACGGGACGG  CGGCTTTGTT\r\nDownstream Control Primer3 ́-GACTGAA  CTGCCCTGCC  GCCGA-5 ́\r\n1001GAATAAATCG  AACTTTTGCT  GAGTTGAAGG  ATCAGATCAC  GCATCTTCCC\r\n1051GACAACGCAG  ACCGTTCCGT  GGCAAAGCAA  AAGTTCAAAA  TCACCAACTG\r\n1101GTCCACCTAC  AACAAAGCTC  TCATCAACCG  TGGCGACTCT  AGAGGATCCC\r\n1151CGGGCGAGCT  CCCAAAAAAA  AAAAAAAAAA  AAAAAAAAAA  AAACCGAATT\r\nFigure 4. Sequence of the Positive Control RNA, Upstream Control Primer and\r\nDownstream Control Primer.The expected cDNA product is 323bp long.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 10Revised 12/10\r\n----------------Page (10) Break----------------\r\n5.   Troubleshooting\r\nFor questions not addressed here, please contact your local Promega Branch Office or Distributor.\r\nContact information available at: www.promega.com. E-mail: techserv@promega.com\r\nSymptoms                           Causes and Comments\r\nLow yield or no first strand product     RNA degraded:\r\n• Verify the integrity of the RNA by \r\ndenaturing agarose gel electrophoresis.\r\n• Ensure that reagents, tips and tubes are \r\nRNase-free. Isolate the RNA in the presence \r\nof a ribonuclease inhibitor (e.g., Recombinant \r\nRNasin®Ribonuclease Inhibitor).\r\nAMV Reverse Transcriptase thermally \r\ninactivated. If an initial denaturation/annealing \r\nstep is introduced into the protocol, be certain \r\nto add the enzyme mix containing AMV \r\nReverse Transcriptase afterthe denaturation \r\nstep and subsequent 45°C equilibration.\r\nPrimer specificity. Verify that the “downstream”\r\nprimer was designed to be complementary to \r\nthe downstream sequence of the RNA.\r\nPrimer annealing. If oligo(dT) was used as a \r\n“downstream” primer, verify that the annealing \r\nincubation was carried out at an appropriate \r\ntemperature, such as 37°C, prior to reverse \r\ntranscription.\r\nRNA purification problem. Carryover of \r\nreagents (e.g., SDS, NaCl, heparin, guanidine \r\nthiocyanate) from some RNA purification \r\nmethods can interfere with RT-PCR. Reduce \r\nvolume of target RNA, perform additional \r\npurification steps or change purification \r\nmethod.\r\nAmplification product has a molecular   Genomic DNA sequences related to the RNA \r\nweight higher than expected           template contaminate the RNA preparation. \r\nDigest the DNA using RQ1 RNase-Free DNase.\r\nLow yield or no amplification product   Insufficient number of cycles. Return reactions \r\nto thermal cycler for 5 more cycles.\r\nThermal cycler programmed incorrectly. Verify \r\nthat times and temperatures are correct.\r\nTemperature too low in some positions of \r\nthermal cycler. Perform a set of control \r\nreactions to determine if certain positions in the \r\nthermal cycler give low yields.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 11\r\n----------------Page (11) Break----------------\r\n5.   Troubleshooting (continued)\r\nSymptoms                           Causes and Comments\r\nLow yield or no amplification product   Improper reaction conditions. Reduce the \r\n(continued)                          annealing temperature, and/or allow longer \r\nextension times for longer amplimers.\r\nMissing reaction component. Check the reaction \r\ncomponents, and repeat the reaction.\r\nMineral oil problem. The reaction must be \r\noverlaid with high-quality, nuclease-free light \r\nmineral oil. Do notuse autoclaved mineral oil.\r\nReaction tubes not autoclaved. Autoclaving \r\ntubes eliminates contaminants that inhibit \r\namplification.\r\nInsufficient first strand product. See discussion \r\nabove under “low yield or no first strand \r\nproduct”.\r\nPoor primer design. Make sure primers are not \r\nself-complementary or complementary to each \r\nother. Check the length and Tmof the PCR \r\nprimers.\r\nIncorrect primer specificity. Verify that the \r\nprimers were designed to be complementary to \r\nthe appropriate strands.\r\nSuboptimal reaction conditions. Optimize \r\nMgSO4concentration, annealing temperature \r\nand extension time. Verify that primers are \r\npresent in equal concentration. Vortex the \r\nMgSO4prior to use.\r\nNucleotides degraded. Keep nucleotides frozen \r\nin aliquots, thaw quickly and keep on ice once \r\nthawed. Avoid multiple freeze-thaw cycles.\r\nTarget sequence not present in target RNA. \r\nRedesign experiment or try other sources of \r\ntarget RNA.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 12Revised 12/10\r\n----------------Page (12) Break----------------\r\nSymptoms                           Causes and Comments\r\nMultiple, nonspecific amplification      Suboptimal reaction conditions. Optimize \r\nproducts                            MgSO4concentration and annealing \r\ntemperature. Vortex the MgSO4prior to use.\r\nPoor primer design. Make sure primers are not \r\nself-complementary or complementary to each \r\nother, especially near the 3 ́-ends. Check the \r\nlength and Tmof the PCR primers. Avoid using \r\nthree G or C nucleotides in a row at the 3 ́-end \r\nof a primer.\r\nContamination by another target RNA/DNA. \r\nUse positive displacement pipets or aerosol-\r\nresistant tips to reduce cross-contamination \r\nduring pipetting. Use a separate work area and \r\npipettor for pre- and post-amplification. Wear \r\ngloves and change them often. Use UNG (4) or \r\nanother sterilization technique to prevent DNA \r\ncarryover to subsequent reactions.\r\nMultiple target sequences exist in the target \r\nRNA. Design new primers.\r\n6.   References\r\n1.  Miller, K. and Storts, D. (1995) PCR Access! A sensitive single-tube two-enzyme\r\nsystem for RT-PCR. Promega Notes53, 2–5.\r\n2.  Kaledin, A.S., Slyusarenko, A.G. and Gorodetskii, S.I. (1981) Isolation and properties\r\nof DNA polymerase from the extreme thermophilic bacterium Thermus ruber.\r\nBiokhimiia46, 1576–84.\r\n3.  Blumberg, D.D. (1987) Creating a ribonuclease-free environment. Meth. Enzymol.152,\r\n20–4.\r\n4.  Longo, M.C., Berninger, M.S. and Hartley, J.L. (1990) Use of uracil DNA glycosylase\r\nto control carry-over contamination in polymerase chain reactions. Gene93, 125–8.\r\n5.  Sellner, L.N., Coelen, R.J. and Mackenzie, J.S. (1992) Reverse transcriptase inhibits Taq\r\npolymerase activity. Nucl. Acids Res.20, 1487–90.\r\n6.  Chumakov, K.M. (1994) Reverse transcriptase can inhibit PCR and stimulate primer-\r\ndimer formation. PCR Meth. Appl.4, 62–4.\r\n7.Wizard®SV Gel and PCR Clean-Up System Technical Bulletin#TB308, Promega\r\nCorporation.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 13\r\n----------------Page (13) Break----------------\r\n7.   Appendix\r\n7.A. Composition of Buffers and Solutions\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 14Revised 12/10\r\ndNTP Mixture, 10mM\r\n10mM  each of dATP, dCTP, \r\ndGTP and dTTP in water\r\nPositive Control RNA with Carrier\r\n1.25amol/μl  1.2kb kanamycin \r\nresistance gene mRNA \r\n(prepared by in vitro \r\ntranscription)\r\n3μg/mlE. colirRNA (carrier)\r\n10mM  Tris-HCl (pH 8.0)\r\n0.1mM  EDTA\r\nMgSO4Solution\r\n25mM  MgSO4in water\r\nTAE 50X buffer\r\n242g  Tris base\r\n57.1ml  glacial acetic acid\r\n100ml  0.5M EDTA (pH 8.0)\r\nAdd deionized water to 1 liter.\r\n7.B.  Control Primer Sequences\r\nUpstream Control Primer: 5 ́ GCC ATT CTC ACC GGA TTC AGT CGT C 3 ́\r\nDownstream Control Primer: 5 ́ AGC CGC CGT CCC GTC AAG TCA G 3 ́\r\n7.C.  Related Products\r\nAmplification\r\nProduct                                                     Size      Cat.#\r\nGoTaq®Green Master Mix                             100 reactions     M7122\r\n1,000 reactions     M7123\r\nGoTaq®Green Master Mix is a premixed solution of GoTaq®DNA Polymerase, GoTaq®\r\nGreen Reaction Buffer, dNTPs and Mg2+. Catalog numbers may be different in Europe.\r\nProduct                                     Conc.           Size      Cat.#\r\nGoTaq®DNA Polymerase                     5u/μl          100u     M3001\r\nAvailable in additional sizes. Catalog numbers may be different in Europe.\r\nProduct                                     Conc.           Size      Cat.#\r\nGoTaq®Flexi DNA Polymerase                 5u/μl          100u     M8291\r\nGoTaq®Flexi DNA Polymerase contains 5X Green GoTaq®Flexi Buffer, 5X Colorless\r\nGoTaq®Flexi Buffer and Magnesium Chloride Solution, 25mM. Reaction buffers are\r\nmagnesium-free. Available in additional sizes. Catalog numbers may be different in\r\nEurope.\r\n----------------Page (14) Break----------------\r\nAmplification (continued)\r\nProduct                                                     Size      Cat.#\r\nPlexor™ qPCR System*                                200 reactions     A4011\r\nPlexor™ One-Step qRT-PCR System*                    200 reactions     A4021\r\nPlexor™ Two-Step qRT-PCR System*                    200 reactions     A4051\r\n*For Research Use Only. Not for use in diagnostic procedures. Catalog numbers may be\r\ndifferent in Europe.\r\nProduct                                                     Size      Cat.#\r\nAccessQuick™ RT-PCR System                        20 reactions**     A1701\r\n**Available in additional sizes.\r\nReverse Transcription\r\nProduct                                       Conc.        Size      Cat.#\r\nAMV Reverse Transcriptase                     10u/μl       300u**     M5101\r\nM-MLV Reverse Transcriptase                  200u/μl      10,000u     M1701\r\nM-MLV Reverse Transcriptase, \r\nRNase H Minus†100–200u/μl      10,000u     M5301\r\nReverse Transcription System                          100 reactions     A3500\r\nImProm-II™ Reverse Transcriptase                     100 reactions**    A3802\r\n**Available in additional sizes.†Product is only available in certain countries. Please contact\r\nyour local Promega Branch Office or Distributor for ordering information.\r\nRNA Purification\r\nProduct                                                     Size      Cat.#\r\nPureYield™ RNA Midipreps System*                      10 preps**     Z3740\r\nSV Total RNA Isolation System                             50 preps     Z3100\r\n**Available in additional sizes.\r\nPCRCloning\r\nProduct                                                     Size      Cat.#\r\npGEM®-T Easy Vector System I                          20 reactions     A1360\r\npGEM®-T Easy Vector System II                         20 reactions     A1380\r\npGEM®-T Vector System I                              20 reactions     A3600\r\npGEM®-T Vector System II                              20 reactions     A3610\r\npTARGET™ Mammalian Expression Vector System         20 reactions     A1410\r\nThe pGEM®-T Vector System II, pGEM®-T Easy Vector System II and pTARGET™\r\nMammalian Expression Vector System include JM109 Competent Cells (High Efficiency).\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPrinted in USA.Part# TB220\r\nRevised 12/10Page 15\r\n----------------Page (15) Break----------------\r\n7.C.  Related Products (continued)\r\nPCR Fragment Purification\r\nProduct                                                     Size      Cat.#\r\nWizard®SV Gel and PCR Clean-Up System                 50 preps**     A9281\r\n**Available in additional sizes.\r\nOther Related Products\r\nProduct                                       Conc.        Size      Cat.#\r\nRecombinant RNasin®Ribonuclease Inhibitor   20–40u/μl     2,500u**     N2511\r\nRNasin®Ribonuclease Inhibitor               20–40u/μl     2,500u**     N2111\r\nRQ1 RNase-Free DNase                         1u/μl       1,000u     M6101\r\n100bp DNA Step Ladder                                     100μg     G6951\r\nPCR Nucleotide Mix                       10mM each      200μl**     C1141\r\ndATP, dCTP, dGTP, dTTP                 100mM each 40μmol each     U1240\r\ndUTP, dATP, dCTP, dGTP                 100mM each 40μmol each     U1245\r\n**Available in additional sizes.\r\nPromega Corporation  ·2800 Woods Hollow Road ·Madison, WI 53711-5399 USA \r\nToll Free in USA 800-356-9526·Phone 608-274-4330 ·Fax 608-277-2516 · www.promega.com\r\nPart# TB220Printed in USA.\r\nPage 16Revised 12/10\r\n(a)Use of this product in the US for basic PCR is outside of any valid US or European patents assigned to Hoffman La-Roche\r\nor Applera. This product can be used in the US for basic PCR in research, commercial or diagnostic applications without any\r\nlicense or royalty fees.\r\n(b)RT-PCR reactions at temperatures above 45°C are covered by U.S. Pat. Nos. 5,817,465 and 5,654,143 and European Pat. No. 0\r\n568 272.\r\n(c)U.S. Pat. No. 6,242,235, Australian Pat. No. 761757, Canadian Pat. No. 2,335,153, Chinese Pat. No. ZL99808861.7, Hong Kong\r\nPat. No. HK 1040262, Japanese Pat. No. 3673175, European Pat. No. 1088060 and other patents pending. \r\n© 2010  Promega Corporation. All Rights Reserved.\r\nGoTaq, pGEM, PolyATtract, RNasin and Wizard are registered trademarks of Promega Corporation. AccessQuick, ImProm-II,\r\nPlexor, pTARGET and PureYield are trademarks of Promega Corporation.\r\nNonidet is a registered trademark of Shell International Petroleum Company, Ltd. NuSieve is a registered trademark of\r\nBioWhittaker. Tween is a registered trademark of ICI Americas, Inc.\r\nProducts may be covered by pending or issued patents or may have certain limitations. Please visit our Web site for more\r\ninformation.\r\nAll prices and specifications are subject to change without prior notice.\r\nProduct claims are subject to change. Please contact Promega Technical Services or access the Promega online catalog for the\r\nmost up-to-date information on Promega products.\r\n----------------Page (16) Break----------------\r\n');
/*!40000 ALTER TABLE `pdf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `number` int(10) DEFAULT '0',
  `ip` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL COMMENT '用户ip地址',
  `firstlogintime` datetime DEFAULT NULL COMMENT '首次操作时间',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后操作时间',
  `print_num` int(11) DEFAULT '0' COMMENT '打印pdf次数',
  `collection_num` int(11) DEFAULT '0' COMMENT '收藏pdf次数',
  `download_num` int(11) DEFAULT '0' COMMENT '下载pdf 数量',
  `share_num` int(11) DEFAULT NULL COMMENT '分享pdf次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '视频id',
  `video_name` varchar(45) DEFAULT NULL COMMENT '视频名称',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `star` int(11) DEFAULT NULL COMMENT '星星',
  `show_times` int(11) DEFAULT NULL COMMENT '被播放次数',
  `video_url` varchar(255) DEFAULT NULL COMMENT '视频访问url',
  `video_path` varchar(200) DEFAULT NULL COMMENT '存储路径',
  `file_type` varchar(45) DEFAULT NULL COMMENT '文件类型',
  `play_time` int(11) DEFAULT NULL COMMENT '播放时长',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (23,'file-1531626945916.mp4','2018-07-15 11:55:46',0,0,'/uploads/file-1531626945916.mp4','public/uploads/file-1531626945916.mp4','video/mp4',0);
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-15 20:42:31
