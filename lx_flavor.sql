-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: lx_flavor
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
-- Table structure for table `f_account`
--

DROP TABLE IF EXISTS `f_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `disable` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_account`
--

LOCK TABLES `f_account` WRITE;
/*!40000 ALTER TABLE `f_account` DISABLE KEYS */;
INSERT INTO `f_account` VALUES (5,'liuxin','e10adc3949ba59abbe56e057f20f883e',NULL,NULL,'2013-09-08 15:17:53',0);
/*!40000 ALTER TABLE `f_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_album`
--

DROP TABLE IF EXISTS `f_album`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_album` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `filename` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `album_order` tinyint(4) NOT NULL DEFAULT '0',
  `public` tinyint(4) NOT NULL DEFAULT '1',
  `password` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_album`
--

LOCK TABLES `f_album` WRITE;
/*!40000 ALTER TABLE `f_album` DISABLE KEYS */;
INSERT INTO `f_album` VALUES (17,'申花(SFC)','1394072622.jpg',0,1,NULL,'2014-03-06 10:20:35'),(19,'Chelsea(CFC)','1394073640.jpg',1,1,NULL,'2014-03-06 10:34:07'),(20,'quanfeng','1412660948.jpg',3,1,NULL,'2014-10-07 13:47:23');
/*!40000 ALTER TABLE `f_album` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_article`
--

DROP TABLE IF EXISTS `f_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `publish_time` datetime NOT NULL,
  `draft` tinyint(4) NOT NULL DEFAULT '0',
  `comment` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_article`
--

LOCK TABLES `f_article` WRITE;
/*!40000 ALTER TABLE `f_article` DISABLE KEYS */;
INSERT INTO `f_article` VALUES (19,'赛程','<p><span style=\"font-size: 16px; \">2013年10月6号，上海申花vs贵州人和&nbsp;</span></p><p><span style=\"font-size: 16px; \"><br/></span></p><p><span style=\"font-size: 16px; \"><br/></span></p><p><span style=\"font-size: 16px; \"><br/></span></p><p><span style=\"font-size: 16px; \"><br/></span></p><p>北京时间：2013/10/02 星期三02.45欧冠小组赛布加勒斯特vs切尔西</p><p><br/></p><p><br/></p>','2013-09-29 17:05:24',0,1),(20,'布加勒斯特星 0-4 切尔西','<p>&nbsp;</p><p><img title=\"0,,10268~12269531,00.jpg\" src=\"http://www.smallcell.me/administrator/ueditor_scripts/upload/86761380768361.jpg\"/></p><p>布加勒斯特星 0-4 切尔西</p><p style=\"TEXT-ALIGN: left\">拉米雷斯上下半时各进一球，梅开二度；其间对方送上一份乌龙大礼；最后时刻兰帕德锦上添花，锁定胜局。</p><p></p>','2013-10-03 10:44:31',0,1),(21,'赛事预告','<p><span style=\"FONT-SIZE: 24px\"><strong><span style=\"FONT-FAMILY: 黑体, SimHei\">北京时间：2013/10/06 星期日 20:30 英超第07轮 诺维奇 VS 切尔西<img title=\"71f5628dtw1e974z5hmd2j20ov0eh0wn.jpg\" src=\"http://www.smallcell.me/administrator/ueditor_scripts/upload/20131003/13807684903634.jpg\"/></span></strong></span></p>','2013-10-03 10:46:45',0,1),(22,'上海申花2:1贵州人和','<p><span style=\"font-size: 14px;\">上海申花主场迎战贵州人和,上半场,斯基亚维在自家大门近了一个乌龙球,也算是他本赛季的第一个&quot;进球&quot;,下半场托兰佐的任意球开到禁区,双方抢球导致对方犯规,被罚点球,哈迪布踢进点球.比分1:1,在最后80分钟左右,禁区孙继海的一扫腿禁区犯规,又是点球,哈迪布这次打的是球门右下角,球进了 2:1,申花逆袭.</span></p><p style=\"text-align:center\"><img style=\"width: 600px; height: 448px;\" title=\"\" src=\"http://www.smallcell.me/administrator/ueditor_scripts/upload/20131007/13811100928545.jpg\" height=\"448\" hspace=\"0\" vspace=\"0\" width=\"600\" border=\"0\"/></p><p><span style=\"\\\"></span><br/></p>','2013-10-07 09:28:09',0,1),(23,'保罗.安德烈','<p><span style=\"font-size: 14px;\">申花新外援保罗,在自己的推特上用中文 和拼音写到:我很高兴在上海.</span>&nbsp;<img src=\"http://img.baidu.com/hi/jx2/j_0015.gif\"/></p>','2014-03-12 20:21:19',0,1),(24,'全锋队','<p><span style=\"font-size: 14px;\">&nbsp;全锋队简介<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;全锋队前身为“抓个球”，创建于2012年。因“抓个球”队名过于豪爽不羁，不适合小伙伴们严肃，稳重的性格故而改名为“全锋队”，顾名思义，我们全是前锋，你害怕了吗？<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;球队自成立以来本着“吹牛第一，扯淡第二的”原则，开创了前所未有的辉煌战绩，迄今为止已经豪取三场胜利（3胜11负）。其势如虹（其实如虫）。大有风卷重庆足球各大豪门之势。<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;球队logo由上海顶级美女设计师小细胞倾心打造，其独特倒三角“QF”抽象艺术的设计，正是精华所在，正所谓三角形最稳定，球队正如埃及金字塔牢不可摧（就算场均输十个都不怕跨），其锋芒毕露而又不张狂，具有重金属的质感又有视觉上的细腻，时尚又复古，寓意深刻又不通俗，总之就是32个赞的啦。</span><br/></p><p><br/></p>','2014-08-07 12:30:52',0,1);
/*!40000 ALTER TABLE `f_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_article_comment`
--

DROP TABLE IF EXISTS `f_article_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_article_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `username` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_article_comment`
--

LOCK TABLES `f_article_comment` WRITE;
/*!40000 ALTER TABLE `f_article_comment` DISABLE KEYS */;
INSERT INTO `f_article_comment` VALUES (1,22,'<p><img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\"/></p>','大黄',NULL,'2014-01-06 15:30:30'),(2,0,'','',NULL,'2014-08-06 15:48:49'),(3,0,'','',NULL,'2014-08-07 09:15:00'),(4,0,'','',NULL,'2014-08-07 09:15:13'),(5,0,'','',NULL,'2014-08-07 10:26:15'),(6,0,'','',NULL,'2014-08-07 10:28:27'),(7,0,'','',NULL,'2014-08-07 10:28:36'),(8,0,'','',NULL,'2014-08-07 10:34:26'),(9,0,'','',NULL,'2014-08-07 10:37:59'),(10,0,'','',NULL,'2014-08-07 10:38:26'),(11,24,'<p>全锋全封，重庆最凶</p>','勇敢的心',NULL,'2014-08-07 12:40:45'),(12,24,'<p>全锋全疯</p>','陶醉',NULL,'2014-08-07 12:41:27'),(13,24,'<p>小易结婚了 小细胞你知道吗</p>','无名',NULL,'2017-03-12 20:05:54');
/*!40000 ALTER TABLE `f_article_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_banner`
--

DROP TABLE IF EXISTS `f_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_order` tinyint(4) NOT NULL DEFAULT '0',
  `is_show` tinyint(4) NOT NULL DEFAULT '0',
  `filename` char(200) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_banner`
--

LOCK TABLES `f_banner` WRITE;
/*!40000 ALTER TABLE `f_banner` DISABLE KEYS */;
INSERT INTO `f_banner` VALUES (17,'蓝魔无敌','',4,1,'1380443562.jpg'),(18,'切尔西','布加勒斯特星 0-4 切尔西',5,0,'1380768852.jpg'),(19,'老爷车足球俱乐部','赠送球衣02号',6,1,'1380771189.jpg'),(28,'申鑫vs申花','申鑫vs申花',0,1,'1394600303.jpg'),(29,'only 申花',NULL,0,1,'1394600468.jpg');
/*!40000 ALTER TABLE `f_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_config`
--

DROP TABLE IF EXISTS `f_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_config` (
  `id` int(11) NOT NULL,
  `top_background` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `index_title` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `theme_color` char(50) COLLATE utf8_unicode_ci DEFAULT '',
  `banner_effect` char(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `webpage_title_suffix` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `leave_username` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_username` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_config`
--

LOCK TABLES `f_config` WRITE;
/*!40000 ALTER TABLE `f_config` DISABLE KEYS */;
INSERT INTO `f_config` VALUES (100,'1378618320.jpg','FOOTBALL FLAVOR','blue','fade','LOVE IT !','无名','公主殿下');
/*!40000 ALTER TABLE `f_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_link`
--

DROP TABLE IF EXISTS `f_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `url` char(250) COLLATE utf8_unicode_ci NOT NULL,
  `filename` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `link_order` tinyint(4) NOT NULL DEFAULT '0',
  `selected` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_link`
--

LOCK TABLES `f_link` WRITE;
/*!40000 ALTER TABLE `f_link` DISABLE KEYS */;
INSERT INTO `f_link` VALUES (7,'申花足球俱乐部','http://www.shenhuafc.com.cn/','1377843807.jpg',2,0),(15,'利物浦足球俱乐部','http://www.liverpoolfc.com','1377871187.jpg',4,0),(17,'切尔西足球俱乐部','http://www.chelseafc.com/','1378774139.jpg',1,0),(18,'皇家马德里足球俱乐部','http://www.realmadrid.com/','1380013478.jpg',3,0),(20,'爱玩啦','http://shop101825458.taobao.com/','1380769841.jpg',0,1);
/*!40000 ALTER TABLE `f_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_messages`
--

DROP TABLE IF EXISTS `f_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `username` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `reply` tinyint(4) NOT NULL DEFAULT '0',
  `reply_id` int(11) DEFAULT NULL,
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_messages`
--

LOCK TABLES `f_messages` WRITE;
/*!40000 ALTER TABLE `f_messages` DISABLE KEYS */;
INSERT INTO `f_messages` VALUES (69,'<p>做得不错！<img src=\"http://img.baidu.com/hi/jx2/j_0003.gif\" style=\"white-space: normal; \"/></p>','Niklaus',0,NULL,'2013-09-24 17:35:28'),(70,'<p>哈哈～～</p>','公主殿下',1,69,'2013-09-29 16:30:15'),(71,'<p>挺好的```</p>','倪师傅',0,NULL,'2013-09-29 17:28:50'),(72,'<p>谢啦~~~<img src=\"http://img.baidu.com/hi/jx2/j_0058.gif\"/></p>','公主殿下',1,71,'2013-10-03 10:58:38'),(73,'<p>我来过~~~ 捧场</p>','古月',0,NULL,'2013-11-04 11:07:43'),(74,'<p>美女我来啦， ，做的不错哦，加油</p><p><br/></p>','王大雷',0,NULL,'2013-12-26 17:36:04'),(79,'<p><img src=\"http://img.baidu.com/hi/ldw/w_0024.gif\"/></p>','R.K',0,NULL,'2014-10-08 10:25:17');
/*!40000 ALTER TABLE `f_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_photo`
--

DROP TABLE IF EXISTS `f_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `scroll` tinyint(4) NOT NULL DEFAULT '0',
  `comment` tinyint(4) NOT NULL,
  `album_id` int(11) NOT NULL,
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_photo`
--

LOCK TABLES `f_photo` WRITE;
/*!40000 ALTER TABLE `f_photo` DISABLE KEYS */;
INSERT INTO `f_photo` VALUES (58,'Blue Devil',NULL,'1394073757.jpg',1,1,17,'2014-03-06 10:41:50'),(59,'uname',NULL,'1394073788.jpg',1,1,19,'2014-03-06 10:42:42'),(60,'uname',NULL,'1394080793.jpg',1,1,17,'2014-03-06 12:31:39'),(61,'150',NULL,'1394081014.jpg',1,1,19,'2014-03-06 12:43:15'),(62,'chelsea',NULL,'1412660769.jpg',1,0,19,'2014-10-07 13:45:33');
/*!40000 ALTER TABLE `f_photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_photo_comment`
--

DROP TABLE IF EXISTS `f_photo_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_photo_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_id` int(11) NOT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `username` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_photo_comment`
--

LOCK TABLES `f_photo_comment` WRITE;
/*!40000 ALTER TABLE `f_photo_comment` DISABLE KEYS */;
INSERT INTO `f_photo_comment` VALUES (1,14,'<p><strong>test</strong></p>','无名',NULL,'2013-09-07 10:00:17'),(4,11,'<p><span style=\"color: rgb(192, 0, 0); \">test</span></p>','无名',NULL,'2013-09-07 10:24:58'),(6,7,'<p>test<br/></p>','无名',NULL,'2013-09-07 20:08:19'),(7,15,'<p>test<br/></p>','无名',NULL,'2013-09-07 21:14:59'),(8,15,'<p>asdf<br/></p>','无名',NULL,'2013-09-07 21:53:11'),(9,10,'<p><strong>tests</strong><br/></p>','无名',NULL,'2013-09-07 21:58:19'),(10,10,'<p><span style=\"color: rgb(192, 0, 0);\">test</span><br/></p>','无名',NULL,'2013-09-07 22:00:03'),(11,15,'<p><span style=\"background-color: rgb(192, 0, 0);\"><strong>知道vcaasfd</strong></span><br/></p>','无名',NULL,'2013-09-07 22:36:27'),(12,20,'<p>Like this!<br/></p>','Arial',NULL,'2013-09-08 01:25:57'),(13,25,'<p><span style=\"color: rgb(192, 0, 0);\"><strong>是摄影大师</strong></span><br/></p>','ageen',NULL,'2013-09-08 01:37:26'),(14,31,'<p>意境<br/></p>','ageen',NULL,'2013-09-08 01:44:40'),(15,21,'<p>clear eyes<br/></p>','无名',NULL,'2013-09-08 08:28:48'),(16,61,'<p><img src=\"http://img.baidu.com/hi/jx2/j_0002.gif\"/></p>','R.K',NULL,'2014-10-08 14:14:13');
/*!40000 ALTER TABLE `f_photo_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_vedio`
--

DROP TABLE IF EXISTS `f_vedio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_vedio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail` char(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` char(200) COLLATE utf8_unicode_ci NOT NULL,
  `title` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(4) NOT NULL DEFAULT '1',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `password` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recommend` tinyint(4) NOT NULL DEFAULT '0',
  `comment` tinyint(4) NOT NULL DEFAULT '1',
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_vedio`
--

LOCK TABLES `f_vedio` WRITE;
/*!40000 ALTER TABLE `f_vedio` DISABLE KEYS */;
INSERT INTO `f_vedio` VALUES (16,'1380443908.jpg','1380443509.flv','上海申花2：1江苏舜天','',1,0,'96e79218965eb72c92a549dd5a330112',0,1,'2013-09-29 16:30:30'),(17,'1381123068.jpg','1381123068.flv','2:1色色一一切茅台酒',NULL,1,0,'96e79218965eb72c92a549dd5a330112',0,1,'2013-10-07 13:07:56'),(19,'1394603078.jpg','1394603078.flv','上海申鑫 VS 上海申花',NULL,1,0,NULL,0,1,'2014-03-12 13:41:46'),(20,'1395112479.jpg','1395112479.flv','ONLY SFC',NULL,1,0,'96e79218965eb72c92a549dd5a330112',0,1,'2014-03-18 11:13:44'),(21,'1395986465.jpg','1395986258.flv','上海申花 VS 北京国安 - 赛前',NULL,1,0,NULL,0,1,'2014-03-28 13:56:18'),(22,'1395986364.jpg','1395986364.flv','上海申花 VS 北京国安 - 赛场',NULL,1,0,'96e79218965eb72c92a549dd5a330112',1,1,'2014-03-28 13:57:52');
/*!40000 ALTER TABLE `f_vedio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_vedio_comment`
--

DROP TABLE IF EXISTS `f_vedio_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_vedio_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vedio_id` int(11) NOT NULL,
  `comment` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `username` char(50) COLLATE utf8_unicode_ci NOT NULL,
  `reply_id` int(11) DEFAULT NULL,
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_vedio_comment`
--

LOCK TABLES `f_vedio_comment` WRITE;
/*!40000 ALTER TABLE `f_vedio_comment` DISABLE KEYS */;
INSERT INTO `f_vedio_comment` VALUES (1,4,'<p><img src=\"http://img.baidu.com/hi/jx2/j_0048.gif\"/></p>','喵咪',NULL,'2013-09-05 08:41:44'),(2,11,'<p>test<br/></p>','无名',NULL,'2013-09-08 14:45:46'),(3,22,'<p>顶一个。。加油！美女！！<br/></p>','meet you！！',NULL,'2014-03-28 14:22:52');
/*!40000 ALTER TABLE `f_vedio_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_wi`
--

DROP TABLE IF EXISTS `f_wi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_wi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `selected` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_wi`
--

LOCK TABLES `f_wi` WRITE;
/*!40000 ALTER TABLE `f_wi` DISABLE KEYS */;
INSERT INTO `f_wi` VALUES (2,'  ',1);
/*!40000 ALTER TABLE `f_wi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q_message`
--

DROP TABLE IF EXISTS `q_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` char(30) NOT NULL,
  `content` text NOT NULL,
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q_message`
--

LOCK TABLES `q_message` WRITE;
/*!40000 ALTER TABLE `q_message` DISABLE KEYS */;
INSERT INTO `q_message` VALUES (8,'小细胞','我是小细胞。留言成功。','2014-09-11 07:56:49'),(17,'哇噻哥','不错，瞬间高大上了','2014-09-11 10:13:19'),(20,'小易哥','小细胞威武','2014-09-11 10:17:55'),(21,'小易哥','小细胞威武','2014-09-11 10:17:57'),(23,'三石','要不要这么屌丝，能不能高大上点。','2014-09-11 10:21:10'),(25,'奥斯','小易和小细胞在一起','2014-09-11 10:23:43'),(26,'1264','我的照片呢？','2014-09-11 10:39:38'),(37,'小易我儿','撒子j8，永远无法听到的背景音乐','2014-09-11 12:50:05'),(38,'卧虎','小易还有个儿？','2014-09-11 12:51:50'),(39,'卧虎','这个音乐一出来，黑尼玛一跳，太嗨了嘛','2014-09-11 12:52:32'),(40,'跑的快','哈哈，老子也被这个音乐吓一跳了','2014-09-11 12:57:38'),(41,'小易我儿','小易我儿','2014-09-11 13:10:17'),(42,'小易我儿','小细胞我女','2014-09-11 13:10:30'),(43,'波多野结衣','王杰霸气威武','2014-09-11 13:30:44'),(46,'北条麻妃','王杰腿毛比头发长','2014-09-11 13:32:26'),(48,'小易','跪求你们正常点吧','2014-09-11 13:45:56'),(49,'小易我儿','楼下那个是我儿','2014-09-11 14:01:48'),(50,'截图存证','我来帮小易雄起，我怕被踢','2014-09-11 14:09:12'),(53,'全锋后卫','上周的照片终于传上来了哇','2014-09-18 13:35:26'),(54,'匿名队员1','新球衣照片上','2014-10-26 12:50:42'),(55,'小yi','新球衣上照','2014-10-28 13:20:28'),(56,'Co','2015首赢速度来，','2015-01-24 23:54:30');
/*!40000 ALTER TABLE `q_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `q_photo`
--

DROP TABLE IF EXISTS `q_photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `q_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` char(50) COLLATE utf8_bin NOT NULL,
  `filename` char(100) COLLATE utf8_bin NOT NULL,
  `scroll` tinyint(4) NOT NULL,
  `publish_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `q_photo`
--

LOCK TABLES `q_photo` WRITE;
/*!40000 ALTER TABLE `q_photo` DISABLE KEYS */;
INSERT INTO `q_photo` VALUES (6,'绿茵场','1413118028.jpg',0,'2014-10-12 20:46:50'),(5,'绿茵场','1413117998.jpg',0,'2014-10-12 20:46:18'),(4,'队员合影','1413117029.jpg',1,'2014-10-12 20:30:23'),(7,'合影','1413118063.jpg',1,'2014-10-12 20:47:12'),(8,'队员','1413118082.jpg',1,'2014-10-12 20:47:48'),(9,'队员','1413118093.jpg',1,'2014-10-12 20:48:04'),(10,'队员','1413118116.jpg',1,'2014-10-12 20:48:21'),(11,'队员','1413118339.jpg',1,'2014-10-12 20:52:09'),(13,'绿茵场','1413118382.jpg',0,'2014-10-12 20:52:36'),(14,'绿茵场','1413118393.jpg',0,'2014-10-12 20:53:04'),(15,'绿茵场','1413118409.jpg',0,'2014-10-12 20:53:15'),(16,'绿茵场','1413118437.jpg',0,'2014-10-12 20:53:40'),(17,'绿茵场','1413118488.jpg',0,'2014-10-12 20:54:34'),(18,'绿茵场','1413118500.jpg',0,'2014-10-12 20:54:50'),(19,'合影','1413118527.jpg',1,'2014-10-12 20:55:03'),(20,'合影','1413118549.jpg',1,'2014-10-12 20:55:30'),(21,'合影','1413118563.jpg',1,'2014-10-12 20:55:51'),(22,'全锋队','1414726744.jpg',1,'2014-10-31 11:38:35'),(23,'全锋队','1414727104.jpg',1,'2014-10-31 11:40:45'),(24,'全锋队','1414727117.jpg',1,'2014-10-31 11:45:08'),(25,'全锋队','1414727144.jpg',1,'2014-10-31 11:45:36'),(26,'全锋队','1414727176.jpg',1,'2014-10-31 11:46:07');
/*!40000 ALTER TABLE `q_photo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 14:55:27
