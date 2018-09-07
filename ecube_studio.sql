-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: ecube_studio
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
-- Table structure for table `ecs_assets`
--

DROP TABLE IF EXISTS `ecs_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_assets`
--

LOCK TABLES `ecs_assets` WRITE;
/*!40000 ALTER TABLE `ecs_assets` DISABLE KEYS */;
INSERT INTO `ecs_assets` VALUES (1,0,0,185,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}'),(2,1,1,2,1,'com_admin','com_admin','{}'),(3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(6,1,11,12,1,'com_config','com_config','{}'),(7,1,13,18,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(8,1,19,78,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(9,1,79,80,1,'com_cpanel','com_cpanel','{}'),(10,1,81,82,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}'),(11,1,83,84,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(12,1,85,86,1,'com_login','com_login','{}'),(13,1,87,88,1,'com_mailto','com_mailto','{}'),(14,1,89,90,1,'com_massmail','com_massmail','{}'),(15,1,91,92,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}'),(16,1,93,100,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(17,1,101,102,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}'),(18,1,103,144,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(19,1,145,148,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(20,1,149,150,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(21,1,151,152,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}'),(22,1,153,154,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(23,1,155,156,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(24,1,157,160,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(26,1,161,162,1,'com_wrapper','com_wrapper','{}'),(27,71,45,52,3,'com_content.category.2','网站模板','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(28,3,4,5,2,'com_banners.category.3','fantasia','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(29,7,14,15,2,'com_contact.category.4','联系我','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(30,19,146,147,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}'),(32,24,158,159,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(33,1,163,164,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}'),(34,1,165,166,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(35,1,167,168,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}'),(36,1,169,170,1,'com_contenthistory','com_contenthistory','{}'),(37,1,171,172,1,'com_ajax','com_ajax','{}'),(38,1,173,174,1,'com_postinstall','com_postinstall','{}'),(40,18,104,105,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(41,18,106,107,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(42,18,108,109,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(43,18,110,111,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(44,18,112,113,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(45,18,114,115,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(46,18,116,117,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(47,18,118,119,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(48,18,120,121,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(49,18,122,123,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(52,18,124,125,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(53,18,126,127,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}'),(54,16,94,95,2,'com_menus.menu.1','主菜单','{}'),(55,1,175,176,1,'com_fields','com_fields','{}'),(56,1,177,178,1,'com_associations','com_associations','{}'),(57,18,128,129,2,'com_modules.module.87','顶部菜单','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(58,8,20,31,2,'com_content.category.8','工作相关','{}'),(59,8,32,35,2,'com_content.category.9','关于e魔坊工作室','{}'),(60,83,60,61,4,'com_content.article.1','关于后端开发介绍','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(61,18,130,131,2,'com_modules.module.88','首页banner','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(62,16,96,97,2,'com_menus.menu.2','用户菜单','{}'),(63,18,132,133,2,'com_modules.module.89','首页介绍','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(64,18,134,135,2,'com_modules.module.90','首页滚动图','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(65,58,21,22,3,'com_content.article.2','家电维修','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(66,58,23,24,3,'com_content.article.3','安装服务','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(67,18,136,137,2,'com_modules.module.91','页脚footer','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(68,18,138,139,2,'com_modules.module.92','成员worker','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(69,7,16,17,2,'com_contact.category.10','te','{}'),(70,8,66,71,2,'com_content.category.11','工作流程','{}'),(71,8,36,53,2,'com_content.category.12','设计相关','{}'),(72,8,54,65,2,'com_content.category.13','网站开发','{}'),(73,71,39,44,3,'com_content.category.14','网页设计','{}'),(74,73,40,41,4,'com_content.article.4','网页设计趋势2017（一）','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(75,71,37,38,3,'com_content.category.15','motherboard','{}'),(76,1,179,180,1,'#__ucm_content.1','#__ucm_content.1','[]'),(77,59,33,34,3,'com_content.article.5','关于我们','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(78,16,98,99,2,'com_menus.menu.3','关于','{}'),(79,1,181,182,1,'#__ucm_content.2','#__ucm_content.2','[]'),(80,72,55,58,3,'com_content.category.16','前端开发','{}'),(82,80,56,57,4,'com_content.article.6','网站SEO','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(83,72,59,64,3,'com_content.category.17','后端开发','{}'),(84,18,140,141,2,'com_modules.module.93','面包屑','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(86,70,69,70,3,'com_content.article.7','网页设计工作流','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(87,58,25,26,3,'com_content.article.8','网站前端开发','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(88,58,27,28,3,'com_content.article.9','网站后端开发','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(89,70,67,68,3,'com_content.article.10','项目开发工作流','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(90,1,183,184,1,'com_jcomments','JComments','{}'),(91,73,42,43,4,'com_content.article.11','2017网页设计趋势（二）','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(92,83,62,63,4,'com_content.article.12','Joomla执行流','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(93,58,29,30,3,'com_content.article.13','网页设计','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(94,18,142,143,2,'com_modules.module.95','Social share','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"module.edit.frontend\":[]}'),(95,27,46,47,4,'com_content.article.14','响应式公司网站模板','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(96,8,72,73,2,'com_content.category.18','电子家电','{}'),(97,8,74,77,2,'com_content.category.19','技术文档','{}'),(98,97,75,76,3,'com_content.article.15','网络协议','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(99,27,48,49,4,'com_content.article.16','响应式简约带卡通风博客网站','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}'),(100,27,50,51,4,'com_content.article.17','nice admin响应式管理后台模板','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
/*!40000 ALTER TABLE `ecs_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_associations`
--

DROP TABLE IF EXISTS `ecs_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_associations`
--

LOCK TABLES `ecs_associations` WRITE;
/*!40000 ALTER TABLE `ecs_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_banner_clients`
--

DROP TABLE IF EXISTS `ecs_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_banner_clients`
--

LOCK TABLES `ecs_banner_clients` WRITE;
/*!40000 ALTER TABLE `ecs_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_banner_tracks`
--

DROP TABLE IF EXISTS `ecs_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_banner_tracks`
--

LOCK TABLES `ecs_banner_tracks` WRITE;
/*!40000 ALTER TABLE `ecs_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_banners`
--

DROP TABLE IF EXISTS `ecs_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_banners`
--

LOCK TABLES `ecs_banners` WRITE;
/*!40000 ALTER TABLE `ecs_banners` DISABLE KEYS */;
INSERT INTO `ecs_banners` VALUES (1,0,0,'Hello，你好！','hellou',0,1302,8,'',1,3,'<p><span style=\"font-size: 10pt;\">欢迎来到e魔坊！这里提供家电维修、网站开发服务</span></p>','',0,1,'','{\"imageurl\":\"images\\/banners\\/banner1.jpg\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-05-26 00:00:00','2017-04-26 10:03:28','*',437,'','2017-04-29 12:41:07',437,27),(2,0,0,'你好，世界！','2017-04-26-10-16-10',0,432,0,'',0,3,'<p>这里提供家电维修、网站开发服务<img src=\"media/editors/tinymce/plugins/emoticons/img/smiley-laughing.gif\" alt=\"laughing\" /></p>','',0,2,'','{\"imageurl\":\"images\\/banners\\/banner2.jpg\",\"width\":\"\",\"height\":\"\",\"alt\":\"\"}',0,'',-1,0,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','2017-05-26 00:00:00','2017-04-26 10:16:10','*',437,'','2017-04-29 04:11:58',437,6);
/*!40000 ALTER TABLE `ecs_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_categories`
--

DROP TABLE IF EXISTS `ecs_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_categories`
--

LOCK TABLES `ecs_categories` WRITE;
/*!40000 ALTER TABLE `ecs_categories` DISABLE KEYS */;
INSERT INTO `ecs_categories` VALUES (1,0,0,0,35,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',437,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(2,27,12,20,21,2,'2017-04-28-03-15-02/web-templates','com_content','网站模板','web-templates','','<p>bootstrap</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2011-01-01 00:00:01',437,'2017-05-16 07:13:56',0,'*',1),(3,28,1,1,2,1,'uncategorised','com_banners','fantasia','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2011-01-01 00:00:01',437,'2017-04-26 10:11:24',0,'*',1),(4,29,1,3,4,1,'web-development','com_contact','联系我','web-development','','<p>contact us</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2011-01-01 00:00:01',437,'2017-04-29 10:20:08',0,'*',1),(5,30,1,5,6,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(7,32,1,7,8,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1),(8,58,1,9,10,1,'our-works','com_content','工作相关','our-works','','<p>介绍提供服务及相关工作</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"_:blog\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-26 09:20:52',437,'2017-05-28 08:34:00',0,'*',1),(9,59,1,11,12,1,'e','com_content','关于e魔坊工作室','e','','<p>about e-cube studio</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-26 09:35:24',0,'2017-04-26 09:35:24',0,'*',1),(10,69,1,13,14,1,'te','com_contact','te','te','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-27 08:19:05',0,'2017-04-27 08:19:05',0,'*',1),(11,70,1,29,30,1,'2017-04-28-03-14-17','com_content','工作流程','2017-04-28-03-14-17','','<p>工作流程 workflow</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-28 03:14:17',437,'2017-05-17 00:51:40',0,'*',1),(12,71,1,15,22,1,'2017-04-28-03-15-02','com_content','设计相关','2017-04-28-03-15-02','','<p>网站模板及设计</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-28 03:15:02',437,'2017-05-15 03:44:51',0,'*',1),(13,72,1,23,28,1,'2017-04-28-03-17-18','com_content','网站开发','2017-04-28-03-17-18','','<p><b><i>网站前后端开发</i></b></p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-28 03:17:18',437,'2017-05-07 12:46:50',0,'*',1),(14,73,12,18,19,2,'2017-04-28-03-15-02/web-design','com_content','网页设计','web-design','','<p>模板设计、线框图、信息构架(template design, wireframe, information construct)</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-28 03:18:47',437,'2017-05-04 12:01:36',0,'*',1),(15,75,12,16,17,2,'2017-04-28-03-15-02/motherboard','com_content','motherboard','motherboard','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-28 03:42:09',0,'2017-04-28 03:42:09',0,'*',1),(16,80,13,24,25,2,'2017-04-28-03-17-18/2017-04-30-07-59-15','com_content','前端开发','2017-04-30-07-59-15','','<p>主要开发语言：HTML，CSS，JavaScript</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-30 07:59:15',437,'2017-05-07 12:53:41',0,'*',1),(17,83,13,26,27,2,'2017-04-28-03-17-18/2017-04-30-08-22-01','com_content','后端开发','2017-04-30-08-22-01','','<p>开发语言：PHP，Joomla二次开发</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-30 08:22:01',437,'2017-05-07 12:54:31',0,'*',1),(18,96,1,31,32,1,'2017-05-17-00-54-53','com_content','电子家电','2017-05-17-00-54-53','','<p>electronic&amp;appliances</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-05-17 00:54:53',437,'2017-05-17 00:55:08',0,'*',1),(19,97,1,33,34,1,'2017-05-17-01-03-18','com_content','技术文档','2017-05-17-01-03-18','','<p>technology documents</p>',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"image_alt\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-05-17 01:03:18',0,'2017-05-17 01:03:18',0,'*',1);
/*!40000 ALTER TABLE `ecs_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_contact_details`
--

DROP TABLE IF EXISTS `ecs_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if contact is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_contact_details`
--

LOCK TABLES `ecs_contact_details` WRITE;
/*!40000 ALTER TABLE `ecs_contact_details` DISABLE KEYS */;
INSERT INTO `ecs_contact_details` VALUES (1,'项峰','2017-04-27-07-22-33','网站开发','壶镇镇','丽水','浙江','中国','321404','','','<p style=\"text-align: center;\"> </p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong>联系名片</strong></span></p>\r\n<p style=\"text-align: center;\"><strong><img class=\"img-responsive\" src=\"images/avatar/icard2.jpg\" alt=\"\" /></strong></p>','images/avatar/avatar2.jpg','ageen@163.com',0,1,0,'0000-00-00 00:00:00',2,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',437,4,1,'15325161909','http://e-cube.tech','','','','*','2017-04-27 07:22:33',437,'','2017-04-29 09:00:20',437,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',10,70),(2,'项勇敢','2017-04-29-06-19-49','家电维修','壶镇镇','丽水','浙江','中国','321404','','','<p> </p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong>联系名片</strong></span></p>\r\n<p><img class=\"img-responsive\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/avatar/icard1.jpg\" width=\"450\" height=\"270\" /></p>','images/avatar/avatar1.jpg','',0,1,0,'0000-00-00 00:00:00',1,'{\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"presentation_style\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"show_misc\":\"\",\"allow_vcard\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_profile\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linka\":false,\"linkb_name\":\"\",\"linkb\":false,\"linkc_name\":\"\",\"linkc\":false,\"linkd_name\":\"\",\"linkd\":false,\"linke_name\":\"\",\"linke\":false,\"contact_layout\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\"}',0,4,1,'13957044369','','短号:690029','','','*','2017-04-29 06:19:49',437,'','2017-04-29 08:52:34',437,'','','{\"robots\":\"\",\"rights\":\"\"}',0,'','0000-00-00 00:00:00','0000-00-00 00:00:00',14,40);
/*!40000 ALTER TABLE `ecs_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_content`
--

DROP TABLE IF EXISTS `ecs_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_content`
--

LOCK TABLES `ecs_content` WRITE;
/*!40000 ALTER TABLE `ecs_content` DISABLE KEYS */;
INSERT INTO `ecs_content` VALUES (1,60,'关于后端开发介绍','back-end-developing','<p>介绍一些的后端开发知识</p>\r\n','\r\n<p> </p>\r\n<p><img class=\"img-responsive\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/article/back-end-development.jpg\" alt=\"\" /></p>\r\n<p><span style=\"font-size: 17px; color: #0000ff;\"><span style=\"font-family: Sailec, Helvetica, Arial, sans-serif;\">后端开发是一种基础构架，用于跨用户或账号的信息共享，也称为网站或app的大脑。后端是网站/app的一部分，对前端用户不可见。后端是通过服务器端语言及数据库搭建而成，就像前端和用户的实时交互，同样的方式，后端与服务器交互并返回结果给用户。换句话说，所有展现在页面上的内容都是后端服务器执行特定操作后返回的结果。</span></span></p>\r\n<p> </p>\r\n<p><span style=\"color: #3366ff; font-size: 17px;\"><span style=\"color: #333333; font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; word-spacing: 1px; font-size: 23px;\"><b>后端开发员的角色</b></span><br style=\"color: #333333; font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\" /><br style=\"color: #333333; font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\" /><span style=\"color: #333333; font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\">后端开发人员的工作与用户/客户端对特定功能的需求紧密联系。开发人员经常获取前端现成代码，以相同方式请求方式应用到特定程序，然后在那里将请求内容结合存储在数据库中的数据动态的返回最后展示到客户端。</span><br style=\"color: #333333; font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\" /></span></p>\r\n<p><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;\"><span style=\"font-size: 14.85px; word-spacing: 1px;\">和前端网站开发环境部署相似，后端开发环境也需要引入许多库和框架，通过这些，后端开发人员用于编写后端功能时会变得更加简单。一些流行的后端库被专业后端开发人员使用和推荐，包括：Code Igniter, Laravel, Ruby On rails 等等。如本网站采用（joomla framework + cms 搭建）</span></span></p>\r\n<p> </p>\r\n<p><b style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 23px; word-spacing: 1px;\">后端开发 - 简述操作</b></p>\r\n<p><br style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\" /><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\">和前端开发不同，后端开发相对复杂。后端开发员用一种适当的服务端语言搭建应用程序，如PHP，Python，.Net 等，然后借助MySQL，Oracle，SQL等数据库软件与数据库联系。这样就可以让你以前端代码请求后端的形式，对数据进行查找、修改和存储了。比如，每次你在页面上执行一个操作，如订阅新闻通讯，编辑页面内容或发送一个联系表单；后端特定程序代码会响应同样的操作。</span></p>\r\n<p><br style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\" /><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; word-spacing: 1px; font-size: 23px;\"><b>用一个例子解释后端开发工作</b></span><br style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\" /><br style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\" /><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif; font-size: 14.85px; word-spacing: 1px;\">后端包括三个部分，就是：服务器、应用程序和数据库。例子，一个客户试图通过一个网站购买一张电影票。在这里，所有信息被显示在页面上的是网站前端，在用户注册他/她的个人信息时：姓名、信用卡/借记卡 信息，目的地等，这个网站商店应用程序就会把同样的信息存储在服务器已创建好的数据库中。所有详细信息在数据库中以条目的形成存储。如此一来假如该用户想更改或取消他/她的电影票时，信息更改便会限制在数据库中的特定条目进行。</span></p>\r\n<p><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;\"><span style=\"font-size: 14.85px; word-spacing: 1px;\">在这里，和用户浏览器通信的该服务器就是所有数据库信息存储和修改的地方。概括来说，当该用户按照指定步骤购买需要的电影票时，所有后端操作，如网站应用程序和服务器间的通信的执行过程都被后端程序员详细规定。这些开发人员会用一些流行的开发语言像：ruby，Python和PHP，让整个通信过程顺畅无瑕的运行，从而使得客户只要用短短几分钟就可以购买到所需要的电影票。</span></span></p>\r\n<p>{slider 以下为开发人员说明事项|closed}</p>\r\n<p><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;\"><span style=\"font-size: 14.85px; word-spacing: 1px;\"><span style=\"font-size: 23px;\"><b>后端开发过程中，安排好工作优先级，非常重要</b></span><br style=\"font-size: 14.85px;\" /><br style=\"font-size: 14.85px;\" /><span style=\"font-size: 14.85px;\">后端开发是一个比较复杂的过程，因而安排好工作优先级对开发进程是非常必要。当每次接收到一个请求时都可能会要求为该请求在后端创建一个高度复杂的功能，排序优先级的任务就是帮助你更加平滑的执行这些请求处理过程。在后端开发排序你的任务优先级时，有两个关键的因素需要随时注意：</span></span></span></p>\r\n<ul style=\"padding: 0px 2.5em; margin: 0.5em 0px; line-height: 1.4; list-style: circle; font-size: 14.85px; word-spacing: 1px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 0.25em; border: none;\"><b>各个技术层面的深度理解</b></li>\r\n</ul>\r\n<p><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;\"><span style=\"font-size: 14.85px; word-spacing: 1px;\"><span style=\"font-size: 14.85px;\">为了确保所涉及的后端开发在所有场景的平滑运行，对集合所有的技术层面，有一个透彻的认识是非常重要的，如：数据库、网站服务器、网络基础结构及浏览器等。在理解任务的复杂度前就对你的客户说“是”，往往是那些你无法保证的事。</span></span></span></p>\r\n<ul style=\"padding: 0px 2.5em; margin: 0.5em 0px; line-height: 1.4; list-style: circle; font-size: 14.85px; word-spacing: 1px;\">\r\n<li style=\"padding: 0px; margin: 0px 0px 0.25em; border: none;\"><b> 检查后端开发队伍是否可以承受大量的网站开发请求</b></li>\r\n</ul>\r\n<p><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;\"><span style=\"font-size: 14.85px; word-spacing: 1px;\"><span style=\"font-size: 14.85px;\"><span style=\"font-size: 14.85px;\">当你按照后端开发计划流程进行时，确保你的团队愿意满足客户不断增长的需求。例如，你负责的一个后端开发项目要求一个中级开发员每周至少投入12小时的开发时间，这样让你可以更加容易地调配那些可以给初级开发员完成的项目任务。这种策略可以让你拥有更多冗余时间，因为现在有更多人员参与后端开发的编码工作。此外，当你开始后端功能开发的旅程时，复杂的任务会变得简单，让那些新手和初级开发人员参与项目工作时更加轻松和灵活。</span></span></span></span></p>\r\n<ul style=\"padding: 0px 2.5em; margin: 0.5em 0px; line-height: 1.4; list-style: circle; font-size: 14.85px; word-spacing: 1px;\">\r\n<li><b>对那些困难的后端开发请求，不要犹豫说“不”</b></li>\r\n</ul>\r\n<p> </p>\r\n<p><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;\"><span style=\"font-size: 14.85px; word-spacing: 1px;\"><span style=\"font-size: 14.85px;\"><span style=\"font-size: 14.85px;\">为了保证后端的顺利运行，要使每个任务和执行它们时所耗费的时间保持适当的平衡。在说“是”之前，考察那些需要开发的网站请求，要对一些问题已有答案，例如：整个自动处理过程，需要多长时间？目标受众是谁？哪些后端步骤可以省略？这样的工作是否值得这样的投资？找出这些问题的答案或许可以帮助你针对不同的用户做出正确的判断，去决定“是”还是“否”。</span></span></span></span></p>\r\n<p>{/sliders}</p>\r\n<p><span style=\"font-size: 14pt;\"><strong>总结</strong></span></p>\r\n<p><span style=\"font-family: Arial, Tahoma, Helvetica, FreeSans, sans-serif;\"><span style=\"font-size: 14.85px; word-spacing: 1px;\"><span style=\"font-size: 14.85px;\"><span style=\"font-size: 14.85px;\">后端开发往往需要你投入大量的时间和精力。只有在整合分析后端开发各个层面如何工作后，才能确保让你开始进行后端开发工作时变得简单而富有激情。</span></span></span></span></p>\r\n<div class=\"text-center\">{loadmodule mod_je_social,Social share}</div>',1,17,'2017-04-26 09:38:49',437,'','2017-05-11 07:21:17',437,437,'2017-05-11 07:21:17','2017-04-26 09:38:49','0000-00-00 00:00:00','{\"image_intro\":\"images\\/article\\/back-end-development-slider.jpg\",\"float_intro\":\"left\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',75,0,'','',1,162,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(2,65,'家电维修','2017-04-26-10-52-07','<p>专业维修，快速诊断，品质保证，让您的家电焕发新彩</p>\r\n','\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><em><strong>这里提供日用家电维修，专业服务，品质保证</strong></em></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; color: #333333;\">维修主要类目有</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/deco/tv.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><strong>电视机、液晶电视</strong></span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/deco/fridge.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><strong>电冰箱</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"color: #333333;\"><strong><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/deco/washingmachine.png\" alt=\"\" /></strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><b>洗衣机</b></span></p>\r\n<p style=\"text-align: center;\"><b><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/deco/aircondition.png\" alt=\"\" /></b></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><b>空调</b></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: #ff00ff;\">此外还包括音响功放设备以及各类电器烹饪厨具等</span></strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\">如需要以上服务，请联系：<b><a href=\"index.php?option=com_contact&amp;view=contact&amp;id=2&amp;catid=4\">项勇敢</a></b></span></p>',1,8,'2017-04-26 10:52:07',437,'','2017-05-01 05:39:16',437,0,'0000-00-00 00:00:00','2017-04-26 10:52:07','0000-00-00 00:00:00','{\"image_intro\":\"images\\/article\\/appliances_maintain_slider.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',30,5,'','',1,106,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(3,66,'安装服务','bootstrap-tutorial','<p>视频监控、卫星天线、网络机顶盒安装服务</p>\r\n','\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong>我们提供监控视频、卫星天线、网络机顶盒等安装服务</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt; color: #ff00ff;\"><strong>上门安装，轻松快捷，售后有保障</strong></span></p>\r\n<div><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/monitors.jpg\" alt=\"\" /></div>\r\n<div style=\"text-align: center;\"><span style=\"color: #0000ff;\"><em><span style=\"font-size: 12.16px;\">我们会为您选择更专业的监控设备制造商</span></em></span></div>\r\n<p> <img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/nvrm-connect.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt; color: #0000ff;\"><em>网路硬盘录像机连接示意图</em></span></p>\r\n<p>{slider 卫星电视系统的组成示意图|closed}</p>\r\n<p style=\"text-align: center;\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/satellite_tv_compose.jpg\" alt=\"\" /></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 网络机顶盒连接示意图|closed}</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/net-set-top-connec2t.jpg\" alt=\"\" /></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/net-set-top-connect.jpg\" alt=\"\" /></p>\r\n<p>{/sliders}</p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\">如有需要以上服务请联系 <a href=\"index.php?option=com_contact&amp;view=contact&amp;id=2&amp;catid=4\">项勇敢</a> <img src=\"media/editors/tinymce/plugins/emoticons/img/smiley-laughing.gif\" alt=\"laughing\" /></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\">{loadmodule mod_je_social,Social share}</span></p>',1,8,'2017-04-26 11:49:11',437,'','2017-05-15 01:47:08',437,437,'2017-05-15 01:47:08','2017-04-26 11:49:11','0000-00-00 00:00:00','{\"image_intro\":\"images\\/article\\/fix_tool.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',34,4,'','',1,245,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(4,74,'网页设计趋势2017（一）','2017-04-28-03-20-45','<p>通常发生在创新领域的趋势，引领着社会的风潮，网页设计也是这样一种。</p>\r\n<p>网页设计在不断试验和创新中产生，趋势成它为不断创造改变的驱动力，一股推动这整个行业不断向前发展的重要力量。</p>\r\n<p>网页是一个持续改变和进化的独特环境，在今年，让我们看看会在网页上发生哪些趋势。</p>\r\n','\r\n<div style=\"line-height: 30px;\">\r\n<p> <span style=\"font-size: 18pt;\"><strong>1. 越来越多品牌采用移动优先设计方案</strong></span></p>\r\n<p><span style=\"font-size: 12pt;\">就像名字所提示，移动优先设计是设计流程中首先针对手机（或小屏幕设备）设计，然后逐步到大屏幕端。</span></p>\r\n<p><span style=\"font-size: 12pt;\">移动优先设计并不新鲜，距今已有好几年，但是移动手机现在已成为正式的主要设备用于浏览网站，现在越来越多的公司意识到网站有效地呈现内容到小屏幕设备的重要性，都开始匆忙起来。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Mobile-First.jpg\" alt=\"\" /></p>\r\n<p><span style=\"font-size: 12pt;\">内容首先被设计适合移动和小屏幕设备，然后逐步转向大屏幕设备</span></p>\r\n<p><span style=\"font-size: 12pt;\">除了设计和视觉，移动优先模式和它们所带来的限制很有效的让那些品牌商真正认识到什么是他们真正想要展示的核心内容和信息。</span></p>\r\n<p><span style=\"font-size: 12pt;\">智能手机（大部分）伴随比平板电脑和台式电脑小的多的屏幕，限制了用户每次易于阅读内容的数量。这迫使品牌商将任何信息或内容无100%必要显示的移走，而随着设备屏幕的变大，再重新将它们和其它修饰元素加入进来。</span></p>\r\n<p><span style=\"font-size: 12pt;\">我们预言：未来几年会有更多网站会针对如何呈现他们的内容到小屏幕做更多的考虑，而不是用移动端设计作为桌面端的补充。</span></p>\r\n<p> </p>\r\n<p><span style=\"font-size: 18pt;\"><strong>2.更加广泛的自适应设计</strong></span></p>\r\n<p><span style=\"font-size: 12pt;\">我们知道你怎么想——开始移动优先，而现在自适应设计？它们都不是新的概念。</span></p>\r\n<p><span style=\"font-size: 12pt;\">尽管自适应也有好几年的历史，但我们预言可见的将来它将更大程度占据品牌商的数量，无论大的还是小的，都会建设以自适应为基础的网站。</span></p>\r\n<p><span style=\"font-size: 12pt;\">或许你不知道自适应设计是什么，它本质上是一种利用CSS媒体查询（media queris）和活动表格/布局（flexible grids/layouts）去创建一个单独、动态站点的方法，它可以通过调整和重新安排它的内容以最好的方式显示在不同尺寸的设备屏幕上。它和移动优先一起工作，移动优先设计体验和外观，自适应去执行它。</span></p>\r\n<p><span style=\"font-size: 12pt;\">自适应设计的一个福利是，它可以使这笔交易只支付一个网站的构建费用，就可以有效的将内容呈现到移动端和平板端，同样的从笔记本到大屏幕的桌面电脑。</span></p>\r\n<p><span style=\"font-size: 12pt;\">除了成本效益外，我们预测会有更多品牌商引入自适应的原因是在2015的4月，一个针对Google排名算法的更新。概括说，Google的更新提升了那些对网站内容作了移动端优化（按照用户体验，遵照移动优先的原则）站点的排名。那些未做过移动端优化的站点会发现它们的线上排名会有重大的变动。<a href=\"https://developers.google.com/webmasters/mobile-sites/\">这里</a> 了解更多Google排名.</span></p>\r\n<p><span style=\"font-size: 12pt;\">在Google的更新下，如果你想查看你的站点是否“移动端友好”，确保用<a href=\"https://www.google.co.uk/webmasters/tools/mobile-friendly/\">这个便捷的工具</a>测试。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Responsive-1024x467.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><em><strong>上面例子，来自我们的 <a href=\"https://www.zazzlemedia.co.uk/digital-marketing-toolbox/\">zazzlemedia 博客</a>站点，展示一个自适应网站，内容能自动布置以便在不同设备中更好的显示。</strong></em></span></p>\r\n<p><span style=\"font-size: 12pt;\">除了排名外，还需引起注意的是在这几年用户行为的改变。因特网用户迅速的习惯了移动端优化的站点，因为它使他们拥有更轻松便捷地浏览体验，而那些没有满足这些标准的站点因而削减了很多流量。根据来自<span lang=\"EN-US\">Experience Dynamics</span>的<span lang=\"EN-US\"><a href=\"https://www.experiencedynamics.com/blog/2015/03/30-ux-statistics-you-should-not-ignore-infographic\">this infographic</a> </span>显示，约有<span lang=\"EN-US\">79%</span>的用户会离开这个站点假如他们发现此网站没有经过移动端优化——这是值得品牌商认真考虑的！</span></p>\r\n<p> </p>\r\n<p><span style=\"font-size: 12pt;\">我们的预言：如同移动端优先——我们预测将会有大量的品牌和商业将会通过这种方式去保证他们想要在搜索上的排名，同时也让客户有更愉快的用户体验。</span></p>\r\n<p> </p>\r\n<p><span style=\"font-size: 18pt;\"><strong><span lang=\"EN-US\">3.</span>广泛的利用快速原型构建工具</strong></span></p>\r\n<p><span style=\"font-size: 12pt;\">虽然这不是设计本身的趋势，快速原型构建工具肯定是一个最有用的技术在过去几年席卷了整个网页设计的世界，成为任何网站、用户界面和用户体验的设计师必备工具。</span></p>\r\n<p><span style=\"font-size: 12pt;\">来自服务商的快速原型构建工具如：<span lang=\"EN-US\"><a href=\"https://www.uxpin.com/\">UXpin</a>, <a href=\"https://webflow.com/\">Webflow</a>, <a href=\"https://www.invisionapp.com/\">InVision</a> </span>和<span lang=\"EN-US\"> </span><span lang=\"EN-US\"><a href=\"https://marvelapp.com/\">Marvel</a></span>（在很多其它类似工具中）都可以让设计师们快速创建工作流和高度精确的网站原型，然后由服务商评估他们的可用性和审美感，所有一切不需要一行代码。还有许多允许你再浏览器中设计，并通过工具栏在上面加载实际的网站效果。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\">这些工具的易用性和丰富功能给出一种即时你想要的满意体验来指导最终的产品在浏览器中该如何呈现和工作，节省了宝贵的时间、资源，避免了设计中的周折。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\">在其应用的另一个优势便是来自于客户端。在模拟固定线条框的客户端演示，解释每一个细微的动画和过度，这些日子一去不复返了。现在你的客户端会获得一致的工作和展现方式，不需要对用户体验和过度效果的速度进行漫长、复杂的转换。</span></p>\r\n<p><span style=\"font-size: 12pt;\">我们预言：今天有很多这样的工具，证明它们的成功，使很多商业已经采用了它们。我们预测会有更多的品牌和设计者会跟上这股潮流在他们追赶工作流和提高效率中。</span></p>\r\n<p> </p>\r\n<p>{slider 4.UI（用户界面）模式和设计框架|closed}</p>\r\n<p><span style=\"font-size: 12pt;\">除了移动优先和自适应的方式不断应用到网页设计中，不断流行的<span lang=\"EN-US\">WordPress</span>和预先设计主题，也给今天的桌面站点工作和呈现方式产生重大影响。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\">我们开始注意到越来越多的包括用户界面和用户体验模式浮现在整个网络里，在学习其它网站去不断调整用户体验的过程中，它们的外观和功能变得非常相似。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们不探究这些网站开始变得太“雷同”的争论，而关注这些高度一致的用户界面和用户体验模式引导网站如何改变的对用户更加友好。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">在线上竞争日益激烈的各个领域，他们不能在用户体验的旅程上冒大的风险，如果这些不断测试和试验和的模式和工作原则，能够让他们有效地增强它们的站点。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">一个很好的资源<span lang=\"EN-US\"><a href=\"http://ui-patterns.com/patterns\">UI-Patterns</a></span>，用于针对各种目标寻找已存在的模式。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/UI-Kit-3.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong>有很多优秀的<span lang=\"EN-US\">UI</span>工具吸收了最好的实践，如上图来自 <span lang=\"EN-US\"><a href=\"http://ui8.net/\">UI8.net</a></span>。这些工具可以方便的设计和操作，让你不用依赖外部，直接试验和测试你设计的功能。</strong></em></span></p>\r\n<p style=\"text-align: center;\" align=\"left\"> </p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">一个非常棒的例子，来自<span lang=\"EN-US\">Google 2014</span>年启动的<span lang=\"EN-US\"><a href=\"https://www.google.com/design/spec/material-design/introduction.html\">Material Design Language</a> </span>（原料设计语言）—— 是一套设计原则，用于指导开发更加一致的用户体验。</span></p>\r\n<p align=\"left\"> </p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">他们总结<span lang=\"EN-US\">Material Design</span>的目标是“开发一个单独的底层系统，目的让一种高度一致的体验应用到各个平台和设备尺寸上。移动端规范是基础，但触摸、声音、鼠标和键盘都是第一输入方式。”</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"><span lang=\"EN-US\">Google</span>已经在他们自己的<span lang=\"EN-US\">apps</span>上应用这一原则，许多品牌商已经采用这一原则到他们站点以增强用户体验。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们预言：随着这些存在的<span lang=\"EN-US\">UI</span>和<span lang=\"EN-US\">UX</span>模式的进化发展，我们会看见越来越多的品牌采用它们，而让我们进一步趋向统一、连续的线上浏览体验。</span></p>\r\n<p> </p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">发展一种用户体验流程来保持用户体验的愉悦，是目前最优先的工作，随着品牌商开始脱离设计花招去在一个不断增长的竞争市场赢得一席之地。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 5.定制插图|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">插图在创造视觉时是一种极好的，多才多艺的媒介，它们有趣和友好给网站带来很多的乐趣。有才华的插图师能创建充满个性又符合品牌风格的插图，个性和风格是许多品牌在一个越来越拥挤的市场努力寻求的。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">通过插图的独特风格，品牌商能够在使用大型头部的图片，定制的图标符号和漂亮的动画视觉中，铺展开他们整体的一致性。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Illustration-Dropbox-1.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"https://www.dropbox.com/\">Dropbox</a></span>是很好的一个品牌例子，它用插图来创建漂亮，友好和完全独特的视觉，充满个性地呈现给它的用户。</strong></em></span></p>\r\n<p><span style=\"font-size: 12pt;\">插图的独特性，正成为它本身的一种原则，也成为一种趋势。我们不在这块逗留太久，我们推荐到<span lang=\"EN-US\"><a href=\"https://dribbble.com/\">Dribbble</a></span>上去看看，哪些类型的插图是这世界上最值得投入工作的。这里经常会成为那些风格和趋势不断流行的很好指示。</span></p>\r\n<p>{/sliders}</p>\r\n</div>',1,14,'2017-04-28 03:20:45',437,'','2017-05-15 04:12:27',437,0,'0000-00-00 00:00:00','2017-04-28 03:20:45','0000-00-00 00:00:00','{\"image_intro\":\"images\\/articles\\/20170507\\/2017-WEB-DESIGN-TRENDS.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',43,0,'','',1,117,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(5,77,'关于我们','2017-04-29-05-42-32','<p><img class=\"img-responsive\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/deco/creativity.png\" alt=\"\" /></p>\r\n<h3 style=\"text-align: center; border-radius: 5px; padding: 5px 0; background-color: #ff3366; color: #ffffff;\">  你好，这里提供家电和计算机服务  </h3>\r\n<div class=\"row\">\r\n<div class=\"col-sm-6 col-xs-12\"><img class=\"img-responsive\" style=\"margin: 0px auto 0px auto;\" src=\"images/deco/qrcode.png\" width=\"430\" height=\"430\" />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: #3366ff;\">e魔坊微信公众号</span></strong></span></div>\r\n</div>\r\n<div class=\"col-sm-6 col-xs-12\"><img class=\"img-responsive\" style=\"margin: 0px auto 0px auto;\" src=\"images/deco/qq-qrcode.png\" alt=\"\" /><br />\r\n<div style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><strong><span style=\"color: #3366ff;\">e魔坊QQ号</span></strong></span></div>\r\n</div>\r\n</div>\r\n<hr />\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong><a id=\"jiadian\"></a>家电服务：</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong><span style=\"color: #3366ff;\">日常家用电器维修</span></strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong><span style=\"color: #3366ff;\">卫星电视、网络机顶盒、监控视频等安装调试</span></strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"> 以上服务请联系：<a href=\"index.php?option=com_contact&amp;view=contact&amp;id=2&amp;catid=4\">项勇敢</a></span></p>\r\n<hr />\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong><a id=\"jisuanji\"></a>计算机服务：</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; color: #3366ff;\"><strong>计算机系统及网络维护</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; color: #3366ff;\"><strong>网页设计、网站开发</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt; color: #3366ff;\"><strong>电子商务咨询</strong></span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">以上服务请联系：<a href=\"index.php?option=com_contact&amp;view=contact&amp;id=1&amp;catid=4\">项峰</a></span></p>\r\n<hr />\r\n<p style=\"text-align: center;\"><br /><span style=\"font-size: 18pt;\"><strong><span style=\"font-family: \'arial black\', sans-serif; color: #ff3366;\">有你的支持，我们会做的更好</span></strong></span></p>\r\n<p style=\"text-align: center;\"><br /><span style=\"font-family: \'arial black\', sans-serif; font-size: 18pt;\">如有你所需，请联系我们！</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\">邮箱：e@e-cube.tech</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-family: \'arial black\', sans-serif;\"><span style=\"font-size: 24px;\">Have a nice day!</span></span></p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"media/editors/tinymce/plugins/emoticons/img/smiley-laughing.gif\" alt=\"laughing\" /></p>\r\n<p style=\"text-align: center;\"> </p>','',1,9,'2017-04-29 05:42:32',437,'','2017-04-29 14:03:06',437,0,'0000-00-00 00:00:00','2017-04-29 05:42:32','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',68,0,'','',1,195,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(6,82,'网站SEO','seo','<p>十分钟带你认识SEO</p>\r\n','\r\n<p><span style=\"font-size: 12pt;\">你是否在寻找一种方法减少网站的<a title=\"跳出率是网站分析中一个度量，跳出率定义了只浏览了单个页面的访问量占总访问量的比率。\" href=\"#\" rel=\"alternate\" data-toggle=\"tooltip\" data-placement=\"top\">跳出率</a>吗？让我们用最简洁的方式去说明这个问题，就像要如何安全无误地度过一条洪水泛滥的河流。如果一种食物的各个细节都经过精心考虑后再展现，那么它的自然属性也会变得更加具有诱惑性。当自然的细节呈现使食物变得令人愉悦时，凭借这一点就能在市场中，打赢一半以上的竞争对手。我们就是这样去吸引客户去购买这种食物的，而不去考虑他们是否真的因为喜欢这种食物而去购买。</span></p>\r\n<p><img class=\"img-responsive\" style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/article/seo-ten-minutes.png\" alt=\"\" /></p>\r\n<p><span style=\"font-size: 12pt;\">你可雇佣SEO专家或者许多公司也提供了此类服务来提高你的网站流量。如果你不想借助他人的帮忙，那么此篇文章会帮助你。</span></p>\r\n<p> </p>\r\n<p><span style=\"box-sizing: border-box; font-weight: bold; color: #5f5858; font-family: \'Open Sans\', sans-serif; font-size: 18px; text-align: justify;\">优化SEO的提示:</span></p>\r\n<ol style=\"line-height: 35px;\">\r\n<li><span style=\"font-size: 14pt;\"> 网站受欢迎的基础取决于各种因素，其中的一个就是如何将内容呈现给它的观众。处理好所有微小的细节有助于提升网站的自然吸引力。</span></li>\r\n<li><span style=\"font-size: 14pt;\">确保网站展示的内容通俗易懂，适合各个年龄人群去阅读并轻松理解。此外即使你有好的内容但不能优美的呈现，那也会失去一些观众，即使那些内容值得他们关注。</span></li>\r\n<li><span style=\"font-size: 14pt;\">想象你在看你喜欢的电视节目时，你的小弟弟一直在旁边干扰你。你会变得多么烦躁？类似的情况，当你的网站因为大量弹出框，而持续骚扰你的观众。要确保将这些减到最小，使它们不让人感到讨厌。</span></li>\r\n<li><span style=\"font-size: 14pt;\">关键字——这个要素就像网站内容中提取出的各种风味汁。要确保这个要素被恰当的使用，就像做一份美味、诱人的食物，它可以被大部分观众品尝。关键字扮演着一个重要的角色，尤其在用户搜索相关内容时，加强了内容标识。</span></li>\r\n<li><span style=\"font-size: 14pt;\">重要的链接构建不应该被忽略，它是掌控SEO艺术的重要一环。</span></li>\r\n<li><span style=\"font-size: 14pt;\">当准备与这个世界分享和交流时，社交媒体是一个最好的去处，只要付出很少的努力就会收获丰盛的成果。在网站上引入社交媒体的图标，让用户易于分享文章，想法，观点及更多其它。</span></li>\r\n<li><span style=\"font-size: 14pt;\">那些只能在电脑端访问网站的日子已一去不复返了。自适应网站在各种世界里都会有更好的表现，当它在所有类型的设备上都更容易访问时，从这里会有更加丰富的流量直接贡献到你的网站。</span></li>\r\n<li><span style=\"font-size: 14pt;\">大胆用一些网站分析工具，如（Google Analytics）去评估自己的网站。这些分析会给你一些改进网站的思路，如网站的运行状态，网站的整体性能等。</span></li>\r\n</ol>\r\n<div style=\"text-align: center;\">{loadmodule mod_je_social,社交分享} </div>',1,16,'2017-04-30 08:16:48',437,'','2017-05-08 07:19:47',437,0,'0000-00-00 00:00:00','2017-04-30 08:16:48','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',49,0,'','',1,92,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(7,86,'网页设计工作流','2017-05-01-11-50-56','<p>根据你的需求设计你的站点</p>\r\n','\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"><strong>网页设计工作流</strong></span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170507/web-design-workflow.jpg\" alt=\"\" /></p>\r\n<p> </p>',1,11,'2017-05-01 11:50:56',0,'','2017-05-15 03:20:18',437,0,'0000-00-00 00:00:00','2017-05-01 11:50:56','0000-00-00 00:00:00','{\"image_intro\":\"images\\/works\\/design-workflow.png\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',15,1,'','',1,41,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(8,87,'网站前端开发','web-front-end-development','<p>将网页设计图进行编码，定制符合客户需求的前端用户体验</p>\r\n','\r\n<p> <img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170508/js-h5-css3.jpg\" alt=\"\" /></p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">我们使用html5、css3编写样式和排版，结合JS制作一些高级呈现效果</p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">使用JQuery库来创建各种用户交互功能，使用AJAX+JSON处理异步交互</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170507/Bootstrap-3.jpg\" alt=\"\" /></p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">前端样式布局基于<a href=\"http://www.tutorialrepublic.com/twitter-bootstrap-tutorial/\" rel=\"alternate\">bootstrap</a> 栅格系统 (Grid system)编写，</p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">其特点为：扁平化设计，极简风格，响应式布局</p>\r\n<div class=\"text-center\">\r\n<p>示例按钮</p>\r\n<button class=\"btn btn-default\" type=\"button\">Default</button> <button class=\"btn btn-primary\" type=\"button\">Primary</button> <button class=\"btn btn-info\" type=\"button\">Info</button> <button class=\"btn btn-success\" type=\"button\">Success</button> <button class=\"btn btn-warning\" type=\"button\">Warning</button> <button class=\"btn btn-danger\" type=\"button\">Danger</button> <button class=\"btn btn-link\" type=\"button\">Link</button></div>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\"> </p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170507/bootstrap1.jpg\" alt=\"\" /></p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">参考一个基于bootstrap的风格模板<a href=\"http://usebootstrap.com/preview/cerulean/\" target=\"_blank\" rel=\"alternate noopener noreferrer\">cerulean</a></p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170507/AngularJS.jpg\" alt=\"\" /></p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">通过AngularJS编写类App站点</p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">其特点为：无刷新局部数据交互，让用户体验更流畅</p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\">参考：<a href=\"http://www.ageen.cn\" target=\"_blank\" rel=\"alternate noopener noreferrer\">一个Angular应用示意 </a></p>\r\n<p style=\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\"> </p>',1,8,'2017-05-03 10:13:26',437,'','2017-05-29 06:22:09',437,0,'0000-00-00 00:00:00','2017-05-03 10:13:26','0000-00-00 00:00:00','{\"image_intro\":\"images\\/works\\/web-front-end-development.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',16,2,'','',1,44,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(9,88,'网站后端开发','2017-05-03-11-21-57','<p>php，MySQL，joomla二次开发</p>\r\n','\r\n<p>MVC开发模式</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170515/framework_logo.png\" width=\"394\" height=\"122\" /></p>\r\n<p>基于joomla framework的二次开发</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170529/d1.png\" alt=\"\" /></p>\r\n<p>PHP</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170529/d4.png\" alt=\"\" /></p>\r\n<p>MySQL</p>\r\n<p> </p>',1,8,'2017-05-03 11:21:57',437,'','2017-05-29 07:22:25',437,437,'2017-05-29 07:22:25','2017-05-03 11:21:57','0000-00-00 00:00:00','{\"image_intro\":\"images\\/works\\/web-back-end-development.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',9,3,'','',1,31,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(10,89,'项目开发工作流','2017-05-04-13-08-52','<p>该文章介绍整个网站开发的基本流程。这是一个我们开发网站的大体步骤，每个阶段根据项目的不同有不同差异。</p>\r\n','\r\n<p> <img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170504/graphic.jpg\" alt=\"\" /></p>\r\n<p><span style=\"font-size: 18pt;\"><strong>项目实施</strong></span></p>\r\n<p> </p>\r\n<p><span style=\"font-size: 14pt;\">1.设计</span></p>\r\n<p><span style=\"font-size: 18.6667px;\">以通过业务分析的设计，需求说明书及线框图为基础，设计人员创建网页样例稿，提供客户审核和修订，以便设计人员完成首页设计。客户确认后，制作其余页面。</span></p>\r\n<p> </p>\r\n<p><span style=\"font-size: 18.6667px;\">2.HTML/CSS/Javascript 编写（前端开发）</span></p>\r\n<p><span style=\"font-size: 18.6667px;\">HTML/CSS/Javascript编写人员将设计图转为HTML编码，让其在浏览器运行。</span></p>\r\n<p><span style=\"font-size: 18.6667px;\">编码符合W3C标准，由HTML编写人员依据项目开发所使用的系统整合</span><span style=\"font-size: 18.6667px;\">HTML/CSS/Javascript</span><span style=\"font-size: 18.6667px;\"> </span><span style=\"font-size: 18.6667px;\">代码。</span></p>\r\n<p> </p>\r\n<p><span style=\"font-size: 18.6667px;\">3.后端开发</span></p>\r\n<p><span style=\"font-size: 18.6667px;\">在网站开发阶段中网站的核心开发。开发项目基于以下框架 —— joomla frame 和 laravel。我们可以定制的电商系统，内容发布系统，根据需求开发不同功能。</span></p>\r\n<p> </p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">4.质量保证和调整</span></p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">项目完成后，检查系统根据标准正确执行。如果必要，进行相应调整和执行。</span></p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">根据项目进行手工测试或自动化测试来检测加载及压力性能。</span></p>\r\n<p style=\"font-size: 12.16px;\"> </p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">5.数据输入和基本搜索引擎优化（SEO）</span></p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">每个项目在投入使用之前除了SEO优化外，还需要添加网站相关信息。我们进行基础的SEO包括12项操作：从添加meta-data到提交站点到搜索引擎。</span></p>\r\n<p style=\"font-size: 12.16px;\"> </p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">6.项目启动</span></p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">最后一个项目上线前阶段。我们将项目从本地测试环境部署到产品服务器，并做最后针对开发和在线服务的检测。</span></p>\r\n<p style=\"font-size: 12.16px;\"> </p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">项目推广和进一步改进</span></p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">通常一个普遍错误观念是认为网站正式运行后就算完成所有工作。为了吸引目标客户，站点需要同时在线上和线下推广和广告。网站推广通常是一个持续的过程。</span></p>\r\n<p style=\"font-size: 12.16px;\"><span style=\"font-size: 18.6667px;\">像所有其它商业过程一样，网站开发也是一个不断循环的过程。新的需求提出和项目的不断改进。</span></p>',1,11,'2017-05-04 13:08:52',437,'','2017-05-18 14:58:55',437,437,'2017-05-18 14:58:55','2017-05-04 13:08:52','0000-00-00 00:00:00','{\"image_intro\":\"images\\/articles\\/20170515\\/workflow.png\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',28,0,'','',1,75,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(11,91,'2017网页设计趋势（二）','2017','<p>网页设计趋势介绍——第二部分</p>\r\n','\r\n<h1>6. 大方，鲜明，漂亮的排版</h1>\r\n<p> </p>\r\n<p><span style=\"font-size: 10pt;\">排版同样是一个强大的视觉媒介，用来创建个性，唤起情感和设置基调。随着设备分辨率更加清晰，字体变得更容易阅读，品牌商需要寻求将有限的版面进一步推送给它的用户。</span></p>\r\n<p><span style=\"font-size: 10pt;\"> </span></p>\r\n<p><span style=\"font-size: 10pt;\">可以预见超大和全屏字体会不断增加，它们会打破布局网格，将漂亮的，独特的，手工呈现的排版结合动态文字和图片以串联形式和从视差角度的上下滚动方式分层进行工作。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Nuture-1-1.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"http://nurturedigital.com/\">Nuture Digital</a> </span>充分利用了文字排版，使用了超大字体作为布局中央背景视频内容的遮罩。无衬线和衬线标题的差异也帮助创建动态并行，进一步增加用户体验。</strong></em></span></p>\r\n<p><span style=\"font-size: 12pt;\">如果你为你的网站寻找布局排版的灵感，别忘了去<span lang=\"EN-US\"><a href=\"https://www.typewolf.com/\">Typewolf</a></span><span lang=\"EN-US\"> </span>看看——一个介绍新近数字字体布局的优秀的博客。</span></p>\r\n<p> </p>\r\n<h1>7.摄影图的真实</h1>\r\n<p> </p>\r\n<p align=\"left\">大家伙——摄影图片。通常，摄影图片常在网页设计和实际中占主要位置，但如之前提及，人们希望从他们使用的品牌那里获得真实，当他们第一眼看到摄影图片时，他们知道这是否就是张一稿数用的库存图片。</p>\r\n<p align=\"left\">品牌商和设计师现在将要对他们网站上的图片考虑的更多，而雇佣专业的摄影师为他们拍摄他们需要的图片。</p>\r\n<p>不幸的是，在那些低劣和畏缩的诱导图库存消失前，还需要很长一段时间，但是预期看到近几年它们开始加快减少。</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Unique-Photography-1024x595.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"http://www.sevenhillswholefoods.com/experience/#/\">Sevenhills Wholefoods</a> </span>使用漂亮的全屏图片来吸引客户，同时辅助传达他们的品牌信息和品牌故事。</strong></em></span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们预言：我们预期很多网站，虽然在架构和使用上不断增长的相似度，但随着更多独特创意、品牌化内容的产生，更多网站将会在视觉上变得更加生动和有趣。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们预测见到品牌商正在寻找一种革新方式来制作他们的标识，用摄影图，视频，插画和排版来真正建设他们的线上美学。在这里独一无二，精心策划便是这场游戏的名字。</span></p>\r\n<p>{slider 8.高级动画|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">当浏览器和语言变得更加高级，我们看到更多站点离开静态图片，寻找一种新的方法吸引客户，在他们传达方式上变得独特。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">品牌故事和个性化，是越来越多的品牌用它们捕获用户关注的方法，而动画，某种程度上应该感谢<span lang=\"EN-US\">HTML5</span>，<span lang=\"EN-US\">css</span>和<span lang=\"EN-US\">jQuery</span>，开始在这里扮演更大的角色。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">动画，如同上面提及的插画，随同它不同形状，大小和样式，可以全部用来服务不同的目的。动画可以延伸从，让用户等待内容加载时使用的微小的加载动画，到提醒用户他们正悬停在一个连接上而触发引人注意的悬浮状态动画。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">它们可以用在更大的范围，如丰富，全屏动画，可以结合到滚动条，导航栏或者是全站焦点。动画是另外一个有用的机制提供品牌商与他们和客户间创建更有含义的微型交互。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Animation-3.gif\" alt=\"\" /></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Animation-1-2-1.gif\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong>两个关于动画如何成为设计过程中变得更加重要的例子。一个设计用动画使<span lang=\"EN-US\">UI</span>过渡和改变更加动态，另一个在<span lang=\"EN-US\">404</span>页面上，用细微的动作增加了页面的形象和趣味。</strong></em></span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">结合所有这些来说，它们应该有节制的应用，并要仔细，用它们增强用户体验而不是转移注意。没有人希望一直等待内容加载，因为厚重的动画搁置了它。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">这个来自<span lang=\"EN-US\">Adobe </span>的 <span lang=\"EN-US\"><a href=\"https://youtu.be/v0ibqyMXyLw?t=1s\">how-to video</a> </span>视频，是一个很好的地方让你开始学习动画和创建<span lang=\"EN-US\">GIFs</span>。它涵盖了它们如何在<span lang=\"EN-US\">After Effects</span>生成的基础知识，这些简单的图像，极小的动画设计方法，正变得越来越流行。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们预言：越来越多的品牌商将会观察他们的的站点和服务，以发现如何在上面实施动画来增强用户体验。可以预期动画使用的不断增加，从小的悬浮状态和点触，到视觉充分应用的品牌故事面版。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 9. 视频为王|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">如果一张图片可以描绘千言，那么一个视频可以十倍于它。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">和动画很相似，一个在页面上的电影图会立即捕获用户的注意，吸引他们，而让品牌商可以表达他们精心构建的叙述和信息。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">视频，也不新鲜，是需要长时间连接建立，多用途的媒介，在故事叙述，市场营销和类视频博客上，非常有用，与传统摄影图相比，有它的优势。静态的图单调、没有运动，而视频结合更多动态信息，使用声音，同时动作吸引着注意力，让关注持续更长时间。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/CONVERSE-1-1.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong>上图截屏，来自<span lang=\"EN-US\"><a href=\"http://counterclimate.converse.com/\">Converse</a></span>的促销网站，是一个使用视频捕获观众的很好例子。整个体验基于背景视频，通过灵巧地使用<span lang=\"EN-US\">JavaScript</span>来和用户进行交互。</strong></em></span></p>\r\n<p><span style=\"font-size: 12pt;\">视频正在快速地占领因特网，以上原因也证明了它在内容呈现方面做得有多成功。</span></p>\r\n<p><span style=\"font-size: 12pt;\"><span lang=\"EN-US\"><a href=\"http://blog.hubspot.com/marketing/video-marketing-statistics\"><span lang=\"EN-US\"><span lang=\"EN-US\">来自</span></span>Hubspot<span lang=\"EN-US\"><span lang=\"EN-US\">的信息图表</span></span></a> </span>显示到<span lang=\"EN-US\">2018</span>年，<span lang=\"EN-US\">79%</span>的互联网传输量将被视频占据，此外<span lang=\"EN-US\">50%</span>的手机传输量正以视频为基础。如果你现在还对视频的重要性不能确信，那么你必须重新思考你的策略，或将面临落后的失败！</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\">就像用视频做为营销目的的手段，在社交媒体中它也变得更加普遍，现在直播流媒体服务商<span lang=\"EN-US\">Periscope</span>和<span lang=\"EN-US\"> Meerkat</span>的发布说明了人们的需求不再是观看视频内容，而是制作他们自己的视频。</span></p>\r\n<p><span style=\"font-size: 12pt;\">我们预言：视频已经很庞大，但是它是一个趋势会持续的变大直到完全占领网页和所有在线内容。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\">以上视频优势的概述让品牌商有充足理由去将它结合进来，但是也许更加重要的是这场维持与风潮相关的战斗，否则便会跌落出那些随时代变迁的数字浪潮中。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 10. 大胆的鲜明颜色|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"><span lang=\"EN-US\">2016</span>年毫无疑问是线上网页超级富有色彩的一年。而在过去，许多品牌商和设计师通常都会被网页安全色所缠绕，今天更多的品牌商开始更加大胆的用他们的方式使用颜色，随着我们看到过度饱和，充满生气的色调和阶梯色彩使用的复苏。这在某种程度上借助了显示器和设备屏幕显示技术的进步，它们能够适应产生更多丰富的颜色。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">在网页设计中，使用更大胆的颜色对吸引用户的注意力有很大帮助，但它也是品牌商改变的信号，许多品牌商在<span lang=\"EN-US\">2016</span>进行有意识的努力去尝试新的事物，打开新的领地，离开曾经建立的，“安全保证”的惯例。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">一个好的例子是，<span lang=\"EN-US\">Spotify</span>最近对他们品牌的更新，他们离开了他们良好建立的‘安全’绿色，转向更加引人注目充满生气的色调。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">虽然<span lang=\"EN-US\">Spotify</span>实际上的美学标准已符合多种检验，但这个音乐流媒体品牌对它做了必要的改变，当他们转变他们品牌的专注和声誉，从一个‘怪脾气’的公司到一个纯粹的音乐专注品牌。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Colours-Spotify.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"https://www.spotify.com/uk/\">Spotify</a> </span>在<span lang=\"EN-US\">2016</span>年真的非常大胆的使用他们的调色盘，随着他们近来品牌的更新，他们的上面 年度音乐交互网站 展示，可以看到品牌商采用了生动活泼的颜色体系在他们线上的内容中。</strong></em></span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">如果你是这些正在观察准备改变调色板的品牌商，我们推荐去<span lang=\"EN-US\"><a href=\"http://uigradients.com/\">uiGradients</a>, <a href=\"http://coolors.co/\">Coolors</a>, </span>和<span lang=\"EN-US\"> <a href=\"https://color.adobe.com/\">Adobe Color </a></span>看看，来保证你的颜色选择是大胆的，吸引人的，以及正是当下的趋势。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们预测：能从摄影图，插画，字体排版，视频和用户界面，所有这些富有的创意作品里，看到更多生动的颜色。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们也预期能看见品牌商能用更大胆的方式在他们的核心品牌和标识中使用颜色，就像很多现存的品牌重新调整他们自己，启动更多初创企业，以希望获得更多关注并锋利他们自己的形象。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 11. 在用户界面中更多牌卡和网格|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们先前已接触<span lang=\"EN-US\">UI</span>模式的增长，然而此外还有数百种我们能接触到的，并越来越多跨越在网页上的就是这种以牌卡为基础的<span lang=\"EN-US\">Uis,</span>一种来自<span lang=\"EN-US\">Google</span>原料设计的基本准则。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">卡牌，因为<span lang=\"EN-US\">Pinterest</span>而闻名，然后越来越被<span lang=\"EN-US\">Facebook</span>，<span lang=\"EN-US\">Twitter</span>和<span lang=\"EN-US\">Google</span>所喜爱，它是一种<span lang=\"EN-US\">Uis</span>在那里内容（文字，图片，视频）片段被分拆成单独的‘卡牌’，用户能够通过它进行导航。卡牌<span lang=\"EN-US\">UIs</span>允许品牌商一次在屏幕上展示更多数量的内容，但更易于管理的内容块，因而用户可以快速的扫描查看哪些是他们需要的而关闭那些不需要的。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">就像访问因特网的需求是为更快的将所需内容呈现，卡牌能够漂亮的结合移动优先和自适应原则，在平板和移动端（想象这些珍贵的移动端用户）能很好地工作在以手势为基础的滑动，同样的在<span lang=\"EN-US\">Tinder, Chrome, Safari</span>等浏览器，然后漂亮的扩大到桌面用户。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">卡牌也允许品牌商为创建和组织内容建立更茁壮系统，像用户可以过滤，定制和排序以适应他们的需求，允许品牌商在更加个人的层面上迎合他们用户的需求。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Dribbble-Card.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"http://dribbble.com/\">dribbble.com</a>,</span>一个以设计师为主的限邀请分享平台，经常成为发现最新创意趋势的地方。它是使用功能性牌卡<span lang=\"EN-US\">UI</span>的一个绝佳例子。通过简单地网格，每个元素都非常清楚，易于访问和在页面上有相同的权重，使用户能够快速方便的导航内容。</strong></em></span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们预言：随着关注的跨度变短，用户寻求一种更快捷和容易的方式去找到他们所想要的内容，我们预测更多的品牌商会为了留住访客的注意力而执行这种特殊的<span lang=\"EN-US\">UI</span>模式，同样的去组织永远增长的内容数量。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 12. VR（虚拟现实）——创意体验|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">在<span lang=\"EN-US\">2017</span>年<span lang=\"EN-US\">VR </span>是一个绝对热门的话题，尤其是更多的硬件制造商开始投资到这个技术领域，并生成头戴设备。如果你现在想买一个这样的设备，看看<span lang=\"EN-US\">Oculus, Sony </span>和<span lang=\"EN-US\"> HTC</span>，它们是一些极好的例子。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">然而这些设备主要用于游戏和媒体的消费，而不是网页浏览，我们预测能看很多品牌商试图模仿<span lang=\"EN-US\">VR</span>的在线体验。许多品牌商为网页已经创造出更多交互的解决方法能让用户之间参与。这些体验将对象放置在运动中心，以第一人称视角查看它，自由地对它导航就像他们自己在实际中的体验。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">然而我们预期看到使这个体验运作的技术还需要开发一段视角，许多品牌商开始寻找更加灵活的方式去利用现存的技术（像<span lang=\"EN-US\">Google</span>的街景和<span lang=\"EN-US\">360</span>视频）来创造这种模拟体验。已有几个<span lang=\"EN-US\">APIs</span>已经开始提供给开发者实验，（街景再次是一个流行的选择），这些丰富的、拟真的体验正变成一种更多可实现的选择，来通过它们建设一些专门的事物。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">根据<span lang=\"EN-US\">VR</span>体验的呈现和功能，它也同时打开了整个服务站点的创意机会。从风格上所，这些囊括了从现实图片的缺失探索，地球上的异国地址，到高度程式化的，辅助说明宇宙空间的探测。在动作控制技术（像<span lang=\"EN-US\">Leap Motion</span>厉动）正在获取发展的契机，我们很快就能发现我们自己将被全部设计到与<span lang=\"EN-US\">UIs</span>的交互里，从而允许我们通过姿势与这个虚构的世界交互。</span></p>\r\n<p><span style=\"font-size: 12pt;\">我们预言：现在<span lang=\"EN-US\">VR</span>的本身还太早，尤其是在消费产品里，但是我们预期能看到更多品牌商在独特的体验中得到了技术的提供。预期能看到越来越多的品牌在试验这些新的和已存在的网页技术，以用户为核心去创造更加丰富的体验。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/BMW.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong>在去年<span lang=\"EN-US\">BMW</span>发布了一款非常棒的交互体验来展示他们在巴黎车展上的汽车。使用了一种<span lang=\"EN-US\">Google</span>街景所激发灵感的方法，这个体验允许你围绕在汽车的周围，<span lang=\"EN-US\">360</span>度的参观这些汽车就好像你在那里。他们甚至还允许你模拟坐在汽车里来获知汽车内部的细节。</strong></em></span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 12. 创新的滚动和平行视觉差|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">滚动曾经为从页面的顶部到页面的底部而预留，被用于传送更多的线上创意内容。这个地方在过去设计师们经常留心的把最重要的内容保持在‘折叠之上’，我们现在看见这种过时的观念已经消失，因为‘折叠’现在随着用户浏览内容屏幕尺寸和分辨率的不同已变得很难定义。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">滚动是一个多功能的机制，它（而且执行非常好）能有效呈递不同种类的内容。它能和以视频为基础的内容协同工作，那里视频会全屏播放，随着用户的滚动而暂停，此外还有静态的内容，可以使它们根据用户的输入而变得富有生气，移动和改变。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Scroll-Apple-3.jpg\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"http://www.apple.com/watch/\">Apple</a></span>是一个高度鲜明的品牌在他们网站上极好的使用了滚动。把有所重要的产品描述静态放置在左边，一系列手表在滚轴上形成瀑布流，创造了美丽，平滑的过渡贯穿整个页面。</strong></em></span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">它是一种机制拥有许多的应用，但是如果滥用，或糟糕的执行成为使用的灾难。然而，通过更彻底的发展，我们预期会有更多设计师进行实验和从用户那获得反馈，而使它变得越来越好，增加更多功能和不同层面的交互应用。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Parallax.gif\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"https://www.epicurrence.com/\">Epicurrence</a></span>的站点，一个年度美国滑雪运动项目，极好的使用了平行视差，实现了流畅，吸引人及跳跃式的用户体验。</strong></em></span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们可以看到平行视差在线上执行中如何变化，随着更多品牌商将它结合进他们的网站，给他们提升了更进一层的优雅档次。平行视差本质上是一种滚动机制，通过前景图比背景图更加快速的移动，而产生的一种<span lang=\"EN-US\">3D</span>效果。它是一种极好的视觉工具，当恰当使用，会产生一种层级效果，托起在屏幕中的元素以及一种鲜明的动态体验。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">如果你对平行视差感兴趣，我们推荐看看<span lang=\"EN-US\"><a href=\"http://matthew.wagerfield.com/parallax/\">Parallax.js</a></span>，一个<span lang=\"EN-US\">jQuery</span>的便捷插件，能够快速创建引人注目的视差效果。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">我们预言：随着内容创造再以一个未曾见过地巨大的步伐发展，许多公司在寻找一种更具创造力的解决方案来呈现他们的内容给用户，我们预期灵活运用滚动和视觉差效果，会成为越来越多品牌商实施的一项方案。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">几家高度个性的公司在他们的网站建设中正在采用平行视觉差。一些公司的使用方法比其它公司更加巧妙，但我们预期在<span lang=\"EN-US\">2017</span>年它会成为一种开发趋势，随着全球的品牌商和设计师开始用它补充他们的内容和意图。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 14. 非对称和碎片布局|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">如果以网格的探索利用为基础的布局，在<span lang=\"EN-US\">2016</span>年成为一种真实现象，我们会更加相信这一年将会见到更多在两边非对称布局和非传统的碎片布局的发展。虽然品牌商和服务商还会大量使用以内容为前导的牌卡<span lang=\"EN-US\">UIs</span>和更多以传统网格为基础的结构来帮助更有效的组织和呈现他们的内容，我们预测随着品牌商寻求创造独特的用户体验来使他们品牌变得更加鲜明，这些实验性的布局使用将会增加。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">碎片布局（或网格，对比其它布局）是典型的一种网页设计方法，它将屏幕的内容区划分成标准的<span lang=\"EN-US\">8,10,12</span>或<span lang=\"EN-US\">15</span>（等<span lang=\"EN-US\">…</span>）纵列网格。 这些纵列网格就是组成各种不同“碎片布局”的基础，它们通常涉及对元素和内容的组织，而成为一个宽松的底层基准网格，作为移动和操作内容获取特定效果的起点。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">在网页设计领域里，它们就是一个“要么喜爱它，要么讨厌它”的应用，虽然可能还有对它们在用户体验和自适应设计里的影响力有一些疑问，但它们给设计师们提供了一种更大的自由度。通过这些非传统布局，设计师们可以重新布置排版，图像，和其它一些内容，去创造一种独特的并置和布局，从而吸引关注并产生趣味。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">它们能极好的与视觉差和滚动机制一同工作，为移动的内容建动态层，在整个体验中帮助产生层次感并引导用户。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/www.veintidosgrados.com_-1-1.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"http://www.veintidosgrados.com/\">Veintidos Grados</a></span>创意机构是一个使用“破碎布局”的极好例子。他们使用了一种宽松的底层网格构建内容，然后通过处理这种‘打破’了的排版来创建层次美感。这然后再转换到视觉差滚动，这里的所有元素以不同的速度移动，更进一步构建了这种层次和动态的感。</strong></em></span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">非对称布局在许多方面也很相似。非对称设计（就想名字提示）是创建一种不对称显示的方法过程。然而，这并不表示非对称设计是不平衡或混乱的。聪明的设计师会灵活的使用空间，尺度和颜色去创建布局，让那些元素和谐的遵循一种或多种原则工作。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">非对称设计能够非常好的用来引起关注，尤其是页面的某部分或一个页面上的元素本身。同样的准则也帮助设计师建设更强的屏幕分层；用字体大小，空间和颜色去发展一种灵巧的解决方案，用一种特殊的帧屏幕方式吸引眼球并指引用户贯穿始终。</span></p>\r\n<p align=\"left\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/sirinlabs-1-1.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 10pt;\"><em><strong><span lang=\"EN-US\"><a href=\"http://www.sirinlabs.com/discover\">Sirin Labs</a> </span>产品的促销网站是一个使用非对称设计的极好例子。虽然不对称，但整个设计有非常好的平衡，使用分离版式去逐帧呈现页面，吸引你的眼球到最重要的部分——他们在中心的产品。</strong></em></span></p>\r\n<p><span style=\"font-size: 12pt;\">我们预言：以上的两个准则都可以巧妙的去实施，但需要足够细心地考虑和关注。但是，如果执行恰当，他们会产生独特的，引人入胜的体验效果，从而以它最好的方式增强你的内容和品牌。根据这些原因我们预测更多品牌商和设计师会围绕这些原则在实验中建设更强的体验。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 15. 不断增加（和扩大）的阴影使用|closed}</p>\r\n<p><span style=\"font-size: 12pt;\">对来自视觉差和碎片布局的元素进行漂亮的包裹，就是阴影的应用。阴影并不新鲜，通常，在图片设计，网页设计，甚至<span lang=\"EN-US\">UI</span>设计都很常见。所以，为什么把它们囊括在此呢？</span></p>\r\n<p><span style=\"font-size: 12pt;\">好的<span lang=\"EN-US\">…..</span>就如很多趋势，许多融入生活作为一种发展或发展一种以前存在的趋势或风格。一些趋势可能非常醒目的出现并且是全新的，而其它一些，像长久就存在的阴影，随时间被持续的重新定义和发展直到新的和令人兴奋的变化出现。</span></p>\r\n<p><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\">阴影曾经徘徊在设计周围，而现在它们在网页设计中，抬起了头。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Shadow_Dribbble.png\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><em><strong>阴影已经走过很多年头，现在已不是简单地作为额外效果修饰使用。上面图片是一个很好例子说明离散的柔和阴影帮助卡牌<span lang=\"EN-US\">UIs</span>的突出显示，将它们从页面举起，表明它们使一系列单独的面板。</strong></em></span></p>\r\n<p> </p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">几年来阴影被摆弄，改变和各种方式的使用。从在早期同形化设计的激发下现实细节的设计，到长条阴影，使扁平化设计和<span lang=\"EN-US\">app</span>图标在几年前非常流行。但是，一部分要感谢今天浏览器的发展和更多开发的实验，我们现在再次看到新的和令人兴奋的改变，</span></p>\r\n<p><span style=\"font-size: 12pt;\">随着破碎网格和视觉差布局日益流行，设计师开始增加对阴影的应用，去产生深度和活力。它们是一个令人惊奇的多功能机制，它们可以用来增强页面美感，而且还可以辅助<span lang=\"EN-US\">UX</span>（用户体验）。</span></p>\r\n<p><span style=\"font-size: 12pt;\">举个例子——使用阴影来呈现悬浮状态来指示一个连接并不是新的观念，但是令设计师和品牌商感兴趣的是如何用这些长久就存在的规范来建设，创造一个新的和令人兴奋的演变。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\"><span lang=\"EN-US\">Abduzeedo.com</span>，一个工业前导的设计博客，使他们的阴影达到另一个层级。他们超长，戏剧性的阴影是他们自己的一种表达，但他们走的更远，使用各种不同颜色来增加个性化。许多老顽固会毫无一物取消这种仅仅为用户体验带来甚微好处的技巧，但是我相信这些是体贴的，有趣的触摸能够吸引用户和激起他们兴趣——这些会是未来一年更多品牌商一定会感兴趣做的事情。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/article/Shadow-GIF.gif\" alt=\"\" /></p>\r\n<p style=\"text-align: center;\" align=\"left\"><span style=\"font-size: 10pt;\"><strong><em><span lang=\"EN-US\"><a href=\"http://www.abduzeedo.com/\">Abduzeedo</a> </span>将他们使用的阴影带入下一个层次，使用色彩叠层托出阴影，制造一个强调效果。</em></strong></span></p>\r\n<p><span style=\"font-size: 12pt;\">我们预言：我想在这里所有的这些，在这课程学习的这里，网页设计里的所有领域依旧有创造的空间。<span lang=\"EN-US\">2017</span>无疑是一年更多的设计师和品牌商真正地深入调查，不再仅仅是大的，强烈的特色我们上面所概括的，同时也包括将想法加入最小的细节中，去取悦和吸引他们的用户。它是一种创造力和一种全方位的细节考虑，而那正是用户和潜在客户所寻找的，为它提供一种优质的保证，通过这些将会帮助完成销量和转变。</span></p>\r\n<p>{/sliders}</p>\r\n<p>{slider 总结|closed}</p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\">在任何时间，创造领域的行业都会有上百种‘趋势’发生，很难指明单独的每一种，但是我们相信以上是一些更主要的核心在<span lang=\"EN-US\">2016</span>及更远的将来。</span></p>\r\n<p><span style=\"font-size: 12pt;\">伴随所有趋势，上面所指已随着充分理由而产生；来自全球富有创造性和聪明的思考者在互相学习和借鉴的过程中逐渐形成相似设计模式，是我们今天在线上可以看到的一种现象。</span></p>\r\n<p align=\"left\"><span style=\"font-size: 12pt;\"> </span></p>\r\n<p><span style=\"font-size: 12pt;\">不是所有的这些趋势与你和你的内容相关，但是知道目前是什么在产业里发生总会有益，可以看看见你在哪里当你要想让自己发展进步时。</span></p>\r\n<p>{/sliders}</p>',1,14,'2017-05-07 11:10:54',437,'','2017-05-15 04:12:43',437,0,'0000-00-00 00:00:00','2017-05-07 11:10:54','0000-00-00 00:00:00','{\"image_intro\":\"images\\/articles\\/20170507\\/web-design-trend-man.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,0,'','',1,21,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(12,92,'Joomla执行流','joomla','<p>Joomla执行流程的探析</p>\r\n','\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">整个执行过程从定义从何获取文件位置开始。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">加载Joomla framework，计算是否新建或继续使用当前session。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">然后寻找和执行组件。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">然后将所有的模块和其它内容类型加入到模板文件里。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">最后将其输出到浏览器。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">在以上过程中，我们定义触发事件，从而让插件可以工作在整个过程中。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">虽然每一步都会有很多代码参与执行，但整个描述过程被组织成较小数目的高层方法，每一个方法都可以根据需要向下分解到底层方法。</span></p>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\">高层方法按结构方式组织建立，因而在执行的每个阶段，我们可以针对每个任务进行分析。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170507/joomla-life-cycle.jpg\" alt=\"\" /></p>',1,17,'2017-05-07 11:53:20',437,'','2017-05-15 00:13:09',437,0,'0000-00-00 00:00:00','2017-05-07 11:53:20','0000-00-00 00:00:00','{\"image_intro\":\"images\\/articles\\/20170507\\/joomla-logo.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',8,0,'','',1,11,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(13,93,'网页设计','2017-05-08-05-09-28','<p style=\"text-align: left;\">网页设计，排版</p>\r\n','\r\n<p style=\"text-align: center;\"> </p>',1,8,'2017-05-08 05:09:28',437,'','2017-05-29 06:21:32',437,0,'0000-00-00 00:00:00','2017-05-08 05:09:28','0000-00-00 00:00:00','{\"image_intro\":\"images\\/articles\\/20170508\\/front-end-design.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',3,1,'','',1,12,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(14,95,'响应式公司网站模板','2017-05-16-07-49-17','<p>响应式公司网站模板，含主页，关于我们，服务，画廊及联系我们页面版块，使用css3动画特效，及html5语义标签</p>\r\n','\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"> 基于Bootstrap<span style=\"color: #000000;\"><span style=\"white-space: pre-wrap;\">，animate.css+wow.js动画</span></span></span></p>\r\n<h1 style=\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\"><span style=\"color: #000000; font-size: 50pt;\">Bootstrap 3.X</span></h1>\r\n<h1 class=\"site__title mega\" style=\"margin: 0px 0px 1.5rem; padding: 0px; position: relative; box-sizing: border-box; font-size: 6rem; font-weight: 100; line-height: 1; letter-spacing: -0.05em; color: #f35626; background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a); -webkit-background-clip: text; -webkit-text-fill-color: transparent; animation: hue 60s linear infinite; font-family: Roboto, Verdana, sans-serif; text-align: center;\">Animate.css</h1>\r\n<p><img src=\"images/articles/20170516/1.png\" alt=\"\" /></p>\r\n<p class=\"text-center\"><a class=\"btn btn-info btn-lg\" href=\"tmp/Day/index.html\" target=\"_blank\" rel=\"alternate noopener noreferrer\">演示地址</a></p>\r\n<p class=\"text-center\"><a class=\"btn btn-success btn-lg\" href=\"http://pan.baidu.com/s/1kV9gWsv\" target=\"_blank\" rel=\"alternate noopener noreferrer\">下载地址</a></p>',1,2,'2017-05-16 07:49:17',437,'','2017-05-27 05:43:59',437,0,'0000-00-00 00:00:00','2017-05-16 07:49:17','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',27,2,'','',1,37,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(15,98,'网络协议','2017-05-17-01-42-45','<p>介绍网络协议的分层结构，给出ISO/OSI的七层结构和TCP/IP的五层结构。说明分层的原因</p>\r\n','\r\n<p>为减少网络设计及网络通信的复杂度，网络被组织成一系列层，每一层建立在它下一层之上，每一层的作用是为它更高层提供特定服务，并避开这些层实现特定服务的细节。</p>\r\n<p>在一台机器上的第n层和另一台机器上的第n层<span style=\"font-size: 12.16px;\">通信</span>。这些用于<span style=\"font-size: 12.16px;\">通信</span>中的规则和约定就是协议。基本上，一个协议就是<span style=\"font-size: 12.16px;\">通信</span>双方规定如何进行<span style=\"font-size: 12.16px;\">通信</span>的约定。</p>\r\n<p>在ISO/OSI模型中，共分七层(图一所示)。 不同机器上，由对应层通信所组成的对象叫做对等节点（peers）。也就是说，对等层之间使用协议进行通信。</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0px auto 0px auto;\" src=\"images/articles/20170517/osi-reference-model.png\" width=\"800\" height=\"691\" /></p>\r\n<p style=\"text-align: center;\">图一 OSI参考模型</p>\r\n<p>在实际中，没有数据是直接从一台机器的第n层传送到另一台机器的第n层。而是直接将数据和控制信息发送给它下一层，直到最底层。</p>\r\n<p>在毗邻的两层之间，就是接口。接口定义了下层提供给上层的初始操作和服务。当一个网络设计师决定需要多少层和每个层的功能时，一个重要的考虑因素就是定义清楚层与层间的接口。接着，下一步就是让每个层执行指定的功能集。</p>\r\n<p>一整套层与协议组合叫做网络构架。构架的说明书必须包含足够的信息能够让执行者为每一层编写程序或构架硬件，让它正确的遵循相应的协议。一列协议用于一个特定系统，每层包含一种协议，叫做协议栈(protocol stack)。</p>\r\n<p>一个类比辅助解释多层通信的想法。想象两个哲学家（节点处理在第三层）。一个说荷兰语<span style=\"font-size: 12.16px;\">，一个说汉语。因为他们没有共同语言，他们各自聘用一个翻译者（节点处理在第二层），每个翻译者再轮流和秘书官联系（节点处理在第一层）。哲学家1想传达他对穴兔的喜爱到对等节点。他通过下层接口将信息“我喜欢兔子”发送给他的翻译者，图二示例。翻译者之间约定使用一种共同的中间语言——英语进行交流，所以信息被转化成“I like rabbits”。选择的中间语言就是第二层的协议，在第二层节点处理中使用。</span></p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0px auto 0px auto;\" src=\"images/articles/20170517/philosopher-translator-secretary-architecture.png\" width=\"701\" height=\"622\" /></p>\r\n<p>翻译者然后将信息交给秘书官进行传送，例如，使用传真机（第一层协议）。当信息到达时，它将被成翻译成荷兰语并通过第二层接口传送给哲学家2。注意只要接口不变，每一种协议都完全独立。翻译者可以更改翻译语言，如从英语到芬兰语，或者其它任何语言，只要他们间协商约定，并且不更改和第一层或第三层间的接口。同样，秘书官也可以从使用传真切换到e-mail，或电话，而不干扰（甚至告知）其它层。每步处理过程可以增加一些针对它的对等节点需要的信息填充。这些填充信息对它的上一层不可见。</p>\r\n<p>分层和TCP/IP协议</p>\r\n<p>TCP/IP分层模型，也叫作互联网分层模型或互联网参考模型，包括五层，如图三所示。</p>\r\n<p><img class=\"img-responsive\" style=\"margin: 0px auto 0px auto;\" src=\"images/articles/20170517/tcp-ip.png\" alt=\"\" /></p>\r\n<p>TCP/IP参考模型中的4层设计符合ISO参考模型中的一层或多层。然而，ISO模型中没有网络层。以下部分总结各层的作用。</p>\r\n<p>第一层：物理层</p>\r\n<p>第一层与基本的网络硬件相适应，正如ISO 七层参考模型的第一层。例如，RS-232的规格说明包含在第一层，并给出局域网络硬件的详细规格说明。</p>\r\n<p>第二层：网络接口</p>\r\n<p>第二层协议规定了如何组织数据到数据帧以及如何在网络上传送这些帧。和ISO模型的第二层相似。一个网络接口可能会包括一个硬件驱动（例如，当这是一个本地设备直接相连的本地网络）或是一个使用它们自己数据链接协议的复杂子系统（例如，当网络包含包转换器用于使用了高级数据链路控制\"HIGH LEVEL DATA LINK CONTROL\"的主机进行通信）。</p>\r\n<p>第三层：互联网</p>\r\n<p>第三层协议规定了数据包的格式，使这些数据包可以跨越整个网络，这些机制也用于从一台电脑通过转发数据包经过一个或多个路由到达最终目的地。网络层将数据包封装在IP数据报，填充报头信息，使用路由运算法则（路由表）来决定数据报是否直接传送或转给路由。</p>\r\n<p>第四层</p>\r\n<p>第四层协议，像ISO模型的第四层，规定如何确保可靠传输。为达到这个目的，传输协议软件拥有接收端发送返回确认和发送端重新发送丢失数据包。传输层提供了从一个应用程序到另一个的通信。这样的通信过程经常叫端到端(end-to-end)。这样的一个通常目的是让计算机可以一次有多个应用程序进入互联网。传输层必须从好几个用户程序上接受数据，为了达到这个目的,它增加额外信息到每个数据包，包括用来确认那个程序用来发送，那个程序用来接受，以及校验等认证编码。</p>\r\n<p>第五层</p>\r\n<p>第五层符合与ISO模型的第六层和第七层设计。每一种第五层协议如FTP，HTTP，规定了一个应用如何使用网络。一个应用程序可以选择需要的传输方式，像一个单独信息的序列，或者一串联系的字节流。</p>',1,19,'2017-05-17 01:42:45',437,'','2017-05-18 04:24:10',437,437,'2017-05-18 04:24:10','2017-05-17 01:42:45','0000-00-00 00:00:00','{\"image_intro\":\"images\\/articles\\/20170517\\/tcpiposi.png\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',37,0,'','',1,41,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*',''),(16,99,'响应式简约带卡通风博客网站','2017-05-18-09-42-15','<p>Triangle是一款基于bootstrap的简约带卡通风设计的博客网站模板，包含完整的博客各页面的版块。</p>\r\n<p>使用CSS3过度特效，使用<a href=\"http://192.168.0.103/templates/triangle/multicolor/css/animate.min.css\" target=\"_blank\" rel=\"noopener noreferrer\">animate.css</a>+<a href=\"http://192.168.0.103/templates/triangle/multicolor/js/wow.min.js\" target=\"_blank\" rel=\"noopener noreferrer\">wow.js</a>生成元素动画效果，特殊布局效果有流体布局、时间轴加载等...</p>\r\n<p>整个模板包含6类博客展示列表，5类文章展示列表，及详情页，附加应用于整个网站的元素说明，网站主题颜色分为单色和彩色两种。</p>\r\n','\r\n<p style=\"text-align: center;\"><span style=\"font-size: 14pt;\"> 基于Bootstrap<span style=\"color: #000000;\"><span style=\"white-space: pre-wrap;\">，animate.css+wow.js动画</span></span></span></p>\r\n<h1 style=\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\"><span style=\"color: #000000; font-size: 50pt;\">Bootstrap 3.X</span></h1>\r\n<h1 class=\"site__title mega\" style=\"margin: 0px 0px 1.5rem; padding: 0px; position: relative; box-sizing: border-box; font-size: 6rem; font-weight: 100; line-height: 1; letter-spacing: -0.05em; color: #f35626; background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a); -webkit-background-clip: text; -webkit-text-fill-color: transparent; animation: hue 60s linear infinite; font-family: Roboto, Verdana, sans-serif; text-align: center;\">Animate.css</h1>\r\n<h1 class=\"site__title mega\" style=\"font-family: Roboto, Verdana, sans-serif; font-size: 6rem; font-weight: 100; color: #f35626; margin: 0px 0px 1.5rem; padding: 0px; position: relative; box-sizing: border-box; line-height: 1; letter-spacing: -0.05em; text-align: center;\"><span style=\"color: #ff3366;\">Wow.js</span></h1>\r\n<p><span style=\"color: #ff3366;\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170518/triangle-templates.png\" alt=\"\" /></span></p>\r\n<p class=\"text-center\"><a class=\"btn btn-info btn-lg\" href=\"tmp/triangle/multicolor/index.html\" target=\"_blank\" rel=\"alternate noopener noreferrer\">多色主题演示</a></p>\r\n<p class=\"text-center\"><a class=\"btn btn-info btn-lg\" href=\"tmp/triangle/singlecolor/index.html\" target=\"_blank\" rel=\"alternate noopener noreferrer\">单色主题演示</a></p>\r\n<p class=\"text-center\"><a class=\"btn btn-success btn-lg\" href=\"http://pan.baidu.com/s/1eR19woa\" target=\"_blank\" rel=\"alternate noopener noreferrer\">下载地址</a></p>',1,2,'2017-05-18 09:42:15',437,'','2017-05-27 04:53:45',437,0,'0000-00-00 00:00:00','2017-05-18 09:42:15','0000-00-00 00:00:00','{\"image_intro\":\"images\\/articles\\/20170518\\/triangle-singlecolor.png\",\"float_intro\":\"right\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',19,1,'','',1,15,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*',''),(17,100,'nice admin响应式管理后台模板','nice-admin','<p>nice admin是一款基于bootstrap的管理后台模板，简约扁平设计风格，使用了基于jquery的统计和chart.js图表统计库<span style=\"font-size: 12.16px;\">，模板主要包括：用户数据统计，用户日程安排，图表系统，世界地图，表单风格样式，登录，个人信息及评论管理系统，并集成CKedit编辑器</span></p>\r\n','\r\n<h1 style=\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\"><span style=\"color: #000000; font-size: 50pt;\">Bootstrap</span></h1>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 36pt;\"><a title=\"轻量级动态动态饼图表插件\" href=\"http://rendro.github.io/easy-pie-chart/\" target=\"_blank\" rel=\"alternate noopener noreferrer\">EASY PIE CHART</a></span></p>\r\n<h1 style=\"text-align: center;\"><span style=\"font-size: 36pt;\"><a title=\"用于生成微小电谱图表插件\" href=\"http://omnipotent.net/jquery.sparkline/\" target=\"_blank\" rel=\"alternate noopener noreferrer\">jQuery Sparklines</a></span></h1>\r\n<p> </p>\r\n<p><a title=\"制图库\" href=\"http://www.chartjs.org/\" rel=\"alternate\"><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"http://www.chartjs.org/img/chartjs-logo.svg\" width=\"160\" height=\"160\" /></a></p>\r\n<h1 style=\"text-align: center;\">Chart.js</h1>\r\n<p><img class=\"img-responsive\" style=\"margin: 0 auto;\" src=\"images/articles/20170518/nice-admin-templates.png\" alt=\"\" /></p>\r\n<p class=\"text-center\"><a class=\"btn btn-info btn-lg\" href=\"tmp/Nice-admin/index.html\" target=\"_blank\" rel=\"alternate noopener noreferrer\">演示地址</a></p>\r\n<p class=\"text-center\"><a class=\"btn btn-success btn-lg\" href=\"https://pan.baidu.com/s/1qYCu9fm\" target=\"_blank\" rel=\"alternate noopener noreferrer\">下载地址</a></p>',1,2,'2017-05-18 14:07:28',437,'','2017-05-29 06:11:43',437,0,'0000-00-00 00:00:00','2017-05-18 14:07:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',17,0,'','',1,21,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `ecs_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_content_frontpage`
--

DROP TABLE IF EXISTS `ecs_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_content_frontpage`
--

LOCK TABLES `ecs_content_frontpage` WRITE;
/*!40000 ALTER TABLE `ecs_content_frontpage` DISABLE KEYS */;
INSERT INTO `ecs_content_frontpage` VALUES (4,2),(16,1);
/*!40000 ALTER TABLE `ecs_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_content_rating`
--

DROP TABLE IF EXISTS `ecs_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_content_rating`
--

LOCK TABLES `ecs_content_rating` WRITE;
/*!40000 ALTER TABLE `ecs_content_rating` DISABLE KEYS */;
INSERT INTO `ecs_content_rating` VALUES (1,3,2,'192.168.0.100'),(2,1,1,'192.168.0.100'),(3,8,3,'192.168.0.100'),(4,1,1,'192.168.0.101'),(6,3,1,'192.168.0.100');
/*!40000 ALTER TABLE `ecs_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_content_types`
--

DROP TABLE IF EXISTS `ecs_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`(100))
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_content_types`
--

LOCK TABLES `ecs_content_types` WRITE;
/*!40000 ALTER TABLE `ecs_content_types` DISABLE KEYS */;
INSERT INTO `ecs_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(2,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }'),(3,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(4,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute',''),(5,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(6,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(7,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(8,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(9,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}'),(10,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}'),(11,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}'),(12,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}'),(13,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `ecs_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_contentitem_tag_map`
--

DROP TABLE IF EXISTS `ecs_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_contentitem_tag_map`
--

LOCK TABLES `ecs_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `ecs_contentitem_tag_map` DISABLE KEYS */;
INSERT INTO `ecs_contentitem_tag_map` VALUES ('com_content.article',2,1,4,'2017-05-11 07:21:17',1),('com_content.article',1,3,2,'2017-05-15 01:47:09',1);
/*!40000 ALTER TABLE `ecs_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_core_log_searches`
--

DROP TABLE IF EXISTS `ecs_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_core_log_searches`
--

LOCK TABLES `ecs_core_log_searches` WRITE;
/*!40000 ALTER TABLE `ecs_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_extensions`
--

DROP TABLE IF EXISTS `ecs_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Parent package ID for extensions installed as a package.',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10035 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_extensions`
--

LOCK TABLES `ecs_extensions` WRITE;
/*!40000 ALTER TABLE `ecs_extensions` DISABLE KEYS */;
INSERT INTO `ecs_extensions` VALUES (1,0,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mailto\"}','','','',0,'0000-00-00 00:00:00',0,0),(2,0,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(3,0,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(4,0,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"banners\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0),(5,0,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(6,0,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(7,0,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(8,0,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','{\"contact_layout\":\"_:default\",\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"tabs\",\"show_tags\":\"1\",\"show_info\":\"1\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"1\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_image\":\"1\",\"show_misc\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"1\",\"articles_display_num\":\"10\",\"show_profile\":\"1\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"0\",\"maxLevel\":\"-1\",\"show_subcat_desc\":\"1\",\"show_empty_categories\":\"0\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_subcat_desc_cat\":\"1\",\"show_empty_categories_cat\":\"0\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"0\",\"show_pagination_limit\":\"0\",\"show_headings\":\"1\",\"show_image_heading\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"0\",\"show_mobile_headings\":\"1\",\"show_fax_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"initial_sort\":\"ordering\",\"captcha\":\"\",\"show_email_form\":\"0\",\"show_email_copy\":\"0\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_feed_link\":\"1\",\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(9,0,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10,0,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(11,0,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"zh-CN\",\"site\":\"zh-CN\"}','','',0,'0000-00-00 00:00:00',0,0),(12,0,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(13,0,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0),(14,0,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(15,0,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(16,0,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(17,0,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(18,0,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(19,0,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"search\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(20,0,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"10\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0),(22,0,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"0\",\"info_block_position\":\"0\",\"info_block_show_title\":\"1\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_associations\":\"1\",\"flags\":\"1\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"1\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"1\",\"show_vote\":\"1\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"1\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"captcha\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"0\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"0\",\"list_show_votes\":\"0\",\"list_show_ratings\":\"0\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_featured\":\"show\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\",\"custom_fields_enable\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(23,0,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0),(24,0,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(25,0,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"users\"}','{\"allowUserRegistration\":\"0\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"2\",\"mail_to_admin\":\"1\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(27,0,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0),(28,0,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.2\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(29,0,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"1\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"1\",\"tag_list_image\":\"\",\"tag_list_orderby\":\"c.core_title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"modified\",\"tag_list_show_item_image\":\"1\",\"tag_list_show_item_description\":\"1\",\"tag_list_item_maximum_characters\":0,\"min_term_length\":\"3\",\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(30,0,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contenthistory\"}','','','',0,'0000-00-00 00:00:00',0,0),(31,0,'com_ajax','component','com_ajax','',1,1,1,1,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"ajax\"}','','','',0,'0000-00-00 00:00:00',0,0),(32,0,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(33,0,'com_fields','component','com_fields','',1,1,1,0,'{\"name\":\"com_fields\",\"type\":\"component\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(34,0,'com_associations','component','com_associations','',1,1,1,0,'{\"name\":\"com_associations\",\"type\":\"component\",\"creationDate\":\"Januar 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"COM_ASSOCIATIONS_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(102,0,'LIB_PHPUTF8','library','phputf8','',0,1,1,1,'{\"name\":\"LIB_PHPUTF8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phputf8\"}','','','',0,'0000-00-00 00:00:00',0,0),(103,0,'LIB_JOOMLA','library','joomla','',0,1,1,1,'{\"name\":\"LIB_JOOMLA\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"https:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"mediaversion\":\"5b1cc80ca371679100611a12cb8dda94\"}','','',0,'0000-00-00 00:00:00',0,0),(104,0,'LIB_IDNA','library','idna_convert','',0,1,1,1,'{\"name\":\"LIB_IDNA\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"idna_convert\"}','','','',0,'0000-00-00 00:00:00',0,0),(105,0,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2015-04-22 13:15:32\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2015 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.4.3\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fof\"}','','','',0,'0000-00-00 00:00:00',0,0),(106,0,'LIB_PHPASS','library','phpass','',0,1,1,1,'{\"name\":\"LIB_PHPASS\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpass\"}','','','',0,'0000-00-00 00:00:00',0,0),(200,0,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_archive\"}','','','',0,'0000-00-00 00:00:00',0,0),(201,0,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(202,0,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(203,0,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_banners\"}','','','',0,'0000-00-00 00:00:00',0,0),(204,0,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_breadcrumbs\"}','','','',0,'0000-00-00 00:00:00',0,0),(205,0,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(206,0,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(207,0,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_footer\"}','','','',0,'0000-00-00 00:00:00',0,0),(208,0,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(209,0,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(210,0,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_news\"}','','','',0,'0000-00-00 00:00:00',0,0),(211,0,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_random_image\"}','','','',0,'0000-00-00 00:00:00',0,0),(212,0,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_related_items\"}','','','',0,'0000-00-00 00:00:00',0,0),(213,0,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_search\"}','','','',0,'0000-00-00 00:00:00',0,0),(214,0,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats\"}','','','',0,'0000-00-00 00:00:00',0,0),(215,0,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_syndicate\"}','','','',0,'0000-00-00 00:00:00',0,0),(216,0,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_users_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(218,0,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_whosonline\"}','','','',0,'0000-00-00 00:00:00',0,0),(219,0,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_wrapper\"}','','','',0,'0000-00-00 00:00:00',0,0),(220,0,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_category\"}','','','',0,'0000-00-00 00:00:00',0,0),(221,0,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_articles_categories\"}','','','',0,'0000-00-00 00:00:00',0,0),(222,0,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_languages\"}','','','',0,'0000-00-00 00:00:00',0,0),(223,0,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(300,0,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_custom\"}','','','',0,'0000-00-00 00:00:00',0,0),(301,0,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_feed\"}','','','',0,'0000-00-00 00:00:00',0,0),(302,0,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_latest\"}','','','',0,'0000-00-00 00:00:00',0,0),(303,0,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_logged\"}','','','',0,'0000-00-00 00:00:00',0,0),(304,0,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_login\"}','','','',0,'0000-00-00 00:00:00',0,0),(305,0,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(307,0,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_popular\"}','','','',0,'0000-00-00 00:00:00',0,0),(308,0,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_quickicon\"}','','','',0,'0000-00-00 00:00:00',0,0),(309,0,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_status\"}','','','',0,'0000-00-00 00:00:00',0,0),(310,0,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_submenu\"}','','','',0,'0000-00-00 00:00:00',0,0),(311,0,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_title\"}','','','',0,'0000-00-00 00:00:00',0,0),(312,0,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_toolbar\"}','','','',0,'0000-00-00 00:00:00',0,0),(313,0,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_multilangstatus\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(314,0,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_version\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(315,0,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_stats_admin\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0),(316,0,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_popular\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(317,0,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"mod_tags_similar\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(401,0,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(403,0,'plg_content_contact','plugin','contact','content',0,1,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',1,0),(404,0,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"emailcloak\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0),(406,0,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"loadmodule\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0),(407,0,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','{\"title\":\"1\",\"article_index\":\"1\",\"article_index_text\":\"\",\"multipage_toc\":\"1\",\"showall\":\"0\",\"style\":\"sliders\"}','','',0,'0000-00-00 00:00:00',4,0),(408,0,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagenavigation\"}','{\"position\":\"1\",\"relative\":\"1\",\"display\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0),(410,0,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"Copyright (C) 2014 - 2017 by Marijn Haverbeke <marijnh@gmail.com> and others\",\"authorEmail\":\"marijnh@gmail.com\",\"authorUrl\":\"http:\\/\\/codemirror.net\\/\",\"version\":\"5.25.2\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"codemirror\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0),(411,0,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"September 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"none\"}','','','',0,'0000-00-00 00:00:00',2,0),(412,0,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2017\",\"author\":\"Ephox Corporation\",\"copyright\":\"Ephox Corporation\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"http:\\/\\/www.tinymce.com\",\"version\":\"4.5.6\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tinymce\"}','{\"configuration\":{\"toolbars\":{\"2\":{\"toolbar1\":[\"bold\",\"underline\",\"strikethrough\",\"|\",\"undo\",\"redo\",\"|\",\"bullist\",\"numlist\",\"|\",\"pastetext\",\"emoticons\"]},\"1\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"formatselect\",\"|\",\"bullist\",\"numlist\",\"|\",\"outdent\",\"indent\",\"|\",\"undo\",\"redo\",\"|\",\"link\",\"unlink\",\"anchor\",\"code\",\"|\",\"hr\",\"table\",\"emoticons\",\"preview\"]},\"0\":{\"menu\":[\"edit\",\"insert\",\"view\",\"format\",\"table\",\"tools\"],\"toolbar1\":[\"bold\",\"italic\",\"underline\",\"strikethrough\",\"|\",\"styleselect\",\"formatselect\",\"fontsizeselect\",\"forecolor\",\"backcolor\",\"|\",\"alignleft\",\"aligncenter\",\"alignright\",\"alignjustify\",\"|\",\"bullist\",\"numlist\",\"outdent\",\"indent\",\"|\",\"link\",\"unlink\",\"anchor\",\"image\",\"media\",\"|\",\"charmap\",\"hr\",\"blockquote\",\"template\",\"codesample\",\"insertdatetime\",\"|\",\"removeformat\",\"emoticons\",\"code\",\"preview\",\"fullscreen\"]}},\"setoptions\":{\"2\":{\"access\":[\"1\",\"9\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"1\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"0\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"1\":{\"access\":[\"6\",\"2\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"0\",\"drag_drop\":\"1\",\"path\":\"\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"},\"0\":{\"access\":[\"7\",\"4\",\"8\"],\"skin\":\"0\",\"skin_admin\":\"0\",\"mobile\":\"1\",\"drag_drop\":\"1\",\"path\":\"article\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"use_config_textfilters\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"valid_elements\":\"\",\"extended_elements\":\"\",\"resizing\":\"1\",\"resize_horizontal\":\"1\",\"element_path\":\"1\",\"wordcount\":\"1\",\"image_advtab\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}}},\"sets_amount\":3,\"html_height\":\"550\",\"html_width\":\"750\"}','','',0,'0000-00-00 00:00:00',3,0),(413,0,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"article\"}','','','',0,'0000-00-00 00:00:00',1,0),(414,0,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"image\"}','','','',0,'0000-00-00 00:00:00',2,0),(415,0,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"pagebreak\"}','','','',0,'0000-00-00 00:00:00',3,0),(416,0,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"readmore\"}','','','',0,'0000-00-00 00:00:00',4,0),(417,0,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(418,0,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(419,0,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(420,0,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(422,0,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagefilter\"}','','','',0,'0000-00-00 00:00:00',1,0),(423,0,'plg_system_p3p','plugin','p3p','system',0,0,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"p3p\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0),(424,0,'plg_system_cache','plugin','cache','system',0,1,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cache\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0),(425,0,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"debug\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0),(426,0,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"log\"}','','','',0,'0000-00-00 00:00:00',5,0),(427,0,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"redirect\"}','','','',0,'0000-00-00 00:00:00',6,0),(428,0,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"remember\"}','','','',0,'0000-00-00 00:00:00',7,0),(429,0,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sef\"}','','','',0,'0000-00-00 00:00:00',8,0),(430,0,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"logout\"}','','','',0,'0000-00-00 00:00:00',3,0),(431,0,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contactcreator\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0),(432,0,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','{\"autoregister\":\"1\",\"mail_to_user\":\"1\",\"forceLogout\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0),(433,0,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"profile\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(434,0,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',1,0),(435,0,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomla\"}','','','',0,'0000-00-00 00:00:00',0,0),(436,0,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"languagecode\"}','','','',0,'0000-00-00 00:00:00',10,0),(437,0,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"joomlaupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(438,0,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"extensionupdate\"}','','','',0,'0000-00-00 00:00:00',0,0),(440,0,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"highlight\"}','','','',0,'0000-00-00 00:00:00',7,0),(441,0,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"finder\"}','','','',0,'0000-00-00 00:00:00',0,0),(442,0,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"categories\"}','','','',0,'0000-00-00 00:00:00',1,0),(443,0,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contacts\"}','','','',0,'0000-00-00 00:00:00',2,0),(444,0,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"content\"}','','','',0,'0000-00-00 00:00:00',3,0),(445,0,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"newsfeeds\"}','','','',0,'0000-00-00 00:00:00',4,0),(447,0,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','','','',0,'0000-00-00 00:00:00',0,0),(449,0,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"cookie\"}','','','',0,'0000-00-00 00:00:00',0,0),(451,0,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"tags\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(452,0,'plg_system_updatenotification','plugin','updatenotification','system',0,1,1,0,'{\"name\":\"plg_system_updatenotification\",\"type\":\"plugin\",\"creationDate\":\"May 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"updatenotification\"}','{\"lastrun\":1500344280}','','',0,'0000-00-00 00:00:00',0,0),(453,0,'plg_editors-xtd_module','plugin','module','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_module\",\"type\":\"plugin\",\"creationDate\":\"October 2015\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_MODULE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"module\"}','','','',0,'0000-00-00 00:00:00',0,0),(454,0,'plg_system_stats','plugin','stats','system',0,1,1,0,'{\"name\":\"plg_system_stats\",\"type\":\"plugin\",\"creationDate\":\"November 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.5.0\",\"description\":\"PLG_SYSTEM_STATS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"stats\"}','{\"mode\":1,\"lastrun\":1500346212,\"unique_id\":\"245d93f29d4121efadff3f500e5723910f7260e2\",\"interval\":12}','','',0,'0000-00-00 00:00:00',0,0),(455,0,'plg_installer_packageinstaller','plugin','packageinstaller','installer',0,1,1,1,'{\"name\":\"plg_installer_packageinstaller\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"packageinstaller\"}','','','',0,'0000-00-00 00:00:00',1,0),(456,0,'PLG_INSTALLER_FOLDERINSTALLER','plugin','folderinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_FOLDERINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"folderinstaller\"}','','','',0,'0000-00-00 00:00:00',2,0),(457,0,'PLG_INSTALLER_URLINSTALLER','plugin','urlinstaller','installer',0,1,1,1,'{\"name\":\"PLG_INSTALLER_URLINSTALLER\",\"type\":\"plugin\",\"creationDate\":\"May 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.6.0\",\"description\":\"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"urlinstaller\"}','','','',0,'0000-00-00 00:00:00',3,0),(458,0,'plg_quickicon_phpversioncheck','plugin','phpversioncheck','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_phpversioncheck\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_QUICKICON_PHPVERSIONCHECK_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"phpversioncheck\"}','','','',0,'0000-00-00 00:00:00',0,0),(459,0,'plg_editors-xtd_menu','plugin','menu','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_menu\",\"type\":\"plugin\",\"creationDate\":\"August 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_MENU_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"menu\"}','','','',0,'0000-00-00 00:00:00',0,0),(460,0,'plg_editors-xtd_contact','plugin','contact','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_contact\",\"type\":\"plugin\",\"creationDate\":\"October 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_CONTACT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"contact\"}','','','',0,'0000-00-00 00:00:00',0,0),(461,0,'plg_system_fields','plugin','fields','system',0,1,1,0,'{\"name\":\"plg_system_fields\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_SYSTEM_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(462,0,'plg_fields_calendar','plugin','calendar','fields',0,1,1,0,'{\"name\":\"plg_fields_calendar\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CALENDAR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"calendar\"}','','','',0,'0000-00-00 00:00:00',0,0),(463,0,'plg_fields_checkboxes','plugin','checkboxes','fields',0,1,1,0,'{\"name\":\"plg_fields_checkboxes\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_CHECKBOXES_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"checkboxes\"}','','','',0,'0000-00-00 00:00:00',0,0),(464,0,'plg_fields_color','plugin','color','fields',0,1,1,0,'{\"name\":\"plg_fields_color\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_COLOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"color\"}','','','',0,'0000-00-00 00:00:00',0,0),(465,0,'plg_fields_editor','plugin','editor','fields',0,1,1,0,'{\"name\":\"plg_fields_editor\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_EDITOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"editor\"}','','','',0,'0000-00-00 00:00:00',0,0),(466,0,'plg_fields_imagelist','plugin','imagelist','fields',0,1,1,0,'{\"name\":\"plg_fields_imagelist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_IMAGELIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"imagelist\"}','','','',0,'0000-00-00 00:00:00',0,0),(467,0,'plg_fields_integer','plugin','integer','fields',0,1,1,0,'{\"name\":\"plg_fields_integer\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_INTEGER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"integer\"}','{\"multiple\":\"0\",\"first\":\"1\",\"last\":\"100\",\"step\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0),(468,0,'plg_fields_list','plugin','list','fields',0,1,1,0,'{\"name\":\"plg_fields_list\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_LIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"list\"}','','','',0,'0000-00-00 00:00:00',0,0),(469,0,'plg_fields_media','plugin','media','fields',0,1,1,0,'{\"name\":\"plg_fields_media\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_MEDIA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"media\"}','','','',0,'0000-00-00 00:00:00',0,0),(470,0,'plg_fields_radio','plugin','radio','fields',0,1,1,0,'{\"name\":\"plg_fields_radio\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_RADIO_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"radio\"}','','','',0,'0000-00-00 00:00:00',0,0),(471,0,'plg_fields_sql','plugin','sql','fields',0,1,1,0,'{\"name\":\"plg_fields_sql\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_SQL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"sql\"}','','','',0,'0000-00-00 00:00:00',0,0),(472,0,'plg_fields_text','plugin','text','fields',0,1,1,0,'{\"name\":\"plg_fields_text\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXT_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"text\"}','','','',0,'0000-00-00 00:00:00',0,0),(473,0,'plg_fields_textarea','plugin','textarea','fields',0,1,1,0,'{\"name\":\"plg_fields_textarea\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_TEXTAREA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"textarea\"}','','','',0,'0000-00-00 00:00:00',0,0),(474,0,'plg_fields_url','plugin','url','fields',0,1,1,0,'{\"name\":\"plg_fields_url\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_URL_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"url\"}','','','',0,'0000-00-00 00:00:00',0,0),(475,0,'plg_fields_user','plugin','user','fields',0,1,1,0,'{\"name\":\"plg_fields_user\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USER_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"user\"}','','','',437,'2017-05-15 02:44:54',0,0),(476,0,'plg_fields_usergrouplist','plugin','usergrouplist','fields',0,1,1,0,'{\"name\":\"plg_fields_usergrouplist\",\"type\":\"plugin\",\"creationDate\":\"March 2016\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_FIELDS_USERGROUPLIST_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"usergrouplist\"}','','','',0,'0000-00-00 00:00:00',0,0),(477,0,'plg_content_fields','plugin','fields','content',0,1,1,0,'{\"name\":\"plg_content_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_CONTENT_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(478,0,'plg_editors-xtd_fields','plugin','fields','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_fields\",\"type\":\"plugin\",\"creationDate\":\"February 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.0\",\"description\":\"PLG_EDITORS-XTD_FIELDS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"fields\"}','','','',0,'0000-00-00 00:00:00',0,0),(504,0,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(507,0,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(600,802,'English (en-GB)','language','en-GB','',0,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"May 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.2\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(601,802,'English (en-GB)','language','en-GB','',1,1,1,1,'{\"name\":\"English (en-GB)\",\"type\":\"language\",\"creationDate\":\"May 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.2\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(700,0,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"May 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2017 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.2\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(802,0,'English (en-GB) Language Pack','package','pkg_en-GB','',0,1,1,1,'{\"name\":\"English (en-GB) Language Pack\",\"type\":\"package\",\"creationDate\":\"May 2017\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.7.2.1\",\"description\":\"en-GB language pack\",\"group\":\"\",\"filename\":\"pkg_en-GB\"}','','','',0,'0000-00-00 00:00:00',0,0),(10000,0,'简体中文','language','zh-CN','',0,1,1,0,'{\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2011-07-20\",\"author\":\"Joomla\\u4e4b\\u95e8\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters & Joomla.fr. All rights reserved.\",\"authorEmail\":\"joomlagate@gmail.com\",\"authorUrl\":\"http:\\/\\/www.joomlagate.com\",\"version\":\"3.6.100\",\"description\":\"Joomla 3.6 \\u524d\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\uff08Simplified Chinese\\uff09\\u8bed\\u8a00\\u6587\\u4ef6\",\"group\":\"\",\"filename\":\"zh-CN\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10001,0,'简体中文','language','zh-CN','',1,1,1,0,'{\"name\":\"\\u7b80\\u4f53\\u4e2d\\u6587\",\"type\":\"language\",\"creationDate\":\"2011-07-20\",\"author\":\"Joomla\\u4e4b\\u95e8\",\"copyright\":\"Copyright (C) 2005 - 2011 Open Source Matters & Joomla.fr. All rights reserved.\",\"authorEmail\":\"joomlagate@gmail.com\",\"authorUrl\":\"http:\\/\\/www.joomlagate.com\",\"version\":\"3.6.100\",\"description\":\"Joomla 3.6 \\u540e\\u53f0\\u7b80\\u4f53\\u4e2d\\u6587\\uff08Simplified Chinese\\uff09\\u8bed\\u8a00\\u6587\\u4ef6\",\"group\":\"\",\"filename\":\"zh-CN\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10004,0,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\",\"backgroundcolor\":\"#eee\"}','','',0,'0000-00-00 00:00:00',0,0),(10007,0,'BT Content Slider','module','mod_bt_contentslider','',0,1,0,0,'{\"name\":\"BT Content Slider\",\"type\":\"module\",\"creationDate\":\"Sep 2011\",\"author\":\"www.bowthemes.com\",\"copyright\":\"Copyright (C) 2016 Bowthemes. All rights reserved.\",\"authorEmail\":\"support@bowthemes.com\",\"authorUrl\":\"http:\\/\\/www.bowthemes.com\",\"version\":\"2.3.11\",\"description\":\"\\n\\t\\n<div class=\\\"bt_description\\\">\\n\\t<h3>BT content slider Module Version 2.3.11<\\/h3>\\n\\t<a href=\\\"http:\\/\\/bowthemes.com\\\" target=\\\"_blank\\\"><img\\n\\t\\tsrc=\\\"..\\/modules\\/mod_bt_contentslider\\/admin\\/images\\/bt-slider.png\\\">\\n\\t<\\/a>\\n\\t<p>Helps to slide your articles from Joomla! categories with cool\\n\\t\\teffects, rich backend configs covering layout, animation control, auto\\n\\t\\tthumbnail creating, images resizing, numbering articles, sorting\\n\\t\\tect...<\\/p>\\n\\t<br clear=\\\"both\\\" \\/>\\n\\t<h3>Features<\\/h3>\\n\\t<ul class=\\\"list-style\\\">\\n\\t\\t<li>Compatibility with Joomla 1.6, 1.7, 2.5 and Joomla 3.x<\\/li>\\n\\t\\t<li>Content control display from any section, category or article ID\'s<\\/li>\\n\\t\\t<li>Support for<a href=\\\"http:\\/\\/getk2.org\\/\\\"> K2 component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\\"joomla-extensions\\/bt-porfolio-component.html\\\" target=\\\"_blank\\\" title=\\\"Portfolio Joomla component\\\">BT Portfolio component<\\/a><\\/li>\\n\\t\\t<li>Support for <a href=\\\"http:\\/\\/bit.ly\\/1baVxzb\\\">EasyBlog Component<\\/a><\\/li>\\n\\t\\t<li>Scalable size of the module<\\/li>\\n\\t\\t<li>Horizontal and vertical news presentation (columns and rows\\n\\t\\t\\tconfiguration).<\\/li>\\n\\t\\t<li>Support for responsive template<\\/li>\\n\\t\\t<li>Show text, image, author, date, section\\/category name and\\n\\t\\t\\tbutton \\\"read more\\\" option, with order customization.<\\/li>\\n\\t\\t<li>Image Cropping<\\/li>\\n\\t\\t<li>On\\/Off front page articles display in modules<\\/li>\\n\\t\\t<li>Easy and friendly back-end administration.<\\/li>\\n\\t\\t<li>Included French language.<\\/li>\\n\\t\\t<li>Used Javascript Framework: Jquery latest version<\\/li>\\n\\t\\t<li>Fully compatible: Firefox, IE7+, Opera 9.5, Safari, Netscape,\\n\\t\\t\\tGoogle Chrome, Camino, Flock 0.7+.<\\/li>\\n\\t<\\/ul>\\n\\t<h3>UPgrade versions<\\/h3>\\n\\t<p>\\n\\t\\tYour current versions is 2.3.11. <a target=\\\"_blank\\\" href=\\\"http:\\/\\/bowthemes.com\\/bt-content-slider.html\\\">Find our latest versions now<\\/a>\\n\\t<\\/p>\\n\\t<h3>Userful links<\\/h3>\\n\\t<ul>\\n\\t\\t<li><a target=\\\"_blank\\\" href=\\\"http:\\/\\/bowthemes.com\\/bowthemes.com\\/bt-content-slider.html\\\">Video tutorials<\\/a><\\/li>\\n\\t\\t<li><a target=\\\"_blank\\\" href=\\\"http:\\/\\/bowthemes.com\\/forums\\/14-bt-content-slider\\/\\\">Report bug<\\/a><\\/li>\\n\\t\\t<li><a target=\\\"_blank\\\" href=\\\"http:\\/\\/bowthemes.com\\/forums\\/14-bt-content-slider\\/\\\">Forum support<\\/a><\\/li>\\n\\t<\\/ul>\\n\\t<h3>About bow themes & copyright<\\/h3>\\n\\t<p>Bow Themes is Professional Joomla template provider. We are\\n\\t\\tfocused on creating unique, attractive and clean templates without\\n\\t\\tloosing flexibility and simplicity of customization<\\/p>\\n\\tCopyright (C) 2016 BowThemes\\n<\\/div>\\n<style>\\n.bt_description{\\n\\ttext-align: left;\\n}\\n.bt_description h3 {\\n\\ttext-transform: uppercase;\\n\\tmargin: 20px 0px 10px 0px;\\n}\\n\\n.bt_description img {\\n\\tfloat: left;\\n\\tmargin: 5px 10px 5px 0px;\\n}\\n\\n.bt_description p,.bt_description li {\\n\\tpadding: 5px 5px 5px 30px;\\n\\tlist-style: none outside none;\\n}\\n\\n.bt_description ul.list-style li {\\n\\tbackground: url(..\\/modules\\/mod_bt_contentslider\\/admin\\/images\\/tick.png)\\n\\t\\t0px 6px no-repeat;\\n\\tpadding-left: 30px;\\n\\tline-height: 15px;\\n}\\n<\\/style>\\n\",\"group\":\"\",\"filename\":\"mod_bt_contentslider\"}','{\"moduleclass_sfx\":\"\",\"content_title\":\"\",\"content_link\":\"\",\"butlet\":\"1\",\"navigation_top\":\"0\",\"navigation_right\":\"0\",\"next_back\":\"0\",\"module_width\":\"auto\",\"module_height\":\"auto\",\"auto_height\":\"1\",\"items_per_cols\":\"1\",\"items_per_rows\":\"3\",\"source\":\"category\",\"article_ids\":\"\",\"k2_article_ids\":\"\",\"btportfolio_article_ids\":\"\",\"k2_category\":\"\",\"btportfolio_category\":\"\",\"easyblog_article_ids\":\"\",\"joomla_tags\":\"\",\"k2_tags\":\"\",\"auto_category\":\"0\",\"sub_categories\":\"0\",\"limit_items\":\"12\",\"limit_items_for_each\":\"0\",\"user_id\":\"0\",\"show_featured\":\"1\",\"ordering\":\"created-asc\",\"content_plugin\":\"0\",\"use_introimg\":\"1\",\"use_caption\":\"0\",\"use_linka\":\"0\",\"show_title\":\"1\",\"limit_title_by\":\"word\",\"title_max_chars\":\"8\",\"show_intro\":\"1\",\"limit_description_by\":\"char\",\"description_max_chars\":\"100\",\"show_category_name\":\"1\",\"show_category_name_as_link\":\"1\",\"show_readmore\":\"1\",\"show_date\":\"0\",\"show_author\":\"0\",\"show_image\":\"1\",\"checkimg_fulltext\":\"0\",\"check_image_exist\":\"0\",\"image_align\":\"center\",\"equalHeight\":\"1\",\"image_thumb\":\"1\",\"thumbnail_width\":\"180\",\"thumbnail_height\":\"120\",\"image_quality\":\"80\",\"default_thumb\":\"1\",\"touch_screen\":\"0\",\"hovereffect\":\"1\",\"modalbox\":\"0\",\"next_back_effect\":\"slide\",\"bullet_effect\":\"slide\",\"pause_hover\":\"1\",\"interval\":\"5000\",\"duration\":\"500\",\"effect\":\"easeInQuad\",\"auto_start\":\"1\",\"auto_strip_tags\":\"1\",\"allow_tags\":\"\",\"open_target\":\"_parent\",\"loadJquery\":\"auto\",\"cache\":\"1\",\"cache_time\":\"900\"}','','',0,'0000-00-00 00:00:00',0,0),(10008,0,'plg_content_vote','plugin','vote','content',0,1,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2017 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"vote\"}','{\"position\":\"bottom\"}','','',0,'0000-00-00 00:00:00',0,0),(10017,0,'PLG_LAZYLOADFORJOOMLA','plugin','lazyloadforjoomla','system',0,1,1,0,'{\"name\":\"PLG_LAZYLOADFORJOOMLA\",\"type\":\"plugin\",\"creationDate\":\"2016-06-13\",\"author\":\"Viktor Vogel\",\"copyright\":\"Copyright 2016 Viktor Vogel. All rights reserved.\",\"authorEmail\":\"admin@kubik-rubik.de\",\"authorUrl\":\"https:\\/\\/joomla-extensions.kubik-rubik.de\\/\",\"version\":\"3.4.0\",\"description\":\"PLG_LAZYLOADFORJOOMLA_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"lazyloadforjoomla\"}','{\"framework_type\":\"0\",\"noscript_fallback\":\"1\",\"exclude_imagenames\":\"logo\\r\\nbanner\",\"exclude_imagenames_toggle\":\"0\",\"exclude_components\":\"\",\"exclude_components_toggle\":\"0\",\"exclude_urls\":\"\",\"exclude_urls_toggle\":\"0\",\"image_class\":\"\",\"image_class_toggle\":\"0\",\"exclude_editor\":\"1\",\"exclude_bots\":\"1\",\"botslist\":\"bot,spider,crawler,libwww,search,archive,slurp,teoma,facebook,twitter,googlebot\",\"viewslist\":\"component,print\",\"threshold\":0,\"effect\":\"fadein\",\"donation_code\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10018,0,'PLG_ECC','plugin','easycalccheckplus','system',0,1,1,0,'{\"name\":\"PLG_ECC\",\"type\":\"plugin\",\"creationDate\":\"2015-12-22\",\"author\":\"Viktor Vogel\",\"copyright\":\"Copyright 2015 Viktor Vogel. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"3.1.1\",\"description\":\"PLG_ECC_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"easycalccheckplus\"}','{\"type_calc\":\"1\",\"operator\":\"2\",\"operand\":\"2\",\"negativ\":\"0\",\"converttostring\":\"0\",\"max_value\":\"20\",\"type_hidden\":\"1\",\"type_time\":\"1\",\"type_time_sec\":\"5\",\"question\":\"0\",\"question_q\":\"\",\"question_a\":\"\",\"recaptcha\":\"0\",\"recaptcha_theme\":\"0\",\"recaptcha_publickey\":\"\",\"recaptcha_privatekey\":\"\",\"user_reg\":\"1\",\"user_login\":\"1\",\"user_login_attempts\":\"3\",\"contact\":\"1\",\"aicontactsafe\":\"0\",\"alfcontact\":\"0\",\"communitybuilder\":\"0\",\"dfcontact\":\"0\",\"easybookreloaded\":\"0\",\"foxcontact\":\"0\",\"flexicontact\":\"0\",\"flexicontactplus\":\"0\",\"iproperty\":\"0\",\"jomsocial\":\"0\",\"kunena\":\"0\",\"phocaguestbook\":\"0\",\"virtuemart\":\"0\",\"autofill_values\":\"1\",\"warn_ref\":\"0\",\"encode\":\"1\",\"onlyguests\":\"1\",\"poweredby\":\"0\",\"string_alternative\":\"<hr class=\\\"EasyCalcCheck\\\" \\/>\",\"custom_call\":\"0\",\"backendprotection\":\"0\",\"token\":\"\",\"urlfalsetoken\":\"\",\"sqlinjection-lfi\":\"0\",\"stopforumspam\":\"0\",\"honeypot\":\"0\",\"honeypot_key\":\"\",\"akismet\":\"0\",\"akismet_key\":\"\",\"mollom\":\"0\",\"mollom_publickey\":\"\",\"mollom_privatekey\":\"\",\"botscout\":\"0\",\"botscout_key\":\"\",\"bottrap\":\"0\",\"btWhitelistIP\":\"\",\"btWhitelistIPRange\":\"\",\"btWhitelistUA\":\"\",\"btBlacklistIP\":\"\",\"btBlacklistIPRange\":\"\",\"btBlacklistUA\":\"\",\"donation_code\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10019,0,'ecube','template','ecube','',0,1,1,0,'{\"name\":\"ecube\",\"type\":\"template\",\"creationDate\":\"26 April 2017\",\"author\":\"Sayrven Hsian\",\"copyright\":\"Copyright (C) 2017 - 2018 Ecube Studio. All rights reserved.\",\"authorEmail\":\"e@e-cube.tech\",\"authorUrl\":\"https:\\/\\/ixf.io\",\"version\":\"1.1.1\",\"description\":\"TPL_ECUBE_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"templateDetails\"}','{\"templateColor\":\"#08C\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10022,0,'plg_system_nnframework','plugin','nnframework','system',0,1,1,0,'{\"name\":\"plg_system_nnframework\",\"type\":\"plugin\",\"creationDate\":\"January 2016\",\"author\":\"NoNumber (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2016 NoNumber All Rights Reserved\",\"authorEmail\":\"peter@nonumber.nl\",\"authorUrl\":\"https:\\/\\/www.nonumber.nl\",\"version\":\"16.1.9037\",\"description\":\"PLG_SYSTEM_NNFRAMEWORK_DESC\",\"group\":\"\",\"filename\":\"nnframework\"}','{\"max_list_count\":\"2500\"}','','',0,'0000-00-00 00:00:00',0,0),(10023,0,'plg_editors-xtd_sliders','plugin','sliders','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_sliders\",\"type\":\"plugin\",\"creationDate\":\"January 2016\",\"author\":\"NoNumber (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2016 NoNumber All Rights Reserved\",\"authorEmail\":\"peter@nonumber.nl\",\"authorUrl\":\"https:\\/\\/www.nonumber.nl\",\"version\":\"5.1.11\",\"description\":\"PLG_EDITORS-XTD_SLIDERS_DESC\",\"group\":\"\",\"filename\":\"sliders\"}','[]','','',0,'0000-00-00 00:00:00',0,0),(10024,0,'plg_system_sliders','plugin','sliders','system',0,1,1,0,'{\"name\":\"plg_system_sliders\",\"type\":\"plugin\",\"creationDate\":\"January 2016\",\"author\":\"NoNumber (Peter van Westen)\",\"copyright\":\"Copyright \\u00a9 2016 NoNumber All Rights Reserved\",\"authorEmail\":\"peter@nonumber.nl\",\"authorUrl\":\"https:\\/\\/www.nonumber.nl\",\"version\":\"5.1.11\",\"description\":\"PLG_SYSTEM_SLIDERS_DESC\",\"group\":\"\",\"filename\":\"sliders\"}','{\"load_stylesheet\":\"1\",\"@notice_mode\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"@notice_slide_speed\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"@notice_scroll\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"@notice_linkscroll\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"@notice_urlscroll\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"@notice_scrolloffset\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"tag_open\":\"slider\",\"tag_close\":\"sliders\",\"tag_link\":\"sliderlink\",\"tag_delimiter\":\"space\",\"tag_characters\":\"{.}\",\"title_tag\":\"h2\",\"use_hash\":\"1\",\"reload_iframes\":\"0\",\"init_timeout\":\"0\",\"@notice_use_cookies\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"@notice_disabled_components\":\"NN_ONLY_AVAILABLE_IN_PRO\",\"enable_admin\":\"0\",\"place_comments\":\"1\",\"load_bootstrap_framework\":\"1\",\"button_text\":\"Sliders\",\"enable_frontend\":\"1\",\"button_use_simple_button\":\"0\",\"button_max_count\":\"10\",\"button_use_custom_code\":\"0\",\"button_custom_code\":\"{slider Slider Title 1}<br \\/>[:SELECTION:]<br \\/>{slider Slider Title 2}<br \\/>Slider text...<br \\/>{\\/sliders}\"}','','',0,'0000-00-00 00:00:00',0,0),(10025,0,'com_jcomments','component','com_jcomments','',1,1,0,0,'{\"name\":\"JComments\",\"type\":\"component\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"3.0.5\",\"description\":\"JComments lets your users comment on content items.\",\"group\":\"\",\"filename\":\"jcomments\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10026,0,'plg_content_jcomments','plugin','jcomments','content',0,1,1,0,'{\"name\":\"plg_content_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_CONTENT_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcomments\"}','{\"show_frontpage\":\"1\",\"enable_for_archived\":\"0\",\"comments_count\":\"1\",\"add_comments\":\"1\",\"links_position\":\"1\",\"readmore_link\":\"1\",\"readmore_css_class\":\"readmore-link\",\"comments_css_class\":\"comments-link\",\"show_hits\":\"0\",\"show_comments_event\":\"onAfterDisplayContent\"}','','',0,'0000-00-00 00:00:00',0,0),(10027,0,'plg_editors-xtd_jcommentson','plugin','jcommentson','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_jcommentson\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_EDITORS-XTD_JCOMMENTSON_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcommentson\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10028,0,'plg_editors-xtd_jcommentsoff','plugin','jcommentsoff','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_jcommentsoff\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_EDITORS-XTD_JCOMMENTSOFF_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcommentsoff\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10029,0,'plg_search_jcomments','plugin','jcomments','search',0,1,1,0,'{\"name\":\"plg_search_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_SEARCH_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcomments\"}','{\"search_limit\":\"50\"}','','',0,'0000-00-00 00:00:00',0,0),(10030,0,'plg_system_jcomments','plugin','jcomments','system',0,1,1,0,'{\"name\":\"plg_system_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_SYSTEM_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcomments\"}','{\"disable_template_css\":\"0\",\"disable_error_reporting\":\"0\",\"clear_rss\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0),(10031,0,'plg_user_jcomments','plugin','jcomments','user',0,1,1,0,'{\"name\":\"plg_user_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_USER_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcomments\"}','{}','','',0,'0000-00-00 00:00:00',0,0),(10032,0,'plg_quickicon_jcomments','plugin','jcomments','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_jcomments\",\"type\":\"plugin\",\"creationDate\":\"01\\/08\\/2014\",\"author\":\"smart\",\"copyright\":\"Copyright 2006-2014 JoomlaTune.ru All rights reserved!\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0\",\"description\":\"PLG_QUICKICON_JCOMMENTS_XML_DESCRIPTION\",\"group\":\"\",\"filename\":\"jcomments\"}','{\"context\":\"mod_quickicon\",\"displayedtext\":\"\"}','','',0,'0000-00-00 00:00:00',0,0),(10033,0,'JComments Chinese','file','install','',0,1,0,0,'{\"name\":\"JComments Chinese\",\"type\":\"file\",\"creationDate\":\"20\\/02\\/2012\",\"author\":\"Yusuf Wang, moiska\",\"copyright\":\"(C) 2006-2012 JoomlaTune.ru. All rights reserved.\",\"authorEmail\":\"translations@joomlatune.com\",\"authorUrl\":\"http:\\/\\/www.joomlatune.com\\/jcomments\\/translations.html\",\"version\":\"2.3.0\",\"description\":\"Chinese language pack for JComments\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0),(10034,0,'Social share','module','mod_je_social','',0,1,0,0,'{\"name\":\"Social share\",\"type\":\"module\",\"creationDate\":\"2017-05-11\",\"author\":\"e-cube.tech\",\"copyright\":\"Copyright 2017 - jExtensions.com\",\"authorEmail\":\"e@e-cube.tech\",\"authorUrl\":\"\",\"version\":\"1.1.1\",\"description\":\"\\n\\t<h1 class=\\\"sub-heading\\\"><\\/h1>\\t\\n\\t<div class=\\\"description\\\">This modules base on JE Social Icons and Baidu share js.<br\\/>\\n\\tVisit for more information of <a href=\\\"http:\\/\\/jextensions.com\\/social-icons-module\\\" target=\\\"_blank\\\">JE Social Icons<\\/a> and <a href=\\\"http:\\/\\/share.baidu.com\\/\\\" target=\\\"_blank\\\">Baidu share<\\/a>.<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\",\"filename\":\"mod_je_social\"}','{\"iconSize\":\"24\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `ecs_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_fields`
--

DROP TABLE IF EXISTS `ecs_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `default_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'text',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `fieldparams` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_user_id` (`created_user_id`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_fields`
--

LOCK TABLES `ecs_fields` WRITE;
/*!40000 ALTER TABLE `ecs_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_fields_categories`
--

DROP TABLE IF EXISTS `ecs_fields_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_fields_categories` (
  `field_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_fields_categories`
--

LOCK TABLES `ecs_fields_categories` WRITE;
/*!40000 ALTER TABLE `ecs_fields_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_fields_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_fields_groups`
--

DROP TABLE IF EXISTS `ecs_fields_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_fields_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `context` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_access` (`access`),
  KEY `idx_context` (`context`(191)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_fields_groups`
--

LOCK TABLES `ecs_fields_groups` WRITE;
/*!40000 ALTER TABLE `ecs_fields_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_fields_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_fields_values`
--

DROP TABLE IF EXISTS `ecs_fields_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_fields_values` (
  `field_id` int(10) unsigned NOT NULL,
  `item_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Allow references to items which have strings as ids, eg. none db systems.',
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `idx_field_id` (`field_id`),
  KEY `idx_item_id` (`item_id`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_fields_values`
--

LOCK TABLES `ecs_fields_values` WRITE;
/*!40000 ALTER TABLE `ecs_fields_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_fields_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_filters`
--

DROP TABLE IF EXISTS `ecs_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_filters`
--

LOCK TABLES `ecs_finder_filters` WRITE;
/*!40000 ALTER TABLE `ecs_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links`
--

DROP TABLE IF EXISTS `ecs_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` text,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`(100)),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links`
--

LOCK TABLES `ecs_finder_links` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms0`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms0`
--

LOCK TABLES `ecs_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms1`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms1`
--

LOCK TABLES `ecs_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms2`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms2`
--

LOCK TABLES `ecs_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms3`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms3`
--

LOCK TABLES `ecs_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms4`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms4`
--

LOCK TABLES `ecs_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms5`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms5`
--

LOCK TABLES `ecs_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms6`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms6`
--

LOCK TABLES `ecs_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms7`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms7`
--

LOCK TABLES `ecs_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms8`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms8`
--

LOCK TABLES `ecs_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_terms9`
--

DROP TABLE IF EXISTS `ecs_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_terms9`
--

LOCK TABLES `ecs_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_termsa`
--

DROP TABLE IF EXISTS `ecs_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_termsa`
--

LOCK TABLES `ecs_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_termsb`
--

DROP TABLE IF EXISTS `ecs_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_termsb`
--

LOCK TABLES `ecs_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_termsc`
--

DROP TABLE IF EXISTS `ecs_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_termsc`
--

LOCK TABLES `ecs_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_termsd`
--

DROP TABLE IF EXISTS `ecs_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_termsd`
--

LOCK TABLES `ecs_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_termse`
--

DROP TABLE IF EXISTS `ecs_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_termse`
--

LOCK TABLES `ecs_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_links_termsf`
--

DROP TABLE IF EXISTS `ecs_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_links_termsf`
--

LOCK TABLES `ecs_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `ecs_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_taxonomy`
--

DROP TABLE IF EXISTS `ecs_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_taxonomy`
--

LOCK TABLES `ecs_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `ecs_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `ecs_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `ecs_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `ecs_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_taxonomy_map`
--

LOCK TABLES `ecs_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `ecs_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_terms`
--

DROP TABLE IF EXISTS `ecs_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_terms`
--

LOCK TABLES `ecs_finder_terms` WRITE;
/*!40000 ALTER TABLE `ecs_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_terms_common`
--

DROP TABLE IF EXISTS `ecs_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_terms_common`
--

LOCK TABLES `ecs_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `ecs_finder_terms_common` DISABLE KEYS */;
INSERT INTO `ecs_finder_terms_common` VALUES ('a','en'),('about','en'),('after','en'),('ago','en'),('all','en'),('am','en'),('an','en'),('and','en'),('ani','en'),('any','en'),('are','en'),('aren\'t','en'),('as','en'),('at','en'),('be','en'),('but','en'),('by','en'),('for','en'),('from','en'),('get','en'),('go','en'),('how','en'),('if','en'),('in','en'),('into','en'),('is','en'),('isn\'t','en'),('it','en'),('its','en'),('me','en'),('more','en'),('most','en'),('must','en'),('my','en'),('new','en'),('no','en'),('none','en'),('not','en'),('noth','en'),('nothing','en'),('of','en'),('off','en'),('often','en'),('old','en'),('on','en'),('onc','en'),('once','en'),('onli','en'),('only','en'),('or','en'),('other','en'),('our','en'),('ours','en'),('out','en'),('over','en'),('page','en'),('she','en'),('should','en'),('small','en'),('so','en'),('some','en'),('than','en'),('thank','en'),('that','en'),('the','en'),('their','en'),('theirs','en'),('them','en'),('then','en'),('there','en'),('these','en'),('they','en'),('this','en'),('those','en'),('thus','en'),('time','en'),('times','en'),('to','en'),('too','en'),('true','en'),('under','en'),('until','en'),('up','en'),('upon','en'),('use','en'),('user','en'),('users','en'),('veri','en'),('version','en'),('very','en'),('via','en'),('want','en'),('was','en'),('way','en'),('were','en'),('what','en'),('when','en'),('where','en'),('whi','en'),('which','en'),('who','en'),('whom','en'),('whose','en'),('why','en'),('wide','en'),('will','en'),('with','en'),('within','en'),('without','en'),('would','en'),('yes','en'),('yet','en'),('you','en'),('your','en'),('yours','en');
/*!40000 ALTER TABLE `ecs_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_tokens`
--

DROP TABLE IF EXISTS `ecs_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_tokens`
--

LOCK TABLES `ecs_finder_tokens` WRITE;
/*!40000 ALTER TABLE `ecs_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `ecs_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_tokens_aggregate`
--

LOCK TABLES `ecs_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `ecs_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_finder_types`
--

DROP TABLE IF EXISTS `ecs_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_finder_types`
--

LOCK TABLES `ecs_finder_types` WRITE;
/*!40000 ALTER TABLE `ecs_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments`
--

DROP TABLE IF EXISTS `ecs_jcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `thread_id` int(11) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `level` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `object_params` text NOT NULL,
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `homepage` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `isgood` smallint(5) NOT NULL DEFAULT '0',
  `ispoor` smallint(5) NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subscribe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `source_id` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_source` (`source`),
  KEY `idx_email` (`email`),
  KEY `idx_lang` (`lang`),
  KEY `idx_subscribe` (`subscribe`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_object` (`object_id`,`object_group`,`published`,`date`),
  KEY `idx_path` (`path`,`level`),
  KEY `idx_thread` (`thread_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments`
--

LOCK TABLES `ecs_jcomments` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments` DISABLE KEYS */;
INSERT INTO `ecs_jcomments` VALUES (2,0,0,'0',0,6,'com_content','','zh-CN',0,'test','test','aa@cc.cc','','',':cry:','192.168.0.101','2017-05-07 12:54:55',0,0,1,0,0,'',0,0,'0000-00-00 00:00:00',''),(3,0,0,'0',0,6,'com_content','','zh-CN',0,'test','test','aa@cc.cc','','',':sad:','192.168.0.101','2017-05-07 12:55:25',0,0,1,0,0,'',0,0,'0000-00-00 00:00:00',''),(4,0,0,'0',0,6,'com_content','','zh-CN',0,'test','test','aa@cc.cc','','','[quote name=\"test\"]:sad:[/quote]<br />你好！我想认识你！','192.168.0.101','2017-05-07 12:57:25',1,0,1,0,0,'',0,0,'0000-00-00 00:00:00',''),(5,0,0,'0',0,6,'com_content','','zh-CN',0,'test','test','aa@cc.cc','','',':-|','192.168.0.101','2017-05-07 12:59:14',0,1,1,0,0,'',0,0,'0000-00-00 00:00:00',''),(6,0,0,'0',0,6,'com_content','','zh-CN',438,'saryven','ageen','ageen@163.com','','','[quote name=\"test\"]:cry:[/quote]<br />And the only reason why I\'m still not here with you','192.168.0.100','2017-05-07 13:03:44',0,0,1,0,0,'',0,438,'2017-05-07 13:03:55','');
/*!40000 ALTER TABLE `ecs_jcomments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_blacklist`
--

DROP TABLE IF EXISTS `ecs_jcomments_blacklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_blacklist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(39) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `notes` tinytext NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_blacklist`
--

LOCK TABLES `ecs_jcomments_blacklist` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_blacklist` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_jcomments_blacklist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_custom_bbcodes`
--

DROP TABLE IF EXISTS `ecs_jcomments_custom_bbcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_custom_bbcodes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `simple_pattern` varchar(255) NOT NULL DEFAULT '',
  `simple_replacement_html` text NOT NULL,
  `simple_replacement_text` text NOT NULL,
  `pattern` varchar(255) NOT NULL DEFAULT '',
  `replacement_html` text NOT NULL,
  `replacement_text` text NOT NULL,
  `button_acl` text NOT NULL,
  `button_open_tag` varchar(16) NOT NULL DEFAULT '',
  `button_close_tag` varchar(16) NOT NULL DEFAULT '',
  `button_title` varchar(255) NOT NULL DEFAULT '',
  `button_prompt` varchar(255) NOT NULL DEFAULT '',
  `button_image` varchar(255) NOT NULL DEFAULT '',
  `button_css` varchar(255) NOT NULL DEFAULT '',
  `button_enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_custom_bbcodes`
--

LOCK TABLES `ecs_jcomments_custom_bbcodes` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_custom_bbcodes` DISABLE KEYS */;
INSERT INTO `ecs_jcomments_custom_bbcodes` VALUES (1,'YouTube Video','[youtube]http://www.youtube.com/watch?v={IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','[youtube]','[/youtube]','YouTube Video','','','bbcode-youtube',1,1,1,0,'0000-00-00 00:00:00'),(2,'YouTube Video (short syntax)','[youtube]{IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,2,1,0,'0000-00-00 00:00:00'),(3,'YouTube Video (alternate syntax)','[youtube]http://www.youtube.com/watch?v={IDENTIFIER}{TEXT}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\:\\/\\/www\\.youtube\\.com\\/watch\\?v\\=([A-Za-z0-9-_]+)([\\w0-9-\\+\\=\\!\\?\\(\\)\\[\\]\\{\\}\\&\\%\\*\\#\\.,_ ]+)\\[\\/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','[youtube]','[/youtube]','YouTube Video','','','',0,3,1,0,'0000-00-00 00:00:00'),(4,'YouTube Video (alternate syntax)','[youtube]http://www.youtube.com/watch?feature=player_embedded&v={IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\://www\\.youtube\\.com/watch\\?feature\\=player_embedded&v\\=([\\w0-9-_]+)\\[/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,4,1,0,'0000-00-00 00:00:00'),(5,'YouTube Video (alternate syntax)','[youtube]http://youtu.be/{IDENTIFIER}[/youtube]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/{IDENTIFIER}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/{IDENTIFIER}','\\[youtube\\]http\\://youtu\\.be/([\\w0-9-_]+)\\[/youtube\\]','<iframe width=\"425\" height=\"350\" src=\"//www.youtube.com/embed/${1}?rel=0\" frameborder=\"0\" allowfullscreen></iframe>','http://youtu.be/${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,5,1,0,'0000-00-00 00:00:00'),(6,'Facebook Video','[fv]http://www.facebook.com/video/video.php?v={IDENTIFIER}[/fv]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id={IDENTIFIER}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v={IDENTIFIER}','\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/video\\/video\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id=${1}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v=${1}','1,2,3,4,5,6,7,8,9','[fv]','[/fv]','Facebook Video','','','bbcode-facebook',1,6,1,0,'0000-00-00 00:00:00'),(7,'Facebook Video (short syntax)','[fv]{IDENTIFIER}[/fv]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id={IDENTIFIER}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v={IDENTIFIER}','\\[fv\\]([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id=${1}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v=${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,7,1,0,'0000-00-00 00:00:00'),(8,'Facebook Video (alternate syntax)','[fv]http://www.facebook.com/photo.php?v={IDENTIFIER}[/fv]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id={IDENTIFIER}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v={IDENTIFIER}','\\[fv\\]http\\:\\/\\/www\\.facebook\\.com\\/photo\\.php\\?v\\=([A-Za-z0-9-_]+)([A-Za-z0-9\\%\\&\\=\\#]*?)\\[\\/fv\\]','<iframe width=\"425\" height=\"350\" src=\"//www.facebook.com/video/embed?video_id=${1}\" frameborder=\"0\"></iframe>','http://www.facebook.com/photo.php?v=${1}','1,2,3,4,5,6,7,8,9','','','','','','',0,8,1,0,'0000-00-00 00:00:00'),(9,'Instagram','[instagram]http://instagram.com/p/{IDENTIFIER}/[/instagram]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/{IDENTIFIER}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/{IDENTIFIER}/','\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\/\\[/instagram\\]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/${1}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/${1}/','1,2,3,4,5,6,7,8,9','[instagram]','[/instagram]','Instagram Photo','','','bbcode-instagram',1,9,1,0,'0000-00-00 00:00:00'),(10,'Instagram (short syntax)','[instagram]{IDENTIFIER}[/instagram]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/{IDENTIFIER}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/{IDENTIFIER}/','\\[instagram\\]([\\w0-9-_]+)\\[/instagram\\]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/${1}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,10,1,0,'0000-00-00 00:00:00'),(11,'Instagram (alternate syntax)','[instagram]http://instagram.com/p/{IDENTIFIER}[/instagram]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/{IDENTIFIER}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/{IDENTIFIER}/','\\[instagram\\]http\\:\\/\\/instagram\\.com\\/p\\/([\\w0-9-_]+)\\[/instagram\\]','<iframe width=\"425\" height=\"350\" src=\"//instagram.com/p/${1}/embed/\" frameborder=\"0\" scrolling=\"no\" allowtransparency=\"true\"></iframe>','http://instagram.com/p/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,11,1,0,'0000-00-00 00:00:00'),(12,'Vimeo','[vimeo]http://vimeo.com/{IDENTIFIER}/[/vimeo]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/{IDENTIFIER}/\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/{IDENTIFIER}/','\\[vimeo\\]http\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/${1}\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/${1}/','1,2,3,4,5,6,7,8,9','[vimeo]','[/vimeo]','Vimeo Video','','','bbcode-vimeo',1,12,1,0,'0000-00-00 00:00:00'),(13,'Vimeo (short syntax)','[vimeo]{IDENTIFIER}[/vimeo]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/{IDENTIFIER}/\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/{IDENTIFIER}/','\\[vimeo\\]([\\w0-9-_]+)\\[/vimeo\\]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/${1}\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','http://vimeo.com/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,13,1,0,'0000-00-00 00:00:00'),(14,'Vimeo (alternate syntax)','[vimeo]https://vimeo.com/{IDENTIFIER}/[/vimeo]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/{IDENTIFIER}/\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','https://vimeo.com/{IDENTIFIER}/','\\[vimeo\\]https\\:\\/\\/vimeo\\.com\\/([\\w0-9-_]+)\\[/vimeo\\]','<iframe width=\"425\" height=\"239\" src=\"//player.vimeo.com/video/${1}\" frameborder=\"0\"  webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>','https://vimeo.com/${1}/','1,2,3,4,5,6,7,8,9','','','','','','',0,13,1,0,'0000-00-00 00:00:00'),(15,'Wiki','[wiki]{SIMPLETEXT}[/wiki]','<a href=\"http://www.wikipedia.org/wiki/{SIMPLETEXT}\" title=\"{SIMPLETEXT}\" target=\"_blank\">{SIMPLETEXT}</a>','{SIMPLETEXT}','\\[wiki\\]([A-Za-z0-9\\-\\+\\.,_ ]+)\\[\\/wiki\\]','<a href=\"http://www.wikipedia.org/wiki/${1}\" title=\"${1}\" target=\"_blank\">${1}</a>','${1}','1,2,3,4,5,6,7,8,9','[wiki]','[/wiki]','Wikipedia','','','bbcode-wiki',1,14,1,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ecs_jcomments_custom_bbcodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_mailq`
--

DROP TABLE IF EXISTS `ecs_jcomments_mailq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `created` datetime NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_priority` (`priority`),
  KEY `idx_attempts` (`attempts`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_mailq`
--

LOCK TABLES `ecs_jcomments_mailq` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_mailq` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_jcomments_mailq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_objects`
--

DROP TABLE IF EXISTS `ecs_jcomments_objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_objects` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `expired` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`,`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_objects`
--

LOCK TABLES `ecs_jcomments_objects` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_objects` DISABLE KEYS */;
INSERT INTO `ecs_jcomments_objects` VALUES (1,4,'com_content',14,'zh-CN','网页设计趋势2017','/index.php?option=com_content&amp;view=article&amp;id=4:2017-04-28-03-20-45&amp;catid=14:web-design&amp;Itemid=110',1,437,0,'2017-05-07 11:07:07'),(2,10,'com_content',11,'zh-CN','项目开发工作流介绍','/index.php?option=com_content&amp;view=article&amp;id=10:2017-05-04-13-08-52&amp;catid=11:2017-04-28-03-14-17&amp;Itemid=107',1,437,0,'2017-05-07 08:37:31'),(3,1,'com_content',17,'zh-CN','一些关于后端开发','/index.php?option=com_content&amp;view=article&amp;id=1:back-end-developing&amp;catid=17:2017-04-30-08-22-01&amp;Itemid=109',1,437,0,'2017-05-07 08:38:32'),(4,11,'com_content',14,'zh-CN','2017网页设计趋势（二）','/index.php?option=com_content&amp;view=article&amp;id=11:2017&amp;catid=14:web-design&amp;Itemid=110',1,437,0,'2017-05-07 11:11:19'),(5,12,'com_content',17,'zh-CN','Joomla执行流程解析','/index.php?option=com_content&amp;view=article&amp;id=12:joomla&amp;catid=17:2017-04-30-08-22-01&amp;Itemid=109',1,437,0,'2017-05-07 12:18:17'),(6,6,'com_content',16,'zh-CN','网站SEO','/index.php?option=com_content&amp;view=article&amp;id=6:seo&amp;catid=16:2017-04-30-07-59-15&amp;Itemid=109',1,437,0,'2017-05-07 13:03:44'),(7,7,'com_content',11,'zh-CN','网页设计工作流','/index.php?option=com_content&amp;view=article&amp;id=7:2017-05-01-11-50-56&amp;catid=11:2017-04-28-03-14-17&amp;Itemid=107',1,0,0,'2017-05-08 03:37:43');
/*!40000 ALTER TABLE `ecs_jcomments_objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_reports`
--

DROP TABLE IF EXISTS `ecs_jcomments_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_reports` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reason` tinytext NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_reports`
--

LOCK TABLES `ecs_jcomments_reports` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_reports` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_jcomments_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_settings`
--

DROP TABLE IF EXISTS `ecs_jcomments_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_settings` (
  `component` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  PRIMARY KEY (`component`,`lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_settings`
--

LOCK TABLES `ecs_jcomments_settings` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_settings` DISABLE KEYS */;
INSERT INTO `ecs_jcomments_settings` VALUES ('','','author_email','2'),('','','author_homepage','1'),('','','author_name','2'),('','','autolinkurls','6,7,2,3,4,5,8'),('','','autopublish','6,7,2,3,4,5,8'),('','','badwords',''),('','','can_ban','7,8'),('','','can_comment','1,9,6,7,2,3,4,5,8'),('','','can_delete','6,7,8'),('','','can_delete_for_my_object',''),('','','can_delete_own','6,7,8'),('','','can_edit','6,7,8'),('','','can_edit_for_my_object',''),('','','can_edit_own','6,7,2,3,4,5,8'),('','','can_publish','6,7,5,8'),('','','can_publish_for_my_object',''),('','','can_reply','1,9,6,7,2,3,4,5,8'),('','','can_report','6,7,2,3,4,5,8'),('','','can_view_email','6,7,8'),('','','can_view_homepage','6,7,2,3,4,5,8'),('','','can_view_ip','7,8'),('','','can_vote','1,9,6,7,2,3,4,5,8'),('','','captcha_engine','kcaptcha'),('','','censor_replace_word','[censored]'),('','','comments_list_order','DESC'),('','','comments_page_limit','15'),('','','comments_pagination','both'),('','','comments_per_page','10'),('','','comments_tree_order','0'),('','','comment_maxlength','1000'),('','','comment_minlength','0'),('','','comment_title','0'),('','','delete_mode','0'),('','','display_author','name'),('','','emailprotection','1,9'),('','','enable_autocensor','1,9'),('','','enable_bbcode_b','6,7,2,3,4,5,8'),('','','enable_bbcode_code','2,3,4,5,6,7,8'),('','','enable_bbcode_hide','6,7,2,3,4,5,8'),('','','enable_bbcode_i','6,7,2,3,4,5,8'),('','','enable_bbcode_img','6,7,2,3,4,5,8'),('','','enable_bbcode_list','6,7,2,3,4,5,8'),('','','enable_bbcode_quote','1,9,6,7,2,3,4,5,8'),('','','enable_bbcode_s','6,7,2,3,4,5,8'),('','','enable_bbcode_u','6,7,2,3,4,5,8'),('','','enable_bbcode_url','6,7,2,3,4,5,8'),('','','enable_blacklist','0'),('','','enable_captcha','1,9'),('','','enable_categories','11,14,16,17'),('','','enable_comment_length_check','1,9,2'),('','','enable_comment_maxlength_check',''),('','','enable_custom_bbcode','0'),('','','enable_geshi','0'),('','','enable_gravatar',''),('','','enable_nested_quotes','1'),('','','enable_notification','0'),('','','enable_plugins','1'),('','','enable_quick_moderation','0'),('','','enable_reports','1'),('','','enable_rss','1'),('','','enable_smilies','1'),('','','enable_subscribe','1,9,6,7,2,3,4,5,8'),('','','enable_username_check','1'),('','','enable_voting','1'),('','','feed_limit','100'),('','','floodprotection','1,9,2,3,4'),('','','flood_time','30'),('','','forbidden_names','administrator,moderator'),('','','form_position','0'),('','','form_show','1'),('','','link_maxlength','50'),('','','load_cached_comments','1'),('','','max_comments_per_object','0'),('','','merge_time','0'),('','','message_banned',''),('','','message_locked','Comments are now closed for this entry'),('','','message_policy_post',''),('','','message_policy_whocancomment','You have no rights to post comments'),('','','notification_email',''),('','','notification_type','1,2'),('','','reports_before_unpublish','0'),('','','reports_per_comment','0'),('','','report_reason_required','1'),('','','show_commentlength','1'),('','','show_policy','1,9,2'),('','','smilies',':D	laugh.gif\n:lol:	lol.gif\n:-)	smile.gif\n;-)	wink.gif\n8)	cool.gif\n:-|	normal.gif\n:-*	whistling.gif\n:oops:	redface.gif\n:sad:	sad.gif\n:cry:	cry.gif\n:o	surprised.gif\n:-?	confused.gif\n:-x	sick.gif\n:eek:	shocked.gif\n:zzz	sleeping.gif\n:P	tongue.gif\n:roll:	rolleyes.gif\n:sigh:	unsure.gif'),('','','smilies_path','/components/com_jcomments/images/smilies/'),('','','template','default'),('','','template_view','list'),('','','username_maxlength','20'),('','','word_maxlength','50');
/*!40000 ALTER TABLE `ecs_jcomments_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_smilies`
--

DROP TABLE IF EXISTS `ecs_jcomments_smilies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_smilies` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(39) NOT NULL DEFAULT '',
  `alias` varchar(39) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_smilies`
--

LOCK TABLES `ecs_jcomments_smilies` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_smilies` DISABLE KEYS */;
INSERT INTO `ecs_jcomments_smilies` VALUES (1,':D','','laugh.gif','Laugh',1,1,0,'0000-00-00 00:00:00'),(2,':lol:','','lol.gif','Lol',1,2,0,'0000-00-00 00:00:00'),(3,':-)','','smile.gif','Smile',1,3,0,'0000-00-00 00:00:00'),(4,';-)','','wink.gif','Wink',1,4,0,'0000-00-00 00:00:00'),(5,'8)','','cool.gif','Cool',1,5,0,'0000-00-00 00:00:00'),(6,':-|','','normal.gif','Normal',1,6,0,'0000-00-00 00:00:00'),(7,':-*','','whistling.gif','Whistling',1,7,0,'0000-00-00 00:00:00'),(8,':oops:','','redface.gif','Redface',1,8,0,'0000-00-00 00:00:00'),(9,':sad:','','sad.gif','Sad',1,9,0,'0000-00-00 00:00:00'),(10,':cry:','','cry.gif','Cry',1,10,0,'0000-00-00 00:00:00'),(11,':o','','surprised.gif','Surprised',1,11,0,'0000-00-00 00:00:00'),(12,':-?','','confused.gif','Confused',1,12,0,'0000-00-00 00:00:00'),(13,':-x','','sick.gif','Sick',1,13,0,'0000-00-00 00:00:00'),(14,':eek:','','shocked.gif','Shocked',1,14,0,'0000-00-00 00:00:00'),(15,':zzz','','sleeping.gif','Sleeping',1,15,0,'0000-00-00 00:00:00'),(16,':P','','tongue.gif','Tongue',1,16,0,'0000-00-00 00:00:00'),(17,':roll:','','rolleyes.gif','Rolleyes',1,17,0,'0000-00-00 00:00:00'),(18,':sigh:','','unsure.gif','Unsure',1,18,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ecs_jcomments_smilies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_subscriptions`
--

DROP TABLE IF EXISTS `ecs_jcomments_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_subscriptions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) unsigned NOT NULL DEFAULT '0',
  `object_group` varchar(255) NOT NULL DEFAULT '',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(255) NOT NULL DEFAULT '',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `source` varchar(255) NOT NULL DEFAULT '',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_object` (`object_id`,`object_group`),
  KEY `idx_lang` (`lang`),
  KEY `idx_source` (`source`),
  KEY `idx_hash` (`hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_subscriptions`
--

LOCK TABLES `ecs_jcomments_subscriptions` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_jcomments_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_version`
--

DROP TABLE IF EXISTS `ecs_jcomments_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_version` (
  `version` varchar(16) NOT NULL DEFAULT '',
  `previous` varchar(16) NOT NULL DEFAULT '',
  `installed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_version`
--

LOCK TABLES `ecs_jcomments_version` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_jcomments_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_jcomments_votes`
--

DROP TABLE IF EXISTS `ecs_jcomments_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_jcomments_votes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `commentid` int(11) unsigned NOT NULL DEFAULT '0',
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_comment` (`commentid`,`userid`),
  KEY `idx_user` (`userid`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_jcomments_votes`
--

LOCK TABLES `ecs_jcomments_votes` WRITE;
/*!40000 ALTER TABLE `ecs_jcomments_votes` DISABLE KEYS */;
INSERT INTO `ecs_jcomments_votes` VALUES (1,5,438,'192.168.0.100','2017-05-07 21:03:08',-1),(2,4,438,'192.168.0.100','2017-05-07 21:03:11',1);
/*!40000 ALTER TABLE `ecs_jcomments_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_languages`
--

DROP TABLE IF EXISTS `ecs_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_languages`
--

LOCK TABLES `ecs_languages` WRITE;
/*!40000 ALTER TABLE `ecs_languages` DISABLE KEYS */;
INSERT INTO `ecs_languages` VALUES (1,0,'en-GB','English (UK)','English (UK)','en','en_gb','','','','',1,1,1);
/*!40000 ALTER TABLE `ecs_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_menu`
--

DROP TABLE IF EXISTS `ecs_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_path` (`path`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_menu`
--

LOCK TABLES `ecs_menu` WRITE;
/*!40000 ALTER TABLE `ecs_menu` DISABLE KEYS */;
INSERT INTO `ecs_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,91,0,'*',0),(2,'main','com_banners','Banners','','Banners','index.php?option=com_banners','component',1,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1),(3,'main','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1),(4,'main','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',1,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1),(5,'main','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1),(6,'main','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',1,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1),(7,'main','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',1,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',35,40,0,'*',1),(8,'main','com_contact_contacts','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',1,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',36,37,0,'*',1),(9,'main','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',1,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',38,39,0,'*',1),(10,'main','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',1,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',41,44,0,'*',1),(11,'main','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',1,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',42,43,0,'*',1),(13,'main','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',1,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',45,50,0,'*',1),(14,'main','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',1,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',46,47,0,'*',1),(15,'main','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',1,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',48,49,0,'*',1),(16,'main','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',1,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',51,52,0,'*',1),(17,'main','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',1,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',53,54,0,'*',1),(18,'main','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',1,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',55,56,0,'*',1),(19,'main','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',57,58,0,'*',1),(20,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',1,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',59,60,0,'',1),(21,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',1,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',61,62,0,'*',1),(101,'mainmenu','首页','home','','home','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"0\",\"link_titles\":\"0\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"0\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"0\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"0\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',11,12,1,'*',0),(102,'main','com_associations','multilingual-associations','','multilingual-associations','index.php?option=com_associations','component',1,1,1,34,0,'0000-00-00 00:00:00',0,1,'class:associations',0,'{}',63,64,0,'*',1),(103,'mainmenu','工作','2017-04-26-09-21-11','','2017-04-26-09-21-11','#','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"dropdown\",\"menu-anchor_css\":\"dropdown\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',25,32,0,'*',0),(104,'usermenu','用户登录','2017-04-26-10-20-21','','2017-04-26-10-20-21','index.php?option=com_users&view=login','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"loginredirectchoice\":\"1\",\"login_redirect_url\":\"\",\"login_redirect_menuitem\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logoutredirectchoice\":\"1\",\"logout_redirect_url\":\"\",\"logout_redirect_menuitem\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',65,66,0,'*',0),(105,'usermenu','工作类','2017-04-26-11-05-49','','2017-04-26-11-05-49','index.php?option=com_content&view=categories&id=2','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination_limit\":\"0\",\"filter_field\":\"hide\",\"show_headings\":\"0\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"display_num\":\"10\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',69,70,0,'*',0),(106,'about','联系我','2017-04-27-07-50-19','','2017-04-27-07-50-19','index.php?option=com_contact&view=category&id=4','component',1,1,1,8,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_subcat_desc\":\"\",\"show_cat_items\":\"\",\"filter_field\":\"\",\"show_pagination_limit\":\"\",\"show_headings\":\"\",\"show_image_heading\":\"\",\"show_position_headings\":\"\",\"show_email_headings\":\"\",\"show_telephone_headings\":\"\",\"show_mobile_headings\":\"\",\"show_fax_headings\":\"\",\"show_suburb_headings\":\"\",\"show_state_headings\":\"\",\"show_country_headings\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"initial_sort\":\"\",\"presentation_style\":\"\",\"show_contact_category\":\"\",\"show_contact_list\":\"\",\"show_tags\":\"\",\"show_info\":\"\",\"show_name\":\"\",\"show_position\":\"\",\"show_email\":\"\",\"show_street_address\":\"\",\"show_suburb\":\"\",\"show_state\":\"\",\"show_postcode\":\"\",\"show_country\":\"\",\"show_telephone\":\"\",\"show_mobile\":\"\",\"show_fax\":\"\",\"show_webpage\":\"\",\"show_image\":\"\",\"allow_vcard\":\"\",\"show_misc\":\"\",\"show_articles\":\"\",\"articles_display_num\":\"\",\"show_links\":\"\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"show_email_form\":\"\",\"show_email_copy\":\"\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"\",\"custom_reply\":\"\",\"redirect\":\"\",\"show_feed_link\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',33,34,0,'*',0),(107,'mainmenu','家电','2017-04-28-03-14-25','','2017-04-28-03-14-25','index.php?option=com_content&view=category&id=18','component',0,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',13,14,0,'*',0),(108,'mainmenu','网站','2017-04-28-03-15-07','','2017-04-28-03-15-07','#','url',1,1,1,0,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"menu-anchor_title\":\"dropdown\",\"menu-anchor_css\":\"dropdown\",\"menu-anchor_rel\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1}',15,24,0,'*',0),(109,'mainmenu','网站开发','2017-04-28-03-17-31','','2017-04-28-03-15-07/2017-04-28-03-17-31','index.php?option=com_content&view=categories&id=13','component',1,108,2,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_base_description\":\"\",\"categories_description\":\"\",\"maxLevelcat\":\"\",\"show_empty_categories_cat\":\"\",\"show_subcat_desc_cat\":\"\",\"show_cat_num_articles_cat\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"modified\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"display_num\":\"10\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',20,21,0,'*',0),(110,'mainmenu','网页设计','diy','','2017-04-28-03-15-07/diy','index.php?option=com_content&view=category&id=14','component',1,108,2,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',16,17,0,'*',0),(111,'mainmenu','主板','2017-04-28-03-42-14','','2017-04-28-03-15-07/2017-04-28-03-42-14','index.php?option=com_content&view=category&id=15','component',-2,108,2,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"0\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',18,19,0,'*',0),(112,'mainmenu','关于','2017-04-29-05-42-40','','2017-04-29-05-42-40','index.php?option=com_content&view=article&id=5','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"0\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"0\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"\",\"show_vote\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"0\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',67,68,0,'*',0),(133,'main','COM_JCOMMENTS','com-jcomments','','com-jcomments','index.php?option=com_jcomments','component',1,1,1,10025,0,'0000-00-00 00:00:00',0,1,'components/com_jcomments/assets/images/icon-16-jcomments.png',0,'{}',71,90,0,'',1),(134,'main','COM_JCOMMENTS_COMMENTS','com-jcomments-comments','','com-jcomments/com-jcomments-comments','index.php?option=com_jcomments&view=comments','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-comments',0,'{}',72,73,0,'',1),(135,'main','COM_JCOMMENTS_SETTINGS','com-jcomments-settings','','com-jcomments/com-jcomments-settings','index.php?option=com_jcomments&view=settings','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-settings',0,'{}',74,75,0,'',1),(136,'main','COM_JCOMMENTS_SMILIES','com-jcomments-smilies','','com-jcomments/com-jcomments-smilies','index.php?option=com_jcomments&view=smilies','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-smilies',0,'{}',76,77,0,'',1),(137,'main','COM_JCOMMENTS_SUBSCRIPTIONS','com-jcomments-subscriptions','','com-jcomments/com-jcomments-subscriptions','index.php?option=com_jcomments&view=subscriptions','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-subscriptions',0,'{}',78,79,0,'',1),(138,'main','COM_JCOMMENTS_CUSTOM_BBCODE','com-jcomments-custom-bbcode','','com-jcomments/com-jcomments-custom-bbcode','index.php?option=com_jcomments&view=custombbcodes','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-custombbcodes',0,'{}',80,81,0,'',1),(139,'main','COM_JCOMMENTS_BLACKLIST','com-jcomments-blacklist','','com-jcomments/com-jcomments-blacklist','index.php?option=com_jcomments&view=blacklists','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-blacklist',0,'{}',82,83,0,'',1),(140,'main','COM_JCOMMENTS_MAILQ','com-jcomments-mailq','','com-jcomments/com-jcomments-mailq','index.php?option=com_jcomments&view=mailq','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-mailq',0,'{}',84,85,0,'',1),(141,'main','COM_JCOMMENTS_IMPORT','com-jcomments-import','','com-jcomments/com-jcomments-import','index.php?option=com_jcomments&view=import','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-import',0,'{}',86,87,0,'',1),(142,'main','COM_JCOMMENTS_ABOUT','com-jcomments-about','','com-jcomments/com-jcomments-about','index.php?option=com_jcomments&view=about','component',1,133,2,10025,0,'0000-00-00 00:00:00',0,1,'class:jcomments-about',0,'{}',88,89,0,'',1),(143,'mainmenu','网站模板','2017-05-15-03-43-32','','2017-04-28-03-15-07/2017-05-15-03-43-32','index.php?option=com_content&view=category&id=2','component',1,108,2,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',22,23,0,'*',0),(144,'mainmenu','提供服务','2017-05-17-00-48-05','','2017-04-26-09-21-11/2017-05-17-00-48-05','index.php?option=com_content&view=category&id=8','component',1,103,2,22,437,'2017-05-28 23:40:05',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"0\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',26,27,0,'*',0),(145,'mainmenu','工作流程','2017-05-17-00-51-02','','2017-04-26-09-21-11/2017-05-17-00-51-02','index.php?option=com_content&view=category&id=11','component',1,103,2,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"0\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"0\",\"list_show_author\":\"0\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',28,29,0,'*',0),(146,'mainmenu','技术文档','2017-05-17-01-03-36','','2017-04-26-09-21-11/2017-05-17-01-03-36','index.php?option=com_content&view=category&id=19','component',1,103,2,22,0,'0000-00-00 00:00:00',0,1,' ',0,'{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title_text\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"list_show_votes\":\"\",\"list_show_ratings\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_featured\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"menu_show\":1,\"page_title\":\"\",\"show_page_heading\":\"\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0}',30,31,0,'*',0);
/*!40000 ALTER TABLE `ecs_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_menu_types`
--

DROP TABLE IF EXISTS `ecs_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0',
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_menu_types`
--

LOCK TABLES `ecs_menu_types` WRITE;
/*!40000 ALTER TABLE `ecs_menu_types` DISABLE KEYS */;
INSERT INTO `ecs_menu_types` VALUES (1,54,'mainmenu','主菜单','前台顶部菜单',0),(2,62,'usermenu','用户菜单','登录、注册、重置密码等',0),(3,78,'about','关于','',0);
/*!40000 ALTER TABLE `ecs_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_messages`
--

DROP TABLE IF EXISTS `ecs_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_messages`
--

LOCK TABLES `ecs_messages` WRITE;
/*!40000 ALTER TABLE `ecs_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_messages_cfg`
--

DROP TABLE IF EXISTS `ecs_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_messages_cfg`
--

LOCK TABLES `ecs_messages_cfg` WRITE;
/*!40000 ALTER TABLE `ecs_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_modules`
--

DROP TABLE IF EXISTS `ecs_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_modules`
--

LOCK TABLES `ecs_modules` WRITE;
/*!40000 ALTER TABLE `ecs_modules` DISABLE KEYS */;
INSERT INTO `ecs_modules` VALUES (2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*'),(3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*'),(9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*'),(10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*'),(13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*'),(14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*'),(15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*'),(79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*'),(87,57,'顶部菜单','','',1,'topmenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,0,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(88,61,'首页banner','','',1,'banner',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_banners',1,0,'{\"target\":\"1\",\"count\":5,\"cid\":\"0\",\"catid\":[\"\"],\"tag_search\":\"0\",\"ordering\":\"0\",\"header_text\":\"\",\"footer_text\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(89,63,'首页介绍','','<div class=\"tm-badge\" style=\"box-sizing: border-box; font-size: 14px; font-family: Lato; text-transform: uppercase; letter-spacing: 1.5px; text-align: center;\"><span style=\"box-sizing: border-box; color: #006699;\">e cube studio introduce</span></div>\r\n<h3 class=\"uk-h2\" style=\"box-sizing: border-box; font-family: \'Playfair Display\'; font-weight: 300; line-height: 48px; color: #333333; margin: 15px 0px; font-size: 42px; text-align: center;\"><span style=\"font-size: 24pt;\"><strong><span style=\"color: #006699;\">网站说明</span></strong></span></h3>\r\n<p style=\"text-align: center;\"><span style=\"font-size: 12pt;\"><em><span style=\"color: #808080;\">e魔坊工作室网站为一个类博客站点，定期发布相关领域及经验文章，一个展示平台，网站功能正不断扩充中</span></em></span></p>\r\n<p class=\"uk-article-lead\" style=\"box-sizing: border-box; margin: 25px 0px; color: #444444; font-size: 18px; line-height: 28px; font-family: Lato; text-align: center;\"><span style=\"color: #000000;\">网站提供工作室的各种服务信息及说明，让客户更方便了解我们，以及有需求时，及时找到我们</span></p>\r\n<p class=\"uk-article-lead\" style=\"box-sizing: border-box; margin: 25px 0px; color: #444444; font-size: 18px; line-height: 28px; font-family: Lato; text-align: center;\"><span style=\"color: #000000;\">我们会将工作及生活日常，有甄选地发布到网站作为记录，如你有兴于此类工作，欢迎一起交流<img src=\"media/editors/tinymce/plugins/emoticons/img/smiley-laughing.gif\" alt=\"laughing\" /></span></p>\r\n<p class=\"uk-article-lead\" style=\"box-sizing: border-box; margin: 25px 0px; color: #444444; font-size: 18px; line-height: 28px; font-family: Lato; text-align: center;\">本网站提供工作室服务详细<br />参阅 <a href=\"index.php?option=com_content&amp;view=article&amp;id=5&amp;catid=9\">关于我们</a><br />联系邮箱: e@e-cube.tech</p>',1,'position-8',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_introduce\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(90,64,'首页滚动图','','',1,'position-10',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_bt_contentslider',1,0,'{\"moduleclass_sfx\":\"\",\"layout\":\"_:default\",\"content_title\":\"\",\"content_link\":\"\",\"butlet\":\"1\",\"navigation_top\":\"0\",\"navigation_right\":\"0\",\"next_back\":\"0\",\"module_width\":\"auto\",\"module_height\":\"auto\",\"auto_height\":\"1\",\"items_per_cols\":\"2\",\"items_per_rows\":\"2\",\"source\":\"category\",\"article_ids\":\"\",\"k2_article_ids\":\"\",\"btportfolio_article_ids\":\"\",\"category\":[\"8\"],\"easyblog_article_ids\":\"\",\"auto_category\":\"0\",\"sub_categories\":\"0\",\"exclude_categories\":\"\",\"limit_items\":\"4\",\"limit_items_for_each\":\"0\",\"user_id\":\"0\",\"show_featured\":\"2\",\"ordering\":\"created-asc\",\"content_plugin\":\"0\",\"use_introimg\":\"1\",\"use_caption\":\"0\",\"use_linka\":\"0\",\"show_title\":\"0\",\"limit_title_by\":\"word\",\"title_max_chars\":\"8\",\"show_intro\":\"0\",\"limit_description_by\":\"char\",\"description_max_chars\":\"100\",\"show_category_name\":\"0\",\"show_category_name_as_link\":\"0\",\"show_readmore\":\"0\",\"show_date\":\"0\",\"show_author\":\"0\",\"show_image\":\"1\",\"checkimg_fulltext\":\"0\",\"check_image_exist\":\"0\",\"image_align\":\"center\",\"equalHeight\":\"1\",\"image_thumb\":\"0\",\"thumbnail_width\":\"387\",\"thumbnail_height\":\"258\",\"image_quality\":\"100\",\"default_thumb\":\"1\",\"touch_screen\":\"0\",\"hovereffect\":\"0\",\"modalbox\":\"0\",\"next_back_effect\":\"slide\",\"bullet_effect\":\"slide\",\"pause_hover\":\"1\",\"interval\":\"5000\",\"duration\":\"500\",\"effect\":\"easeInOutSine\",\"auto_start\":\"0\",\"auto_strip_tags\":\"1\",\"open_target\":\"_blank\",\"loadJquery\":\"auto\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(91,67,'页脚footer','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_footer',1,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(92,68,'成员worker','','<div id=\"profileCarousel\" class=\"carousel slide\"><!-- Wrapper for carousel items -->\r\n<div class=\"carousel-inner\">\r\n<div class=\"item active\">\r\n<div class=\"ih-item circle colored effect7 left_to_right\" style=\"margin: 0 auto;\">\r\n<div class=\"ih-item-wrapper\">\r\n<div class=\"img\"><img src=\"images/avatar/avatar1.jpg\" alt=\"\" /></div>\r\n<div class=\"info\">\r\n<h3>项勇敢</h3>\r\n<p>家电维修技师</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-xs-12 text-center\"> </div>\r\n<div class=\"col-sm-4 col-xs-12 text-center\">\r\n<blockquote style=\"padding: 0px; margin: 15px auto; border-left: 0px solid transparent; font-size: 18px; line-height: 28px; font-style: italic; font-family: \'Playfair Display\';\">\"您身边的家电医生，从事家电维修20多年，<span style=\"color: #ff6699;\"><strong>预约上门</strong>，<strong>快速诊断各种家电故障</strong></span>\"</blockquote>\r\n<blockquote style=\"padding: 0px; margin: 0;\"><a href=\"index.php?option=com_contact&amp;view=contact&amp;id=2&amp;catid=4\" rel=\"alternate\">更多信息</a></blockquote>\r\n</div>\r\n<div class=\"col-sm-4 col-xs-12 text-center\"> </div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"item\">\r\n<div class=\"ih-item circle colored effect7 left_to_right\" style=\"margin: 0 auto;\">\r\n<div class=\"ih-item-wrapper\">\r\n<div class=\"img\"><img src=\"images/avatar/avatar2.jpg\" alt=\"\" /></div>\r\n<div class=\"info\">\r\n<h3>项 峰</h3>\r\n<p>网站开发</p>\r\n</div>\r\n</div>\r\n</div>\r\n<div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 col-xs-12 text-center\">\r\n<p style=\"margin: 15px auto;\"> </p>\r\n</div>\r\n<div class=\"col-sm-4 col-xs-12 text-center\">\r\n<div>\r\n<blockquote style=\"padding: 0px; margin: 15px auto; border-left: 0px solid transparent; font-size: 18px; font-style: italic; font-family: \'Playfair Display\';\">\"计算机网络专业，从事互联网工作多年，承接<span style=\"color: #ff6699;\"><strong>网站设计及开发，计算机系统维护</strong></span>，有你所需，竭诚服务\"</blockquote>\r\n<blockquote style=\"padding: 0px; margin: 0;\"><a href=\"index.php?option=com_contact&amp;view=contact&amp;id=1&amp;catid=4\">更多信息</a></blockquote>\r\n</div>\r\n</div>\r\n<div class=\"col-sm-4 col-xs-12 text-center\">\r\n<p style=\"margin: 0px;\"> </p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!-- Carousel indicators -->\r\n<ol class=\"carousel-indicators\">\r\n<li class=\"active slide-one\" data-target=\"#profileCarousel\" data-slide-to=\"0\"> </li>\r\n<li class=\"slide-two\" data-target=\"#profileCarousel\" data-slide-to=\"1\"> </li>\r\n</ol>\r\n</div>',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(93,84,'面包屑','','',1,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,0,'{\"showHere\":\"1\",\"showHome\":\"1\",\"homeText\":\"\",\"showLast\":\"1\",\"separator\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"cache_time\":\"0\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*'),(95,94,'Social share','','',1,'',0,'0000-00-00 00:00:00','2017-05-11 06:57:12','0000-00-00 00:00:00',1,'mod_je_social',1,0,'{\"iconSize\":\"24\",\"Icon3\":\"1\",\"Icon4\":\"1\",\"Icon5\":\"1\",\"Icon9\":\"1\",\"Icon10\":\"1\",\"Icon17\":\"1\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `ecs_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_modules_menu`
--

DROP TABLE IF EXISTS `ecs_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_modules_menu`
--

LOCK TABLES `ecs_modules_menu` WRITE;
/*!40000 ALTER TABLE `ecs_modules_menu` DISABLE KEYS */;
INSERT INTO `ecs_modules_menu` VALUES (2,0),(3,0),(4,0),(6,0),(7,0),(8,0),(9,0),(10,0),(12,0),(13,0),(14,0),(15,0),(79,0),(86,0),(87,0),(88,101),(89,101),(90,101),(91,0),(92,101),(93,-104),(93,-101),(95,0);
/*!40000 ALTER TABLE `ecs_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_newsfeeds`
--

DROP TABLE IF EXISTS `ecs_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_newsfeeds`
--

LOCK TABLES `ecs_newsfeeds` WRITE;
/*!40000 ALTER TABLE `ecs_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_overrider`
--

DROP TABLE IF EXISTS `ecs_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_overrider`
--

LOCK TABLES `ecs_overrider` WRITE;
/*!40000 ALTER TABLE `ecs_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_postinstall_messages`
--

DROP TABLE IF EXISTS `ecs_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_postinstall_messages`
--

LOCK TABLES `ecs_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `ecs_postinstall_messages` DISABLE KEYS */;
INSERT INTO `ecs_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',0),(2,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',0),(3,700,'COM_CPANEL_MSG_STATS_COLLECTION_TITLE','COM_CPANEL_MSG_STATS_COLLECTION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/statscollection.php','admin_postinstall_statscollection_condition','3.5.0',0),(4,700,'PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_BODY','PLG_SYSTEM_UPDATENOTIFICATION_POSTINSTALL_UPDATECACHETIME_ACTION','plg_system_updatenotification',1,'action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_action','site://plugins/system/updatenotification/postinstall/updatecachetime.php','updatecachetime_postinstall_condition','3.6.3',1),(5,700,'COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_TITLE','COM_CPANEL_MSG_JOOMLA40_PRE_CHECKS_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/joomla40checks.php','admin_postinstall_joomla40checks_condition','3.7.0',1),(6,700,'TPL_HATHOR_MESSAGE_POSTINSTALL_TITLE','TPL_HATHOR_MESSAGE_POSTINSTALL_BODY','TPL_HATHOR_MESSAGE_POSTINSTALL_ACTION','tpl_hathor',1,'action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_action','admin://templates/hathor/postinstall/hathormessage.php','hathormessage_postinstall_condition','3.7.0',1);
/*!40000 ALTER TABLE `ecs_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_redirect_links`
--

DROP TABLE IF EXISTS `ecs_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301',
  PRIMARY KEY (`id`),
  KEY `idx_old_url` (`old_url`(100)),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_redirect_links`
--

LOCK TABLES `ecs_redirect_links` WRITE;
/*!40000 ALTER TABLE `ecs_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_schemas`
--

DROP TABLE IF EXISTS `ecs_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_schemas`
--

LOCK TABLES `ecs_schemas` WRITE;
/*!40000 ALTER TABLE `ecs_schemas` DISABLE KEYS */;
INSERT INTO `ecs_schemas` VALUES (700,'3.7.0-2017-04-19');
/*!40000 ALTER TABLE `ecs_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_session`
--

DROP TABLE IF EXISTS `ecs_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned DEFAULT NULL,
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_session`
--

LOCK TABLES `ecs_session` WRITE;
/*!40000 ALTER TABLE `ecs_session` DISABLE KEYS */;
INSERT INTO `ecs_session` VALUES ('03m9r0kabvnuhlds4dk6fjetc1',0,1,'1500346056','joomla|s:800:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwMDM0NjA1NjtzOjQ6Imxhc3QiO2k6MTUwMDM0NjA1NjtzOjM6Im5vdyI7aToxNTAwMzQ2MDU2O31zOjU6InRva2VuIjtzOjMyOiJDbXlsaXpMTmdPZ25LSTd4QzZBQklGdjR6M1N6azdYdCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE1OiJfX2Vhc3ljYWxjY2hlY2siO086ODoic3RkQ2xhc3MiOjE6e3M6MTI6InJlZGlyZWN0X3VybCI7Tjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('10efs3l298853emc5fqerjn6l4',0,1,'1500346648','joomla|s:800:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToyNztzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDAzNDYxMjA7czo0OiJsYXN0IjtpOjE1MDAzNDY2NDc7czozOiJub3ciO2k6MTUwMDM0NjY0ODt9czo1OiJ0b2tlbiI7czozMjoiV3Q0dWZzQlRxb3ZHRkFrNFRCRXJ6bG9vYlIyOVhlTkUiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fXM6NDoidXNlciI7Tzo1OiJKVXNlciI6MTp7czoyOiJpZCI7aTowO319czoxNToiX19lYXN5Y2FsY2NoZWNrIjtPOjg6InN0ZENsYXNzIjoxOntzOjEyOiJyZWRpcmVjdF91cmwiO047fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',0,''),('18hjdp69b4at7r76l2tok0p7v7',0,1,'1500346034','joomla|s:800:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwMDM0NjAzNDtzOjQ6Imxhc3QiO2k6MTUwMDM0NjAzNDtzOjM6Im5vdyI7aToxNTAwMzQ2MDM0O31zOjU6InRva2VuIjtzOjMyOiJSeDU2Z0dxN2NQWEFQOEpEeWtwYkNRTDhWU2tYNTVHOSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE1OiJfX2Vhc3ljYWxjY2hlY2siO086ODoic3RkQ2xhc3MiOjE6e3M6MTI6InJlZGlyZWN0X3VybCI7Tjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('1vnfilsn1ebcastpve9jbn0276',0,1,'1500346011','joomla|s:800:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwMDM0NjAxMTtzOjQ6Imxhc3QiO2k6MTUwMDM0NjAxMTtzOjM6Im5vdyI7aToxNTAwMzQ2MDExO31zOjU6InRva2VuIjtzOjMyOiJRVVR1NTFaQkRpZFhBNlFGT21OUW9WNlRLN2N2ZW5rTyI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE1OiJfX2Vhc3ljYWxjY2hlY2siO086ODoic3RkQ2xhc3MiOjE6e3M6MTI6InJlZGlyZWN0X3VybCI7Tjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('6d4qkhja6toqmjgldpcn34jm86',0,1,'1500346072','joomla|s:800:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwMDM0NjA3MjtzOjQ6Imxhc3QiO2k6MTUwMDM0NjA3MjtzOjM6Im5vdyI7aToxNTAwMzQ2MDcyO31zOjU6InRva2VuIjtzOjMyOiJ0RVByUGM4UW5oT2xkSjhUek5EQVFEektLd3ZnenkxYSI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE1OiJfX2Vhc3ljYWxjY2hlY2siO086ODoic3RkQ2xhc3MiOjE6e3M6MTI6InJlZGlyZWN0X3VybCI7Tjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,''),('ps71h9fjoip3ian4p9sdpnmu86',1,0,'1500346667','joomla|s:1868:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjo0OntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aTo2OTtzOjU6InRpbWVyIjtPOjg6InN0ZENsYXNzIjozOntzOjU6InN0YXJ0IjtpOjE1MDAzNDYxNzU7czo0OiJsYXN0IjtpOjE1MDAzNDY2NjY7czozOiJub3ciO2k6MTUwMDM0NjY2Nzt9czo1OiJ0b2tlbiI7czozMjoiYVVhWFp0NEhJUFZQQllZdGRsZFg2U1Z2QThpTG9xOWMiO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjM6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6NDp7czoxMDoiY29tX2NvbmZpZyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo2OiJjb25maWciO086ODoic3RkQ2xhc3MiOjE6e3M6NjoiZ2xvYmFsIjtPOjg6InN0ZENsYXNzIjoxOntzOjQ6ImRhdGEiO047fX19czoxMzoiY29tX2luc3RhbGxlciI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo3OiJtZXNzYWdlIjtzOjA6IiI7czoxNzoiZXh0ZW5zaW9uX21lc3NhZ2UiO3M6MDoiIjt9czoxNDoiY29tX2NhdGVnb3JpZXMiO086ODoic3RkQ2xhc3MiOjI6e3M6MTA6ImNhdGVnb3JpZXMiO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiY29udGVudCI7Tzo4OiJzdGRDbGFzcyI6Mjp7czo2OiJmaWx0ZXIiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiZXh0ZW5zaW9uIjtzOjExOiJjb21fY29udGVudCI7fXM6NDoibGlzdCI7YTo0OntzOjk6ImRpcmVjdGlvbiI7czozOiJhc2MiO3M6NToibGltaXQiO3M6MjoiMjAiO3M6ODoib3JkZXJpbmciO3M6NToiYS5sZnQiO3M6NToic3RhcnQiO2Q6MDt9fX1zOjQ6ImVkaXQiO086ODoic3RkQ2xhc3MiOjE6e3M6ODoiY2F0ZWdvcnkiO086ODoic3RkQ2xhc3MiOjI6e3M6MjoiaWQiO2E6MDp7fXM6NDoiZGF0YSI7Tjt9fX1zOjExOiJjb21fcGx1Z2lucyI7Tzo4OiJzdGRDbGFzcyI6MTp7czo0OiJlZGl0IjtPOjg6InN0ZENsYXNzIjoxOntzOjY6InBsdWdpbiI7Tzo4OiJzdGRDbGFzcyI6Mjp7czoyOiJpZCI7YTowOnt9czo0OiJkYXRhIjtOO319fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO3M6MzoiNDM3Ijt9czoxMToiYXBwbGljYXRpb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NToicXVldWUiO047fX1zOjE1OiJfX2Vhc3ljYWxjY2hlY2siO086ODoic3RkQ2xhc3MiOjI6e3M6MTI6InJlZGlyZWN0X3VybCI7TjtzOjIxOiJmYWlsZWRfbG9naW5fYXR0ZW1wdHMiO047fX1zOjE0OiIAKgBpbml0aWFsaXplZCI7YjowO3M6OToic2VwYXJhdG9yIjtzOjE6Ii4iO30=\";',437,'ecube'),('t08oe6s4c07hbn79vd24kvtag2',0,1,'1500346020','joomla|s:800:\"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjozOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjI6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjM6e3M6NzoiY291bnRlciI7aToxO3M6NToidGltZXIiO086ODoic3RkQ2xhc3MiOjM6e3M6NToic3RhcnQiO2k6MTUwMDM0NjAyMDtzOjQ6Imxhc3QiO2k6MTUwMDM0NjAyMDtzOjM6Im5vdyI7aToxNTAwMzQ2MDIwO31zOjU6InRva2VuIjtzOjMyOiJxRlJMTlIybW9hNFNVUTRpZFRhTUgwanBOM2pBeUJocCI7fXM6ODoicmVnaXN0cnkiO086MjQ6Ikpvb21sYVxSZWdpc3RyeVxSZWdpc3RyeSI6Mzp7czo3OiIAKgBkYXRhIjtPOjg6InN0ZENsYXNzIjowOnt9czoxNDoiACoAaW5pdGlhbGl6ZWQiO2I6MDtzOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX1zOjE1OiJfX2Vhc3ljYWxjY2hlY2siO086ODoic3RkQ2xhc3MiOjE6e3M6MTI6InJlZGlyZWN0X3VybCI7Tjt9fXM6MTQ6IgAqAGluaXRpYWxpemVkIjtiOjA7czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==\";',0,'');
/*!40000 ALTER TABLE `ecs_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_tags`
--

DROP TABLE IF EXISTS `ecs_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`(100)),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`(100)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_tags`
--

LOCK TABLES `ecs_tags` WRITE;
/*!40000 ALTER TABLE `ecs_tags` DISABLE KEYS */;
INSERT INTO `ecs_tags` VALUES (1,0,0,7,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',437,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,1,1,2,1,'2017-04-28-09-19-52','维护','2017-04-28-09-19-52','','<p>计算机网络、系统、服务器维护</p>',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-28 09:19:52','',437,'2017-04-29 14:15:34','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{}',18,'*',1,'2017-04-28 09:19:52','2017-04-28 09:19:52'),(3,1,3,4,1,'2017-04-29-14-09-16','安装','2017-04-29-14-09-16','','<p>监控视频、卫星天线、网络机顶盒等安装服务</p>',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-29 14:09:16','',437,'2017-04-29 14:09:32','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{}',0,'*',1,'2017-04-29 14:09:16','2017-04-29 14:09:16'),(4,1,5,6,1,'2017-04-29-14-14-52','开发','2017-04-29-14-14-52','','<p>网站前后端开发，php\\mysql\\apache</p>',1,0,'2017-04-29 14:14:52',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\"}','','','{\"author\":\"\",\"robots\":\"\"}',437,'2017-04-29 14:14:52','',0,'2017-04-29 14:14:52','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{}',6,'*',1,'2017-04-29 14:14:52','2017-04-29 14:14:52');
/*!40000 ALTER TABLE `ecs_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_template_styles`
--

DROP TABLE IF EXISTS `ecs_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_template_styles`
--

LOCK TABLES `ecs_template_styles` WRITE;
/*!40000 ALTER TABLE `ecs_template_styles` DISABLE KEYS */;
INSERT INTO `ecs_template_styles` VALUES (5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}'),(8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}'),(11,'beez3',0,'0','beez3 - 默认','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\",\"backgroundcolor\":\"#eee\"}'),(14,'ecube',0,'1','ecube - 默认','{\"templateColor\":\"#0088cc\",\"logoFile\":\"\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"fluidContainer\":\"1\"}');
/*!40000 ALTER TABLE `ecs_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_ucm_base`
--

DROP TABLE IF EXISTS `ecs_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_ucm_base`
--

LOCK TABLES `ecs_ucm_base` WRITE;
/*!40000 ALTER TABLE `ecs_ucm_base` DISABLE KEYS */;
INSERT INTO `ecs_ucm_base` VALUES (1,3,1,0),(2,1,1,0);
/*!40000 ALTER TABLE `ecs_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_ucm_content`
--

DROP TABLE IF EXISTS `ecs_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_content_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`(100)),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`(100)),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`(100)),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_ucm_content`
--

LOCK TABLES `ecs_ucm_content` WRITE;
/*!40000 ALTER TABLE `ecs_ucm_content` DISABLE KEYS */;
INSERT INTO `ecs_ucm_content` VALUES (1,'com_content.article','安装服务','bootstrap-tutorial','<p>视频监控、卫星天线、网络机顶盒安装服务</p>\r\n',1,'0000-00-00 00:00:00',0,1,'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',437,'','2017-04-26 11:49:11',437,'2017-05-15 01:47:08','*','2017-04-26 11:49:11','0000-00-00 00:00:00',3,76,'{\"image_intro\":\"images\\/article\\/fix_tool.jpg\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',234,34,3,'','',8,'',1),(2,'com_content.article','关于后端开发介绍','back-end-developing','<p>介绍一些的后端开发知识</p>\r\n',1,'0000-00-00 00:00:00',0,1,'{\"article_layout\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"info_block_show_title\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_associations\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_page_title\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',437,'','2017-04-26 09:38:49',437,'2017-05-11 07:21:17','*','2017-04-26 09:38:49','0000-00-00 00:00:00',1,79,'{\"image_intro\":\"images\\/article\\/back-end-development-slider.jpg\",\"float_intro\":\"left\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',156,75,0,'','',17,'',1);
/*!40000 ALTER TABLE `ecs_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_ucm_history`
--

DROP TABLE IF EXISTS `ecs_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=515 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_ucm_history`
--

LOCK TABLES `ecs_ucm_history` WRITE;
/*!40000 ALTER TABLE `ecs_ucm_history` DISABLE KEYS */;
INSERT INTO `ecs_ucm_history` VALUES (503,17,1,'','2017-05-18 14:53:35',437,4288,'406b2edd5cbbed4114791dfcd7b5ef0daa3624ca','{\"id\":17,\"asset_id\":\"100\",\"title\":\"nice admin\\u54cd\\u5e94\\u5f0f\\u7ba1\\u7406\\u540e\\u53f0\\u6a21\\u677f\",\"alias\":\"nice-admin\",\"introtext\":\"<p>nice admin\\u662f\\u4e00\\u6b3e\\u57fa\\u4e8ebootstrap\\u7684\\u7ba1\\u7406\\u540e\\u53f0\\u6a21\\u677f\\uff0c\\u7b80\\u7ea6\\u6241\\u5e73\\u8bbe\\u8ba1\\u98ce\\u683c\\uff0c\\u4f7f\\u7528\\u4e86\\u57fa\\u4e8ejquery\\u7684\\u7edf\\u8ba1\\u548cchart.js\\u56fe\\u8868\\u7edf\\u8ba1\\u5e93<span style=\\\"font-size: 12.16px;\\\">\\uff0c\\u6a21\\u677f\\u4e3b\\u8981\\u5305\\u62ec\\uff1a\\u7528\\u6237\\u6570\\u636e\\u7edf\\u8ba1\\uff0c\\u56fe\\u8868\\u7cfb\\u7edf\\uff0c\\u4e16\\u754c\\u5730\\u56fe\\uff0c\\u8868\\u5355\\u98ce\\u683c\\u6837\\u5f0f\\uff0c\\u767b\\u5f55\\uff0c\\u4e2a\\u4eba\\u4fe1\\u606f\\u53ca\\u8bc4\\u8bba\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0c\\u5e76\\u96c6\\u6210CKedit\\u7f16\\u8f91\\u5668<\\/span><\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<h1 style=\\\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\\\"><span style=\\\"color: #000000; font-size: 50pt;\\\">Bootstrap<\\/span><\\/h1>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: 36pt;\\\"><a title=\\\"\\u8f7b\\u91cf\\u7ea7\\u52a8\\u6001\\u52a8\\u6001\\u997c\\u56fe\\u8868\\u63d2\\u4ef6\\\" href=\\\"http:\\/\\/rendro.github.io\\/easy-pie-chart\\/\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">EASY PIE CHART<\\/a><\\/span><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\"><span style=\\\"font-size: 36pt;\\\"><a title=\\\"\\u7528\\u4e8e\\u751f\\u6210\\u5fae\\u5c0f\\u7535\\u8c31\\u56fe\\u8868\\u63d2\\u4ef6\\\" href=\\\"http:\\/\\/omnipotent.net\\/jquery.sparkline\\/\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">jQuery Sparklines<\\/a><\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a title=\\\"\\u5236\\u56fe\\u5e93\\\" href=\\\"http:\\/\\/www.chartjs.org\\/\\\" rel=\\\"alternate\\\"><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"http:\\/\\/www.chartjs.org\\/img\\/chartjs-logo.svg\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">Chart.js<\\/h1>\\r\\n<p><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170518\\/nice-admin-templates.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-info btn-lg\\\" href=\\\"tmp\\/Day\\/index.html\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u6f14\\u793a\\u5730\\u5740<\\/a><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-success btn-lg\\\" href=\\\"http:\\/\\/pan.baidu.com\\/s\\/1kV9gWsv\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u4e0b\\u8f7d\\u5730\\u5740<\\/a><\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-05-18 14:07:28\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-18 14:53:35\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-18 14:52:29\",\"publish_up\":\"2017-05-18 14:07:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"13\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(504,17,1,'','2017-05-18 14:55:49',437,4296,'56582e393b851329bafa491546440583c8513091','{\"id\":17,\"asset_id\":\"100\",\"title\":\"nice admin\\u54cd\\u5e94\\u5f0f\\u7ba1\\u7406\\u540e\\u53f0\\u6a21\\u677f\",\"alias\":\"nice-admin\",\"introtext\":\"<p>nice admin\\u662f\\u4e00\\u6b3e\\u57fa\\u4e8ebootstrap\\u7684\\u7ba1\\u7406\\u540e\\u53f0\\u6a21\\u677f\\uff0c\\u7b80\\u7ea6\\u6241\\u5e73\\u8bbe\\u8ba1\\u98ce\\u683c\\uff0c\\u4f7f\\u7528\\u4e86\\u57fa\\u4e8ejquery\\u7684\\u7edf\\u8ba1\\u548cchart.js\\u56fe\\u8868\\u7edf\\u8ba1\\u5e93<span style=\\\"font-size: 12.16px;\\\">\\uff0c\\u6a21\\u677f\\u4e3b\\u8981\\u5305\\u62ec\\uff1a\\u7528\\u6237\\u6570\\u636e\\u7edf\\u8ba1\\uff0c\\u56fe\\u8868\\u7cfb\\u7edf\\uff0c\\u4e16\\u754c\\u5730\\u56fe\\uff0c\\u8868\\u5355\\u98ce\\u683c\\u6837\\u5f0f\\uff0c\\u767b\\u5f55\\uff0c\\u4e2a\\u4eba\\u4fe1\\u606f\\u53ca\\u8bc4\\u8bba\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0c\\u5e76\\u96c6\\u6210CKedit\\u7f16\\u8f91\\u5668<\\/span><\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<h1 style=\\\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\\\"><span style=\\\"color: #000000; font-size: 50pt;\\\">Bootstrap<\\/span><\\/h1>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: 36pt;\\\"><a title=\\\"\\u8f7b\\u91cf\\u7ea7\\u52a8\\u6001\\u52a8\\u6001\\u997c\\u56fe\\u8868\\u63d2\\u4ef6\\\" href=\\\"http:\\/\\/rendro.github.io\\/easy-pie-chart\\/\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">EASY PIE CHART<\\/a><\\/span><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\"><span style=\\\"font-size: 36pt;\\\"><a title=\\\"\\u7528\\u4e8e\\u751f\\u6210\\u5fae\\u5c0f\\u7535\\u8c31\\u56fe\\u8868\\u63d2\\u4ef6\\\" href=\\\"http:\\/\\/omnipotent.net\\/jquery.sparkline\\/\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">jQuery Sparklines<\\/a><\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a title=\\\"\\u5236\\u56fe\\u5e93\\\" href=\\\"http:\\/\\/www.chartjs.org\\/\\\" rel=\\\"alternate\\\"><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"http:\\/\\/www.chartjs.org\\/img\\/chartjs-logo.svg\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">Chart.js<\\/h1>\\r\\n<p><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170518\\/nice-admin-templates.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-info btn-lg\\\" href=\\\"tmp\\/Nice-admin\\/index.html\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u6f14\\u793a\\u5730\\u5740<\\/a><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-success btn-lg\\\" href=\\\"https:\\/\\/pan.baidu.com\\/s\\/1qYCu9fm\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u4e0b\\u8f7d\\u5730\\u5740<\\/a><\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-05-18 14:07:28\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-18 14:55:49\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-18 14:53:35\",\"publish_up\":\"2017-05-18 14:07:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":14,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"15\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(505,17,1,'','2017-05-18 14:56:39',437,4338,'c3091fb45ab594519154e24999c1d7edea508697','{\"id\":17,\"asset_id\":\"100\",\"title\":\"nice admin\\u54cd\\u5e94\\u5f0f\\u7ba1\\u7406\\u540e\\u53f0\\u6a21\\u677f\",\"alias\":\"nice-admin\",\"introtext\":\"<p>nice admin\\u662f\\u4e00\\u6b3e\\u57fa\\u4e8ebootstrap\\u7684\\u7ba1\\u7406\\u540e\\u53f0\\u6a21\\u677f\\uff0c\\u7b80\\u7ea6\\u6241\\u5e73\\u8bbe\\u8ba1\\u98ce\\u683c\\uff0c\\u4f7f\\u7528\\u4e86\\u57fa\\u4e8ejquery\\u7684\\u7edf\\u8ba1\\u548cchart.js\\u56fe\\u8868\\u7edf\\u8ba1\\u5e93<span style=\\\"font-size: 12.16px;\\\">\\uff0c\\u6a21\\u677f\\u4e3b\\u8981\\u5305\\u62ec\\uff1a\\u7528\\u6237\\u6570\\u636e\\u7edf\\u8ba1\\uff0c\\u7528\\u6237\\u65e5\\u7a0b\\u5b89\\u6392\\uff0c\\u56fe\\u8868\\u7cfb\\u7edf\\uff0c\\u4e16\\u754c\\u5730\\u56fe\\uff0c\\u8868\\u5355\\u98ce\\u683c\\u6837\\u5f0f\\uff0c\\u767b\\u5f55\\uff0c\\u4e2a\\u4eba\\u4fe1\\u606f\\u53ca\\u8bc4\\u8bba\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0c\\u5e76\\u96c6\\u6210CKedit\\u7f16\\u8f91\\u5668<\\/span><\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<h1 style=\\\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\\\"><span style=\\\"color: #000000; font-size: 50pt;\\\">Bootstrap<\\/span><\\/h1>\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: 36pt;\\\"><a title=\\\"\\u8f7b\\u91cf\\u7ea7\\u52a8\\u6001\\u52a8\\u6001\\u997c\\u56fe\\u8868\\u63d2\\u4ef6\\\" href=\\\"http:\\/\\/rendro.github.io\\/easy-pie-chart\\/\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">EASY PIE CHART<\\/a><\\/span><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\"><span style=\\\"font-size: 36pt;\\\"><a title=\\\"\\u7528\\u4e8e\\u751f\\u6210\\u5fae\\u5c0f\\u7535\\u8c31\\u56fe\\u8868\\u63d2\\u4ef6\\\" href=\\\"http:\\/\\/omnipotent.net\\/jquery.sparkline\\/\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">jQuery Sparklines<\\/a><\\/span><\\/h1>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><a title=\\\"\\u5236\\u56fe\\u5e93\\\" href=\\\"http:\\/\\/www.chartjs.org\\/\\\" rel=\\\"alternate\\\"><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"http:\\/\\/www.chartjs.org\\/img\\/chartjs-logo.svg\\\" width=\\\"160\\\" height=\\\"160\\\" \\/><\\/a><\\/p>\\r\\n<h1 style=\\\"text-align: center;\\\">Chart.js<\\/h1>\\r\\n<p><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170518\\/nice-admin-templates.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-info btn-lg\\\" href=\\\"tmp\\/Nice-admin\\/index.html\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u6f14\\u793a\\u5730\\u5740<\\/a><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-success btn-lg\\\" href=\\\"https:\\/\\/pan.baidu.com\\/s\\/1qYCu9fm\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u4e0b\\u8f7d\\u5730\\u5740<\\/a><\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-05-18 14:07:28\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-18 14:56:39\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-18 14:55:49\",\"publish_up\":\"2017-05-18 14:07:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":15,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"16\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(506,10,1,'','2017-05-18 14:58:01',437,7288,'35bbbee2eb95aa93154b102e65d68c36ad2bff96','{\"id\":10,\"asset_id\":\"89\",\"title\":\"\\u9879\\u76ee\\u5f00\\u53d1\\u5de5\\u4f5c\\u6d41\",\"alias\":\"2017-05-04-13-08-52\",\"introtext\":\"<p>\\u8be5\\u6587\\u7ae0\\u4ecb\\u7ecd\\u6574\\u4e2a\\u7f51\\u7ad9\\u5f00\\u53d1\\u7684\\u57fa\\u672c\\u6d41\\u7a0b\\u3002\\u8fd9\\u662f\\u4e00\\u4e2a\\u6211\\u4eec\\u5f00\\u53d1\\u7f51\\u7ad9\\u7684\\u5927\\u4f53\\u6b65\\u9aa4\\uff0c\\u6bcf\\u4e2a\\u9636\\u6bb5\\u6839\\u636e\\u9879\\u76ee\\u7684\\u4e0d\\u540c\\u6709\\u4e0d\\u540c\\u5dee\\u5f02\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170504\\/graphic.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p><span style=\\\"font-size: 18pt;\\\"><strong>\\u9879\\u76ee\\u5b9e\\u65bd<\\/strong><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">1.\\u8bbe\\u8ba1<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">\\u4ee5\\u901a\\u8fc7\\u4e1a\\u52a1\\u5206\\u6790\\u7684\\u8bbe\\u8ba1\\uff0c\\u9700\\u6c42\\u8bf4\\u660e\\u4e66\\u53ca\\u7ebf\\u6846\\u56fe\\u4e3a\\u57fa\\u7840\\uff0c\\u8bbe\\u8ba1\\u4eba\\u5458\\u521b\\u5efa\\u7f51\\u9875\\u6837\\u4f8b\\u7a3f\\uff0c\\u63d0\\u4f9b\\u5ba2\\u6237\\u5ba1\\u6838\\u548c\\u4fee\\u8ba2\\uff0c\\u4ee5\\u4fbf\\u8bbe\\u8ba1\\u4eba\\u5458\\u5b8c\\u6210\\u9996\\u9875\\u8bbe\\u8ba1\\u3002\\u5ba2\\u6237\\u786e\\u8ba4\\u540e\\uff0c\\u5236\\u4f5c\\u5176\\u4f59\\u9875\\u9762\\u3002<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">2.HTML\\/CSS\\/Javascript \\u7f16\\u5199\\uff08\\u524d\\u7aef\\u5f00\\u53d1\\uff09<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">HTML\\/CSS\\/Javascript\\u7f16\\u5199\\u4eba\\u5458\\u5c06\\u8bbe\\u8ba1\\u56fe\\u8f6c\\u4e3aHTML\\u7f16\\u7801\\uff0c\\u8ba9\\u5176\\u5728\\u6d4f\\u89c8\\u5668\\u8fd0\\u884c\\u3002<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">\\u7f16\\u7801\\u7b26\\u5408W3C\\u6807\\u51c6\\uff0c\\u7531HTML\\u7f16\\u5199\\u4eba\\u5458\\u4f9d\\u636e\\u9879\\u76ee\\u5f00\\u53d1\\u6240\\u4f7f\\u7528\\u7684\\u7cfb\\u7edf\\u6574\\u5408<\\/span><span style=\\\"font-size: 18.6667px;\\\">HTML\\/CSS\\/Javascript<\\/span><span style=\\\"font-size: 18.6667px;\\\">\\u00a0<\\/span><span style=\\\"font-size: 18.6667px;\\\">\\u4ee3\\u7801\\u3002<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">3.\\u540e\\u7aef\\u5f00\\u53d1<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">\\u5728\\u7f51\\u7ad9\\u5f00\\u53d1\\u9636\\u6bb5\\u4e2d\\u7f51\\u7ad9\\u7684\\u6838\\u5fc3\\u5f00\\u53d1\\u3002\\u5f00\\u53d1\\u9879\\u76ee\\u57fa\\u4e8e\\u4ee5\\u4e0b\\u6846\\u67b6 \\u2014\\u2014 joomla frame \\u548c laravel\\u3002\\u6211\\u4eec\\u53ef\\u4ee5\\u5b9a\\u5236\\u7684\\u8d2d\\u7269\\u8f66\\uff0c\\u7535\\u5546\\u7cfb\\u7edf\\uff0c\\u5185\\u5bb9\\u7ba1\\u7406\\u7cfb\\u7edf\\uff0c\\u6839\\u636e\\u9700\\u6c42\\u5b9a\\u5236\\u5f00\\u53d1\\u4e0d\\u540c\\u529f\\u80fd\\u3002<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">4.\\u8d28\\u91cf\\u4fdd\\u8bc1\\u548c\\u8c03\\u6574<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u9879\\u76ee\\u5b8c\\u6210\\u540e\\uff0c\\u68c0\\u67e5\\u7cfb\\u7edf\\u6839\\u636e\\u6807\\u51c6\\u6b63\\u786e\\u6267\\u884c\\u3002\\u5982\\u679c\\u5fc5\\u8981\\uff0c\\u8fdb\\u884c\\u76f8\\u5e94\\u8c03\\u6574\\u548c\\u6267\\u884c\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u6839\\u636e\\u9879\\u76ee\\u8fdb\\u884c\\u624b\\u5de5\\u6d4b\\u8bd5\\u6216\\u81ea\\u52a8\\u5316\\u6d4b\\u8bd5\\u6765\\u68c0\\u6d4b\\u52a0\\u8f7d\\u53ca\\u538b\\u529b\\u6027\\u80fd\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">5.\\u6570\\u636e\\u8f93\\u5165\\u548c\\u57fa\\u672c\\u641c\\u7d22\\u5f15\\u64ce\\u4f18\\u5316\\uff08SEO\\uff09<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u6bcf\\u4e2a\\u9879\\u76ee\\u5728\\u6295\\u5165\\u4f7f\\u7528\\u4e4b\\u524d\\u9664\\u4e86SEO\\u4f18\\u5316\\u5916\\uff0c\\u8fd8\\u9700\\u8981\\u6dfb\\u52a0\\u7f51\\u7ad9\\u76f8\\u5173\\u4fe1\\u606f\\u3002\\u6211\\u4eec\\u8fdb\\u884c\\u57fa\\u7840\\u7684SEO\\u5305\\u62ec12\\u9879\\u64cd\\u4f5c\\uff1a\\u4ece\\u6dfb\\u52a0meta-data\\u5230\\u63d0\\u4ea4\\u7ad9\\u70b9\\u5230\\u641c\\u7d22\\u5f15\\u64ce\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">6.\\u9879\\u76ee\\u542f\\u52a8<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u6700\\u540e\\u4e00\\u4e2a\\u9879\\u76ee\\u4e0a\\u7ebf\\u524d\\u9636\\u6bb5\\u3002\\u6211\\u4eec\\u5c06\\u9879\\u76ee\\u4ece\\u672c\\u5730\\u6d4b\\u8bd5\\u73af\\u5883\\u90e8\\u7f72\\u5230\\u4ea7\\u54c1\\u670d\\u52a1\\u5668\\uff0c\\u5e76\\u505a\\u6700\\u540e\\u9488\\u5bf9\\u5f00\\u53d1\\u548c\\u5728\\u7ebf\\u670d\\u52a1\\u7684\\u68c0\\u6d4b\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u9879\\u76ee\\u63a8\\u5e7f\\u548c\\u8fdb\\u4e00\\u6b65\\u6539\\u8fdb<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u901a\\u5e38\\u4e00\\u4e2a\\u666e\\u904d\\u9519\\u8bef\\u89c2\\u5ff5\\u662f\\u8ba4\\u4e3a\\u7f51\\u7ad9\\u6b63\\u5f0f\\u8fd0\\u884c\\u540e\\u5c31\\u7b97\\u5b8c\\u6210\\u6240\\u6709\\u5de5\\u4f5c\\u3002\\u4e3a\\u4e86\\u5438\\u5f15\\u76ee\\u6807\\u5ba2\\u6237\\uff0c\\u7ad9\\u70b9\\u9700\\u8981\\u540c\\u65f6\\u5728\\u7ebf\\u4e0a\\u548c\\u7ebf\\u4e0b\\u63a8\\u5e7f\\u548c\\u5e7f\\u544a\\u3002\\u7f51\\u7ad9\\u63a8\\u5e7f\\u901a\\u5e38\\u662f\\u4e00\\u4e2a\\u6301\\u7eed\\u7684\\u8fc7\\u7a0b\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u50cf\\u6240\\u6709\\u5176\\u5b83\\u5546\\u4e1a\\u8fc7\\u7a0b\\u4e00\\u6837\\uff0c\\u7f51\\u7ad9\\u5f00\\u53d1\\u4e5f\\u662f\\u4e00\\u4e2a\\u4e0d\\u65ad\\u5faa\\u73af\\u7684\\u8fc7\\u7a0b\\u3002\\u65b0\\u7684\\u9700\\u6c42\\u63d0\\u51fa\\u548c\\u9879\\u76ee\\u7684\\u4e0d\\u65ad\\u6539\\u8fdb\\u3002<\\/span><\\/p>\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-05-04 13:08:52\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-18 14:58:01\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-18 14:57:36\",\"publish_up\":\"2017-05-04 13:08:52\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/articles\\\\\\/20170515\\\\\\/workflow.png\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":27,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"60\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(507,10,1,'','2017-05-18 14:58:55',437,7252,'4ae9f08a81043cd7805013d9bc769147eff2c0d5','{\"id\":10,\"asset_id\":\"89\",\"title\":\"\\u9879\\u76ee\\u5f00\\u53d1\\u5de5\\u4f5c\\u6d41\",\"alias\":\"2017-05-04-13-08-52\",\"introtext\":\"<p>\\u8be5\\u6587\\u7ae0\\u4ecb\\u7ecd\\u6574\\u4e2a\\u7f51\\u7ad9\\u5f00\\u53d1\\u7684\\u57fa\\u672c\\u6d41\\u7a0b\\u3002\\u8fd9\\u662f\\u4e00\\u4e2a\\u6211\\u4eec\\u5f00\\u53d1\\u7f51\\u7ad9\\u7684\\u5927\\u4f53\\u6b65\\u9aa4\\uff0c\\u6bcf\\u4e2a\\u9636\\u6bb5\\u6839\\u636e\\u9879\\u76ee\\u7684\\u4e0d\\u540c\\u6709\\u4e0d\\u540c\\u5dee\\u5f02\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170504\\/graphic.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p><span style=\\\"font-size: 18pt;\\\"><strong>\\u9879\\u76ee\\u5b9e\\u65bd<\\/strong><\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 14pt;\\\">1.\\u8bbe\\u8ba1<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">\\u4ee5\\u901a\\u8fc7\\u4e1a\\u52a1\\u5206\\u6790\\u7684\\u8bbe\\u8ba1\\uff0c\\u9700\\u6c42\\u8bf4\\u660e\\u4e66\\u53ca\\u7ebf\\u6846\\u56fe\\u4e3a\\u57fa\\u7840\\uff0c\\u8bbe\\u8ba1\\u4eba\\u5458\\u521b\\u5efa\\u7f51\\u9875\\u6837\\u4f8b\\u7a3f\\uff0c\\u63d0\\u4f9b\\u5ba2\\u6237\\u5ba1\\u6838\\u548c\\u4fee\\u8ba2\\uff0c\\u4ee5\\u4fbf\\u8bbe\\u8ba1\\u4eba\\u5458\\u5b8c\\u6210\\u9996\\u9875\\u8bbe\\u8ba1\\u3002\\u5ba2\\u6237\\u786e\\u8ba4\\u540e\\uff0c\\u5236\\u4f5c\\u5176\\u4f59\\u9875\\u9762\\u3002<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">2.HTML\\/CSS\\/Javascript \\u7f16\\u5199\\uff08\\u524d\\u7aef\\u5f00\\u53d1\\uff09<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">HTML\\/CSS\\/Javascript\\u7f16\\u5199\\u4eba\\u5458\\u5c06\\u8bbe\\u8ba1\\u56fe\\u8f6c\\u4e3aHTML\\u7f16\\u7801\\uff0c\\u8ba9\\u5176\\u5728\\u6d4f\\u89c8\\u5668\\u8fd0\\u884c\\u3002<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">\\u7f16\\u7801\\u7b26\\u5408W3C\\u6807\\u51c6\\uff0c\\u7531HTML\\u7f16\\u5199\\u4eba\\u5458\\u4f9d\\u636e\\u9879\\u76ee\\u5f00\\u53d1\\u6240\\u4f7f\\u7528\\u7684\\u7cfb\\u7edf\\u6574\\u5408<\\/span><span style=\\\"font-size: 18.6667px;\\\">HTML\\/CSS\\/Javascript<\\/span><span style=\\\"font-size: 18.6667px;\\\">\\u00a0<\\/span><span style=\\\"font-size: 18.6667px;\\\">\\u4ee3\\u7801\\u3002<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">3.\\u540e\\u7aef\\u5f00\\u53d1<\\/span><\\/p>\\r\\n<p><span style=\\\"font-size: 18.6667px;\\\">\\u5728\\u7f51\\u7ad9\\u5f00\\u53d1\\u9636\\u6bb5\\u4e2d\\u7f51\\u7ad9\\u7684\\u6838\\u5fc3\\u5f00\\u53d1\\u3002\\u5f00\\u53d1\\u9879\\u76ee\\u57fa\\u4e8e\\u4ee5\\u4e0b\\u6846\\u67b6 \\u2014\\u2014 joomla frame \\u548c laravel\\u3002\\u6211\\u4eec\\u53ef\\u4ee5\\u5b9a\\u5236\\u7684\\u7535\\u5546\\u7cfb\\u7edf\\uff0c\\u5185\\u5bb9\\u53d1\\u5e03\\u7cfb\\u7edf\\uff0c\\u6839\\u636e\\u9700\\u6c42\\u5f00\\u53d1\\u4e0d\\u540c\\u529f\\u80fd\\u3002<\\/span><\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">4.\\u8d28\\u91cf\\u4fdd\\u8bc1\\u548c\\u8c03\\u6574<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u9879\\u76ee\\u5b8c\\u6210\\u540e\\uff0c\\u68c0\\u67e5\\u7cfb\\u7edf\\u6839\\u636e\\u6807\\u51c6\\u6b63\\u786e\\u6267\\u884c\\u3002\\u5982\\u679c\\u5fc5\\u8981\\uff0c\\u8fdb\\u884c\\u76f8\\u5e94\\u8c03\\u6574\\u548c\\u6267\\u884c\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u6839\\u636e\\u9879\\u76ee\\u8fdb\\u884c\\u624b\\u5de5\\u6d4b\\u8bd5\\u6216\\u81ea\\u52a8\\u5316\\u6d4b\\u8bd5\\u6765\\u68c0\\u6d4b\\u52a0\\u8f7d\\u53ca\\u538b\\u529b\\u6027\\u80fd\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">5.\\u6570\\u636e\\u8f93\\u5165\\u548c\\u57fa\\u672c\\u641c\\u7d22\\u5f15\\u64ce\\u4f18\\u5316\\uff08SEO\\uff09<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u6bcf\\u4e2a\\u9879\\u76ee\\u5728\\u6295\\u5165\\u4f7f\\u7528\\u4e4b\\u524d\\u9664\\u4e86SEO\\u4f18\\u5316\\u5916\\uff0c\\u8fd8\\u9700\\u8981\\u6dfb\\u52a0\\u7f51\\u7ad9\\u76f8\\u5173\\u4fe1\\u606f\\u3002\\u6211\\u4eec\\u8fdb\\u884c\\u57fa\\u7840\\u7684SEO\\u5305\\u62ec12\\u9879\\u64cd\\u4f5c\\uff1a\\u4ece\\u6dfb\\u52a0meta-data\\u5230\\u63d0\\u4ea4\\u7ad9\\u70b9\\u5230\\u641c\\u7d22\\u5f15\\u64ce\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">6.\\u9879\\u76ee\\u542f\\u52a8<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u6700\\u540e\\u4e00\\u4e2a\\u9879\\u76ee\\u4e0a\\u7ebf\\u524d\\u9636\\u6bb5\\u3002\\u6211\\u4eec\\u5c06\\u9879\\u76ee\\u4ece\\u672c\\u5730\\u6d4b\\u8bd5\\u73af\\u5883\\u90e8\\u7f72\\u5230\\u4ea7\\u54c1\\u670d\\u52a1\\u5668\\uff0c\\u5e76\\u505a\\u6700\\u540e\\u9488\\u5bf9\\u5f00\\u53d1\\u548c\\u5728\\u7ebf\\u670d\\u52a1\\u7684\\u68c0\\u6d4b\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u9879\\u76ee\\u63a8\\u5e7f\\u548c\\u8fdb\\u4e00\\u6b65\\u6539\\u8fdb<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u901a\\u5e38\\u4e00\\u4e2a\\u666e\\u904d\\u9519\\u8bef\\u89c2\\u5ff5\\u662f\\u8ba4\\u4e3a\\u7f51\\u7ad9\\u6b63\\u5f0f\\u8fd0\\u884c\\u540e\\u5c31\\u7b97\\u5b8c\\u6210\\u6240\\u6709\\u5de5\\u4f5c\\u3002\\u4e3a\\u4e86\\u5438\\u5f15\\u76ee\\u6807\\u5ba2\\u6237\\uff0c\\u7ad9\\u70b9\\u9700\\u8981\\u540c\\u65f6\\u5728\\u7ebf\\u4e0a\\u548c\\u7ebf\\u4e0b\\u63a8\\u5e7f\\u548c\\u5e7f\\u544a\\u3002\\u7f51\\u7ad9\\u63a8\\u5e7f\\u901a\\u5e38\\u662f\\u4e00\\u4e2a\\u6301\\u7eed\\u7684\\u8fc7\\u7a0b\\u3002<\\/span><\\/p>\\r\\n<p style=\\\"font-size: 12.16px;\\\"><span style=\\\"font-size: 18.6667px;\\\">\\u50cf\\u6240\\u6709\\u5176\\u5b83\\u5546\\u4e1a\\u8fc7\\u7a0b\\u4e00\\u6837\\uff0c\\u7f51\\u7ad9\\u5f00\\u53d1\\u4e5f\\u662f\\u4e00\\u4e2a\\u4e0d\\u65ad\\u5faa\\u73af\\u7684\\u8fc7\\u7a0b\\u3002\\u65b0\\u7684\\u9700\\u6c42\\u63d0\\u51fa\\u548c\\u9879\\u76ee\\u7684\\u4e0d\\u65ad\\u6539\\u8fdb\\u3002<\\/span><\\/p>\",\"state\":1,\"catid\":\"11\",\"created\":\"2017-05-04 13:08:52\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-18 14:58:55\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-18 14:58:01\",\"publish_up\":\"2017-05-04 13:08:52\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/articles\\\\\\/20170515\\\\\\/workflow.png\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":28,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"61\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(508,16,1,'','2017-05-27 04:53:45',437,5283,'1ec16e3d733707adaa4ed28d4aecbd74f6547844','{\"id\":16,\"asset_id\":\"99\",\"title\":\"\\u54cd\\u5e94\\u5f0f\\u7b80\\u7ea6\\u5e26\\u5361\\u901a\\u98ce\\u535a\\u5ba2\\u7f51\\u7ad9\",\"alias\":\"2017-05-18-09-42-15\",\"introtext\":\"<p>Triangle\\u662f\\u4e00\\u6b3e\\u57fa\\u4e8ebootstrap\\u7684\\u7b80\\u7ea6\\u5e26\\u5361\\u901a\\u98ce\\u8bbe\\u8ba1\\u7684\\u535a\\u5ba2\\u7f51\\u7ad9\\u6a21\\u677f\\uff0c\\u5305\\u542b\\u5b8c\\u6574\\u7684\\u535a\\u5ba2\\u5404\\u9875\\u9762\\u7684\\u7248\\u5757\\u3002<\\/p>\\r\\n<p>\\u4f7f\\u7528CSS3\\u8fc7\\u5ea6\\u7279\\u6548\\uff0c\\u4f7f\\u7528<a href=\\\"http:\\/\\/192.168.0.103\\/templates\\/triangle\\/multicolor\\/css\\/animate.min.css\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">animate.css<\\/a>+<a href=\\\"http:\\/\\/192.168.0.103\\/templates\\/triangle\\/multicolor\\/js\\/wow.min.js\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">wow.js<\\/a>\\u751f\\u6210\\u5143\\u7d20\\u52a8\\u753b\\u6548\\u679c\\uff0c\\u7279\\u6b8a\\u5e03\\u5c40\\u6548\\u679c\\u6709\\u6d41\\u4f53\\u5e03\\u5c40\\u3001\\u65f6\\u95f4\\u8f74\\u52a0\\u8f7d\\u7b49...<\\/p>\\r\\n<p>\\u6574\\u4e2a\\u6a21\\u677f\\u5305\\u542b6\\u7c7b\\u535a\\u5ba2\\u5c55\\u793a\\u5217\\u8868\\uff0c5\\u7c7b\\u6587\\u7ae0\\u5c55\\u793a\\u5217\\u8868\\uff0c\\u53ca\\u8be6\\u60c5\\u9875\\uff0c\\u9644\\u52a0\\u5e94\\u7528\\u4e8e\\u6574\\u4e2a\\u7f51\\u7ad9\\u7684\\u5143\\u7d20\\u8bf4\\u660e\\uff0c\\u7f51\\u7ad9\\u4e3b\\u9898\\u989c\\u8272\\u5206\\u4e3a\\u5355\\u8272\\u548c\\u5f69\\u8272\\u4e24\\u79cd\\u3002<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14pt;\\\">\\u00a0\\u57fa\\u4e8eBootstrap<span style=\\\"color: #000000;\\\"><span style=\\\"white-space: pre-wrap;\\\">\\uff0canimate.css+wow.js\\u52a8\\u753b<\\/span><\\/span><\\/span><\\/p>\\r\\n<h1 style=\\\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\\\"><span style=\\\"color: #000000; font-size: 50pt;\\\">Bootstrap 3.X<\\/span><\\/h1>\\r\\n<h1 class=\\\"site__title mega\\\" style=\\\"margin: 0px 0px 1.5rem; padding: 0px; position: relative; box-sizing: border-box; font-size: 6rem; font-weight: 100; line-height: 1; letter-spacing: -0.05em; color: #f35626; background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a); -webkit-background-clip: text; -webkit-text-fill-color: transparent; animation: hue 60s linear infinite; font-family: Roboto, Verdana, sans-serif; text-align: center;\\\">Animate.css<\\/h1>\\r\\n<h1 class=\\\"site__title mega\\\" style=\\\"font-family: Roboto, Verdana, sans-serif; font-size: 6rem; font-weight: 100; color: #f35626; margin: 0px 0px 1.5rem; padding: 0px; position: relative; box-sizing: border-box; line-height: 1; letter-spacing: -0.05em; text-align: center;\\\"><span style=\\\"color: #ff3366;\\\">Wow.js<\\/span><\\/h1>\\r\\n<p><span style=\\\"color: #ff3366;\\\"><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170518\\/triangle-templates.png\\\" alt=\\\"\\\" \\/><\\/span><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-info btn-lg\\\" href=\\\"tmp\\/triangle\\/multicolor\\/index.html\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u591a\\u8272\\u4e3b\\u9898\\u6f14\\u793a<\\/a><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-info btn-lg\\\" href=\\\"tmp\\/triangle\\/singlecolor\\/index.html\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u5355\\u8272\\u4e3b\\u9898\\u6f14\\u793a<\\/a><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-success btn-lg\\\" href=\\\"http:\\/\\/pan.baidu.com\\/s\\/1eR19woa\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u4e0b\\u8f7d\\u5730\\u5740<\\/a><\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-05-18 09:42:15\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-27 04:53:45\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-27 04:53:10\",\"publish_up\":\"2017-05-18 09:42:15\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/articles\\\\\\/20170518\\\\\\/triangle-singlecolor.png\\\",\\\"float_intro\\\":\\\"right\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":19,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"6\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"1\",\"language\":\"*\",\"xreference\":\"\"}',0),(509,14,1,'','2017-05-27 05:43:59',437,3676,'277bc9689be98200758c626477048c4ce754d629','{\"id\":14,\"asset_id\":\"95\",\"title\":\"\\u54cd\\u5e94\\u5f0f\\u516c\\u53f8\\u7f51\\u7ad9\\u6a21\\u677f\",\"alias\":\"2017-05-16-07-49-17\",\"introtext\":\"<p>\\u54cd\\u5e94\\u5f0f\\u516c\\u53f8\\u7f51\\u7ad9\\u6a21\\u677f\\uff0c\\u542b\\u4e3b\\u9875\\uff0c\\u5173\\u4e8e\\u6211\\u4eec\\uff0c\\u670d\\u52a1\\uff0c\\u753b\\u5eca\\u53ca\\u8054\\u7cfb\\u6211\\u4eec\\u9875\\u9762\\u7248\\u5757\\uff0c\\u4f7f\\u7528css3\\u52a8\\u753b\\u7279\\u6548\\uff0c\\u53cahtml5\\u8bed\\u4e49\\u6807\\u7b7e<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: center;\\\"><span style=\\\"font-size: 14pt;\\\">\\u00a0\\u57fa\\u4e8eBootstrap<span style=\\\"color: #000000;\\\"><span style=\\\"white-space: pre-wrap;\\\">\\uff0canimate.css+wow.js\\u52a8\\u753b<\\/span><\\/span><\\/span><\\/p>\\r\\n<h1 style=\\\"box-sizing: border-box; margin: 20px 0px 10px; font-size: 100px; font-family: \'Helvetica Neue\', Helvetica, Arial, \'Hiragino Sans GB\', \'Hiragino Sans GB W3\', \'Microsoft YaHei UI\', \'Microsoft YaHei\', \'WenQuanYi Micro Hei\', sans-serif; line-height: 1; color: #ffffff; letter-spacing: -2px; text-align: center;\\\"><span style=\\\"color: #000000; font-size: 50pt;\\\">Bootstrap 3.X<\\/span><\\/h1>\\r\\n<h1 class=\\\"site__title mega\\\" style=\\\"margin: 0px 0px 1.5rem; padding: 0px; position: relative; box-sizing: border-box; font-size: 6rem; font-weight: 100; line-height: 1; letter-spacing: -0.05em; color: #f35626; background-image: -webkit-linear-gradient(92deg, #f35626, #feab3a); -webkit-background-clip: text; -webkit-text-fill-color: transparent; animation: hue 60s linear infinite; font-family: Roboto, Verdana, sans-serif; text-align: center;\\\">Animate.css<\\/h1>\\r\\n<p><img src=\\\"images\\/articles\\/20170516\\/1.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-info btn-lg\\\" href=\\\"tmp\\/Day\\/index.html\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u6f14\\u793a\\u5730\\u5740<\\/a><\\/p>\\r\\n<p class=\\\"text-center\\\"><a class=\\\"btn btn-success btn-lg\\\" href=\\\"http:\\/\\/pan.baidu.com\\/s\\/1kV9gWsv\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u4e0b\\u8f7d\\u5730\\u5740<\\/a><\\/p>\",\"state\":1,\"catid\":\"2\",\"created\":\"2017-05-16 07:49:17\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-27 05:43:59\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-27 05:42:32\",\"publish_up\":\"2017-05-16 07:49:17\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":27,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"34\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(510,8,5,'','2017-05-28 08:33:23',437,680,'3fab5c00734e810915074dd011f515613dde8b42','{\"id\":8,\"asset_id\":\"58\",\"parent_id\":\"1\",\"lft\":\"9\",\"rgt\":\"10\",\"level\":\"1\",\"path\":\"our-works\",\"extension\":\"com_content\",\"title\":\"\\u5de5\\u4f5c\\u76f8\\u5173\",\"alias\":\"our-works\",\"note\":\"\",\"description\":\"<p>\\u4ecb\\u7ecd\\u63d0\\u4f9b\\u670d\\u52a1\\u53ca\\u76f8\\u5173\\u5de5\\u4f5c<\\/p>\",\"published\":\"1\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-28 08:33:12\",\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"_:blog\\\",\\\"image\\\":\\\"\\\",\\\"image_alt\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"437\",\"created_time\":\"2017-04-26 09:20:52\",\"modified_user_id\":\"437\",\"modified_time\":\"2017-05-28 08:33:23\",\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\"}',0),(511,9,1,'','2017-05-29 06:08:46',437,2248,'4e95376a58b5a7314a0d12f956691da687f20ef6','{\"id\":9,\"asset_id\":\"88\",\"title\":\"\\u7f51\\u7ad9\\u540e\\u7aef\\u5f00\\u53d1\",\"alias\":\"2017-05-03-11-21-57\",\"introtext\":\"<p>php\\uff0cMySQL\\uff0cjoomla\\u4e8c\\u6b21\\u5f00\\u53d1<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u4f7f\\u7528PHP\\u5f00\\u53d1\\u8bed\\u8a00\\uff0cMySQL\\u6570\\u636e\\u5e93<\\/p>\\r\\n<p><img src=\\\"images\\/articles\\/20170515\\/framework_logo.png\\\" width=\\\"394\\\" height=\\\"122\\\" \\/><\\/p>\\r\\n<p>\\u57fa\\u4e8ejoomla framework\\u7684\\u4e8c\\u6b21\\u5f00\\u53d1\\uff0c\\u529f\\u80fd\\u5b9a\\u5236\\uff0c\\u6a21\\u5757\\u5316\\u5f00\\u53d1<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-05-03 11:21:57\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-29 06:08:46\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-29 06:05:32\",\"publish_up\":\"2017-05-03 11:21:57\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/works\\\\\\/web-back-end-development.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"25\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(512,13,1,'','2017-05-29 06:21:32',437,1974,'5a786e00d5a751011c33960b828200d3252b2bb6','{\"id\":13,\"asset_id\":\"93\",\"title\":\"\\u7f51\\u9875\\u8bbe\\u8ba1\",\"alias\":\"2017-05-08-05-09-28\",\"introtext\":\"<p style=\\\"text-align: left;\\\">\\u7f51\\u9875\\u8bbe\\u8ba1\\uff0c\\u6392\\u7248<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p style=\\\"text-align: center;\\\">\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-05-08 05:09:28\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-29 06:21:32\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-29 06:12:14\",\"publish_up\":\"2017-05-08 05:09:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/articles\\\\\\/20170508\\\\\\/front-end-design.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"10\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(513,8,1,'','2017-05-29 06:22:09',437,7586,'0cdacbc6081da7fb6a59ded3706b0f2852718a47','{\"id\":8,\"asset_id\":\"87\",\"title\":\"\\u7f51\\u7ad9\\u524d\\u7aef\\u5f00\\u53d1\",\"alias\":\"web-front-end-development\",\"introtext\":\"<p>\\u5c06\\u7f51\\u9875\\u8bbe\\u8ba1\\u56fe\\u8fdb\\u884c\\u7f16\\u7801\\uff0c\\u5b9a\\u5236\\u7b26\\u5408\\u5ba2\\u6237\\u9700\\u6c42\\u7684\\u524d\\u7aef\\u7528\\u6237\\u4f53\\u9a8c<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>\\u00a0<img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170508\\/js-h5-css3.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u6211\\u4eec\\u4f7f\\u7528html5\\u3001css3\\u7f16\\u5199\\u6837\\u5f0f\\u548c\\u6392\\u7248\\uff0c\\u7ed3\\u5408JS\\u5236\\u4f5c\\u4e00\\u4e9b\\u9ad8\\u7ea7\\u5448\\u73b0\\u6548\\u679c<\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u4f7f\\u7528JQuery\\u5e93\\u6765\\u521b\\u5efa\\u5404\\u79cd\\u7528\\u6237\\u4ea4\\u4e92\\u529f\\u80fd\\uff0c\\u4f7f\\u7528AJAX+JSON\\u5904\\u7406\\u5f02\\u6b65\\u4ea4\\u4e92<\\/p>\\r\\n<p><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170507\\/Bootstrap-3.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u524d\\u7aef\\u6837\\u5f0f\\u5e03\\u5c40\\u57fa\\u4e8e<a href=\\\"http:\\/\\/www.tutorialrepublic.com\\/twitter-bootstrap-tutorial\\/\\\" rel=\\\"alternate\\\">bootstrap<\\/a> \\u6805\\u683c\\u7cfb\\u7edf (Grid system)\\u7f16\\u5199\\uff0c<\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u5176\\u7279\\u70b9\\u4e3a\\uff1a\\u6241\\u5e73\\u5316\\u8bbe\\u8ba1\\uff0c\\u6781\\u7b80\\u98ce\\u683c\\uff0c\\u54cd\\u5e94\\u5f0f\\u5e03\\u5c40<\\/p>\\r\\n<div class=\\\"text-center\\\">\\r\\n<p>\\u793a\\u4f8b\\u6309\\u94ae<\\/p>\\r\\n<button class=\\\"btn btn-default\\\" type=\\\"button\\\">Default<\\/button> <button class=\\\"btn btn-primary\\\" type=\\\"button\\\">Primary<\\/button> <button class=\\\"btn btn-info\\\" type=\\\"button\\\">Info<\\/button> <button class=\\\"btn btn-success\\\" type=\\\"button\\\">Success<\\/button> <button class=\\\"btn btn-warning\\\" type=\\\"button\\\">Warning<\\/button> <button class=\\\"btn btn-danger\\\" type=\\\"button\\\">Danger<\\/button> <button class=\\\"btn btn-link\\\" type=\\\"button\\\">Link<\\/button><\\/div>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u00a0<\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\"><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170507\\/bootstrap1.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u53c2\\u8003\\u4e00\\u4e2a\\u57fa\\u4e8ebootstrap\\u7684\\u98ce\\u683c\\u6a21\\u677f<a href=\\\"http:\\/\\/usebootstrap.com\\/preview\\/cerulean\\/\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">cerulean<\\/a><\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\"><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170507\\/AngularJS.jpg\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u901a\\u8fc7AngularJS\\u7f16\\u5199\\u7c7bApp\\u7ad9\\u70b9<\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u5176\\u7279\\u70b9\\u4e3a\\uff1a\\u65e0\\u5237\\u65b0\\u5c40\\u90e8\\u6570\\u636e\\u4ea4\\u4e92\\uff0c\\u8ba9\\u7528\\u6237\\u4f53\\u9a8c\\u66f4\\u6d41\\u7545<\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u53c2\\u8003\\uff1a<a href=\\\"http:\\/\\/www.ageen.cn\\\" target=\\\"_blank\\\" rel=\\\"alternate noopener noreferrer\\\">\\u4e00\\u4e2aAngular\\u5e94\\u7528\\u793a\\u610f <\\/a><\\/p>\\r\\n<p style=\\\"font-weight: bold; color: #262626; font-family: \'Helvetica Neue\', Helvetica, \'PingFang SC\', \'Hiragino Sans GB\', \'Microsoft YaHei\', \'Noto Sans CJK SC\', \'WenQuanYi Micro Hei\', Arial, sans-serif; font-size: 15px; white-space: pre-wrap; text-align: center;\\\">\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-05-03 10:13:26\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-29 06:22:09\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-29 06:22:01\",\"publish_up\":\"2017-05-03 10:13:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/works\\\\\\/web-front-end-development.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":16,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"37\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0),(514,9,1,'','2017-05-29 07:09:31',437,2470,'0f013aff636b48a3da729cdb738641f6934de75e','{\"id\":9,\"asset_id\":\"88\",\"title\":\"\\u7f51\\u7ad9\\u540e\\u7aef\\u5f00\\u53d1\",\"alias\":\"2017-05-03-11-21-57\",\"introtext\":\"<p>php\\uff0cMySQL\\uff0cjoomla\\u4e8c\\u6b21\\u5f00\\u53d1<\\/p>\\r\\n\",\"fulltext\":\"\\r\\n<p>MVC\\u5f00\\u53d1\\u6a21\\u5f0f<\\/p>\\r\\n<p><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170515\\/framework_logo.png\\\" width=\\\"394\\\" height=\\\"122\\\" \\/><\\/p>\\r\\n<p>\\u57fa\\u4e8ejoomla framework\\u7684\\u4e8c\\u6b21\\u5f00\\u53d1<\\/p>\\r\\n<p><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170529\\/d1.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>PHP<\\/p>\\r\\n<p><img class=\\\"img-responsive\\\" style=\\\"margin: 0 auto;\\\" src=\\\"images\\/articles\\/20170529\\/d4.png\\\" alt=\\\"\\\" \\/><\\/p>\\r\\n<p>MySQL<\\/p>\\r\\n<p>\\u00a0<\\/p>\",\"state\":1,\"catid\":\"8\",\"created\":\"2017-05-03 11:21:57\",\"created_by\":\"437\",\"created_by_alias\":\"\",\"modified\":\"2017-05-29 07:09:31\",\"modified_by\":\"437\",\"checked_out\":\"437\",\"checked_out_time\":\"2017-05-29 06:22:13\",\"publish_up\":\"2017-05-03 11:21:57\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"images\\\\\\/works\\\\\\/web-back-end-development.jpg\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"article_layout\\\":\\\"\\\",\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"info_block_show_title\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_associations\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_page_title\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"25\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `ecs_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_update_sites`
--

DROP TABLE IF EXISTS `ecs_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_update_sites`
--

LOCK TABLES `ecs_update_sites` WRITE;
/*!40000 ALTER TABLE `ecs_update_sites` DISABLE KEYS */;
INSERT INTO `ecs_update_sites` VALUES (1,'Joomla! Core','collection','https://update.joomla.org/core/list.xml',1,1500344282,''),(3,'Accredited Joomla! Translations','collection','https://update.joomla.org/language/translationlist_3.xml',1,1498627125,''),(4,'Joomla! Update Component Update Site','extension','https://update.joomla.org/core/extensions/com_joomlaupdate.xml',1,1498627126,''),(6,'PLG_LAZYLOADFORJOOMLA','extension','https://check.kubik-rubik.de/updates/lazyloadforjoomla.xml',1,1498627126,''),(7,'PLG_ECC','extension','https://check.kubik-rubik.de/updates/ecc.xml',1,1498627128,''),(8,'NoNumber Sliders','extension','http://download.nonumber.nl/updates.xml?e=sliders&type=.xml',1,1498627129,''),(9,'JComments Update Site','extension','http://www.joomlatune.ru/updates/jcomments.xml',1,1498627130,'');
/*!40000 ALTER TABLE `ecs_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_update_sites_extensions`
--

DROP TABLE IF EXISTS `ecs_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_update_sites_extensions`
--

LOCK TABLES `ecs_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `ecs_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `ecs_update_sites_extensions` VALUES (1,700),(3,802),(4,28),(6,10017),(7,10018),(8,10023),(8,10024),(9,10025);
/*!40000 ALTER TABLE `ecs_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_updates`
--

DROP TABLE IF EXISTS `ecs_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_updates`
--

LOCK TABLES `ecs_updates` WRITE;
/*!40000 ALTER TABLE `ecs_updates` DISABLE KEYS */;
INSERT INTO `ecs_updates` VALUES (1,3,0,'Armenian','','pkg_hy-AM','package','',0,'3.4.4.1','','https://update.joomla.org/language/details3/hy-AM_details.xml','',''),(2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/ms-MY_details.xml','',''),(3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/ro-RO_details.xml','',''),(4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/nl-BE_details.xml','',''),(5,3,0,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.7.0.2','','https://update.joomla.org/language/details3/zh-TW_details.xml','',''),(6,3,0,'French','','pkg_fr-FR','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/fr-FR_details.xml','',''),(7,3,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/gl-ES_details.xml','',''),(8,3,0,'Georgian','','pkg_ka-GE','package','',0,'3.7.2.2','','https://update.joomla.org/language/details3/ka-GE_details.xml','',''),(9,3,0,'Greek','','pkg_el-GR','package','',0,'3.6.3.2','','https://update.joomla.org/language/details3/el-GR_details.xml','',''),(10,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/ja-JP_details.xml','',''),(11,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','https://update.joomla.org/language/details3/he-IL_details.xml','',''),(12,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/hu-HU_details.xml','',''),(13,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/af-ZA_details.xml','',''),(14,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/ar-AA_details.xml','',''),(15,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/be-BY_details.xml','',''),(16,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.6.5.2','','https://update.joomla.org/language/details3/bg-BG_details.xml','',''),(17,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/ca-ES_details.xml','',''),(18,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.4.1.2','','https://update.joomla.org/language/details3/zh-CN_details.xml','',''),(19,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/hr-HR_details.xml','',''),(20,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/cs-CZ_details.xml','',''),(21,3,0,'Danish','','pkg_da-DK','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/da-DK_details.xml','',''),(22,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/nl-NL_details.xml','',''),(23,3,0,'Estonian','','pkg_et-EE','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/et-EE_details.xml','',''),(24,3,0,'Italian','','pkg_it-IT','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/it-IT_details.xml','',''),(25,3,0,'Khmer','','pkg_km-KH','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/km-KH_details.xml','',''),(26,3,0,'Korean','','pkg_ko-KR','package','',0,'3.7.2.3','','https://update.joomla.org/language/details3/ko-KR_details.xml','',''),(27,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.7.2.2','','https://update.joomla.org/language/details3/lv-LV_details.xml','',''),(28,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/mk-MK_details.xml','',''),(29,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/nb-NO_details.xml','',''),(30,3,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.2.1','','https://update.joomla.org/language/details3/nn-NO_details.xml','',''),(31,3,0,'Persian','','pkg_fa-IR','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/fa-IR_details.xml','',''),(32,3,0,'Polish','','pkg_pl-PL','package','',0,'3.7.0.3','','https://update.joomla.org/language/details3/pl-PL_details.xml','',''),(33,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/pt-PT_details.xml','',''),(34,3,0,'Russian','','pkg_ru-RU','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/ru-RU_details.xml','',''),(35,3,0,'English AU','','pkg_en-AU','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/en-AU_details.xml','',''),(36,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/sk-SK_details.xml','',''),(37,3,0,'English US','','pkg_en-US','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/en-US_details.xml','',''),(38,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/sv-SE_details.xml','',''),(39,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.5.1','','https://update.joomla.org/language/details3/sy-IQ_details.xml','',''),(40,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/ta-IN_details.xml','',''),(41,3,0,'Thai','','pkg_th-TH','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/th-TH_details.xml','',''),(42,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/tr-TR_details.xml','',''),(43,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.7.1.1','','https://update.joomla.org/language/details3/uk-UA_details.xml','',''),(44,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.2','','https://update.joomla.org/language/details3/ug-CN_details.xml','',''),(45,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.2','','https://update.joomla.org/language/details3/sq-AL_details.xml','',''),(46,3,0,'Basque','','pkg_eu-ES','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/eu-ES_details.xml','',''),(47,3,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.2','','https://update.joomla.org/language/details3/hi-IN_details.xml','',''),(48,3,0,'German DE','','pkg_de-DE','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/de-DE_details.xml','',''),(49,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/pt-BR_details.xml','',''),(50,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/sr-YU_details.xml','',''),(51,3,0,'Spanish','','pkg_es-ES','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/es-ES_details.xml','',''),(52,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/bs-BA_details.xml','',''),(53,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/sr-RS_details.xml','',''),(54,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.2','','https://update.joomla.org/language/details3/vi-VN_details.xml','',''),(55,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/id-ID_details.xml','',''),(56,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/fi-FI_details.xml','',''),(57,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/sw-KE_details.xml','',''),(58,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/srp-ME_details.xml','',''),(59,3,0,'English CA','','pkg_en-CA','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/en-CA_details.xml','',''),(60,3,0,'French CA','','pkg_fr-CA','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/fr-CA_details.xml','',''),(61,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/cy-GB_details.xml','',''),(62,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.2','','https://update.joomla.org/language/details3/si-LK_details.xml','',''),(63,3,0,'Dari Persian','','pkg_prs-AF','package','',0,'3.4.4.2','','https://update.joomla.org/language/details3/prs-AF_details.xml','',''),(64,3,0,'Turkmen','','pkg_tk-TM','package','',0,'3.5.0.2','','https://update.joomla.org/language/details3/tk-TM_details.xml','',''),(65,3,0,'Irish','','pkg_ga-IE','package','',0,'3.7.0.1','','https://update.joomla.org/language/details3/ga-IE_details.xml','',''),(66,3,0,'Dzongkha','','pkg_dz-BT','package','',0,'3.6.2.1','','https://update.joomla.org/language/details3/dz-BT_details.xml','',''),(67,3,0,'Slovenian','','pkg_sl-SI','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/sl-SI_details.xml','',''),(68,3,0,'Spanish CO','','pkg_es-CO','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/es-CO_details.xml','',''),(69,3,0,'German CH','','pkg_de-CH','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/de-CH_details.xml','',''),(70,3,0,'German AT','','pkg_de-AT','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/de-AT_details.xml','',''),(71,3,0,'German LI','','pkg_de-LI','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/de-LI_details.xml','',''),(72,3,0,'German LU','','pkg_de-LU','package','',0,'3.7.2.1','','https://update.joomla.org/language/details3/de-LU_details.xml','',''),(73,3,0,'English NZ','','pkg_en-NZ','package','',0,'3.6.5.1','','https://update.joomla.org/language/details3/en-NZ_details.xml','',''),(74,7,10018,'ECC+ - EasyCalcCheck Plus','Protects Joomla! forms and 3rd party extensions by integrating anti-spam services and internal antispam checks','easycalccheckplus','plugin','system',0,'3.1.2','','https://check.kubik-rubik.de/updates/ecc.xml','https://joomla-extensions.kubik-rubik.de/ecc-easycalccheck-plus',''),(75,8,10024,'Regular Labs - Sliders','','sliders','plugin','system',0,'7.2.4FREE','','http://download.nonumber.nl/updates.xml?e=sliders&type=.xml','https://www.regularlabs.com/extensions/sliders#download',''),(76,1,700,'Joomla','','joomla','file','',0,'3.7.3','','https://update.joomla.org/core/sts/extension_sts.xml','','');
/*!40000 ALTER TABLE `ecs_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_keys`
--

DROP TABLE IF EXISTS `ecs_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_keys`
--

LOCK TABLES `ecs_user_keys` WRITE;
/*!40000 ALTER TABLE `ecs_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_notes`
--

DROP TABLE IF EXISTS `ecs_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_notes`
--

LOCK TABLES `ecs_user_notes` WRITE;
/*!40000 ALTER TABLE `ecs_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_profiles`
--

DROP TABLE IF EXISTS `ecs_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_profiles`
--

LOCK TABLES `ecs_user_profiles` WRITE;
/*!40000 ALTER TABLE `ecs_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `ecs_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_user_usergroup_map`
--

DROP TABLE IF EXISTS `ecs_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_user_usergroup_map`
--

LOCK TABLES `ecs_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `ecs_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `ecs_user_usergroup_map` VALUES (437,8),(438,2);
/*!40000 ALTER TABLE `ecs_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_usergroups`
--

DROP TABLE IF EXISTS `ecs_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_usergroups`
--

LOCK TABLES `ecs_usergroups` WRITE;
/*!40000 ALTER TABLE `ecs_usergroups` DISABLE KEYS */;
INSERT INTO `ecs_usergroups` VALUES (1,0,1,18,'Public'),(2,1,8,15,'Registered'),(3,2,9,14,'Author'),(4,3,10,13,'Editor'),(5,4,11,12,'Publisher'),(6,1,4,7,'Manager'),(7,6,5,6,'Administrator'),(8,1,16,17,'Super Users'),(9,1,2,3,'Guest');
/*!40000 ALTER TABLE `ecs_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_users`
--

DROP TABLE IF EXISTS `ecs_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`(100)),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=439 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_users`
--

LOCK TABLES `ecs_users` WRITE;
/*!40000 ALTER TABLE `ecs_users` DISABLE KEYS */;
INSERT INTO `ecs_users` VALUES (437,'xlark','ecube','e@e-cube.tech','$2y$10$vmWd37YabwF//x40R8PmAuAhmIX8m/SFBwoi4X0ttDkIwrzZ8GHz.',0,1,'2017-04-26 03:07:01','2017-07-18 02:50:02','0','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0),(438,'saryven','ageen','ageen@163.com','$2y$10$9acZTD2xlPluqoahrVoyxusWZJyicFckltMcKlo/nS9cXeKLApVmG',0,1,'2017-04-26 12:58:47','2017-05-07 13:01:07','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','2017-06-15 02:12:17',1,'','',0);
/*!40000 ALTER TABLE `ecs_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_utf8_conversion`
--

DROP TABLE IF EXISTS `ecs_utf8_conversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_utf8_conversion`
--

LOCK TABLES `ecs_utf8_conversion` WRITE;
/*!40000 ALTER TABLE `ecs_utf8_conversion` DISABLE KEYS */;
INSERT INTO `ecs_utf8_conversion` VALUES (2);
/*!40000 ALTER TABLE `ecs_utf8_conversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_viewlevels`
--

DROP TABLE IF EXISTS `ecs_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_viewlevels`
--

LOCK TABLES `ecs_viewlevels` WRITE;
/*!40000 ALTER TABLE `ecs_viewlevels` DISABLE KEYS */;
INSERT INTO `ecs_viewlevels` VALUES (1,'Public',0,'[1]'),(2,'Registered',2,'[6,2,8]'),(3,'Special',3,'[6,3,8]'),(5,'Guest',1,'[9]'),(6,'Super Users',4,'[8]');
/*!40000 ALTER TABLE `ecs_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ecs_wf_profiles`
--

DROP TABLE IF EXISTS `ecs_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ecs_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ecs_wf_profiles`
--

LOCK TABLES `ecs_wf_profiles` WRITE;
/*!40000 ALTER TABLE `ecs_wf_profiles` DISABLE KEYS */;
INSERT INTO `ecs_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,fontcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,print,searchreplace,spacer,table,style,xhtmlxtras;visualaid,visualchars,visualblocks,nonbreaking,anchor,unlink,link,imgmanager,spellchecker,article','formatselect,styleselect,cleanup,fontselect,fontsizeselect,fontcolor,clipboard,lists,textcase,charmap,hr,directionality,fullscreen,print,searchreplace,table,style,xhtmlxtras,visualchars,visualblocks,nonbreaking,anchor,link,imgmanager,spellchecker,article,spellchecker,article,browser,contextmenu,inlinepopups,media,preview,source',1,1,0,'0000-00-00 00:00:00',''),(2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,hr',0,2,0,'0000-00-00 00:00:00',''),(3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect,textpattern',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}'),(4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect,textpattern',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}'),(5,'Markdown','Sample Markdown Profile','','6,7,3,4,5,8','',0,'desktop,tablet,phone','fullscreen,justifyleft,justifycenter,justifyfull,justifyright,link,unlink,imgmanager,styleselect','fullscreen,link,imgmanager,styleselect,inlinepopups,media,textpattern',0,5,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\"}}');
/*!40000 ALTER TABLE `ecs_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-07 14:54:58