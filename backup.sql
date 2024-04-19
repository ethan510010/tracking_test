-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: 127.0.0.1    Database: tracking_status_storage
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `tracking_status_storage`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `tracking_status_storage` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `tracking_status_storage`;

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `details` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `date` longtext,
  `time` longtext,
  `status` tinyint DEFAULT NULL,
  `location_id` int unsigned DEFAULT NULL,
  `location_title` longtext,
  `sno` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_location_id` (`location_id`),
  KEY `idx_sno` (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `details`
--

LOCK TABLES `details` WRITE;
/*!40000 ALTER TABLE `details` DISABLE KEYS */;
INSERT INTO `details` VALUES (1,'2020-07-08','19:17',2,6,'宜蘭物流中⼼',2316693116),(2,'2011-07-10','11:53',0,8,'彰化物流中⼼',2316693116),(3,'2007-08-28','23:19',5,13,'台中物流中⼼',2316693116),(4,'2000-09-18','17:11',6,1,'台中物流中⼼',1554574096),(5,'2017-09-01','00:37',5,6,'台北物流中⼼',1554574096),(6,'2013-04-13','22:16',4,11,'彰化物流中⼼',1554574096),(7,'2008-04-13','16:07',7,21,'新⽵物流中⼼',1554574096),(8,'2022-09-06','23:43',5,23,'彰化物流中⼼',2925094357),(9,'2001-12-25','00:53',0,9,'基隆物流中⼼',2925094357);
/*!40000 ALTER TABLE `details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `location_id` int unsigned DEFAULT NULL,
  `title` longtext,
  `city` longtext,
  `address` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,7,'台北物流中⼼','台北市','台北市中正區忠孝東路100號'),(2,13,'新⽵物流中⼼','新⽵市','新⽵市東區光復路⼀段101號'),(3,24,'台中物流中⼼','台中市','台中市⻄區⺠⽣路200號'),(4,3,'桃園物流中⼼','桃園市','桃園市中壢區中央⻄路三段150號'),(5,18,'⾼雄物流中⼼','⾼雄市','⾼雄市前⾦區成功⼀路82號'),(6,9,'彰化物流中⼼','彰化市','彰化市中⼭路⼆段250號'),(7,15,'嘉義物流中⼼','嘉義市','嘉義市東區⺠族路380號'),(8,6,'宜蘭物流中⼼','宜蘭市','宜蘭市中⼭路⼆段58號'),(9,6,'宜蘭物流中⼼','宜蘭市','宜蘭市中⼭路⼆段58號'),(10,21,'屏東物流中⼼','屏東市','屏東市⺠⽣路300號'),(11,1,'花蓮物流中⼼','花蓮市','花蓮市國聯⼀路100號'),(12,4,'台南物流中⼼','台南市','台南市安平區建平路18號'),(13,11,'南投物流中⼼','南投市','南投市⾃由路67號'),(14,23,'雲林物流中⼼','雲林市','雲林市中正路五段120號'),(15,14,'基隆物流中⼼','基隆市','基隆市信⼀路50號'),(16,8,'澎湖物流中⼼','澎湖縣','澎湖縣⾺公市中正路200號'),(17,19,'⾦⾨物流中⼼','⾦⾨縣','⾦⾨縣⾦城鎮⺠⽣路90號');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipients`
--

DROP TABLE IF EXISTS `recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext,
  `address` longtext,
  `phone` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1252 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipients`
--

LOCK TABLES `recipients` WRITE;
/*!40000 ALTER TABLE `recipients` DISABLE KEYS */;
INSERT INTO `recipients` VALUES (1234,'賴⼩賴','台北市中正區仁愛路⼆段99號','091234567'),(1235,'陳⼤明','新北市板橋區⽂化路⼀段100號','092345678'),(1236,'林⼩芳','台中市⻄區⺠⽣路200號','093456789'),(1237,'張美玲','⾼雄市前⾦區成功⼀路82號','094567890'),(1238,'王⼩明','台南市安平區建平路18號','095678901'),(1239,'劉⼤華','新⽵市東區光復路⼀段101號','096789012'),(1240,'⿈⼩琳','彰化市中⼭路⼆段250號','097890123'),(1241,'吳美美','花蓮市國聯⼀路100號','098901234'),(1242,'蔡⼩虎','屏東市⺠⽣路300號','099012345'),(1243,'鄭⼤勇','基隆市信⼀路50號','091123456'),(1244,'謝⼩珍','嘉義市東區⺠族路380號','092234567'),(1245,'潘⼤為','宜蘭市中⼭路⼆段58號','093345678'),(1246,'趙⼩梅','南投市⾃由路67號','094456789'),(1247,'周⼩⿓','雲林市中正路五段120號','095567890'),(1248,'李⼤同','澎湖縣⾺公市中正路200號','096678901'),(1249,'陳⼩凡','⾦⾨縣⾦城鎮⺠⽣路90號','097789012'),(1250,'楊⼤明','台北市信義區松仁路50號','098890123'),(1251,'吳⼩雯','新北市中和區景平路100號','099901234');
/*!40000 ALTER TABLE `recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking_statuses`
--

DROP TABLE IF EXISTS `tracking_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracking_statuses` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sno` int unsigned DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `estimated_delivery` longtext,
  `recipient` int unsigned DEFAULT NULL,
  `current_location_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sno` (`sno`),
  KEY `idx_recipient_id` (`recipient`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking_statuses`
--

LOCK TABLES `tracking_statuses` WRITE;
/*!40000 ALTER TABLE `tracking_statuses` DISABLE KEYS */;
INSERT INTO `tracking_statuses` VALUES (1,2316693116,3,'2017-03-28',1248,23),(2,1554574096,0,'2002-11-24',1247,1),(3,2925094357,1,'2010-05-25',1246,15);
/*!40000 ALTER TABLE `tracking_statuses` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 15:44:47
