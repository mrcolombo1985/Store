-- MySQL dump 10.13  Distrib 5.5.36, for Linux (x86_64)
--
-- Host: localhost    Database: emagholy_emag
-- ------------------------------------------------------
-- Server version	5.5.36-log

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
-- Table structure for table `Accounting1c`
--

DROP TABLE IF EXISTS `Accounting1c`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accounting1c` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) DEFAULT NULL,
  `object_type` int(11) DEFAULT NULL,
  `external_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_type` (`object_type`),
  KEY `external_id` (`external_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accounting1c`
--

LOCK TABLES `Accounting1c` WRITE;
/*!40000 ALTER TABLE `Accounting1c` DISABLE KEYS */;
/*!40000 ALTER TABLE `Accounting1c` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ActionLog`
--

DROP TABLE IF EXISTS `ActionLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionLog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `event` tinyint(255) NOT NULL,
  `model_name` varchar(50) NOT NULL,
  `model_title` text NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `event` (`event`),
  KEY `datetime` (`datetime`),
  KEY `model_name` (`model_name`)
) ENGINE=MyISAM AUTO_INCREMENT=541 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionLog`
--

LOCK TABLES `ActionLog` WRITE;
/*!40000 ALTER TABLE `ActionLog` DISABLE KEYS */;
INSERT INTO `ActionLog` (`id`, `username`, `event`, `model_name`, `model_title`, `datetime`) VALUES (1,'admin',1,'StoreAttribute','simple_product','2012-07-10 21:57:29'),(2,'admin',1,'StoreProductType','Simple Product','2012-07-10 21:57:55'),(3,'admin',1,'StoreProduct','Simple product test','2012-07-10 21:58:34'),(4,'admin',2,'StoreAttribute','simple_product','2012-07-10 22:11:20'),(5,'admin',2,'StoreProductType','Simple Product','2012-07-10 22:11:28'),(19,'admin',1,'StoreProductType','laptop','2012-07-30 22:55:28'),(8,'admin',2,'StoreAttribute','simple_product','2012-07-10 22:35:12'),(9,'admin',2,'StoreAttribute','simple_product','2012-07-10 22:35:57'),(10,'admin',1,'StoreAttribute','color','2012-07-10 22:36:22'),(11,'admin',2,'StoreProductType','Simple Product','2012-07-10 22:36:32'),(12,'admin',2,'StoreProduct','Simple product test','2012-07-10 22:36:51'),(13,'admin',2,'StoreAttribute','color','2012-07-10 22:37:16'),(14,'admin',2,'StoreProduct','Simple product test','2012-07-10 22:37:47'),(15,'admin',2,'Discount','Скидка на всю технику Apple','2012-07-10 22:38:20'),(16,'admin',2,'StoreAttribute','color','2012-07-10 22:42:51'),(17,'admin',2,'StoreAttribute','color','2012-07-10 22:43:27'),(20,'admin',1,'StoreManufacturer','Lenovo','2012-07-30 22:55:29'),(21,'admin',1,'StoreAttribute','processor_manufacturer','2012-07-30 22:55:30'),(22,'admin',1,'StoreAttribute','freq','2012-07-30 22:55:30'),(23,'admin',1,'StoreAttribute','memmory','2012-07-30 22:55:30'),(24,'admin',1,'StoreAttribute','memmory_type','2012-07-30 22:55:30'),(25,'admin',1,'StoreAttribute','screen','2012-07-30 22:55:30'),(26,'admin',1,'StoreAttribute','video','2012-07-30 22:55:30'),(27,'admin',1,'StoreAttribute','screen_dimension','2012-07-30 22:55:30'),(28,'admin',1,'StoreProduct','Lenovo B570','2012-07-30 22:55:30'),(29,'admin',1,'StoreProduct','Lenovo G570','2012-07-30 22:55:31'),(30,'admin',1,'StoreManufacturer','Asus','2012-07-30 22:55:31'),(31,'admin',1,'StoreProduct','ASUS K53U','2012-07-30 22:55:31'),(32,'admin',1,'StoreProduct','ASUS X54C','2012-07-30 22:55:31'),(33,'admin',1,'StoreManufacturer','Dell','2012-07-30 22:55:32'),(34,'admin',1,'StoreProduct','DELL INSPIRON N5050','2012-07-30 22:55:32'),(35,'admin',1,'StoreManufacturer','Fujitsu','2012-07-30 22:55:32'),(36,'admin',1,'StoreProduct','Fujitsu LIFEBOOK AH531','2012-07-30 22:55:32'),(37,'admin',1,'StoreManufacturer','HP','2012-07-30 22:55:32'),(38,'admin',1,'StoreProduct','HP EliteBook 8560w','2012-07-30 22:55:32'),(39,'admin',1,'StoreProduct','DELL ALIENWARE M17x','2012-07-30 22:55:32'),(40,'admin',1,'StoreManufacturer','Apple','2012-07-30 22:55:32'),(41,'admin',1,'StoreProduct','Apple MacBook Pro 15 Late 2011','2012-07-30 22:55:33'),(42,'admin',1,'StoreProduct','Lenovo THINKPAD W520','2012-07-30 22:55:33'),(43,'admin',1,'StoreManufacturer','Sony','2012-07-30 22:55:33'),(44,'admin',1,'StoreProduct','Sony VAIO VPC-F13S8R','2012-07-30 22:55:33'),(45,'admin',1,'StoreManufacturer','Acer','2012-07-30 22:55:33'),(46,'admin',1,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2012-07-30 22:55:33'),(47,'admin',2,'Discount','Скидка на всю технику Apple','2012-07-31 21:19:32'),(48,'admin',2,'Discount','Скидка на всю технику Apple','2012-07-31 21:20:01'),(49,'admin',2,'User','admin','2012-08-01 23:06:14'),(50,'admin',2,'User','admin','2012-08-01 23:15:22'),(51,'admin',1,'User','tester','2012-08-01 23:16:49'),(52,'admin',3,'User','tester','2012-08-01 23:17:24'),(53,'admin',1,'User','admin222','2012-08-01 23:18:34'),(54,'admin',3,'User','admin222','2012-08-01 23:18:50'),(55,'admin',3,'User','user1','2012-08-01 23:20:25'),(56,'admin',1,'Order','','2012-08-04 21:17:15'),(57,'admin',2,'Order','72','2012-08-04 21:17:22'),(58,'admin',2,'Order','72','2012-08-04 21:17:25'),(59,'admin',3,'Order','72','2012-08-17 00:22:25'),(60,'admin',3,'Order','71','2012-08-17 00:22:25'),(61,'admin',3,'Order','69','2012-08-17 00:22:25'),(62,'admin',3,'Order','70','2012-08-17 00:22:25'),(63,'admin',1,'StoreAttribute','textbox','2012-10-16 20:19:40'),(64,'admin',2,'StoreProductType','laptop','2012-10-16 20:20:09'),(65,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011','2012-10-16 20:20:48'),(66,'admin',2,'StoreAttribute','textbox','2012-10-16 20:22:04'),(67,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 sjdklfjskldfjk dslkj klsdjf klsfj klsdfj klsf klsjf klsjfkl sjfklsjfkl sjfkl sjflk sfj klsfj klsjf lksjf lskfj lsjdf ','2012-10-27 23:14:37'),(68,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2012-10-27 23:20:56'),(69,'admin',2,'StorePaymentMethod','Безналичная','2012-11-10 21:33:31'),(70,'admin',2,'StorePaymentMethod','Безналичная','2012-11-10 21:33:40'),(71,'admin',1,'StorePaymentMethod','Qiwi','2012-11-10 22:37:18'),(72,'admin',2,'StoreDeliveryMethod','Курьером','2012-11-10 22:37:56'),(73,'admin',1,'SystemModules','notifier','2012-11-17 21:16:33'),(74,'admin',2,'Order','73','2012-11-17 21:41:34'),(75,'admin',2,'StoreProduct','DELL INSPIRON N5050','2012-11-17 21:47:53'),(76,'admin',2,'StoreProduct','DELL ALIENWARE M17x','2012-11-17 21:47:53'),(77,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2012-11-17 21:47:53'),(78,'admin',2,'StoreProduct','Simple product test','2012-11-17 21:48:00'),(79,'admin',2,'StoreProduct','Lenovo B570','2012-11-17 21:48:00'),(80,'admin',2,'StoreProduct','Lenovo G570','2012-11-17 21:48:00'),(81,'admin',2,'StoreProduct','ASUS K53U','2012-11-17 21:48:00'),(82,'admin',2,'StoreProduct','ASUS X54C','2012-11-17 21:48:00'),(83,'admin',2,'StoreProduct','DELL INSPIRON N5050','2012-11-17 21:48:00'),(84,'admin',2,'StoreProduct','Fujitsu LIFEBOOK AH531','2012-11-17 21:48:00'),(85,'admin',2,'StoreProduct','HP EliteBook 8560w','2012-11-17 21:48:00'),(86,'admin',2,'StoreProduct','DELL ALIENWARE M17x','2012-11-17 21:48:00'),(87,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2012-11-17 21:48:00'),(88,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2012-11-17 21:48:00'),(89,'admin',2,'StoreProduct','Sony VAIO VPC-F13S8R','2012-11-17 21:48:00'),(90,'admin',2,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2012-11-17 21:48:00'),(91,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2012-11-19 21:05:00'),(92,'admin',2,'Comment','this is test comment for test product','2013-02-13 16:25:29'),(93,'admin',2,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2013-02-13 16:38:32'),(94,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2013-02-13 17:51:42'),(95,'admin',2,'StoreCategory','Ноутбуки','2013-02-13 17:58:57'),(96,'admin',2,'StoreCategory','Ноутбуки','2013-02-13 17:59:02'),(97,'admin',2,'StoreCategory','Ноутбуки','2013-02-18 21:11:40'),(98,'admin',2,'StoreCategory','Бюджетный','2013-02-18 21:11:45'),(99,'admin',2,'StoreCategory','Ноутбуки','2013-02-18 21:14:54'),(100,'admin',2,'StoreManufacturer','Asus','2013-02-18 22:02:14'),(101,'admin',2,'StoreManufacturer','Asus','2013-02-18 22:09:02'),(102,'admin',2,'StoreManufacturer','Asus','2013-02-18 22:14:35'),(103,'admin',2,'StoreManufacturer','Asus','2013-02-18 22:14:40'),(104,'admin',2,'StoreManufacturer','Asus','2013-02-18 22:14:45'),(105,'admin',2,'StoreAttribute','screen','2013-02-19 21:41:47'),(106,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2013-02-19 21:43:35'),(107,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2013-02-19 21:56:43'),(108,'admin',1,'SystemModules','statistics','2013-02-21 20:51:32'),(109,'admin',2,'StoreProduct','DELL ALIENWARE M17x','2013-04-03 21:40:56'),(110,'admin',2,'StoreProduct','Fujitsu LIFEBOOK AH531','2013-04-03 21:41:18'),(111,'admin',2,'StoreProduct','DELL ALIENWARE M17x','2013-04-03 21:43:59'),(112,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:24:04'),(113,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:24:50'),(114,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:25:31'),(115,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:34:39'),(116,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:35:09'),(117,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:35:11'),(118,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:40:55'),(119,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:41:02'),(120,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:41:31'),(121,'admin',2,'StoreProduct','Simple product test','2013-04-06 23:41:50'),(122,'admin',2,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2013-04-07 13:59:15'),(123,'admin',1,'StoreProductType','Набор стандартных атрибутов','2013-04-08 21:26:13'),(124,'admin',1,'StoreManufacturer','ВолгаАвтоПром','2013-04-08 21:26:13'),(125,'admin',1,'StoreAttribute','vesbrutto','2013-04-08 21:26:13'),(126,'admin',1,'StoreAttribute','vesnetto','2013-04-08 21:26:13'),(127,'admin',1,'StoreAttribute','kolvovtranspupak','2013-04-08 21:26:13'),(128,'admin',1,'StoreAttribute','individualupak','2013-04-08 21:26:13'),(129,'admin',3,'StoreProduct','Apple MacBook Pro 15 Late 2011 ','2013-04-08 21:28:03'),(130,'admin',3,'StoreProduct','Lenovo THINKPAD W520','2013-04-08 21:28:06'),(131,'admin',3,'StoreProduct','Simple product test','2013-04-08 21:28:18'),(132,'admin',3,'StoreProduct','Sony VAIO VPC-F13S8R','2013-04-08 21:28:32'),(133,'admin',3,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2013-04-08 21:28:35'),(134,'admin',3,'StoreProduct','DELL INSPIRON N5050','2013-04-08 21:28:38'),(135,'admin',3,'StoreProduct','Fujitsu LIFEBOOK AH531','2013-04-08 21:28:42'),(136,'admin',3,'StoreProduct','HP EliteBook 8560w','2013-04-08 21:28:45'),(137,'admin',3,'StoreProduct','DELL ALIENWARE M17x','2013-04-08 21:28:48'),(138,'admin',3,'StoreProduct','Lenovo G570','2013-04-08 21:28:51'),(139,'admin',3,'StoreProduct','ASUS K53U','2013-04-08 21:28:54'),(140,'admin',3,'StoreProduct','ASUS X54C','2013-04-08 21:28:57'),(141,'admin',3,'StoreProduct','Lenovo B570','2013-04-08 21:29:00'),(142,'admin',3,'StoreProduct','dfgdfg','2013-04-08 21:29:03'),(143,'admin',1,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:32:23'),(144,'admin',1,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:32:23'),(145,'admin',1,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:32:23'),(146,'admin',1,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:32:23'),(147,'admin',3,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:35:08'),(148,'admin',3,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:35:10'),(149,'admin',3,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:35:12'),(150,'admin',3,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:35:15'),(151,'admin',1,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:35:20'),(152,'admin',1,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:35:20'),(153,'admin',1,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:35:20'),(154,'admin',1,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:35:20'),(155,'admin',2,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:39:10'),(156,'admin',2,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:39:10'),(157,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:39:10'),(158,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:39:10'),(159,'admin',2,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:39:18'),(160,'admin',2,'StoreProduct','Крестовина ВАЗ 2101','2013-04-08 21:39:18'),(161,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:39:18'),(162,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-08 21:39:18'),(163,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:35:13'),(164,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:35:17'),(165,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:40:56'),(166,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:40:58'),(167,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:41:00'),(168,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:46:48'),(169,'admin',2,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:46:50'),(170,'admin',3,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:48:27'),(171,'admin',3,'StoreProduct','Крестовина ВАЗ 2105 (усиленный)','2013-04-11 23:48:42'),(172,'admin',3,'StoreProduct','Крестовина ВАЗ 2101','2013-04-11 23:48:50'),(173,'admin',2,'StoreProduct','Крестовина ВАЗ 2101','2013-04-11 23:48:54'),(174,'admin',2,'StoreProduct','Крестовина ВАЗ 2101','2013-04-11 23:48:57'),(175,'admin',3,'OrderStatus','Доставлен','2013-04-13 00:54:12'),(176,'admin',3,'OrderStatus','Отменен','2013-04-13 00:54:15'),(177,'admin',1,'StoreProduct','Lenovo B570','2013-04-13 00:58:36'),(178,'admin',1,'StoreProduct','Lenovo G570','2013-04-13 00:58:36'),(179,'admin',1,'StoreProduct','ASUS K53U','2013-04-13 00:58:36'),(180,'admin',1,'StoreProduct','ASUS X54C','2013-04-13 00:58:36'),(181,'admin',1,'StoreProduct','DELL INSPIRON N5050','2013-04-13 00:58:36'),(182,'admin',1,'StoreProduct','Fujitsu LIFEBOOK AH531','2013-04-13 00:58:36'),(183,'admin',1,'StoreProduct','HP EliteBook 8560w','2013-04-13 00:58:36'),(184,'admin',1,'StoreProduct','DELL ALIENWARE M17x','2013-04-13 00:58:36'),(185,'admin',1,'StoreProduct','Apple MacBook Pro 15 Late 2011','2013-04-13 00:58:37'),(186,'admin',1,'StoreProduct','Lenovo THINKPAD W520','2013-04-13 00:58:37'),(187,'admin',1,'StoreProduct','Sony VAIO VPC-F13S8R','2013-04-13 00:58:37'),(188,'admin',1,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2013-04-13 00:58:37'),(189,'admin',2,'Comment','this is test comment','2013-04-13 01:00:36'),(190,'admin',2,'Comment','this is test comment','2013-04-13 01:01:08'),(191,'admin',2,'Comment','this is test comment','2013-04-13 01:01:12'),(192,'admin',2,'Comment','this is test comment','2013-04-13 01:01:30'),(193,'admin',2,'Comment','this is test comment','2013-04-13 01:01:31'),(194,'admin',2,'Comment','this is test comment','2013-04-13 01:01:35'),(195,'admin',2,'Comment','this is test comment','2013-04-13 01:08:46'),(196,'admin',2,'Comment','this is test comment','2013-04-13 01:08:48'),(197,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011','2013-04-13 01:23:20'),(198,'admin',2,'Comment','this is test comment','2013-04-13 12:39:12'),(199,'admin',2,'StorePaymentMethod','WebMoney','2013-04-17 23:48:58'),(200,'admin',2,'StorePaymentMethod','WebMoney','2013-04-17 23:49:58'),(201,'admin',2,'StorePaymentMethod','WebMoney','2013-04-17 23:54:00'),(202,'admin',2,'StorePaymentMethod','WebMoney','2013-04-17 23:54:30'),(203,'admin',2,'StorePaymentMethod','WebMoney','2013-04-17 23:56:51'),(204,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:04:06'),(205,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:05:03'),(206,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:05:45'),(207,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:06:42'),(208,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:06:56'),(209,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:08:29'),(210,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:08:34'),(211,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:08:40'),(212,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:12:27'),(213,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:31:17'),(214,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:31:53'),(215,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-20 23:32:11'),(216,'admin',2,'User','admin','2013-04-20 23:52:52'),(217,'admin',2,'User','admin','2013-04-20 23:57:47'),(218,'admin',2,'User','admin','2013-04-20 23:59:56'),(219,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-21 00:00:11'),(220,'admin',2,'Discount','Скидка на всю технику Apple','2013-04-21 00:00:16'),(221,'admin',2,'StoreProduct','Lenovo G570','2013-04-21 09:58:21'),(222,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2013-04-21 09:59:50'),(223,'admin',1,'SystemModules','sitemap','2013-04-21 11:24:21'),(224,'admin',2,'User','admin','2013-04-21 12:04:44'),(225,'admin',2,'StorePaymentMethod','WebMoney','2013-04-21 12:51:22'),(226,'admin',2,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2013-04-21 13:01:09'),(227,'admin',2,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2013-04-21 13:01:23'),(228,'admin',2,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2013-04-21 13:03:52'),(229,'admin',2,'Order','78','2013-04-27 13:51:55'),(230,'admin',2,'Order','78','2013-04-27 13:51:56'),(231,'admin',2,'Order','78','2013-04-27 13:51:57'),(232,'admin',2,'User','admin','2013-04-27 15:16:20'),(233,'admin',2,'User','admin','2013-04-27 15:16:31'),(234,'admin',1,'StoreCategory','Ассортимент','2013-04-27 22:39:47'),(235,'admin',1,'StoreProductType','Напильник','2013-04-27 22:39:47'),(236,'admin',1,'StoreAttribute','additional_type','2013-04-27 22:39:47'),(237,'admin',1,'StoreProduct','Продукт 1','2013-04-27 22:39:47'),(238,'admin',1,'StoreCategory','Категория 1','2013-04-27 22:39:47'),(239,'admin',1,'StoreProductType','Насос','2013-04-27 22:39:47'),(240,'admin',1,'StoreProduct','Продукт 2','2013-04-27 22:39:47'),(241,'admin',2,'StoreProduct','Sony VAIO VPC-F13S8R','2013-04-29 22:08:36'),(242,'admin',2,'StoreProduct','Sony VAIO VPC-F13S8R','2013-04-29 22:15:23'),(243,'admin',2,'StoreProduct','Sony VAIO VPC-F13S8R','2013-04-29 22:15:58'),(244,'admin',2,'StoreDeliveryMethod','Курьером','2013-04-29 22:19:10'),(245,'admin',3,'Order','73','2013-04-29 22:20:14'),(246,'admin',3,'Order','74','2013-04-29 22:20:14'),(247,'admin',3,'Order','75','2013-04-29 22:20:14'),(248,'admin',3,'Order','76','2013-04-29 22:20:14'),(249,'admin',3,'Order','77','2013-04-29 22:20:14'),(250,'admin',3,'Order','78','2013-04-29 22:20:14'),(251,'admin',3,'Order','79','2013-04-29 22:20:14'),(252,'admin',2,'Order','80','2013-04-29 22:20:34'),(253,'admin',3,'Order','80','2013-04-29 22:21:05'),(254,'admin',2,'StoreDeliveryMethod','Курьером','2013-04-29 22:24:44'),(255,'admin',2,'StoreDeliveryMethod','Курьером','2013-04-29 22:25:32'),(256,'admin',2,'PageCategory','Новости','2013-04-29 22:45:32'),(257,'admin',2,'PageCategory','Новости','2013-04-29 22:45:32'),(258,'admin',2,'PageCategory','Новости','2013-04-29 23:18:02'),(259,'admin',2,'PageCategory','Новости','2013-04-29 23:18:02'),(260,'admin',2,'PageCategory','Новости','2013-04-29 23:18:10'),(261,'admin',2,'PageCategory','Новости','2013-04-29 23:18:10'),(262,'admin',2,'PageCategory','Новости','2013-04-29 23:19:32'),(263,'admin',2,'PageCategory','Новости','2013-04-29 23:19:32'),(264,'admin',2,'PageCategory','Новости','2013-04-29 23:22:46'),(265,'admin',2,'PageCategory','Новости','2013-04-29 23:22:46'),(266,'admin',2,'PageCategory','Новости','2013-04-29 23:24:05'),(267,'admin',2,'PageCategory','Новости','2013-04-29 23:24:05'),(268,'admin',2,'Order','81','2013-05-04 20:03:10'),(269,'admin',2,'Order','81','2013-05-04 20:03:17'),(270,'admin',2,'Order','81','2013-05-04 20:07:48'),(271,'admin',2,'Order','81','2013-05-04 20:08:53'),(272,'admin',2,'Order','81','2013-05-04 20:09:48'),(273,'admin',2,'Order','81','2013-05-04 20:10:00'),(274,'admin',2,'Order','81','2013-05-04 20:35:32'),(275,'admin',2,'Order','81','2013-05-04 20:35:33'),(276,'admin',2,'Order','81','2013-05-04 20:35:34'),(277,'admin',2,'Order','81','2013-05-04 20:49:00'),(278,'admin',2,'Order','81','2013-05-04 20:49:00'),(279,'admin',2,'Order','81','2013-05-04 20:49:00'),(280,'admin',2,'Order','81','2013-05-04 20:49:00'),(281,'admin',2,'Order','81','2013-05-04 20:49:00'),(282,'admin',2,'Order','81','2013-05-04 20:49:07'),(283,'admin',2,'Order','81','2013-05-04 20:49:07'),(284,'admin',2,'Order','81','2013-05-04 20:49:07'),(285,'admin',2,'Order','81','2013-05-04 20:49:07'),(286,'admin',2,'Order','81','2013-05-04 20:49:07'),(287,'admin',2,'Order','81','2013-05-04 20:49:14'),(288,'admin',2,'Order','81','2013-05-04 20:49:14'),(289,'admin',2,'Order','81','2013-05-04 20:49:14'),(290,'admin',2,'Order','81','2013-05-04 20:49:14'),(291,'admin',2,'Order','81','2013-05-04 20:49:14'),(292,'admin',2,'Order','81','2013-05-04 20:49:58'),(293,'admin',2,'Order','81','2013-05-04 20:49:58'),(294,'admin',2,'Order','81','2013-05-04 20:49:58'),(295,'admin',2,'Order','81','2013-05-04 20:49:58'),(296,'admin',2,'Order','81','2013-05-04 20:49:58'),(297,'admin',2,'Order','81','2013-05-04 20:51:27'),(298,'admin',2,'Order','81','2013-05-04 20:51:27'),(299,'admin',2,'Order','81','2013-05-04 20:51:27'),(300,'admin',2,'Order','81','2013-05-04 20:51:27'),(301,'admin',2,'Order','81','2013-05-04 20:51:27'),(302,'admin',2,'Order','81','2013-05-04 20:51:32'),(303,'admin',2,'Order','81','2013-05-04 20:51:32'),(304,'admin',2,'Order','81','2013-05-04 20:51:32'),(305,'admin',2,'Order','81','2013-05-04 20:51:32'),(306,'admin',2,'Order','81','2013-05-04 20:51:32'),(307,'admin',2,'Order','81','2013-05-04 20:51:40'),(308,'admin',2,'Order','81','2013-05-04 20:51:40'),(309,'admin',2,'Order','81','2013-05-04 20:51:40'),(310,'admin',2,'Order','81','2013-05-04 20:51:40'),(311,'admin',2,'Order','81','2013-05-04 20:51:40'),(312,'admin',2,'Order','81','2013-05-04 20:51:44'),(313,'admin',2,'Order','81','2013-05-04 20:51:52'),(314,'admin',2,'Order','81','2013-05-04 20:51:52'),(315,'admin',2,'Order','81','2013-05-04 20:51:53'),(316,'admin',2,'Order','81','2013-05-04 20:51:53'),(317,'admin',2,'Order','81','2013-05-04 20:52:05'),(318,'admin',2,'Order','81','2013-05-04 20:52:05'),(319,'admin',2,'Order','81','2013-05-04 20:52:05'),(320,'admin',2,'Order','81','2013-05-04 20:52:05'),(321,'admin',2,'Order','81','2013-05-04 20:52:10'),(322,'admin',2,'Order','81','2013-05-04 20:52:10'),(323,'admin',2,'Order','81','2013-05-04 20:52:10'),(324,'admin',2,'Order','81','2013-05-04 20:52:10'),(325,'admin',2,'Order','81','2013-05-04 20:53:57'),(326,'admin',2,'Order','81','2013-05-04 20:54:03'),(327,'admin',2,'Order','81','2013-05-04 20:54:03'),(328,'admin',2,'Order','81','2013-05-04 20:54:03'),(329,'admin',2,'Order','81','2013-05-04 20:54:03'),(330,'admin',2,'Order','81','2013-05-04 20:55:23'),(331,'admin',2,'Order','81','2013-05-04 20:55:23'),(332,'admin',2,'Order','81','2013-05-04 20:55:23'),(333,'admin',2,'Order','81','2013-05-04 20:55:23'),(334,'admin',2,'Order','81','2013-05-04 20:55:28'),(335,'admin',2,'Order','81','2013-05-04 20:55:34'),(336,'admin',2,'Order','81','2013-05-04 20:55:34'),(337,'admin',2,'Order','81','2013-05-04 20:55:34'),(338,'admin',2,'Order','81','2013-05-04 20:55:40'),(339,'admin',2,'Order','81','2013-05-04 20:55:40'),(340,'admin',2,'Order','81','2013-05-04 20:55:40'),(341,'admin',2,'Order','81','2013-05-04 20:55:46'),(342,'admin',2,'Order','81','2013-05-04 20:55:46'),(343,'admin',2,'Order','81','2013-05-04 20:55:46'),(344,'admin',2,'Order','81','2013-05-04 20:55:58'),(345,'admin',2,'Order','81','2013-05-04 20:55:58'),(346,'admin',2,'Order','81','2013-05-04 20:55:58'),(347,'admin',2,'Order','81','2013-05-04 20:56:08'),(348,'admin',2,'Order','81','2013-05-04 20:56:08'),(349,'admin',2,'Order','81','2013-05-04 20:56:08'),(350,'admin',2,'Order','81','2013-05-04 20:58:03'),(351,'admin',2,'Order','81','2013-05-04 20:58:09'),(352,'admin',2,'Order','81','2013-05-04 20:58:12'),(353,'admin',2,'Order','81','2013-05-04 20:58:27'),(354,'admin',2,'Order','81','2013-05-04 20:58:27'),(355,'admin',2,'Order','81','2013-05-04 21:01:51'),(356,'admin',2,'Order','81','2013-05-04 21:01:52'),(357,'admin',2,'Order','81','2013-05-04 21:01:53'),(358,'admin',2,'Order','81','2013-05-04 21:01:53'),(359,'admin',2,'Order','81','2013-05-04 21:05:58'),(360,'admin',2,'Order','81','2013-05-04 21:06:01'),(361,'admin',2,'Order','81','2013-05-04 21:06:04'),(362,'admin',2,'Order','81','2013-05-04 21:06:06'),(363,'admin',2,'Order','81','2013-05-04 21:06:09'),(364,'admin',2,'Order','81','2013-05-04 21:06:09'),(365,'admin',2,'Order','81','2013-05-04 21:06:47'),(366,'admin',2,'Order','81','2013-05-04 21:06:50'),(367,'admin',2,'Order','81','2013-05-04 21:06:50'),(368,'admin',2,'Order','81','2013-05-04 21:06:50'),(369,'admin',2,'Order','81','2013-05-04 21:06:57'),(370,'admin',2,'Order','81','2013-05-04 21:06:57'),(371,'admin',2,'Order','81','2013-05-04 21:06:57'),(372,'admin',2,'Order','81','2013-05-04 21:07:02'),(373,'admin',2,'Order','81','2013-05-04 21:07:03'),(374,'admin',2,'Order','81','2013-05-04 21:07:03'),(375,'admin',2,'Order','81','2013-05-04 21:07:04'),(376,'admin',2,'Order','81','2013-05-04 21:07:04'),(377,'admin',2,'Order','81','2013-05-04 21:07:06'),(378,'admin',2,'Order','81','2013-05-04 21:07:06'),(379,'admin',2,'Order','81','2013-05-04 21:07:12'),(380,'admin',2,'Order','81','2013-05-04 21:07:16'),(381,'admin',2,'Order','81','2013-05-04 21:07:18'),(382,'admin',2,'Order','81','2013-05-04 21:07:22'),(383,'admin',2,'Order','81','2013-05-04 21:07:24'),(384,'admin',2,'Order','81','2013-05-04 21:07:28'),(385,'admin',2,'Order','81','2013-05-04 21:07:32'),(386,'admin',2,'Order','81','2013-05-04 21:07:34'),(387,'admin',2,'Order','81','2013-05-04 21:07:36'),(388,'admin',2,'Order','81','2013-05-04 21:07:41'),(389,'admin',2,'Order','81','2013-05-04 21:07:48'),(390,'admin',2,'Order','81','2013-05-04 21:07:48'),(391,'admin',2,'Order','81','2013-05-04 21:09:12'),(392,'admin',2,'Order','81','2013-05-04 21:09:17'),(393,'admin',2,'Order','81','2013-05-04 21:09:23'),(394,'admin',2,'Order','81','2013-05-04 21:09:26'),(395,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011','2013-05-04 21:40:33'),(396,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011','2013-05-04 21:47:09'),(397,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011','2013-05-04 21:47:19'),(398,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011','2013-05-04 21:48:18'),(399,'admin',2,'StoreProduct','Apple MacBook Pro 15 Late 2011','2013-05-04 21:48:33'),(400,'admin',2,'StoreProduct','Продукт 2','2013-05-04 21:49:52'),(401,'admin',2,'Order','81','2013-05-05 00:48:48'),(402,'admin',2,'Order','81','2013-05-05 00:48:48'),(403,'admin',2,'Order','81','2013-05-05 00:48:58'),(404,'admin',2,'Order','81','2013-05-05 00:48:58'),(405,'admin',2,'Order','81','2013-05-05 00:49:04'),(406,'admin',2,'Order','81','2013-05-05 00:49:04'),(407,'admin',1,'SystemModules','programm','2013-05-06 15:19:39'),(408,'admin',2,'User','tester2','2013-05-07 13:38:49'),(409,'admin',2,'User','tester2','2013-05-07 13:39:06'),(410,'admin',1,'Order','','2013-05-07 14:22:53'),(411,'admin',2,'Order','82','2013-05-07 14:23:05'),(412,'admin',2,'Order','82','2013-05-07 14:23:07'),(413,'admin',2,'Order','82','2013-05-07 14:23:21'),(414,'admin',2,'Order','82','2013-05-07 14:23:21'),(415,'admin',2,'Order','82','2013-05-07 14:23:21'),(416,'admin',3,'Order','82','2013-05-07 14:30:54'),(417,'admin',2,'Comment','sony test comment','2013-05-07 19:25:24'),(418,'admin',1,'Discount','Скидка на всю технику Apple 2','2013-05-14 22:22:48'),(419,'admin',2,'StoreDeliveryMethod','Самовывоз','2013-05-14 23:12:03'),(420,'admin',2,'StoreDeliveryMethod','Самовывоз','2013-05-14 23:16:05'),(421,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2013-05-20 23:22:39'),(422,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2013-05-20 23:23:36'),(423,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2013-05-20 23:25:27'),(424,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2013-05-20 23:26:20'),(425,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2013-05-20 23:29:37'),(426,'admin',2,'StoreProduct','Lenovo THINKPAD W520','2013-05-20 23:30:21'),(427,'admin',2,'StoreProduct','Продукт 1','2013-05-20 23:46:55'),(428,'admin',3,'Order','81','2013-05-21 00:21:30'),(429,'admin',1,'PageCategory','Тесстовя','2013-05-21 23:52:33'),(430,'admin',2,'PageCategory','Новости','2013-05-21 23:52:33'),(431,'admin',1,'StoreProduct','test','2013-05-21 23:55:52'),(432,'admin',1,'PageCategory','Тесстовя2','2013-05-21 23:57:27'),(433,'admin',2,'PageCategory','Новости','2013-05-21 23:57:27'),(434,'admin',1,'PageCategory','Тесстовя2','2013-05-21 23:59:34'),(435,'admin',2,'PageCategory','Новости','2013-05-21 23:59:34'),(436,'admin',1,'PageCategory','sdfsdf','2013-05-22 00:02:45'),(437,'admin',2,'PageCategory','Новости','2013-05-22 00:02:45'),(438,'admin',2,'PageCategory','sdfsdf','2013-05-22 00:02:45'),(439,'admin',1,'PageCategory','Тесстовя2','2013-05-22 00:07:01'),(440,'admin',2,'PageCategory','Новости','2013-05-22 00:07:01'),(441,'admin',2,'PageCategory','Тесстовя2','2013-05-22 00:07:01'),(442,'admin',3,'StoreProduct','Sony VAIO VPC-F13S8R','2014-02-14 14:48:42'),(443,'admin',3,'StoreProduct','Крестовина ВАЗ 2101','2014-02-14 14:48:42'),(444,'admin',3,'StoreProduct','Lenovo B570','2014-02-14 14:48:42'),(445,'admin',3,'StoreProduct','Lenovo G570','2014-02-14 14:48:43'),(446,'admin',3,'StoreProduct','ASUS K53U','2014-02-14 14:48:43'),(447,'admin',3,'StoreProduct','ASUS X54C','2014-02-14 14:48:43'),(448,'admin',3,'StoreProduct','DELL INSPIRON N5050','2014-02-14 14:48:43'),(449,'admin',3,'StoreProduct','Fujitsu LIFEBOOK AH531','2014-02-14 14:48:43'),(450,'admin',3,'StoreProduct','HP EliteBook 8560w','2014-02-14 14:48:43'),(451,'admin',3,'StoreProduct','DELL ALIENWARE M17x','2014-02-14 14:48:43'),(452,'admin',3,'StoreProduct','Apple MacBook Pro 15 Late 2011','2014-02-14 14:48:43'),(453,'admin',3,'StoreProduct','Lenovo THINKPAD W520','2014-02-14 14:48:43'),(454,'admin',3,'StoreProduct','Acer ASPIRE 5943G-7748G75TWiss','2014-02-14 14:48:43'),(455,'admin',3,'StoreProduct','Продукт 1','2014-02-14 14:48:43'),(456,'admin',3,'StoreProduct','Продукт 2','2014-02-14 14:48:43'),(457,'admin',3,'StoreProduct','test','2014-02-14 14:48:43'),(458,'admin',3,'StoreCategory','Игровой','2014-02-14 14:49:29'),(459,'admin',3,'StoreCategory','Бюджетный','2014-02-14 14:50:01'),(460,'admin',3,'StoreCategory','Компьютерная акустика','2014-02-14 14:50:16'),(461,'admin',3,'StoreCategory','Планшеты','2014-02-14 14:50:29'),(462,'admin',3,'StoreCategory','Компьютеры','2014-02-14 14:50:42'),(463,'admin',3,'StoreCategory','Ноутбуки','2014-02-14 14:50:56'),(464,'admin',3,'StoreCategory','Телефоны','2014-02-14 14:51:09'),(465,'admin',3,'StoreCategory','Категория 1','2014-02-14 14:51:22'),(466,'admin',3,'StoreCategory','Ассортимент','2014-02-14 14:51:36'),(467,'admin',3,'StoreCategory','Мониторы','2014-02-14 14:51:54'),(468,'admin',1,'StoreCategory','Аудиодиски','2014-02-14 14:53:35'),(469,'admin',1,'StoreCategory','Цветы','2014-02-14 14:54:39'),(470,'admin',1,'StoreCategory','Книги','2014-02-14 14:55:04'),(471,'admin',1,'StoreCategory','Горшечные','2014-02-14 14:56:38'),(472,'admin',3,'StoreCurrency','Рубли','2014-02-14 14:59:44'),(473,'admin',1,'StoreCategory','Экзотические','2014-02-15 14:33:47'),(474,'admin',1,'StoreProduct','ываыва','2014-02-15 15:21:30'),(475,'admin',1,'StoreProduct','щшпшгп','2014-02-15 15:38:30'),(476,'admin',2,'StoreProduct','щшпшгп','2014-02-15 15:39:50'),(477,'admin',3,'StoreAttribute','individualupak','2014-02-15 15:44:13'),(478,'admin',3,'StoreAttribute','memmory','2014-02-15 15:44:13'),(479,'admin',3,'StoreAttribute','additional_type','2014-02-15 15:44:13'),(480,'admin',3,'StoreAttribute','memmory_type','2014-02-15 15:44:13'),(481,'admin',3,'StoreAttribute','screen','2014-02-15 15:44:13'),(482,'admin',3,'StoreAttribute','video','2014-02-15 15:44:13'),(483,'admin',3,'StoreAttribute','screen_dimension','2014-02-15 15:44:13'),(484,'admin',3,'StoreAttribute','textbox','2014-02-15 15:44:13'),(485,'admin',3,'StoreAttribute','simple_product','2014-02-15 15:44:13'),(486,'admin',3,'StoreAttribute','vesbrutto','2014-02-15 15:44:13'),(487,'admin',3,'StoreAttribute','vesnetto','2014-02-15 15:44:13'),(488,'admin',3,'StoreAttribute','processor_manufacturer','2014-02-15 15:44:13'),(489,'admin',3,'StoreAttribute','kolvovtranspupak','2014-02-15 15:44:13'),(490,'admin',3,'StoreAttribute','freq','2014-02-15 15:44:13'),(491,'admin',3,'StoreAttribute','color','2014-02-15 15:44:14'),(492,'admin',3,'StoreProductType','Simple Product','2014-02-15 15:44:32'),(493,'admin',3,'StoreProduct','щшпшгп','2014-02-15 15:44:52'),(494,'admin',3,'StoreProduct','ываыва','2014-02-15 15:44:52'),(495,'admin',1,'StoreAttribute','artist','2014-02-15 15:46:01'),(496,'admin',1,'StoreAttribute','DiskType','2014-02-15 15:47:30'),(497,'admin',1,'StoreAttribute','LengthAll','2014-02-15 15:48:20'),(498,'admin',1,'StoreAttribute','Length','2014-02-15 15:49:03'),(499,'admin',1,'StoreAttribute','price','2014-02-15 15:50:12'),(500,'admin',2,'StoreAttribute','LengthAll','2014-02-15 15:51:11'),(501,'admin',1,'StoreAttribute','RecStudio','2014-02-15 15:52:11'),(502,'admin',3,'StoreProductType','laptop','2014-02-15 15:52:34'),(503,'admin',3,'StoreProductType','Набор стандартных атрибутов','2014-02-15 15:52:34'),(504,'admin',3,'StoreProductType','Напильник','2014-02-15 15:52:34'),(505,'admin',3,'StoreProductType','Насос','2014-02-15 15:52:34'),(506,'admin',1,'StoreAttribute','TrackName','2014-02-15 15:53:41'),(507,'admin',1,'StoreAttribute','AlbumName','2014-02-15 15:54:33'),(508,'admin',1,'StoreProductType','Аудиотрек','2014-02-15 15:55:23'),(509,'admin',1,'StoreProduct','Хиллсонг - ываывавы','2014-02-15 15:57:26'),(510,'admin',1,'StoreProduct','wewqeqw','2014-02-15 16:05:38'),(511,'admin',2,'Comment','аываыва','2014-02-15 18:11:27'),(512,'admin',1,'StoreProductType','Аудиодиск','2014-02-15 18:12:55'),(513,'admin',1,'StoreProduct','цкцуквыа','2014-02-15 18:14:20'),(514,'admin',3,'Page','Google презентовал свои очки дополненной реальности‎','2014-02-15 18:15:23'),(515,'admin',3,'Page','За 8,5 месяцев Android 4.0 попал на 11% устройств','2014-02-15 18:15:23'),(516,'admin',3,'Page','Samsung пытается избежать запрета на Galaxy Nexus','2014-02-15 18:15:23'),(517,'admin',1,'Page','sdfsdfsfsdf','2014-02-15 18:22:25'),(518,'admin',3,'Page','sdfsdfsfsdf','2014-02-16 13:59:58'),(519,'admin',3,'Order','83','2014-02-16 16:15:13'),(520,'admin',3,'User','tester','2014-02-17 07:36:02'),(521,'admin',3,'User','tester2','2014-02-17 07:36:07'),(522,'admin',3,'User','tester3','2014-02-17 07:36:12'),(523,'admin',3,'User','12345678','2014-02-17 07:36:17'),(524,'admin',3,'User','sdfsd','2014-02-17 07:36:22'),(525,'admin',3,'User','asdsad','2014-02-17 07:36:36'),(526,'admin',3,'User','dgdfg4534','2014-02-17 07:36:40'),(527,'admin',3,'User','admin7','2014-02-17 07:36:46'),(528,'admin',3,'User','dgdfg127','2014-02-17 07:37:01'),(529,'admin',3,'User','dgdfg12','2014-02-17 07:37:07'),(530,'admin',3,'User','dgdfg1','2014-02-17 07:37:12'),(531,'admin',3,'User','sderfsfdsd','2014-02-17 07:37:23'),(532,'admin',3,'User','sdefsfdsd','2014-02-17 07:37:27'),(533,'admin',3,'User','sdfsfdsd','2014-02-17 07:37:33'),(534,'admin',3,'User','safasd','2014-02-17 07:37:37'),(535,'admin',3,'User','asdasd','2014-02-17 07:37:41'),(536,'admin',3,'User','dgdfg','2014-02-17 07:37:45'),(537,'admin',3,'User','sdfsfsd','2014-02-17 07:37:48'),(538,'admin',3,'User','sdfddsfsd','2014-02-17 07:37:54'),(539,'admin',2,'User','admin','2014-02-17 08:20:49'),(540,'admin',2,'Page','Доставка и оплата','2014-02-17 13:04:01');
/*!40000 ALTER TABLE `ActionLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthAssignment`
--

DROP TABLE IF EXISTS `AuthAssignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthAssignment` (
  `itemname` varchar(64) NOT NULL,
  `userid` varchar(64) NOT NULL,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`itemname`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthAssignment`
--

LOCK TABLES `AuthAssignment` WRITE;
/*!40000 ALTER TABLE `AuthAssignment` DISABLE KEYS */;
INSERT INTO `AuthAssignment` (`itemname`, `userid`, `bizrule`, `data`) VALUES ('Admin','1',NULL,NULL),('Authenticated','57',NULL,'N;'),('Authenticated','58',NULL,'N;'),('Orders.Orders.*','56',NULL,'N;'),('Orders.Statuses.*','56',NULL,'N;'),('Authenticated','56',NULL,'N;'),('Authenticated','71',NULL,'N;'),('Authenticated','72',NULL,'N;'),('Authenticated','73',NULL,'N;'),('Authenticated','74',NULL,'N;');
/*!40000 ALTER TABLE `AuthAssignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthItem`
--

DROP TABLE IF EXISTS `AuthItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthItem` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `bizrule` text,
  `data` text,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthItem`
--

LOCK TABLES `AuthItem` WRITE;
/*!40000 ALTER TABLE `AuthItem` DISABLE KEYS */;
INSERT INTO `AuthItem` (`name`, `type`, `description`, `bizrule`, `data`) VALUES ('Admin',2,NULL,NULL,'N;'),('Authenticated',2,NULL,NULL,'N;'),('Guest',2,NULL,NULL,'N;'),('Orders.Orders.*',1,NULL,NULL,'N;'),('Orders.Statuses.*',1,NULL,NULL,'N;'),('Orders.Orders.Index',0,NULL,NULL,'N;'),('Orders.Orders.Create',0,NULL,NULL,'N;'),('Orders.Orders.Update',0,NULL,NULL,'N;'),('Orders.Orders.AddProductList',0,NULL,NULL,'N;'),('Orders.Orders.AddProduct',0,NULL,NULL,'N;'),('Orders.Orders.RenderOrderedProducts',0,NULL,NULL,'N;'),('Orders.Orders.JsonOrderedProducts',0,NULL,NULL,'N;'),('Orders.Orders.Delete',0,NULL,NULL,'N;'),('Orders.Orders.DeleteProduct',0,NULL,NULL,'N;'),('Orders.Statuses.Index',0,NULL,NULL,'N;'),('Orders.Statuses.Create',0,NULL,NULL,'N;'),('Orders.Statuses.Update',0,NULL,NULL,'N;'),('Orders.Statuses.Delete',0,NULL,NULL,'N;');
/*!40000 ALTER TABLE `AuthItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AuthItemChild`
--

DROP TABLE IF EXISTS `AuthItemChild`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AuthItemChild` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AuthItemChild`
--

LOCK TABLES `AuthItemChild` WRITE;
/*!40000 ALTER TABLE `AuthItemChild` DISABLE KEYS */;
/*!40000 ALTER TABLE `AuthItemChild` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Catalogs`
--

DROP TABLE IF EXISTS `Catalogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Catalogs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `ps` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='структура каталогов';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Catalogs`
--

LOCK TABLES `Catalogs` WRITE;
/*!40000 ALTER TABLE `Catalogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Catalogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comments`
--

DROP TABLE IF EXISTS `Comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `class_name` varchar(100) NOT NULL,
  `object_pk` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `class_name_index` (`class_name`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comments`
--

LOCK TABLES `Comments` WRITE;
/*!40000 ALTER TABLE `Comments` DISABLE KEYS */;
INSERT INTO `Comments` (`id`, `user_id`, `class_name`, `object_pk`, `status`, `email`, `name`, `text`, `created`, `updated`, `ip_address`) VALUES (11,1,'application.modules.store.models.StoreProduct',40,1,'admin@localhost.loc','admin','аываыва','2014-02-15 15:58:14','2014-02-15 18:11:27','127.0.0.1');
/*!40000 ALTER TABLE `Comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Discount`
--

DROP TABLE IF EXISTS `Discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Discount` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `sum` varchar(10) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `roles` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `active` (`active`),
  KEY `start_date` (`start_date`),
  KEY `end_date` (`end_date`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Discount`
--

LOCK TABLES `Discount` WRITE;
/*!40000 ALTER TABLE `Discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `Discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DiscountCategory`
--

DROP TABLE IF EXISTS `DiscountCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DiscountCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=195 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiscountCategory`
--

LOCK TABLES `DiscountCategory` WRITE;
/*!40000 ALTER TABLE `DiscountCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `DiscountCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DiscountManufacturer`
--

DROP TABLE IF EXISTS `DiscountManufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DiscountManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_id` int(11) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `discount_id` (`discount_id`),
  KEY `manufacturer_id` (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DiscountManufacturer`
--

LOCK TABLES `DiscountManufacturer` WRITE;
/*!40000 ALTER TABLE `DiscountManufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `DiscountManufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Notifications`
--

DROP TABLE IF EXISTS `Notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Notifications`
--

LOCK TABLES `Notifications` WRITE;
/*!40000 ALTER TABLE `Notifications` DISABLE KEYS */;
INSERT INTO `Notifications` (`id`, `product_id`, `email`) VALUES (1,11,'firstrow@gmail.com'),(2,31,'sdfsdf@sdfsdf.ccc'),(3,31,'sdf@ddd.ccc');
/*!40000 ALTER TABLE `Notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderProduct`
--

DROP TABLE IF EXISTS `OrderProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `configurable_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `configurable_name` text NOT NULL COMMENT 'Store name of configurable product',
  `configurable_data` text NOT NULL,
  `variants` text NOT NULL,
  `quantity` smallint(6) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  KEY `configurable_id` (`configurable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderProduct`
--

LOCK TABLES `OrderProduct` WRITE;
/*!40000 ALTER TABLE `OrderProduct` DISABLE KEYS */;
INSERT INTO `OrderProduct` (`id`, `order_id`, `product_id`, `configurable_id`, `name`, `configurable_name`, `configurable_data`, `variants`, `quantity`, `sku`, `price`) VALUES (50,84,41,0,'wewqeqw','','','',1,'',3333.00),(51,85,42,0,'цкцуквыа','','','',1,'',111.00),(52,85,41,0,'wewqeqw','','','',1,'',3333.00),(53,85,40,0,'Хиллсонг - ываывавы','','','',1,'',111.00);
/*!40000 ALTER TABLE `OrderProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderStatus`
--

DROP TABLE IF EXISTS `OrderStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrderStatus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderStatus`
--

LOCK TABLES `OrderStatus` WRITE;
/*!40000 ALTER TABLE `OrderStatus` DISABLE KEYS */;
INSERT INTO `OrderStatus` (`id`, `name`, `position`) VALUES (1,'Новый',0);
/*!40000 ALTER TABLE `OrderStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Page`
--

DROP TABLE IF EXISTS `Page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `publish_date` datetime NOT NULL,
  `status` varchar(255) NOT NULL,
  `layout` varchar(2555) NOT NULL,
  `view` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `publish_date` (`publish_date`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Page`
--

LOCK TABLES `Page` WRITE;
/*!40000 ALTER TABLE `Page` DISABLE KEYS */;
INSERT INTO `Page` (`id`, `user_id`, `category_id`, `url`, `created`, `updated`, `publish_date`, `status`, `layout`, `view`) VALUES (8,1,NULL,'help','2012-06-10 22:35:51','2012-07-07 11:47:09','2012-06-10 22:35:29','published','',''),(9,1,NULL,'how-to-create-order','2012-06-10 22:36:50','2012-07-07 11:45:53','2012-06-10 22:36:27','published','',''),(10,1,NULL,'garantiya','2012-06-10 22:37:06','2012-07-07 11:45:38','2012-06-10 22:36:50','published','',''),(11,1,NULL,'dostavka-i-oplata','2012-06-10 22:37:18','2014-02-17 13:04:01','2012-06-10 22:37:07','published','','');
/*!40000 ALTER TABLE `Page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageCategory`
--

DROP TABLE IF EXISTS `PageCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageCategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `full_url` text NOT NULL,
  `layout` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `page_size` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `url` (`url`),
  KEY `created` (`created`),
  KEY `updated` (`updated`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageCategory`
--

LOCK TABLES `PageCategory` WRITE;
/*!40000 ALTER TABLE `PageCategory` DISABLE KEYS */;
INSERT INTO `PageCategory` (`id`, `parent_id`, `url`, `full_url`, `layout`, `view`, `created`, `updated`, `page_size`) VALUES (10,NULL,'tesstovya2','tesstovya2','','','2013-05-21 23:59:34','2013-05-21 23:59:34',NULL);
/*!40000 ALTER TABLE `PageCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageCategoryTranslate`
--

DROP TABLE IF EXISTS `PageCategoryTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageCategoryTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageCategoryTranslate`
--

LOCK TABLES `PageCategoryTranslate` WRITE;
/*!40000 ALTER TABLE `PageCategoryTranslate` DISABLE KEYS */;
INSERT INTO `PageCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keywords`) VALUES (13,7,1,'Новости','','','',''),(14,7,9,'Новости','','','',''),(15,11,1,'sdfsdf','','','',''),(16,11,9,'sdfsdf','','','',''),(17,12,1,'Тесстовя2','','','',''),(18,12,9,'Тесстовя2','','','','');
/*!40000 ALTER TABLE `PageCategoryTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PageTranslate`
--

DROP TABLE IF EXISTS `PageTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PageTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PageTranslate`
--

LOCK TABLES `PageTranslate` WRITE;
/*!40000 ALTER TABLE `PageTranslate` DISABLE KEYS */;
INSERT INTO `PageTranslate` (`id`, `object_id`, `language_id`, `title`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES (22,11,9,'Доставка и оплата','','','','',''),(15,8,1,'Помощь','Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).','','','',''),(16,8,9,'Помощь','','','','',''),(17,9,1,'Как сделать заказ','<p>Есть много вариантов Lorem Ipsum, но большинство из них имеет не всегда приемлемые модификации, например, юмористические вставки или слова, которые даже отдалённо не напоминают латынь. Если вам нужен Lorem Ipsum для серьёзного проекта, вы наверняка не хотите какой-нибудь шутки, скрытой в середине абзаца. Также все другие известные генераторы Lorem Ipsum используют один и тот же текст, который они просто повторяют, пока не достигнут нужный объём. Это делает предлагаемый здесь генератор единственным настоящим Lorem Ipsum генератором. Он использует словарь из более чем 200 латинских слов, а также набор моделей предложений. В результате сгенерированный Lorem Ipsum выглядит правдоподобно, не имеет повторяющихся абзацей или \"невозможных\" слов.</p>','','','',''),(18,9,9,'Как сделать заказ','','','','',''),(19,10,1,'Гарантия','<p>Многие думают, что Lorem Ipsum - взятый с потолка псевдо-латинский набор слов, но это не совсем так. Его корни уходят в один фрагмент классической латыни 45 года н.э., то есть более двух тысячелетий назад. Ричард МакКлинток, профессор латыни из колледжа Hampden-Sydney, штат Вирджиния, взял одно из самых странных слов в Lorem Ipsum, \"consectetur\", и занялся его поисками в классической латинской литературе.</p>\r\n<p>В результате он нашёл неоспоримый первоисточник Lorem Ipsum в разделах 1.10.32 и 1.10.33 книги \"de Finibus Bonorum et Malorum\" (\"О пределах добра и зла\"), написанной Цицероном в 45 году н.э. Этот трактат по теории этики был очень популярен в эпоху Возрождения. Первая строка Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", происходит от одной из строк в разделе 1.10.32 Классический текст Lorem Ipsum, используемый с XVI века, приведён ниже. Также даны разделы 1.10.32 и 1.10.33 \"de Finibus Bonorum et Malorum\" Цицерона и их английский перевод, сделанный H. Rackham, 1914 год.</p>','','','',''),(20,10,9,'Гарантия','','','','',''),(21,11,1,'Доставка и оплата','<b>Давно выяснено, что при оценке дизайна и композиции читаемый текст мешает сосредоточиться. </b>','<p>Lorem Ipsum используют потому, что тот обеспечивает более или менее стандартное заполнение шаблона, а также реальное распределение букв и пробелов в абзацах, которое не получается при простой дубликации \"Здесь ваш текст.. Здесь ваш текст.. Здесь ваш текст..\" Многие программы электронной вёрстки и редакторы HTML используют Lorem Ipsum в качестве текста по умолчанию, так что поиск по ключевым словам \"lorem ipsum\" сразу показывает, как много веб-страниц всё ещё дожидаются своего настоящего рождения. За прошедшие годы текст Lorem Ipsum получил много версий. Некоторые версии появились по ошибке, некоторые - намеренно (например, юмористические варианты).</p>','','','');
/*!40000 ALTER TABLE `PageTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rights`
--

DROP TABLE IF EXISTS `Rights`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rights` (
  `itemname` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`itemname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rights`
--

LOCK TABLES `Rights` WRITE;
/*!40000 ALTER TABLE `Rights` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rights` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreAttribute`
--

DROP TABLE IF EXISTS `StoreAttribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreAttribute` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `display_on_front` tinyint(1) NOT NULL DEFAULT '1',
  `use_in_filter` tinyint(1) NOT NULL,
  `use_in_variants` tinyint(1) NOT NULL,
  `use_in_compare` tinyint(1) NOT NULL DEFAULT '0',
  `select_many` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT '0',
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `use_in_filter` (`use_in_filter`),
  KEY `display_on_front` (`display_on_front`),
  KEY `position` (`position`),
  KEY `use_in_variants` (`use_in_variants`),
  KEY `use_in_compare` (`use_in_compare`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreAttribute`
--

LOCK TABLES `StoreAttribute` WRITE;
/*!40000 ALTER TABLE `StoreAttribute` DISABLE KEYS */;
INSERT INTO `StoreAttribute` (`id`, `name`, `type`, `display_on_front`, `use_in_filter`, `use_in_variants`, `use_in_compare`, `select_many`, `position`, `required`) VALUES (21,'RecStudio',1,1,1,0,0,0,0,0),(16,'artist',1,1,1,0,1,0,0,1),(17,'DiskType',6,1,1,0,0,0,0,0),(23,'AlbumName',1,1,1,0,0,0,0,0),(22,'TrackName',1,1,1,0,0,0,0,1),(20,'price',1,1,1,0,1,0,0,0),(19,'Length',1,1,1,0,0,0,0,0),(18,'LengthAll',1,1,1,0,0,0,0,0);
/*!40000 ALTER TABLE `StoreAttribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreAttributeOption`
--

DROP TABLE IF EXISTS `StoreAttributeOption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreAttributeOption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) NOT NULL,
  `position` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreAttributeOption`
--

LOCK TABLES `StoreAttributeOption` WRITE;
/*!40000 ALTER TABLE `StoreAttributeOption` DISABLE KEYS */;
INSERT INTO `StoreAttributeOption` (`id`, `attribute_id`, `position`) VALUES (60,17,1),(59,17,0);
/*!40000 ALTER TABLE `StoreAttributeOption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreAttributeOptionTranslate`
--

DROP TABLE IF EXISTS `StoreAttributeOptionTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreAttributeOptionTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `language_id` (`language_id`),
  KEY `object_id` (`object_id`)
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreAttributeOptionTranslate`
--

LOCK TABLES `StoreAttributeOptionTranslate` WRITE;
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeOptionTranslate` (`id`, `language_id`, `object_id`, `value`) VALUES (120,9,60,'CD'),(119,1,60,'CD'),(118,9,59,'DVD'),(117,1,59,'DVD');
/*!40000 ALTER TABLE `StoreAttributeOptionTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreAttributeTranslate`
--

DROP TABLE IF EXISTS `StoreAttributeTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreAttributeTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreAttributeTranslate`
--

LOCK TABLES `StoreAttributeTranslate` WRITE;
/*!40000 ALTER TABLE `StoreAttributeTranslate` DISABLE KEYS */;
INSERT INTO `StoreAttributeTranslate` (`id`, `object_id`, `language_id`, `title`) VALUES (37,19,1,'Продолжительность'),(32,16,9,'Исполнитель'),(31,16,1,'Исполнитель'),(35,18,1,'Общая продолжительность'),(33,17,1,'Тип Диска'),(41,21,1,'Звукозаписывающая студия'),(40,20,9,'Цена'),(39,20,1,'Цена'),(38,19,9,'Продолжительность'),(36,18,9,'Общая продолжительность'),(34,17,9,'Тип Диска'),(42,21,9,'Звукозаписывающая студия'),(43,22,1,'Название трека'),(44,22,9,'Название трека'),(45,23,1,'Название альбома'),(46,23,9,'Название альбома');
/*!40000 ALTER TABLE `StoreAttributeTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreCategory`
--

DROP TABLE IF EXISTS `StoreCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreCategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `level` smallint(5) unsigned NOT NULL,
  `url` varchar(255) NOT NULL,
  `full_path` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`),
  KEY `level` (`level`),
  KEY `url` (`url`),
  KEY `full_path` (`full_path`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreCategory`
--

LOCK TABLES `StoreCategory` WRITE;
/*!40000 ALTER TABLE `StoreCategory` DISABLE KEYS */;
INSERT INTO `StoreCategory` (`id`, `lft`, `rgt`, `level`, `url`, `full_path`, `layout`, `view`, `description`) VALUES (1,1,20,1,'root','','','',NULL),(226,14,15,4,'iekzoticheskie','iekzoticheskie','','',''),(222,10,11,2,'audiocd','audiocd','','','Диски с Аудиозаписями'),(223,12,17,2,'flow','flow','','',''),(224,18,19,2,'books','books','','',''),(225,13,16,3,'gorshechnie','gorshechnie','','','');
/*!40000 ALTER TABLE `StoreCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreCategoryTranslate`
--

DROP TABLE IF EXISTS `StoreCategoryTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreCategoryTranslate` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreCategoryTranslate`
--

LOCK TABLES `StoreCategoryTranslate` WRITE;
/*!40000 ALTER TABLE `StoreCategoryTranslate` DISABLE KEYS */;
INSERT INTO `StoreCategoryTranslate` (`id`, `object_id`, `language_id`, `name`, `meta_title`, `meta_keywords`, `meta_description`, `description`) VALUES (1,1,1,'root','','','',NULL),(34,225,1,'Горшечные','','','',''),(35,225,9,'Горшечные','','','',''),(36,226,1,'Экзотические','','','',''),(37,226,9,'Экзотические','','','',''),(28,222,1,'Аудиодиски','','','','Диски с Аудиозаписями'),(32,224,1,'Книги','','','',''),(33,224,9,'Книги','','','',''),(30,223,1,'Цветы','','','',''),(29,222,9,'Аудиодиски','','','','Диски с Аудиозаписями'),(31,223,9,'Цветы','','','','');
/*!40000 ALTER TABLE `StoreCategoryTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreCurrency`
--

DROP TABLE IF EXISTS `StoreCurrency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreCurrency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `iso` varchar(10) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `rate` float(10,3) NOT NULL,
  `main` tinyint(1) DEFAULT NULL,
  `default` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreCurrency`
--

LOCK TABLES `StoreCurrency` WRITE;
/*!40000 ALTER TABLE `StoreCurrency` DISABLE KEYS */;
INSERT INTO `StoreCurrency` (`id`, `name`, `iso`, `symbol`, `rate`, `main`, `default`) VALUES (1,'Доллары','USD','$',1.000,1,1);
/*!40000 ALTER TABLE `StoreCurrency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreDeliveryMethod`
--

DROP TABLE IF EXISTS `StoreDeliveryMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreDeliveryMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `free_from` float(10,2) NOT NULL DEFAULT '0.00',
  `position` smallint(6) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `position` (`position`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreDeliveryMethod`
--

LOCK TABLES `StoreDeliveryMethod` WRITE;
/*!40000 ALTER TABLE `StoreDeliveryMethod` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethod` (`id`, `price`, `free_from`, `position`, `active`) VALUES (14,10.00,1000.00,0,1),(15,0.00,0.00,1,1),(16,30.00,0.00,2,1);
/*!40000 ALTER TABLE `StoreDeliveryMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreDeliveryMethodTranslate`
--

DROP TABLE IF EXISTS `StoreDeliveryMethodTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreDeliveryMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreDeliveryMethodTranslate`
--

LOCK TABLES `StoreDeliveryMethodTranslate` WRITE;
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` DISABLE KEYS */;
INSERT INTO `StoreDeliveryMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES (1,14,1,'Курьером',''),(2,14,9,'English','english description'),(3,15,1,'Самовывоз',''),(4,15,9,'Самовывоз',''),(5,16,1,'Адресная доставка по стране',''),(6,16,9,'Адресная доставка по стране','');
/*!40000 ALTER TABLE `StoreDeliveryMethodTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreDeliveryPayment`
--

DROP TABLE IF EXISTS `StoreDeliveryPayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreDeliveryPayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delivery_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='Saves relations between delivery and payment methods ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreDeliveryPayment`
--

LOCK TABLES `StoreDeliveryPayment` WRITE;
/*!40000 ALTER TABLE `StoreDeliveryPayment` DISABLE KEYS */;
INSERT INTO `StoreDeliveryPayment` (`id`, `delivery_id`, `payment_id`) VALUES (24,12,14),(23,10,16),(22,10,13),(21,10,14),(34,11,16),(33,11,13),(25,12,15),(26,12,16),(78,14,21),(77,14,19),(76,14,20),(75,14,18),(82,15,20),(81,15,18),(55,16,17),(56,16,18),(57,16,20),(58,16,19),(74,14,17);
/*!40000 ALTER TABLE `StoreDeliveryPayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreManufacturer`
--

DROP TABLE IF EXISTS `StoreManufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreManufacturer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `view` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `url` (`url`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreManufacturer`
--

LOCK TABLES `StoreManufacturer` WRITE;
/*!40000 ALTER TABLE `StoreManufacturer` DISABLE KEYS */;
INSERT INTO `StoreManufacturer` (`id`, `url`, `layout`, `view`) VALUES (1,'lenovo','',''),(2,'asus','',''),(3,'dell','',''),(4,'fujitsu','',''),(5,'hp','',''),(6,'apple','',''),(7,'sony','',''),(8,'acer','',''),(9,'volgaavtoprom','','');
/*!40000 ALTER TABLE `StoreManufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreManufacturerTranslate`
--

DROP TABLE IF EXISTS `StoreManufacturerTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreManufacturerTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreManufacturerTranslate`
--

LOCK TABLES `StoreManufacturerTranslate` WRITE;
/*!40000 ALTER TABLE `StoreManufacturerTranslate` DISABLE KEYS */;
INSERT INTO `StoreManufacturerTranslate` (`id`, `object_id`, `language_id`, `name`, `description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES (1,1,1,'Lenovo','','','',''),(2,1,9,'Lenovo','','','',''),(3,2,1,'Asus','','','',''),(4,2,9,'Asus','','','',''),(5,3,1,'Dell','','','',''),(6,3,9,'Dell','','','',''),(7,4,1,'Fujitsu','','','',''),(8,4,9,'Fujitsu','','','',''),(9,5,1,'HP','','','',''),(10,5,9,'HP','','','',''),(11,6,1,'Apple','','','',''),(12,6,9,'Apple','','','',''),(13,7,1,'Sony','','','',''),(14,7,9,'Sony','','','',''),(15,8,1,'Acer','','','',''),(16,8,9,'Acer','','','',''),(17,9,1,'ВолгаАвтоПром','','','',''),(18,9,9,'ВолгаАвтоПром','','','','');
/*!40000 ALTER TABLE `StoreManufacturerTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorePaymentMethod`
--

DROP TABLE IF EXISTS `StorePaymentMethod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorePaymentMethod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_id` int(11) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `payment_system` varchar(100) NOT NULL,
  `position` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `currency_id` (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorePaymentMethod`
--

LOCK TABLES `StorePaymentMethod` WRITE;
/*!40000 ALTER TABLE `StorePaymentMethod` DISABLE KEYS */;
INSERT INTO `StorePaymentMethod` (`id`, `currency_id`, `active`, `payment_system`, `position`) VALUES (17,1,1,'webmoney',0),(19,1,1,'robokassa',1),(21,2,1,'qiwi',4);
/*!40000 ALTER TABLE `StorePaymentMethod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StorePaymentMethodTranslate`
--

DROP TABLE IF EXISTS `StorePaymentMethodTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StorePaymentMethodTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StorePaymentMethodTranslate`
--

LOCK TABLES `StorePaymentMethodTranslate` WRITE;
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` DISABLE KEYS */;
INSERT INTO `StorePaymentMethodTranslate` (`id`, `object_id`, `language_id`, `name`, `description`) VALUES (1,17,1,'WebMoney','WebMoney — это универсальное средство для расчетов в Сети, целая среда финансовых взаимоотношений, которой сегодня пользуются миллионы людей по всему миру.'),(2,17,9,'English payment1','russian description'),(3,18,1,'Наличная','Наличная оплата осуществляется только в рублях при доставке товара курьером покупателю.'),(7,20,1,'Безналичная',' Стоимость товара при безналичной оплате без ПДВ равна розничной цене товара + 2% '),(8,20,9,'Безналичная',''),(4,18,9,'Наличка','<p>ыла оылдао ылдао ылдоа ылдва<br />ыаол ывла оывалд ыова</p>'),(5,19,1,'Robokassa','Многими пользователями электронные платежные системы расцениваются в качестве наиболее удобного средства оплаты товаров и услуг в Интернете.'),(6,19,9,'Robokassa','<p>Description goes here</p>'),(9,21,1,'Qiwi','Оплата с помощью Qiwi'),(10,21,9,'Qiwi','Оплата с помощью Qiwi');
/*!40000 ALTER TABLE `StorePaymentMethodTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProduct`
--

DROP TABLE IF EXISTS `StoreProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturer_id` int(11) DEFAULT NULL,
  `type_id` int(11) NOT NULL,
  `use_configurations` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `price` float(10,2) NOT NULL,
  `max_price` float(10,2) NOT NULL DEFAULT '0.00',
  `is_active` tinyint(1) NOT NULL,
  `layout` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT '0',
  `availability` tinyint(2) NOT NULL DEFAULT '1',
  `auto_decrease_quantity` tinyint(2) NOT NULL DEFAULT '1',
  `views_count` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `added_to_cart_count` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `manufacturer_id` (`manufacturer_id`),
  KEY `type_id` (`type_id`),
  KEY `price` (`price`),
  KEY `max_price` (`max_price`),
  KEY `is_active` (`is_active`),
  KEY `sku` (`sku`),
  KEY `created` (`created`),
  KEY `updated` (`updated`),
  KEY `added_to_cart_count` (`added_to_cart_count`),
  KEY `views_count` (`views_count`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProduct`
--

LOCK TABLES `StoreProduct` WRITE;
/*!40000 ALTER TABLE `StoreProduct` DISABLE KEYS */;
INSERT INTO `StoreProduct` (`id`, `manufacturer_id`, `type_id`, `use_configurations`, `url`, `price`, `max_price`, `is_active`, `layout`, `view`, `sku`, `quantity`, `availability`, `auto_decrease_quantity`, `views_count`, `created`, `updated`, `added_to_cart_count`, `votes`, `rating`, `discount`) VALUES (42,NULL,7,0,'ckcukvia',111.00,0.00,1,'','','',0,1,1,13,'2014-02-15 18:14:20','2014-02-15 18:14:20',3,0,0,''),(41,NULL,6,0,'wewqeqw',3333.00,0.00,1,'','','',0,1,1,7,'2014-02-15 16:05:38','2014-02-15 16:05:38',4,0,0,''),(40,NULL,6,0,'xillsong---ivaivavi',111.00,0.00,1,'','','',121,1,1,8,'2014-02-15 15:57:26','2014-02-15 15:57:26',5,0,0,'');
/*!40000 ALTER TABLE `StoreProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductAttributeEAV`
--

DROP TABLE IF EXISTS `StoreProductAttributeEAV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductAttributeEAV` (
  `entity` int(11) unsigned NOT NULL,
  `attribute` varchar(250) NOT NULL,
  `value` text NOT NULL,
  KEY `ikEntity` (`entity`),
  KEY `attribute` (`attribute`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductAttributeEAV`
--

LOCK TABLES `StoreProductAttributeEAV` WRITE;
/*!40000 ALTER TABLE `StoreProductAttributeEAV` DISABLE KEYS */;
INSERT INTO `StoreProductAttributeEAV` (`entity`, `attribute`, `value`) VALUES (41,'TrackName','asdsad'),(41,'artist','3333'),(42,'DiskType','60'),(40,'TrackName','аываывываыва'),(40,'price','12'),(40,'Length','21'),(40,'artist','Хиллсонг');
/*!40000 ALTER TABLE `StoreProductAttributeEAV` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductCategoryRef`
--

DROP TABLE IF EXISTS `StoreProductCategoryRef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductCategoryRef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `is_main` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `product` (`product`),
  KEY `is_main` (`is_main`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductCategoryRef`
--

LOCK TABLES `StoreProductCategoryRef` WRITE;
/*!40000 ALTER TABLE `StoreProductCategoryRef` DISABLE KEYS */;
INSERT INTO `StoreProductCategoryRef` (`id`, `product`, `category`, `is_main`) VALUES (76,41,1,1),(74,40,1,1),(78,42,1,1),(77,42,222,0),(75,41,222,0),(73,40,222,0);
/*!40000 ALTER TABLE `StoreProductCategoryRef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductConfigurableAttributes`
--

DROP TABLE IF EXISTS `StoreProductConfigurableAttributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductConfigurableAttributes` (
  `product_id` int(11) NOT NULL COMMENT 'Attributes available to configure product',
  `attribute_id` int(11) NOT NULL,
  UNIQUE KEY `product_attribute_index` (`product_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductConfigurableAttributes`
--

LOCK TABLES `StoreProductConfigurableAttributes` WRITE;
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurableAttributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductConfigurations`
--

DROP TABLE IF EXISTS `StoreProductConfigurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductConfigurations` (
  `product_id` int(11) NOT NULL COMMENT 'Saves relations beetwen product and configurations',
  `configurable_id` int(11) NOT NULL,
  UNIQUE KEY `idsunique` (`product_id`,`configurable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductConfigurations`
--

LOCK TABLES `StoreProductConfigurations` WRITE;
/*!40000 ALTER TABLE `StoreProductConfigurations` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductConfigurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductImage`
--

DROP TABLE IF EXISTS `StoreProductImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductImage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_main` tinyint(1) DEFAULT '0',
  `uploaded_by` int(11) NOT NULL,
  `date_uploaded` datetime NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductImage`
--

LOCK TABLES `StoreProductImage` WRITE;
/*!40000 ALTER TABLE `StoreProductImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductTranslate`
--

DROP TABLE IF EXISTS `StoreProductTranslate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductTranslate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_description` text,
  `full_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `language_id` (`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductTranslate`
--

LOCK TABLES `StoreProductTranslate` WRITE;
/*!40000 ALTER TABLE `StoreProductTranslate` DISABLE KEYS */;
INSERT INTO `StoreProductTranslate` (`id`, `object_id`, `language_id`, `name`, `short_description`, `full_description`, `meta_title`, `meta_keywords`, `meta_description`) VALUES (82,41,9,'wewqeqw','','','','',''),(83,42,1,'цкцуквыа','','','','',''),(84,42,9,'цкцуквыа','','','','',''),(81,41,1,'wewqeqw','','','','',''),(80,40,9,'Хиллсонг - ываывавы','','','','',''),(79,40,1,'Хиллсонг - ываывавы','','','','','');
/*!40000 ALTER TABLE `StoreProductTranslate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductType`
--

DROP TABLE IF EXISTS `StoreProductType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductType` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `categories_preset` text NOT NULL,
  `main_category` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductType`
--

LOCK TABLES `StoreProductType` WRITE;
/*!40000 ALTER TABLE `StoreProductType` DISABLE KEYS */;
INSERT INTO `StoreProductType` (`id`, `name`, `categories_preset`, `main_category`) VALUES (7,'Аудиодиск','a:1:{i:0;s:3:\"222\";}',0),(6,'Аудиотрек','a:1:{i:0;s:3:\"222\";}',0);
/*!40000 ALTER TABLE `StoreProductType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreProductVariant`
--

DROP TABLE IF EXISTS `StoreProductVariant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreProductVariant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` float(10,2) NOT NULL DEFAULT '0.00',
  `price_type` tinyint(1) NOT NULL,
  `sku` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute_id` (`attribute_id`),
  KEY `option_id` (`option_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreProductVariant`
--

LOCK TABLES `StoreProductVariant` WRITE;
/*!40000 ALTER TABLE `StoreProductVariant` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreProductVariant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreRelatedProduct`
--

DROP TABLE IF EXISTS `StoreRelatedProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreRelatedProduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='Handle related products';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreRelatedProduct`
--

LOCK TABLES `StoreRelatedProduct` WRITE;
/*!40000 ALTER TABLE `StoreRelatedProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `StoreRelatedProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreTypeAttribute`
--

DROP TABLE IF EXISTS `StoreTypeAttribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreTypeAttribute` (
  `type_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  PRIMARY KEY (`type_id`,`attribute_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreTypeAttribute`
--

LOCK TABLES `StoreTypeAttribute` WRITE;
/*!40000 ALTER TABLE `StoreTypeAttribute` DISABLE KEYS */;
INSERT INTO `StoreTypeAttribute` (`type_id`, `attribute_id`) VALUES (6,16),(6,19),(6,20),(6,22),(7,16),(7,17),(7,18),(7,20),(7,21),(7,23);
/*!40000 ALTER TABLE `StoreTypeAttribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreWishlist`
--

DROP TABLE IF EXISTS `StoreWishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreWishlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `key` (`key`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreWishlist`
--

LOCK TABLES `StoreWishlist` WRITE;
/*!40000 ALTER TABLE `StoreWishlist` DISABLE KEYS */;
INSERT INTO `StoreWishlist` (`id`, `key`, `user_id`) VALUES (4,'ju9gvr5cyd',1),(5,'x9bp9oksj7',72);
/*!40000 ALTER TABLE `StoreWishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StoreWishlistProducts`
--

DROP TABLE IF EXISTS `StoreWishlistProducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StoreWishlistProducts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wishlist_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `wishlist_id` (`wishlist_id`),
  KEY `product_id` (`product_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StoreWishlistProducts`
--

LOCK TABLES `StoreWishlistProducts` WRITE;
/*!40000 ALTER TABLE `StoreWishlistProducts` DISABLE KEYS */;
INSERT INTO `StoreWishlistProducts` (`id`, `wishlist_id`, `product_id`, `user_id`) VALUES (7,5,42,72);
/*!40000 ALTER TABLE `StoreWishlistProducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemLanguage`
--

DROP TABLE IF EXISTS `SystemLanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemLanguage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `code` varchar(25) NOT NULL,
  `locale` varchar(100) NOT NULL,
  `default` tinyint(1) NOT NULL,
  `flag_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemLanguage`
--

LOCK TABLES `SystemLanguage` WRITE;
/*!40000 ALTER TABLE `SystemLanguage` DISABLE KEYS */;
INSERT INTO `SystemLanguage` (`id`, `name`, `code`, `locale`, `default`, `flag_name`) VALUES (1,'Русский','ru','ru',1,'ru.png'),(9,'English','en','en',0,'us.png');
/*!40000 ALTER TABLE `SystemLanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemModules`
--

DROP TABLE IF EXISTS `SystemModules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemModules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemModules`
--

LOCK TABLES `SystemModules` WRITE;
/*!40000 ALTER TABLE `SystemModules` DISABLE KEYS */;
INSERT INTO `SystemModules` (`id`, `name`, `enabled`) VALUES (7,'users',1),(9,'pages',1),(11,'core',1),(12,'rights',1),(16,'orders',1),(15,'store',1),(17,'comments',1),(37,'feedback',1),(38,'discounts',1),(39,'newsletter',1),(40,'csv',1),(41,'logger',1),(52,'accounting1c',1),(53,'yandexMarket',1),(54,'notifier',1),(55,'statistics',1),(56,'sitemap',1),(57,'programm',1);
/*!40000 ALTER TABLE `SystemModules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemSettings`
--

DROP TABLE IF EXISTS `SystemSettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemSettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemSettings`
--

LOCK TABLES `SystemSettings` WRITE;
/*!40000 ALTER TABLE `SystemSettings` DISABLE KEYS */;
INSERT INTO `SystemSettings` (`id`, `category`, `key`, `value`) VALUES (9,'feedback','max_message_length','1000'),(8,'feedback','enable_captcha','1'),(7,'feedback','admin_email','admin@localhost.local'),(10,'17_WebMoneyPaymentSystem','LMI_PAYEE_PURSE','Z123456578811'),(11,'17_WebMoneyPaymentSystem','LMI_SECRET_KEY','theSercretPassword'),(12,'18_WebMoneyPaymentSystem','LMI_PAYEE_PURSE','1'),(13,'18_WebMoneyPaymentSystem','LMI_SECRET_KEY','2'),(14,'19_RobokassaPaymentSystem','login','login'),(15,'19_RobokassaPaymentSystem','password1','password1value'),(16,'19_RobokassaPaymentSystem','password2','password2value'),(22,'accounting1c','password','f880fefe2aff8130bb31d480f08e47c03e655b60'),(21,'accounting1c','ip','127.0.0.1'),(23,'accounting1c','tempdir','application.runtime'),(24,'yandexMarket','name','Демо магазин'),(25,'yandexMarket','company','Демо кампания'),(26,'yandexMarket','url','http://demo-company.loc/'),(27,'yandexMarket','currency_id','2'),(28,'core','siteName','Интернет-Магазинт'),(29,'core','productsPerPage','12,18,24'),(30,'core','productsPerPageAdmin','20'),(31,'core','theme','default'),(32,'20_QiwiPaymentSystem','shop_id',''),(33,'20_QiwiPaymentSystem','password',''),(34,'21_QiwiPaymentSystem','shop_id','211182'),(35,'21_QiwiPaymentSystem','password','xsi100500'),(36,'core','editorTheme','maxi'),(37,'core','editorHeight','300'),(38,'core','editorAutoload','0'),(39,'images','path','webroot.uploads.product'),(40,'images','thumbPath','webroot.assets.productThumbs'),(41,'images','url','/uploads/product/'),(42,'images','thumbUrl','/assets/productThumbs/'),(43,'images','maxFileSize','10485760'),(44,'images','max_sizes','1800х1600'),(45,'images','maximum_image_size','800x600'),(46,'images','watermark_image',''),(47,'images','watermark_active','1'),(48,'images','watermark_position_vertical','top'),(49,'images','watermark_position_horizontal','left'),(50,'images','watermark_opacity','');
/*!40000 ALTER TABLE `SystemSettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grid_view_filter`
--

DROP TABLE IF EXISTS `grid_view_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grid_view_filter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `grid_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grid_view_filter`
--

LOCK TABLES `grid_view_filter` WRITE;
/*!40000 ALTER TABLE `grid_view_filter` DISABLE KEYS */;
/*!40000 ALTER TABLE `grid_view_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `secret_key` varchar(10) NOT NULL,
  `delivery_id` int(11) NOT NULL,
  `delivery_price` float(10,2) NOT NULL,
  `total_price` float(10,2) NOT NULL,
  `status_id` int(11) NOT NULL,
  `paid` tinyint(1) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL COMMENT 'delivery address',
  `user_phone` varchar(30) NOT NULL,
  `user_comment` varchar(500) NOT NULL,
  `ip_address` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `admin_comment` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `secret_key` (`secret_key`),
  KEY `delivery_id` (`delivery_id`),
  KEY `status_id` (`status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `user_id`, `secret_key`, `delivery_id`, `delivery_price`, `total_price`, `status_id`, `paid`, `user_name`, `user_email`, `user_address`, `user_phone`, `user_comment`, `ip_address`, `created`, `updated`, `discount`, `admin_comment`) VALUES (84,71,'o0vznhtpfv',16,30.00,3333.00,1,0,'dgdfg','re55@gmail.com','','','','178.92.18.45','2014-02-17 04:33:31','2014-02-17 04:33:31',NULL,''),(85,73,'t9t5991j65',14,0.00,3555.00,1,0,'sdfsdfsd','sdfsdfsdf@dsfsdf.sdfsd','','','','37.213.136.215','2014-02-17 06:08:02','2014-02-17 06:08:02',NULL,'');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `systemsettings`
--

DROP TABLE IF EXISTS `systemsettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `systemsettings`
--

LOCK TABLES `systemsettings` WRITE;
/*!40000 ALTER TABLE `systemsettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `systemsettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_migration`
--

DROP TABLE IF EXISTS `tbl_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_migration` (
  `version` varchar(255) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_migration`
--

LOCK TABLES `tbl_migration` WRITE;
/*!40000 ALTER TABLE `tbl_migration` DISABLE KEYS */;
INSERT INTO `tbl_migration` (`version`, `apply_time`) VALUES ('m000000_000000_base',1361214193),('m130218_190341_add_description_to_store_category',1361214373),('m130218_190818_add_description_to_store_category_translate',1361214547),('m130420_194012_add_roles_to_discounts',1366487103),('m130420_204956_add_personal_discount_to_user',1366491054),('m130421_095545_add_personal_discount_to_product',1366538394),('m130504_170119_add_discout_to_order',1367686940),('m130504_183903_add_title_to_store_product_image',1367692811),('m130507_103455_add_banned_to_user',1367923070),('m130507_104810_unban_all_users',1367923771);
/*!40000 ALTER TABLE `tbl_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `login_ip` varchar(255) NOT NULL,
  `recovery_key` varchar(20) NOT NULL,
  `recovery_password` varchar(100) NOT NULL,
  `discount` varchar(255) DEFAULT NULL,
  `banned` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='Saves user accounts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `login_ip`, `recovery_key`, `recovery_password`, `discount`, `banned`) VALUES (1,'admin','d033e22ae348aeb5660fc2140aec35850c4da997','emagholy@emag.holyweb.info','2011-08-21 10:17:15','2014-02-17 12:32:50','37.45.105.87','PXKMUEHFNK','01A2QOPJE1KIYRP','',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_profile`
--

DROP TABLE IF EXISTS `user_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `delivery_address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_profile`
--

LOCK TABLES `user_profile` WRITE;
/*!40000 ALTER TABLE `user_profile` DISABLE KEYS */;
INSERT INTO `user_profile` (`id`, `user_id`, `full_name`, `phone`, `delivery_address`) VALUES (1,1,'Сергей Боровский','000-000-00-00','where to delivery');
/*!40000 ALTER TABLE `user_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `catalog_name` varchar(64) NOT NULL,
  `directed` varchar(32) NOT NULL,
  `actors` varchar(255) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `country` varchar(64) NOT NULL,
  `screensorts` text NOT NULL,
  `shifr` varchar(16) NOT NULL,
  `price` int(11) NOT NULL,
  `cover` text NOT NULL,
  `genre` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` (`id`, `name`, `catalog_name`, `directed`, `actors`, `duration`, `country`, `screensorts`, `shifr`, `price`, `cover`, `genre`, `description`) VALUES (1,'sdfsadf','asdfasdfasdf','asdfasdfasdf','asdfasdfasdf','vlvlhjv;','khvb;lv;l',';kvbkhj','dfsdfsdfsd',2222,'images/cover.jpg',';h;lh;h;lh',';lh;lkh;lk'),(2,'Ирония Судьбы или С легким паром','ываыа','Рязанов','не помню','не знаю','СССР','пока нету','не нужен',1000,'/images/17_05.jpg','sdfdssd','sdfdsfsd'),(3,'sdfsd','sdfsdf','sdfsdf','не помню','vlvlhjv;','СССР','sdfsdfdsf','не нужен',1000,'sdfsdfs',';h;lh;h;lh','sdfdsfsf');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'emagholy_emag'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-18  0:22:15
