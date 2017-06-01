-- MySQL dump 10.13  Distrib 5.7.18, for Linux (x86_64)
--
-- Host: localhost    Database: boozingo
-- ------------------------------------------------------
-- Server version	5.7.18

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
-- Table structure for table `bar_images`
--

DROP TABLE IF EXISTS `bar_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bar_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bar_id` int(10) unsigned NOT NULL,
  `bar_images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bar_id` (`bar_id`),
  CONSTRAINT `bar_images_ibfk_1` FOREIGN KEY (`bar_id`) REFERENCES `bars` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bar_images`
--

LOCK TABLES `bar_images` WRITE;
/*!40000 ALTER TABLE `bar_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `bar_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bars`
--

DROP TABLE IF EXISTS `bars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bars` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bar_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bar_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bar_details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `bar_cost` int(11) NOT NULL,
  `bar_geolocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `locality_id` int(10) unsigned NOT NULL,
  `bar_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `bar_contact` int(11) NOT NULL DEFAULT '0',
  `bar_working_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `bar_booze_served` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `bar_food` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `bar_sitting_facility` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bar_music` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `bar_payment` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `bar_ac` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `locality_id` (`locality_id`),
  CONSTRAINT `bars_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `localities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bars`
--

LOCK TABLES `bars` WRITE;
/*!40000 ALTER TABLE `bars` DISABLE KEYS */;
INSERT INTO `bars` VALUES (2,'Blue Fox Bar','150, Lekhraj Market, Faizabad Road, Block A, Indira Nagar, Lucknow, Uttar Pradesh 226016','Located in the heart of city Lekhraj Market Indira Nagar.\r\nSafe & Sophisticated place of all type of crowd',800,'26.871579,80.9395444','2017-05-28 15:19:51','2017-05-28 15:19:51',10,'N/A',0,'N/A','N/A','N/A','','','','');
/*!40000 ALTER TABLE `bars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beer_shops`
--

DROP TABLE IF EXISTS `beer_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beer_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `beer_shop_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `beer_shop_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `beer_shop_details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `beer_shop_cost` int(11) NOT NULL,
  `beer_shop_geolocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `beer_shop_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `beer_shop_contact` int(11) NOT NULL DEFAULT '0',
  `beer_shop_working_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `beer_shop_booze_served` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `beer_shop_payment` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `beer_shops_beer_shops_geolocation_unique` (`beer_shop_geolocation`),
  KEY `locality_id` (`locality_id`),
  CONSTRAINT `beer_shops_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `localities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beer_shops`
--

LOCK TABLES `beer_shops` WRITE;
/*!40000 ALTER TABLE `beer_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `beer_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beer_shops_images`
--

DROP TABLE IF EXISTS `beer_shops_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beer_shops_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `beer_shop_id` int(10) unsigned NOT NULL,
  `beer_shop_images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `beer_shop_id` (`beer_shop_id`),
  CONSTRAINT `beer_shops_images_ibfk_1` FOREIGN KEY (`beer_shop_id`) REFERENCES `beer_shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beer_shops_images`
--

LOCK TABLES `beer_shops_images` WRITE;
/*!40000 ALTER TABLE `beer_shops_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `beer_shops_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (4,'Lucknow','cities/May2017/WdKuRCWyY9m67yFIwdIQ.jpg','2017-05-28 15:07:00','2017-05-28 15:07:35');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'',1),(2,1,'author_id','text','Author',1,0,1,1,0,1,'',2),(3,1,'category_id','text','Category',1,0,1,1,1,0,'',3),(4,1,'title','text','Title',1,1,1,1,1,1,'',4),(5,1,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',5),(6,1,'body','rich_text_box','Body',1,0,1,1,1,1,'',6),(7,1,'image','image','Post Image',0,1,1,1,1,1,'\n{\n    \"resize\": {\n        \"width\": \"1000\",\n        \"height\": \"null\"\n    },\n    \"quality\": \"70%\",\n    \"upsize\": true,\n    \"thumbnails\": [\n        {\n            \"name\": \"medium\",\n            \"scale\": \"50%\"\n        },\n        {\n            \"name\": \"small\",\n            \"scale\": \"25%\"\n        },\n        {\n            \"name\": \"cropped\",\n            \"crop\": {\n                \"width\": \"300\",\n                \"height\": \"250\"\n            }\n        }\n    ]\n}',7),(8,1,'slug','text','slug',1,0,1,1,1,1,'\n{\n    \"slugify\": {\n        \"origin\": \"title\",\n        \"forceUpdate\": true\n    }\n}',8),(9,1,'meta_description','text_area','meta_description',1,0,1,1,1,1,'',9),(10,1,'meta_keywords','text_area','meta_keywords',1,0,1,1,1,1,'',10),(11,1,'status','select_dropdown','status',1,1,1,1,1,1,'\n{\n    \"default\": \"DRAFT\",\n    \"options\": {\n        \"PUBLISHED\": \"published\",\n        \"DRAFT\": \"draft\",\n        \"PENDING\": \"pending\"\n    }\n}',11),(12,1,'created_at','timestamp','created_at',0,1,1,0,0,0,'',12),(13,1,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',13),(14,2,'id','number','id',1,0,0,0,0,0,'',1),(15,2,'author_id','text','author_id',1,0,0,0,0,0,'',2),(16,2,'title','text','title',1,1,1,1,1,1,'',3),(17,2,'excerpt','text_area','excerpt',1,0,1,1,1,1,'',4),(18,2,'body','rich_text_box','body',1,0,1,1,1,1,'',5),(19,2,'slug','text','slug',1,0,1,1,1,1,'{\"slugify\":{\"origin\":\"title\"}}',6),(20,2,'meta_description','text','meta_description',1,0,1,1,1,1,'',7),(21,2,'meta_keywords','text','meta_keywords',1,0,1,1,1,1,'',8),(22,2,'status','select_dropdown','status',1,1,1,1,1,1,'{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}',9),(23,2,'created_at','timestamp','created_at',1,1,1,0,0,0,'',10),(24,2,'updated_at','timestamp','updated_at',1,0,0,0,0,0,'',11),(25,2,'image','image','image',0,1,1,1,1,1,'',12),(26,3,'id','number','id',1,0,0,0,0,0,'',1),(27,3,'name','text','name',1,1,1,1,1,1,'',2),(28,3,'email','text','email',1,1,1,1,1,1,'',3),(29,3,'password','password','password',1,0,0,1,1,0,'',4),(30,3,'remember_token','text','remember_token',0,0,0,0,0,0,'',5),(31,3,'created_at','timestamp','created_at',0,1,1,0,0,0,'',6),(32,3,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(33,3,'avatar','image','avatar',0,1,1,1,1,1,'',8),(34,5,'id','number','id',1,0,0,0,0,0,'',1),(35,5,'name','text','name',1,1,1,1,1,1,'',2),(36,5,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(37,5,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(38,4,'id','number','id',1,0,0,0,0,0,'',1),(39,4,'parent_id','select_dropdown','parent_id',0,0,1,1,1,1,'{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}',2),(40,4,'order','text','order',1,1,1,1,1,1,'{\"default\":1}',3),(41,4,'name','text','name',1,1,1,1,1,1,'',4),(42,4,'slug','text','slug',1,1,1,1,1,1,'',5),(43,4,'created_at','timestamp','created_at',0,0,1,0,0,0,'',6),(44,4,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',7),(45,6,'id','number','id',1,0,0,0,0,0,'',1),(46,6,'name','text','Name',1,1,1,1,1,1,'',2),(47,6,'created_at','timestamp','created_at',0,0,0,0,0,0,'',3),(48,6,'updated_at','timestamp','updated_at',0,0,0,0,0,0,'',4),(49,6,'display_name','text','Display Name',1,1,1,1,1,1,'',5),(50,1,'seo_title','text','seo_title',0,1,1,1,1,1,'',14),(51,1,'featured','checkbox','featured',1,1,1,1,1,1,'',15),(52,3,'role_id','text','role_id',1,1,1,1,1,1,'',9),(54,9,'id','number','Id',1,0,0,0,0,0,NULL,1),(55,9,'image_purpose','text_area','Image Purpose',1,1,1,1,1,1,NULL,2),(56,9,'img_url','image','Img Url',1,1,1,1,1,1,NULL,3),(57,9,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(58,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(91,16,'bar_id','number','Bar Id',1,0,0,0,0,0,NULL,1),(92,16,'bar_name','text','Bar Name',1,1,1,1,1,1,NULL,3),(93,16,'bar_address','text_area','Bar Address',1,1,1,1,1,1,NULL,4),(94,16,'bar_attractions','text_area','Bar Attractions',1,1,1,1,1,1,NULL,5),(95,16,'bar_details','text_area','Bar Details',1,1,1,1,1,1,NULL,6),(96,16,'bar_cost','number','Bar Cost',1,1,1,1,1,1,NULL,7),(97,16,'bar_geolocation','text','Bar Geolocation',1,1,1,1,1,1,NULL,8),(98,16,'locality_id','number','Locality Id',1,1,1,1,1,1,NULL,2),(104,18,'id','number','Id',1,0,0,0,0,0,NULL,1),(105,18,'purpose','radio_btn','Purpose',0,1,1,1,1,1,'{\"default\":\"offer\",\"options\":{\"main_banner\":\"banner image\",\"offer\":\"offers image\",\"ads\":\"ads image\"}}',2),(106,18,'image_url','image','Image Url',0,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(107,18,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(108,18,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(114,20,'city_id','number','City Id',1,0,0,0,0,0,NULL,1),(115,20,'city_name','text','City Name',1,1,1,1,1,1,NULL,2),(116,20,'city_image','image','City Image',1,1,1,1,1,1,NULL,3),(117,20,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(118,20,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(120,21,'locality_name','text','Locality Name',1,1,1,1,1,1,NULL,3),(121,21,'city_id','select_dropdown','City Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"city_name\",\"page_slug\":\"admin/cities\"}}',2),(122,21,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(123,21,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(125,22,'bar_name','text','Bar Name',1,1,1,1,1,1,NULL,3),(126,22,'bar_address','text','Bar Address',1,1,1,1,1,1,NULL,4),(127,22,'bar_attractions','text_area','Bar Attractions',1,1,1,1,1,1,NULL,5),(128,22,'bar_details','text_area','Bar Details',1,1,1,1,1,1,NULL,6),(129,22,'bar_cost','number','Bar Cost',1,1,1,1,1,1,NULL,7),(130,22,'bar_geolocation','text','Bar Geolocation',0,1,1,1,1,1,NULL,8),(131,23,'id','number','Id',1,0,0,0,0,0,NULL,1),(132,23,'bar_id','select_dropdown','Bar Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"bar_address\",\"page_slug\":\"admin/bars\"}}',2),(133,23,'bar_images','multiple_images','Bar Images',1,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(134,23,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(135,23,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(137,24,'lounge_name','text','Lounge Name',1,1,1,1,1,1,NULL,3),(138,24,'lounge_address','text','Lounge Address',1,1,1,1,1,1,NULL,4),(139,24,'lounge_attractions','text','Lounge Attractions',1,1,1,1,1,1,NULL,5),(140,24,'lounge_details','text_area','Lounge Details',1,1,1,1,1,1,NULL,6),(141,24,'lounge_cost','number','Lounge Cost',1,1,1,1,1,1,NULL,7),(142,24,'lounge_geolocation','text','Lounge Geolocation',0,1,1,1,1,1,NULL,8),(143,24,'locality_id','select_dropdown','Locality Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"locality_name\",\"page_slug\":\"admin/localities\"}}',2),(144,24,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,9),(145,24,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(146,25,'id','number','Id',1,0,0,0,0,0,NULL,1),(147,25,'lounge_id','select_dropdown','Lounge Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"lounge_address\",\"page_slug\":\"admin/lounges\"}}',2),(149,25,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(150,25,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(152,26,'pub_name','text','Pub Name',1,1,1,1,1,1,NULL,3),(153,26,'pub_address','text','Pub Address',1,1,1,1,1,1,NULL,4),(154,26,'pub_attractions','text_area','Pub Attractions',1,1,1,1,1,1,NULL,5),(155,26,'pub_details','text_area','Pub Details',1,1,1,1,1,1,NULL,6),(156,26,'pub_cost','number','Pub Cost',1,1,1,1,1,1,NULL,7),(157,26,'pub_geolocation','text','Pub Geolocation',0,1,1,1,1,1,NULL,8),(158,26,'locality_id','select_dropdown','Locality Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"locality_name\",\"page_slug\":\"admin/localities\"}}',2),(159,26,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,9),(160,26,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(161,27,'id','number','Id',1,0,0,0,0,0,NULL,1),(162,27,'pub_id','select_dropdown','Pub Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"pub_address\",\"page_slug\":\"admin/pubs\"}}',2),(163,27,'pub_images','multiple_images','Pub Images',1,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(164,27,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(165,27,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(166,25,'lounge_images','multiple_images','Lounge Images',1,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(174,28,'locality_id','select_dropdown','Locality Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"locality_name\",\"page_slug\":\"admin/localities\"}}',2),(175,28,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,9),(176,28,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(184,29,'locality_id','select_dropdown','Locality Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"locality_name\",\"page_slug\":\"admin/localities\"}}',2),(185,29,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,9),(186,29,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(187,30,'id','number','Id',1,0,0,0,0,0,NULL,1),(188,30,'model_shop_id','select_dropdown','Model Shop Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"model_shop_address\",\"page_slug\":\"admin/model-shops\"}}',2),(189,30,'model_shop_images','multiple_images','Model Shop Images',1,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(190,30,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(191,30,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(192,31,'id','number','Id',1,0,0,0,0,0,NULL,1),(193,31,'beer_shop_id','select_dropdown','Beer Shop Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"beer_shop_address\",\"page_slug\":\"admin/beer-shops\"}}',2),(194,31,'beer_shop_images','multiple_images','Beer Shop Images',1,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(195,31,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(196,31,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(197,32,'id','number','Id',1,0,0,0,0,0,NULL,1),(198,32,'Liquor_shop_id','select_dropdown','Liquor Shop Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"liquor_shop_address\",\"page_slug\":\"admin/liquor-shops\"}}',2),(199,32,'Liquor_shop_images','multiple_images','Liquor Shop Images',1,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(200,32,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(201,32,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(203,33,'liquor_shop_name','text','Liquor Shop Name',1,1,1,1,1,1,NULL,5),(204,33,'liquor_shop_address','text','Liquor Shop Address',1,1,1,1,1,1,NULL,6),(205,33,'liquor_shop_attractions','text_area','Liquor Shop Attractions',1,1,1,1,1,1,NULL,7),(206,33,'liquor_shop_details','text_area','Liquor Shop Details',1,1,1,1,1,1,NULL,8),(207,33,'liquor_shop_cost','number','Liquor Shop Cost',1,1,1,1,1,1,NULL,9),(208,33,'liquor_shop_geolocation','text','Liquor Shop Geolocation',0,1,1,1,1,1,NULL,10),(209,33,'locality_id','select_dropdown','Locality Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"locality_name\",\"page_slug\":\"admin/localities\"}}',2),(210,33,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,3),(211,33,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(212,21,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(213,22,'id','number','Id',1,0,0,0,0,0,NULL,1),(214,22,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,9),(215,22,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(216,22,'locality_id','select_dropdown','Locality Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"locality_name\",\"page_slug\":\"admin/localities\"}}',2),(217,24,'id','number','Id',1,0,0,0,0,0,NULL,1),(218,26,'id','number','Id',1,0,0,0,0,0,NULL,1),(219,29,'id','number','Id',1,0,0,0,0,0,NULL,1),(220,29,'beer_shop_name','text','Beer Shop Name',1,1,1,1,1,1,NULL,3),(221,29,'beer_shop_address','text','Beer Shop Address',1,1,1,1,1,1,NULL,4),(222,29,'beer_shop_sttractions','text_area','Beer Shop Sttractions',1,1,1,1,1,1,NULL,5),(223,29,'beer_shop_details','text_area','Beer Shop Details',1,1,1,1,1,1,NULL,6),(224,29,'beer_shop_cost','number','Beer Shop Cost',1,1,1,1,1,1,NULL,7),(225,29,'beer_shop_geolocation','text','Beer Shop Geolocation',0,1,1,1,1,1,NULL,8),(233,28,'id','checkbox','Id',1,0,0,0,0,0,NULL,1),(234,28,'model_shop_name','text','Model Shop Name',1,1,1,1,1,1,NULL,3),(235,28,'model_shop_address','text','Model Shop Address',1,1,1,1,1,1,NULL,4),(236,28,'model_shop_attractions','text_area','Model Shop Attractions',1,1,1,1,1,1,NULL,5),(237,28,'model_shop_details','text_area','Model Shop Details',1,1,1,1,1,1,NULL,6),(238,28,'model_shop_cost','number','Model Shop Cost',1,1,1,1,1,1,NULL,7),(239,28,'model_shop_geolocation','text','Model Shop Geolocation',0,1,1,1,1,1,NULL,8),(241,33,'id','number','Id',1,0,0,0,0,0,NULL,1),(242,34,'id','number','Id',1,0,0,0,0,0,NULL,1),(243,34,'locality_id','select_dropdown','Locality Id',0,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"locality_name\",\"page_slug\":\"admin/localities\"}}',2),(244,34,'night_club_name','text','Night Club Name',0,1,1,1,1,1,NULL,3),(245,34,'night_club_address','text','Night Club Address',0,1,1,1,1,1,NULL,4),(246,34,'night_club_attractions','text_area','Night Club Attractions',0,1,1,1,1,1,NULL,5),(247,34,'night_club_details','text_area','Night Club Details',0,1,1,1,1,1,NULL,6),(248,34,'night_club_cost','number','Night Club Cost',0,1,1,1,1,1,NULL,7),(249,34,'night_club_geolocation','text','Night Club Geolocation',0,1,1,1,1,1,NULL,8),(250,34,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,9),(251,34,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,10),(252,35,'id','number','Id',1,0,0,0,0,0,NULL,1),(253,35,'night_club_id','select_dropdown','Night Club Id',1,1,1,1,1,1,'{\"relationship\":{\"key\":\"id\",\"label\":\"night_club_address\",\"page_slug\":\"admin/night-clubs\"}}',2),(254,35,'night_club_images','multiple_images','Night Club Images',1,1,1,1,1,1,'{\"quality\":\"80%\"}',3),(255,35,'created_at','timestamp','Created At',0,1,1,1,0,1,NULL,4),(256,35,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,5),(257,22,'bar_time','text','Bar Time',1,1,1,1,1,1,NULL,11),(258,22,'bar_contact','number','Bar Contact',1,1,1,1,1,1,NULL,12),(259,22,'bar_working_day','text','Bar Working Day',1,1,1,1,1,1,NULL,13),(260,22,'bar_booze_served','text','Bar Booze Served',1,1,1,1,1,1,NULL,14),(261,22,'bar_food','radio_btn','Bar Food',1,1,1,1,1,1,'{\"default\":\"n/a\",\"options\":{\"veg\":\"Veg\",\"nonveg\":\"Non Veg\",\"both\":\"Both\",\"n/a\":\"N/A\"}}',15),(262,22,'bar_sitting_facility','radio_btn','Bar Sitting Facility',1,1,1,1,1,1,'{\"default\":\"yes\",\"options\":{\"yes\":\"Yes\",\"no\":\"No\"}}',16),(263,22,'bar_music','radio_btn','Bar Music',1,1,1,1,1,1,'{\"default\":\"available\",\"options\":{\"available\":\"available\",\"notavailable\":\"Not available\"}}',17),(264,22,'bar_payment','radio_btn','Bar Payment',1,1,1,1,1,1,'{\"default\":\"cash\",\"options\":{\"cash\":\"cash\",\"credit/debit card\":\"credit/debit card\",\"all\":\"Both\"}}',18),(265,22,'bar_ac','radio_btn','Bar Ac',1,1,1,1,1,1,'{\"default\":\"nonac\",\"options\":{\"ac\":\"Yes\",\"nonac\":\"No\"}}',19),(266,24,'lounge_time','text','Lounge Time',1,1,1,1,1,1,NULL,11),(267,24,'lounge_contact','number','Lounge Contact',1,1,1,1,1,1,NULL,12),(268,24,'lounge_working_day','text','Lounge Working Day',1,1,1,1,1,1,NULL,13),(269,24,'lounge_booze_served','text','Lounge Booze Served',1,1,1,1,1,1,NULL,14),(270,24,'lounge_food','radio_btn','Lounge Food',1,1,1,1,1,1,'{\"default\":\"n/a\",\"options\":{\"veg\":\"Veg\",\"nonveg\":\"Non Veg\",\"both\":\"Both\",\"n/a\":\"N/A\"}}',15),(271,24,'lounge_sitting_facility','radio_btn','Lounge Sitting Facility',1,1,1,1,1,1,'{\"default\":\"yes\",\"options\":{\"yes\":\"Yes\",\"no\":\"No\"}}',16),(272,24,'lounge_music','radio_btn','Lounge Music',1,1,1,1,1,1,'{\"default\":\"available\",\"options\":{\"available\":\"available\",\"notavailable\":\"Not available\"}}',17),(273,24,'lounge_payment','radio_btn','Lounge Payment',1,1,1,1,1,1,'{\"default\":\"cash\",\"options\":{\"cash\":\"cash\",\"credit/debit card\":\"credit/debit card\",\"all\":\"Both\"}}',18),(274,24,'lounge_ac','radio_btn','Lounge Ac',1,1,1,1,1,1,'{\"default\":\"nonac\",\"options\":{\"ac\":\"Yes\",\"nonac\":\"No\"}}',19),(275,26,'pub_time','text','Pub Time',1,1,1,1,1,1,NULL,11),(276,26,'pub_contact','number','Pub Contact',1,1,1,1,1,1,NULL,12),(277,26,'pub_working_day','text','Pub Working Day',1,1,1,1,1,1,NULL,13),(278,26,'pub_booze_served','text','Pub Booze Served',1,1,1,1,1,1,NULL,14),(279,26,'pub_food','radio_btn','Pub Food',1,1,1,1,1,1,'{\"default\":\"n/a\",\"options\":{\"veg\":\"Veg\",\"nonveg\":\"Non Veg\",\"both\":\"Both\",\"n/a\":\"N/A\"}}',15),(280,26,'pub_sitting_facility','radio_btn','Pub Sitting Facility',1,1,1,1,1,1,'{\"default\":\"yes\",\"options\":{\"yes\":\"Yes\",\"no\":\"No\"}}',16),(281,26,'pub_music','radio_btn','Pub Music',1,1,1,1,1,1,'{\"default\":\"available\",\"options\":{\"available\":\"available\",\"notavailable\":\"Not available\"}}',17),(282,26,'pub_payment','radio_btn','Pub Payment',1,1,1,1,1,1,'{\"default\":\"cash\",\"options\":{\"cash\":\"cash\",\"credit/debit card\":\"credit/debit card\",\"all\":\"Both\"}}',18),(283,26,'pub_ac','radio_btn','Pub Ac',1,1,1,1,1,1,'{\"default\":\"nonac\",\"options\":{\"ac\":\"Yes\",\"nonac\":\"No\"}}',19),(284,34,'night_club_time','text','Night Club Time',1,1,1,1,1,1,NULL,11),(285,34,'night_club_contact','number','Night Club Contact',1,1,1,1,1,1,NULL,12),(286,34,'night_club_working_day','text','Night Club Working Day',1,1,1,1,1,1,NULL,13),(287,34,'night_club_booze_served','text','Night Club Booze Served',1,1,1,1,1,1,NULL,14),(288,34,'night_club_food','radio_btn','Night Club Food',1,1,1,1,1,1,'{\"default\":\"n/a\",\"options\":{\"veg\":\"Veg\",\"nonveg\":\"Non Veg\",\"both\":\"Both\",\"n/a\":\"N/A\"}}',15),(289,34,'night_club_sitting_facility','radio_btn','Night Club Sitting Facility',1,1,1,1,1,1,'{\"default\":\"yes\",\"options\":{\"yes\":\"Yes\",\"no\":\"No\"}}',16),(290,34,'night_club_music','radio_btn','Night Club Music',1,1,1,1,1,1,'{\"default\":\"available\",\"options\":{\"available\":\"available\",\"notavailable\":\"Not available\"}}',17),(291,34,'night_club_payment','radio_btn','Night Club Payment',1,1,1,1,1,1,'{\"default\":\"cash\",\"options\":{\"cash\":\"cash\",\"credit/debit card\":\"credit/debit card\",\"all\":\"Both\"}}',18),(292,34,'night_club_ac','radio_btn','Night Club Ac',1,1,1,1,1,1,'{\"default\":\"nonac\",\"options\":{\"ac\":\"Yes\",\"nonac\":\"No\"}}',19),(293,29,'beer_shop_time','text','Beer Shop Time',1,1,1,1,1,1,NULL,11),(294,29,'beer_shop_contact','number','Beer Shop Contact',1,1,1,1,1,1,NULL,12),(295,29,'beer_shop_working_day','text','Beer Shop Working Day',1,1,1,1,1,1,NULL,13),(296,29,'beer_shop_booze_served','text','Beer Shop Booze Served',1,1,1,1,1,1,NULL,14),(297,29,'beer_shop_payment','radio_btn','Beer Shop Payment',1,1,1,1,1,1,'{\"default\":\"cash\",\"options\":{\"cash\":\"cash\",\"credit/debit card\":\"credit/debit card\",\"all\":\"Both\"}}',15),(298,33,'liquor_shop_time','text','Liquor Shop Time',1,1,1,1,1,1,NULL,11),(299,33,'liquor_shop_contact','number','Liquor Shop Contact',1,1,1,1,1,1,NULL,12),(300,33,'liquor_shop_working_day','text','Liquor Shop Working Day',1,1,1,1,1,1,NULL,13),(301,33,'liquor_shop_booze_served','text','Liquor Shop Booze Served',1,1,1,1,1,1,NULL,14),(302,33,'liquor_shop_payment','radio_btn','Liquor Shop Payment',1,1,1,1,1,1,'{\"default\":\"cash\",\"options\":{\"cash\":\"cash\",\"credit/debit card\":\"credit/debit card\",\"all\":\"Both\"}}',15),(303,28,'model_shop_time','text','Model Shop Time',1,1,1,1,1,1,NULL,11),(304,28,'model_shop_contact','number','Model Shop Contact',1,1,1,1,1,1,NULL,12),(305,28,'model_shop_working_day','text','Model Shop Working Day',1,1,1,1,1,1,NULL,13),(306,28,'model_shop_booze_served','text','Model Shop Booze Served',1,1,1,1,1,1,NULL,14),(307,28,'model_shop_payment','radio_btn','Model Shop Payment',1,1,1,1,1,1,'{\"default\":\"cash\",\"options\":{\"cash\":\"cash\",\"credit/debit card\":\"credit/debit card\",\"all\":\"Both\"}}',15);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'posts','posts','Post','Posts','voyager-news','TCG\\Voyager\\Models\\Post','','',1,0,'2017-05-17 22:11:46','2017-05-17 22:11:46'),(2,'pages','pages','Page','Pages','voyager-file-text','TCG\\Voyager\\Models\\Page','','',1,0,'2017-05-17 22:11:46','2017-05-17 22:11:46'),(3,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','','',1,0,'2017-05-17 22:11:46','2017-05-17 22:11:46'),(4,'categories','categories','Category','Categories','voyager-categories','TCG\\Voyager\\Models\\Category','','',1,0,'2017-05-17 22:11:46','2017-05-17 22:11:46'),(5,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu','','',1,0,'2017-05-17 22:11:46','2017-05-17 22:11:46'),(6,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role','','',1,0,'2017-05-17 22:11:46','2017-05-17 22:11:46'),(9,'boozingo_images','boozingo_images','Boozingo Image','Boozingo Images',NULL,'App\\BoozingoImage',NULL,'It will store all the images used in in the app.',1,0,'2017-05-18 03:05:41','2017-05-18 03:05:41'),(16,'boozingo_bars','boozingo-bars','Boozingo Bar','Boozingo Bars',NULL,'App\\BoozingoBar',NULL,NULL,1,0,'2017-05-18 09:21:32','2017-05-18 09:21:32'),(18,'main_images','main-images','Main Image','Main Images',NULL,'App\\MainImage',NULL,NULL,1,0,'2017-05-18 09:35:09','2017-05-18 09:35:09'),(20,'cities','cities','City','Cities',NULL,'App\\City',NULL,NULL,1,0,'2017-05-18 09:46:53','2017-05-18 09:46:53'),(21,'localities','localities','Locality','Localities',NULL,'App\\Locality',NULL,NULL,1,0,'2017-05-18 09:53:22','2017-05-18 09:53:22'),(22,'bars','bars','Bar','Bars',NULL,'App\\Bar',NULL,NULL,1,0,'2017-05-18 09:59:00','2017-05-18 09:59:00'),(23,'bar_images','bar-images','Bar Image','Bar Images',NULL,'App\\BarImage',NULL,NULL,1,0,'2017-05-18 10:03:12','2017-05-18 10:03:12'),(24,'lounges','lounges','Lounge','Lounges',NULL,'App\\Lounge',NULL,NULL,1,0,'2017-05-18 23:23:54','2017-05-18 23:23:54'),(25,'lounge_images','lounge-images','Lounge Image','Lounge Images',NULL,'App\\LoungeImage',NULL,NULL,1,0,'2017-05-18 23:27:40','2017-05-18 23:27:40'),(26,'pubs','pubs','Pub','Pubs',NULL,'App\\Pub',NULL,NULL,1,0,'2017-05-18 23:32:45','2017-05-18 23:32:45'),(27,'pub_images','pub-images','Pub Image','Pub Images',NULL,'App\\PubImage',NULL,NULL,1,0,'2017-05-18 23:36:15','2017-05-18 23:36:15'),(28,'model_shops','model-shops','Model Shop','Model Shops',NULL,'App\\ModelShop',NULL,NULL,1,0,'2017-05-19 09:21:49','2017-05-19 09:21:49'),(29,'beer_shops','beer-shops','Beer Shop','Beer Shops',NULL,'App\\BeerShop',NULL,NULL,1,0,'2017-05-19 09:28:21','2017-05-19 09:28:21'),(30,'model_shop_images','model-shop-images','Model Shop Image','Model Shop Images',NULL,'App\\ModelShopImage',NULL,NULL,1,0,'2017-05-19 09:36:22','2017-05-19 09:36:22'),(31,'beer_shops_images','beer-shops-images','Beer Shops Image','Beer Shops Images',NULL,'App\\BeerShopsImage',NULL,NULL,1,0,'2017-05-19 09:38:08','2017-05-19 09:38:08'),(32,'liquor_shop_images','liquor-shop-images','Liquor Shop Image','Liquor Shop Images',NULL,'App\\LiquorShopImage',NULL,NULL,1,0,'2017-05-19 09:44:18','2017-05-19 09:44:18'),(33,'liquor_shops','liquor-shops','Liquor Shop','Liquor Shops',NULL,'App\\LiquorShop',NULL,NULL,1,0,'2017-05-19 09:46:15','2017-05-19 09:46:15'),(34,'night_clubs','night-clubs','Night Club','Night Clubs',NULL,'App\\NightClub',NULL,NULL,1,0,'2017-05-31 19:30:24','2017-05-31 19:30:24'),(35,'night_club_images','night-club-images','Night Club Image','Night Club Images',NULL,'App\\NightClubImage',NULL,NULL,1,0,'2017-05-31 19:36:39','2017-05-31 19:36:39');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquor_shop_images`
--

DROP TABLE IF EXISTS `liquor_shop_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liquor_shop_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Liquor_shop_id` int(10) unsigned NOT NULL,
  `Liquor_shop_images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Liquor_shop_id` (`Liquor_shop_id`),
  CONSTRAINT `liquor_shop_images_ibfk_1` FOREIGN KEY (`Liquor_shop_id`) REFERENCES `liquor_shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquor_shop_images`
--

LOCK TABLES `liquor_shop_images` WRITE;
/*!40000 ALTER TABLE `liquor_shop_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `liquor_shop_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `liquor_shops`
--

DROP TABLE IF EXISTS `liquor_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `liquor_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `liquor_shop_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `liquor_shop_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `liquor_shop_details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `liquor_shop_cost` int(11) NOT NULL,
  `liquor_shop_geolocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `liquor_shop_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `liquor_shop_contact` int(11) NOT NULL DEFAULT '0',
  `liquor_shop_working_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `liquor_shop_booze_served` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `liquor_shop_payment` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `liquor_shops_liquor_shop_geolocation_unique` (`liquor_shop_geolocation`),
  KEY `locality_id` (`locality_id`),
  CONSTRAINT `liquor_shops_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `localities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `liquor_shops`
--

LOCK TABLES `liquor_shops` WRITE;
/*!40000 ALTER TABLE `liquor_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `liquor_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `localities`
--

DROP TABLE IF EXISTS `localities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `localities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locality_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `localities_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `localities`
--

LOCK TABLES `localities` WRITE;
/*!40000 ALTER TABLE `localities` DISABLE KEYS */;
INSERT INTO `localities` VALUES (10,'Indira Nagar',4,'2017-05-28 15:08:31','2017-05-28 15:08:31'),(11,'Vikas Nagar',4,'2017-05-31 13:37:00','2017-05-31 13:38:22');
/*!40000 ALTER TABLE `localities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lounge_images`
--

DROP TABLE IF EXISTS `lounge_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lounge_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lounge_id` int(10) unsigned NOT NULL,
  `lounge_images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lounge_id` (`lounge_id`),
  CONSTRAINT `lounge_images_ibfk_1` FOREIGN KEY (`lounge_id`) REFERENCES `lounges` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lounge_images`
--

LOCK TABLES `lounge_images` WRITE;
/*!40000 ALTER TABLE `lounge_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `lounge_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lounges`
--

DROP TABLE IF EXISTS `lounges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lounges` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lounge_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lounge_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lounge_details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `lounge_cost` int(11) NOT NULL,
  `lounge_geolocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `lounge_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `lounge_contact` int(11) NOT NULL DEFAULT '0',
  `lounge_working_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `lounge_booze_served` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `lounge_food` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `lounge_sitting_facility` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lounge_music` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lounge_payment` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `lounge_ac` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lounges_lounge_geolocation_unique` (`lounge_geolocation`),
  KEY `locality_id` (`locality_id`),
  CONSTRAINT `lounges_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `localities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lounges`
--

LOCK TABLES `lounges` WRITE;
/*!40000 ALTER TABLE `lounges` DISABLE KEYS */;
/*!40000 ALTER TABLE `lounges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_images`
--

DROP TABLE IF EXISTS `main_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `purpose` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_url` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_images`
--

LOCK TABLES `main_images` WRITE;
/*!40000 ALTER TABLE `main_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Dashboard','/admin','_self','voyager-boat',NULL,NULL,1,'2017-05-17 22:11:48','2017-05-17 22:11:48',NULL,NULL),(2,1,'Media','/admin/media','_self','voyager-images',NULL,NULL,21,'2017-05-17 22:11:48','2017-05-31 19:37:35',NULL,NULL),(3,1,'Posts','/admin/posts','_self','voyager-news',NULL,NULL,22,'2017-05-17 22:11:48','2017-05-31 19:37:35',NULL,NULL),(4,1,'Users','/admin/users','_self','voyager-person',NULL,NULL,2,'2017-05-17 22:11:48','2017-05-18 08:46:12',NULL,NULL),(5,1,'Categories','/admin/categories','_self','voyager-categories',NULL,NULL,24,'2017-05-17 22:11:48','2017-05-31 19:37:35',NULL,NULL),(6,1,'Pages','/admin/pages','_self','voyager-file-text',NULL,NULL,23,'2017-05-17 22:11:48','2017-05-31 19:37:35',NULL,NULL),(7,1,'Roles','/admin/roles','_self','voyager-lock',NULL,NULL,3,'2017-05-17 22:11:48','2017-05-18 08:46:12',NULL,NULL),(8,1,'Tools','','_self','voyager-tools',NULL,NULL,25,'2017-05-17 22:11:49','2017-05-31 19:37:35',NULL,NULL),(9,1,'Menu Builder','/admin/menus','_self','voyager-list',NULL,8,1,'2017-05-17 22:11:49','2017-05-18 04:07:31',NULL,NULL),(10,1,'Database','/admin/database','_self','voyager-data',NULL,8,2,'2017-05-17 22:11:49','2017-05-18 04:07:31',NULL,NULL),(11,1,'Settings','/admin/settings','_self','voyager-settings',NULL,NULL,26,'2017-05-17 22:11:49','2017-05-31 19:37:35',NULL,NULL),(18,1,'main-images','/admin/main-images','_self',NULL,'#000000',NULL,4,'2017-05-18 09:36:07','2017-05-18 10:05:06',NULL,''),(19,1,'cities','/admin/cities','_self',NULL,'#000000',NULL,5,'2017-05-18 09:42:45','2017-05-18 10:05:13',NULL,''),(20,1,'localities','/admin/localities','_self',NULL,'#000000',NULL,6,'2017-05-18 09:54:17','2017-05-18 10:05:21',NULL,''),(21,1,'bars','/admin/bars','_self',NULL,'#000000',NULL,7,'2017-05-18 09:59:41','2017-05-18 10:05:26',NULL,''),(22,1,'bar-images','/admin/bar-images','_self',NULL,'#000000',NULL,8,'2017-05-18 10:03:59','2017-05-18 10:05:31',NULL,''),(23,1,'lounges','/admin/lounges','_self',NULL,'#000000',NULL,9,'2017-05-18 23:24:23','2017-05-19 01:05:01',NULL,''),(24,1,'lounge images','/admin/lounge-images','_self',NULL,'#000000',NULL,10,'2017-05-18 23:28:40','2017-05-19 01:05:07',NULL,''),(25,1,'pubs','/admin/pubs','_self',NULL,'#000000',NULL,11,'2017-05-18 23:33:14','2017-05-19 01:05:14',NULL,''),(26,1,'pub images','/admin/pub-images','_self',NULL,'#000000',NULL,12,'2017-05-18 23:38:13','2017-05-19 01:05:21',NULL,''),(27,1,'model-shops','/admin/model-shops','_self',NULL,'#000000',NULL,17,'2017-05-19 09:22:50','2017-06-01 07:20:56',NULL,''),(28,1,'beer shops','/admin/beer-shops','_self',NULL,'#000000',NULL,15,'2017-05-19 09:29:01','2017-06-01 07:20:56',NULL,''),(29,1,'model shop images','/admin/model-shop-images','_self',NULL,'#000000',NULL,18,'2017-05-19 09:37:04','2017-06-01 07:20:56',NULL,''),(30,1,'beer shops images','/admin/beer-shops-images','_self',NULL,'#000000',NULL,16,'2017-05-19 09:38:48','2017-06-01 07:20:56',NULL,''),(31,1,'liquor shop images','/admin/liquor-shop-images','_self',NULL,'#000000',NULL,20,'2017-05-19 09:45:06','2017-06-01 07:20:56',NULL,''),(32,1,'liquor shops','/admin/liquor-shops','_self',NULL,'#000000',NULL,19,'2017-05-19 09:46:54','2017-06-01 07:20:56',NULL,''),(33,1,'night-clubs','admin/night-clubs','_self',NULL,'#000000',NULL,13,'2017-05-31 19:30:54','2017-06-01 07:20:50',NULL,''),(34,1,'night-club-images','admin/night-club-images','_self',NULL,'#000000',NULL,14,'2017-05-31 19:37:18','2017-06-01 07:20:56',NULL,'');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2017-05-17 22:11:48','2017-05-17 22:11:48');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_01_01_000000_create_pages_table',1),(6,'2016_01_01_000000_create_posts_table',1),(7,'2016_02_15_204651_create_categories_table',1),(8,'2016_05_19_173453_create_menu_table',1),(9,'2016_10_21_190000_create_roles_table',1),(10,'2016_10_21_190000_create_settings_table',1),(11,'2016_11_30_135954_create_permission_table',1),(12,'2016_11_30_141208_create_permission_role_table',1),(13,'2016_12_26_201236_data_types__add__server_side',1),(14,'2017_01_13_000000_add_route_to_menu_items_table',1),(15,'2017_01_14_005015_create_translations_table',1),(16,'2017_01_15_000000_add_permission_group_id_to_permissions_table',1),(17,'2017_01_15_000000_create_permission_groups_table',1),(18,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(19,'2017_03_06_000000_add_controller_to_data_types_table',1),(20,'2017_04_21_000000_add_order_to_data_rows_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_shop_images`
--

DROP TABLE IF EXISTS `model_shop_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_shop_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_shop_id` int(10) unsigned NOT NULL,
  `model_shop_images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `model_shop_id` (`model_shop_id`),
  CONSTRAINT `model_shop_images_ibfk_1` FOREIGN KEY (`model_shop_id`) REFERENCES `model_shops` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_shop_images`
--

LOCK TABLES `model_shop_images` WRITE;
/*!40000 ALTER TABLE `model_shop_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_shop_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_shops`
--

DROP TABLE IF EXISTS `model_shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model_shops` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_shop_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model_shop_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model_shop_details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `model_shop_cost` int(11) NOT NULL,
  `model_shop_geolocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `model_shop_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `model_shop_contact` int(11) NOT NULL DEFAULT '0',
  `model_shop_working_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `model_shop_booze_served` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `model_shop_payment` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `model_shops_model_geolocation_unique` (`model_shop_geolocation`),
  KEY `locality_id` (`locality_id`),
  CONSTRAINT `model_shops_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `localities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_shops`
--

LOCK TABLES `model_shops` WRITE;
/*!40000 ALTER TABLE `model_shops` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `night_club_images`
--

DROP TABLE IF EXISTS `night_club_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `night_club_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `night_club_id` int(10) unsigned NOT NULL,
  `night_club_images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `night_club_images_night_club_id_index` (`night_club_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `night_club_images`
--

LOCK TABLES `night_club_images` WRITE;
/*!40000 ALTER TABLE `night_club_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `night_club_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `night_clubs`
--

DROP TABLE IF EXISTS `night_clubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `night_clubs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `locality_id` int(11) DEFAULT NULL,
  `night_club_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `night_club_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `night_club_details` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `night_club_cost` int(11) DEFAULT NULL,
  `night_club_geolocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `night_club_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `night_club_contact` int(11) NOT NULL DEFAULT '0',
  `night_club_working_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `night_club_booze_served` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `night_club_food` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `night_club_sitting_facility` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `night_club_music` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `night_club_payment` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `night_club_ac` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `night_clubs_locality_id_index` (`locality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `night_clubs`
--

LOCK TABLES `night_clubs` WRITE;
/*!40000 ALTER TABLE `night_clubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `night_clubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permission_groups_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_groups`
--

LOCK TABLES `permission_groups` WRITE;
/*!40000 ALTER TABLE `permission_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(40,1),(41,1),(42,1),(43,1),(44,1),(75,1),(76,1),(77,1),(78,1),(79,1),(85,1),(86,1),(87,1),(88,1),(89,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(2,'browse_database',NULL,'2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(3,'browse_media',NULL,'2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(4,'browse_settings',NULL,'2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(5,'browse_menus','menus','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(6,'read_menus','menus','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(7,'edit_menus','menus','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(8,'add_menus','menus','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(9,'delete_menus','menus','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(10,'browse_pages','pages','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(11,'read_pages','pages','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(12,'edit_pages','pages','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(13,'add_pages','pages','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(14,'delete_pages','pages','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(15,'browse_roles','roles','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(16,'read_roles','roles','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(17,'edit_roles','roles','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(18,'add_roles','roles','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(19,'delete_roles','roles','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(20,'browse_users','users','2017-05-17 22:11:49','2017-05-17 22:11:49',NULL),(21,'read_users','users','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(22,'edit_users','users','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(23,'add_users','users','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(24,'delete_users','users','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(25,'browse_posts','posts','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(26,'read_posts','posts','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(27,'edit_posts','posts','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(28,'add_posts','posts','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(29,'delete_posts','posts','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(30,'browse_categories','categories','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(31,'read_categories','categories','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(32,'edit_categories','categories','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(33,'add_categories','categories','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(34,'delete_categories','categories','2017-05-17 22:11:50','2017-05-17 22:11:50',NULL),(40,'browse_boozingo_images','boozingo_images','2017-05-18 03:05:41','2017-05-18 03:05:41',NULL),(41,'read_boozingo_images','boozingo_images','2017-05-18 03:05:41','2017-05-18 03:05:41',NULL),(42,'edit_boozingo_images','boozingo_images','2017-05-18 03:05:41','2017-05-18 03:05:41',NULL),(43,'add_boozingo_images','boozingo_images','2017-05-18 03:05:41','2017-05-18 03:05:41',NULL),(44,'delete_boozingo_images','boozingo_images','2017-05-18 03:05:41','2017-05-18 03:05:41',NULL),(75,'browse_boozingo_bars','boozingo_bars','2017-05-18 09:21:33','2017-05-18 09:21:33',NULL),(76,'read_boozingo_bars','boozingo_bars','2017-05-18 09:21:33','2017-05-18 09:21:33',NULL),(77,'edit_boozingo_bars','boozingo_bars','2017-05-18 09:21:33','2017-05-18 09:21:33',NULL),(78,'add_boozingo_bars','boozingo_bars','2017-05-18 09:21:33','2017-05-18 09:21:33',NULL),(79,'delete_boozingo_bars','boozingo_bars','2017-05-18 09:21:33','2017-05-18 09:21:33',NULL),(85,'browse_main_images','main_images','2017-05-18 09:35:09','2017-05-18 09:35:09',NULL),(86,'read_main_images','main_images','2017-05-18 09:35:09','2017-05-18 09:35:09',NULL),(87,'edit_main_images','main_images','2017-05-18 09:35:09','2017-05-18 09:35:09',NULL),(88,'add_main_images','main_images','2017-05-18 09:35:09','2017-05-18 09:35:09',NULL),(89,'delete_main_images','main_images','2017-05-18 09:35:09','2017-05-18 09:35:09',NULL),(95,'browse_cities','cities','2017-05-18 09:46:53','2017-05-18 09:46:53',NULL),(96,'read_cities','cities','2017-05-18 09:46:53','2017-05-18 09:46:53',NULL),(97,'edit_cities','cities','2017-05-18 09:46:53','2017-05-18 09:46:53',NULL),(98,'add_cities','cities','2017-05-18 09:46:53','2017-05-18 09:46:53',NULL),(99,'delete_cities','cities','2017-05-18 09:46:53','2017-05-18 09:46:53',NULL),(100,'browse_localities','localities','2017-05-18 09:53:22','2017-05-18 09:53:22',NULL),(101,'read_localities','localities','2017-05-18 09:53:22','2017-05-18 09:53:22',NULL),(102,'edit_localities','localities','2017-05-18 09:53:22','2017-05-18 09:53:22',NULL),(103,'add_localities','localities','2017-05-18 09:53:22','2017-05-18 09:53:22',NULL),(104,'delete_localities','localities','2017-05-18 09:53:22','2017-05-18 09:53:22',NULL),(105,'browse_bars','bars','2017-05-18 09:59:00','2017-05-18 09:59:00',NULL),(106,'read_bars','bars','2017-05-18 09:59:00','2017-05-18 09:59:00',NULL),(107,'edit_bars','bars','2017-05-18 09:59:00','2017-05-18 09:59:00',NULL),(108,'add_bars','bars','2017-05-18 09:59:00','2017-05-18 09:59:00',NULL),(109,'delete_bars','bars','2017-05-18 09:59:00','2017-05-18 09:59:00',NULL),(110,'browse_bar_images','bar_images','2017-05-18 10:03:12','2017-05-18 10:03:12',NULL),(111,'read_bar_images','bar_images','2017-05-18 10:03:12','2017-05-18 10:03:12',NULL),(112,'edit_bar_images','bar_images','2017-05-18 10:03:12','2017-05-18 10:03:12',NULL),(113,'add_bar_images','bar_images','2017-05-18 10:03:12','2017-05-18 10:03:12',NULL),(114,'delete_bar_images','bar_images','2017-05-18 10:03:12','2017-05-18 10:03:12',NULL),(115,'browse_lounges','lounges','2017-05-18 23:23:54','2017-05-18 23:23:54',NULL),(116,'read_lounges','lounges','2017-05-18 23:23:54','2017-05-18 23:23:54',NULL),(117,'edit_lounges','lounges','2017-05-18 23:23:54','2017-05-18 23:23:54',NULL),(118,'add_lounges','lounges','2017-05-18 23:23:54','2017-05-18 23:23:54',NULL),(119,'delete_lounges','lounges','2017-05-18 23:23:54','2017-05-18 23:23:54',NULL),(120,'browse_lounge_images','lounge_images','2017-05-18 23:27:40','2017-05-18 23:27:40',NULL),(121,'read_lounge_images','lounge_images','2017-05-18 23:27:40','2017-05-18 23:27:40',NULL),(122,'edit_lounge_images','lounge_images','2017-05-18 23:27:40','2017-05-18 23:27:40',NULL),(123,'add_lounge_images','lounge_images','2017-05-18 23:27:40','2017-05-18 23:27:40',NULL),(124,'delete_lounge_images','lounge_images','2017-05-18 23:27:40','2017-05-18 23:27:40',NULL),(125,'browse_pubs','pubs','2017-05-18 23:32:45','2017-05-18 23:32:45',NULL),(126,'read_pubs','pubs','2017-05-18 23:32:45','2017-05-18 23:32:45',NULL),(127,'edit_pubs','pubs','2017-05-18 23:32:45','2017-05-18 23:32:45',NULL),(128,'add_pubs','pubs','2017-05-18 23:32:45','2017-05-18 23:32:45',NULL),(129,'delete_pubs','pubs','2017-05-18 23:32:45','2017-05-18 23:32:45',NULL),(130,'browse_pub_images','pub_images','2017-05-18 23:36:15','2017-05-18 23:36:15',NULL),(131,'read_pub_images','pub_images','2017-05-18 23:36:15','2017-05-18 23:36:15',NULL),(132,'edit_pub_images','pub_images','2017-05-18 23:36:15','2017-05-18 23:36:15',NULL),(133,'add_pub_images','pub_images','2017-05-18 23:36:15','2017-05-18 23:36:15',NULL),(134,'delete_pub_images','pub_images','2017-05-18 23:36:15','2017-05-18 23:36:15',NULL),(135,'browse_model_shops','model_shops','2017-05-19 09:21:50','2017-05-19 09:21:50',NULL),(136,'read_model_shops','model_shops','2017-05-19 09:21:50','2017-05-19 09:21:50',NULL),(137,'edit_model_shops','model_shops','2017-05-19 09:21:50','2017-05-19 09:21:50',NULL),(138,'add_model_shops','model_shops','2017-05-19 09:21:50','2017-05-19 09:21:50',NULL),(139,'delete_model_shops','model_shops','2017-05-19 09:21:50','2017-05-19 09:21:50',NULL),(140,'browse_beer_shops','beer_shops','2017-05-19 09:28:21','2017-05-19 09:28:21',NULL),(141,'read_beer_shops','beer_shops','2017-05-19 09:28:21','2017-05-19 09:28:21',NULL),(142,'edit_beer_shops','beer_shops','2017-05-19 09:28:21','2017-05-19 09:28:21',NULL),(143,'add_beer_shops','beer_shops','2017-05-19 09:28:21','2017-05-19 09:28:21',NULL),(144,'delete_beer_shops','beer_shops','2017-05-19 09:28:21','2017-05-19 09:28:21',NULL),(145,'browse_model_shop_images','model_shop_images','2017-05-19 09:36:22','2017-05-19 09:36:22',NULL),(146,'read_model_shop_images','model_shop_images','2017-05-19 09:36:22','2017-05-19 09:36:22',NULL),(147,'edit_model_shop_images','model_shop_images','2017-05-19 09:36:22','2017-05-19 09:36:22',NULL),(148,'add_model_shop_images','model_shop_images','2017-05-19 09:36:22','2017-05-19 09:36:22',NULL),(149,'delete_model_shop_images','model_shop_images','2017-05-19 09:36:22','2017-05-19 09:36:22',NULL),(150,'browse_beer_shops_images','beer_shops_images','2017-05-19 09:38:08','2017-05-19 09:38:08',NULL),(151,'read_beer_shops_images','beer_shops_images','2017-05-19 09:38:08','2017-05-19 09:38:08',NULL),(152,'edit_beer_shops_images','beer_shops_images','2017-05-19 09:38:08','2017-05-19 09:38:08',NULL),(153,'add_beer_shops_images','beer_shops_images','2017-05-19 09:38:08','2017-05-19 09:38:08',NULL),(154,'delete_beer_shops_images','beer_shops_images','2017-05-19 09:38:08','2017-05-19 09:38:08',NULL),(155,'browse_liquor_shop_images','liquor_shop_images','2017-05-19 09:44:18','2017-05-19 09:44:18',NULL),(156,'read_liquor_shop_images','liquor_shop_images','2017-05-19 09:44:18','2017-05-19 09:44:18',NULL),(157,'edit_liquor_shop_images','liquor_shop_images','2017-05-19 09:44:18','2017-05-19 09:44:18',NULL),(158,'add_liquor_shop_images','liquor_shop_images','2017-05-19 09:44:18','2017-05-19 09:44:18',NULL),(159,'delete_liquor_shop_images','liquor_shop_images','2017-05-19 09:44:18','2017-05-19 09:44:18',NULL),(160,'browse_liquor_shops','liquor_shops','2017-05-19 09:46:15','2017-05-19 09:46:15',NULL),(161,'read_liquor_shops','liquor_shops','2017-05-19 09:46:15','2017-05-19 09:46:15',NULL),(162,'edit_liquor_shops','liquor_shops','2017-05-19 09:46:15','2017-05-19 09:46:15',NULL),(163,'add_liquor_shops','liquor_shops','2017-05-19 09:46:15','2017-05-19 09:46:15',NULL),(164,'delete_liquor_shops','liquor_shops','2017-05-19 09:46:15','2017-05-19 09:46:15',NULL),(165,'browse_night_clubs','night_clubs','2017-05-31 19:30:24','2017-05-31 19:30:24',NULL),(166,'read_night_clubs','night_clubs','2017-05-31 19:30:24','2017-05-31 19:30:24',NULL),(167,'edit_night_clubs','night_clubs','2017-05-31 19:30:24','2017-05-31 19:30:24',NULL),(168,'add_night_clubs','night_clubs','2017-05-31 19:30:24','2017-05-31 19:30:24',NULL),(169,'delete_night_clubs','night_clubs','2017-05-31 19:30:24','2017-05-31 19:30:24',NULL),(170,'browse_night_club_images','night_club_images','2017-05-31 19:36:39','2017-05-31 19:36:39',NULL),(171,'read_night_club_images','night_club_images','2017-05-31 19:36:39','2017-05-31 19:36:39',NULL),(172,'edit_night_club_images','night_club_images','2017-05-31 19:36:39','2017-05-31 19:36:39',NULL),(173,'add_night_club_images','night_club_images','2017-05-31 19:36:39','2017-05-31 19:36:39',NULL),(174,'delete_night_club_images','night_club_images','2017-05-31 19:36:39','2017-05-31 19:36:39',NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `posts_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pub_images`
--

DROP TABLE IF EXISTS `pub_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pub_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pub_id` int(10) unsigned NOT NULL,
  `pub_images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pub_id` (`pub_id`),
  CONSTRAINT `pub_images_ibfk_1` FOREIGN KEY (`pub_id`) REFERENCES `pubs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pub_images`
--

LOCK TABLES `pub_images` WRITE;
/*!40000 ALTER TABLE `pub_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `pub_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pubs`
--

DROP TABLE IF EXISTS `pubs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pubs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pub_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pub_address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pub_details` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pub_cost` int(11) NOT NULL,
  `pub_geolocation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locality_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pub_time` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `pub_contact` int(11) NOT NULL DEFAULT '0',
  `pub_working_day` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `pub_booze_served` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `pub_food` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'N/A',
  `pub_sitting_facility` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pub_music` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pub_payment` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pub_ac` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pubs_pub_geolocation_unique` (`pub_geolocation`),
  KEY `locality_id` (`locality_id`),
  CONSTRAINT `pubs_ibfk_1` FOREIGN KEY (`locality_id`) REFERENCES `localities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pubs`
--

LOCK TABLES `pubs` WRITE;
/*!40000 ALTER TABLE `pubs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pubs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrator','2017-05-17 22:11:49','2017-05-17 22:11:49'),(2,'user','Normal User','2017-05-17 22:11:49','2017-05-17 22:11:49');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'title','Site Title','Boozingoo','','text',1),(2,'description','Site Description','Let\'s the fun begin','','text',2),(3,'logo','Site Logo','settings/May2017/DBZgEUhmO8Ur3eRrLj28.png','','image',3),(4,'admin_bg_image','Admin Background Image','settings/May2017/9dxJhSsINOV5yoelYX4B.jpg','','image',9),(5,'admin_title','Admin Title','Boozingo - Admin pannel','','text',4),(6,'admin_description','Admin Description','Admin pannel','','text',5),(7,'admin_loader','Admin Loader','','','image',6),(8,'admin_icon_image','Admin Icon Image','settings/May2017/ls4tpyAq9yFnxwobWyq0.png','','image',7),(9,'google_analytics_client_id','Google Analytics Client ID','','','text',9);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'data_types','display_name_singular',1,'pt','Post','2017-05-17 22:11:52','2017-05-17 22:11:52'),(2,'data_types','display_name_singular',2,'pt','Página','2017-05-17 22:11:52','2017-05-17 22:11:52'),(3,'data_types','display_name_singular',3,'pt','Utilizador','2017-05-17 22:11:52','2017-05-17 22:11:52'),(4,'data_types','display_name_singular',4,'pt','Categoria','2017-05-17 22:11:53','2017-05-17 22:11:53'),(5,'data_types','display_name_singular',5,'pt','Menu','2017-05-17 22:11:53','2017-05-17 22:11:53'),(6,'data_types','display_name_singular',6,'pt','Função','2017-05-17 22:11:53','2017-05-17 22:11:53'),(7,'data_types','display_name_plural',1,'pt','Posts','2017-05-17 22:11:53','2017-05-17 22:11:53'),(8,'data_types','display_name_plural',2,'pt','Páginas','2017-05-17 22:11:53','2017-05-17 22:11:53'),(9,'data_types','display_name_plural',3,'pt','Utilizadores','2017-05-17 22:11:53','2017-05-17 22:11:53'),(10,'data_types','display_name_plural',4,'pt','Categorias','2017-05-17 22:11:53','2017-05-17 22:11:53'),(11,'data_types','display_name_plural',5,'pt','Menus','2017-05-17 22:11:53','2017-05-17 22:11:53'),(12,'data_types','display_name_plural',6,'pt','Funções','2017-05-17 22:11:53','2017-05-17 22:11:53'),(13,'pages','title',1,'pt','Olá Mundo','2017-05-17 22:11:53','2017-05-17 22:11:53'),(14,'pages','slug',1,'pt','ola-mundo','2017-05-17 22:11:53','2017-05-17 22:11:53'),(15,'pages','body',1,'pt','<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>','2017-05-17 22:11:53','2017-05-17 22:11:53'),(16,'menu_items','title',1,'pt','Painel de Controle','2017-05-17 22:11:53','2017-05-17 22:11:53'),(17,'menu_items','title',2,'pt','Media','2017-05-17 22:11:53','2017-05-17 22:11:53'),(18,'menu_items','title',3,'pt','Publicações','2017-05-17 22:11:53','2017-05-17 22:11:53'),(19,'menu_items','title',4,'pt','Utilizadores','2017-05-17 22:11:53','2017-05-17 22:11:53'),(20,'menu_items','title',5,'pt','Categorias','2017-05-17 22:11:53','2017-05-17 22:11:53'),(21,'menu_items','title',6,'pt','Páginas','2017-05-17 22:11:53','2017-05-17 22:11:53'),(22,'menu_items','title',7,'pt','Funções','2017-05-17 22:11:53','2017-05-17 22:11:53'),(23,'menu_items','title',8,'pt','Ferramentas','2017-05-17 22:11:53','2017-05-17 22:11:53'),(24,'menu_items','title',9,'pt','Menus','2017-05-17 22:11:53','2017-05-17 22:11:53'),(25,'menu_items','title',10,'pt','Base de dados','2017-05-17 22:11:53','2017-05-17 22:11:53'),(26,'menu_items','title',11,'pt','Configurações','2017-05-17 22:11:53','2017-05-17 22:11:53');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'boozingo','superuser@gmail.com','users/default.png','$2y$10$yYRcwHHgkUm5IOe9r8rP9OlLcdtJAQaSuFJ.j/BKWF.iuQu4aABpS','GUH22HAx8virQZxEpeGNODOMcUc3l03fMl7TNe3e61BSEX32P80ToNQHVAGl','2017-05-17 22:11:52','2017-05-18 01:50:13'),(2,1,'pradeep pandey','pradeep@gmail.com','users/default.png','$2y$10$qJ87GMA4MATn6.aHFrrs5OfMMDU1PNMasrNY2dX6kJkL3HLH.QhNG','XL3bfaIFe8nu69GwgkLcB1QEc9HEjCDxetfxT20NARfUdvd7F02NiyB1JZNh','2017-05-18 01:53:18','2017-05-18 01:53:18');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-01 18:50:33
