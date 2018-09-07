-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: lx_info
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `d_account`
--

DROP TABLE IF EXISTS `d_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_account`
--

LOCK TABLES `d_account` WRITE;
/*!40000 ALTER TABLE `d_account` DISABLE KEYS */;
INSERT INTO `d_account` VALUES (1,'liuxin','93309339f73204d15aa25fd7d8112bfb');
/*!40000 ALTER TABLE `d_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_banner`
--

DROP TABLE IF EXISTS `d_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `description` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `url` char(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_id` tinyint(4) NOT NULL DEFAULT '0',
  `display` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_banner`
--

LOCK TABLES `d_banner` WRITE;
/*!40000 ALTER TABLE `d_banner` DISABLE KEYS */;
INSERT INTO `d_banner` VALUES (13,'六一儿童节','六一儿童节产品展示设计','1384497113.jpg','html/1/index.html',1,1),(15,'踏春','产品展示模板','1384667391.jpg','html/2/',2,1),(16,'CUC产业基地介绍','CUC基地介绍页面设计','1384742650.jpg','html/4/',4,1),(17,'五月新品','五月新品产品展示设计','1384832852.jpg','html/5',3,1),(18,'小细胞工作室','smallcell studio','1412687201.jpg','http://studio.liuxin.name',0,1);
/*!40000 ALTER TABLE `d_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_category`
--

DROP TABLE IF EXISTS `d_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(60) COLLATE utf8_unicode_ci NOT NULL,
  `display` tinyint(4) NOT NULL DEFAULT '1',
  `description` char(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_category`
--

LOCK TABLES `d_category` WRITE;
/*!40000 ALTER TABLE `d_category` DISABLE KEYS */;
INSERT INTO `d_category` VALUES (9,'漫画卡通',1,'漫画、插画'),(10,'艺术设计',1,'作品集'),(11,'摄影作品',1,NULL);
/*!40000 ALTER TABLE `d_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_config`
--

DROP TABLE IF EXISTS `d_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cv_locked` tinyint(4) NOT NULL DEFAULT '0',
  `cv_password` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_mark` tinyint(4) NOT NULL DEFAULT '0',
  `mark_text` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_config`
--

LOCK TABLES `d_config` WRITE;
/*!40000 ALTER TABLE `d_config` DISABLE KEYS */;
INSERT INTO `d_config` VALUES (10,1,'1215fd14f84fa1ffac22bea7bfb9ead2',0,'DESIGN BY Liuxin');
/*!40000 ALTER TABLE `d_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `d_photo`
--

DROP TABLE IF EXISTS `d_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `d_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `title` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` char(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `show_in_cv` tinyint(4) NOT NULL DEFAULT '0',
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `d_photo`
--

LOCK TABLES `d_photo` WRITE;
/*!40000 ALTER TABLE `d_photo` DISABLE KEYS */;
INSERT INTO `d_photo` VALUES (15,9,'摄影师心语','相机决定不了什么，摄影师拍的是一种情感和一种角度！','1384693182.jpg',0,'0000-00-00 00:00:00'),(16,9,'设计师的苦恼','只是在改，没有探讨，没有思考，没有进步！','1384693244.jpg',0,'0000-00-00 00:00:00'),(17,9,'周末畅想曲','可以有一种“疯”，尽情的开心兴奋！','1384693674.jpg',0,'0000-00-00 00:00:00'),(18,9,'匆忙的早晨','有时生活就像\"疾步华尔兹\"','1384693897.jpg',1,'0000-00-00 00:00:00'),(19,9,'我们是一家人','“我们是一家人，相亲相爱的一家人”...“先生您需要加盟吗？”','1384694173.jpg',0,'0000-00-00 00:00:00'),(20,11,'品香南瓜子',NULL,'1384694877.jpg',1,'2013-11-17 21:27:59'),(22,11,'奶油椰皇糖',NULL,'1384743050.jpg',1,'2013-11-18 10:50:51'),(23,11,'开口原香南瓜子',NULL,'1384743112.jpg',1,'2013-11-18 10:51:54'),(24,11,'葵花籽巧克力',NULL,'1384764155.jpg',1,'2013-11-18 16:42:37'),(25,11,'香妃子','口感香醇怡人，咀嚼而回味无穷犹如葡萄美酒味道甘醇','1384843509.jpg',1,'2013-11-18 16:44:25'),(26,11,'醉鱼干','遇见我，在一个慵懒的午后 ~~','1384843699.jpg',0,'2013-11-18 16:47:30'),(27,10,'端午节banner',NULL,'1384832924.jpg',1,'2013-11-19 11:48:47'),(31,10,'开心果',NULL,'1384839079.jpg',0,'2013-11-19 13:31:23'),(32,10,'凤梨酥',NULL,'1384839119.jpg',1,'2013-11-19 13:32:04'),(33,10,'香酥小黄鱼',NULL,'1384839160.jpg',0,'2013-11-19 13:32:44'),(34,10,'鸭肫',NULL,'1384839190.jpg',0,'2013-11-19 13:33:14'),(35,10,'鲟鱼片',NULL,'1384839221.jpg',1,'2013-11-19 13:33:46'),(36,10,'精致猪肉脯',NULL,'1384839313.jpg',0,'2013-11-19 13:35:18'),(37,10,'奶油椰黄糖',NULL,'1384839509.jpg',0,'2013-11-19 13:38:31'),(38,10,'开心果海报',NULL,'1384839547.jpg',0,'2013-11-19 13:39:10'),(39,10,'小核桃仁',NULL,'1384839588.jpg',0,'2013-11-19 13:39:50'),(40,10,'鸭肫海报',NULL,'1384839623.jpg',0,'2013-11-19 13:40:26'),(41,11,'黑米酥',NULL,'1384843268.jpg',0,'2013-11-19 14:41:11'),(42,11,'海苔花生',NULL,'1384843584.jpg',0,'2013-11-19 14:46:28'),(43,11,'韩式话梅',NULL,'1384845656.jpg',0,'2013-11-19 15:20:59'),(45,11,'摩方蛋糕',NULL,'1384846700.jpg',0,'2013-11-19 15:38:23'),(46,11,'石头巧克力',NULL,'1384847011.jpg',0,'2013-11-19 15:43:34'),(47,9,'豆瓣宝贝','豆瓣宝贝','1412674318.jpg',0,'2014-10-07 17:30:07'),(48,9,'扁桃超人','扁桃超人','1412682014.jpg',0,'2014-10-07 19:40:16'),(49,9,'开心爵士','开心爵士','1412682316.jpg',1,'2014-10-07 19:45:18'),(50,9,'核桃小弟','核桃小弟','1412682341.jpg',1,'2014-10-07 19:45:43'),(51,9,'腰果LADY','腰果LADY','1412683610.jpg',1,'2014-10-07 20:06:52');
/*!40000 ALTER TABLE `d_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_education`
--

DROP TABLE IF EXISTS `info_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_education` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_date` char(40) COLLATE utf8_unicode_ci NOT NULL,
  `e_date` char(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `school_name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `specialty_name` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `append_note` char(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_education`
--

LOCK TABLES `info_education` WRITE;
/*!40000 ALTER TABLE `info_education` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_education` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_job`
--

DROP TABLE IF EXISTS `info_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `s_date` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `e_date` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `department` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `occupation` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `append_note` char(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_job`
--

LOCK TABLES `info_job` WRITE;
/*!40000 ALTER TABLE `info_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_person`
--

DROP TABLE IF EXISTS `info_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `profession` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `native` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `residence` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interest` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sports` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `portrait` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_person`
--

LOCK TABLES `info_person` WRITE;
/*!40000 ALTER TABLE `info_person` DISABLE KEYS */;
INSERT INTO `info_person` VALUES (10,'刘欣(Liu Xin)',23,'女(FEMALE)','设计师(DESIGNER)','重庆·巫山(Chongqing·Wushan)','上海·嘉定(Shanghai·Jiading)','画画(Drawing)、摄影(Photography)、美食(Cate)','羽毛球(Badminton)、逛街(Walking Street)、睡觉(Sleeping)','1384741217.jpg');
/*!40000 ALTER TABLE `info_person` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 14:55:45
