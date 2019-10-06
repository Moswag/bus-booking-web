-- MySQL dump 10.13  Distrib 5.7.27, for macos10.14 (x86_64)
--
-- Host: localhost    Database: bus_booking
-- ------------------------------------------------------
-- Server version	5.7.27

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'1','Webster','Moswa','webstermoswa11@gmail.com','0771407147','1450 Woodlands Park Gweru','2019-10-02 20:25:30','2019-10-02 20:25:30'),(2,'2','Trevor','Kauyu','kauyu@gmail.com','0771407147','1450 Woodlands Parl','2019-10-02 20:36:53','2019-10-02 20:36:53'),(3,'3','Musoro','Wegomo','tawedzerwa@steaknchips.co.zw','0771407147','1450 Woodlands Park Gweru','2019-10-02 20:38:07','2019-10-02 20:38:07'),(4,'19','Webster','Mos','toto@gmail.com','0771407147','1234 Woodlands Park','2019-10-03 10:15:51','2019-10-03 10:15:51');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_buses`
--

DROP TABLE IF EXISTS `book_buses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_buses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `route_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_buses`
--

LOCK TABLES `book_buses` WRITE;
/*!40000 ALTER TABLE `book_buses` DISABLE KEYS */;
INSERT INTO `book_buses` VALUES (1,'4','0771407147','12/12/2019','Approved','2019-10-05 14:29:47','2019-10-05 14:29:47'),(2,'4','0771407147','12/12/2019','Approved','2019-10-05 14:30:24','2019-10-05 14:30:24'),(3,'4','0771407147','12/12/2019','Approved','2019-10-05 14:31:55','2019-10-05 14:31:55'),(4,'4','0771407147','12/12/2019','Approved','2019-10-05 14:32:24','2019-10-05 14:32:24'),(5,'4','0771407147','12/12/2019','Approved','2019-10-05 14:35:19','2019-10-05 14:35:19'),(6,'4','0771407147','12/12/2019','Approved','2019-10-05 14:36:15','2019-10-05 14:36:15'),(7,'4','0777791898','12/12/2019','Approved','2019-10-05 14:37:39','2019-10-05 14:37:39'),(8,'4','0777791898','12/12/2019','Approved','2019-10-05 14:37:48','2019-10-05 14:37:48'),(9,'4','0777791898','12/12/2019','Approved','2019-10-05 14:39:02','2019-10-05 14:39:02'),(10,'4','0777791898','12/12/2019','Approved','2019-10-05 14:39:18','2019-10-05 14:39:18'),(11,'4','0777791898','12/12/2019','Approved','2019-10-05 14:40:21','2019-10-05 14:40:21'),(12,'4','0777791898','12/12/2019','Approved','2019-10-05 14:40:24','2019-10-05 14:40:24'),(13,'4','0777791898','12/12/2019','Approved','2019-10-05 14:40:26','2019-10-05 14:40:26'),(14,'4','0777791898','12/12/2019','Approved','2019-10-05 14:49:24','2019-10-05 14:49:24'),(15,'4','0712345343','2019-10-23','Approved','2019-10-05 15:34:04','2019-10-05 15:34:04'),(16,'4','0712345343','2019-10-25','Approved','2019-10-05 15:44:47','2019-10-05 15:44:47'),(17,'4','0712345343','2019-10-29','Approved','2019-10-05 22:51:31','2019-10-05 22:51:31'),(18,'4','0712345343','2019-10-31','Approved','2019-10-05 22:57:45','2019-10-05 22:57:45'),(19,'4','0712345343','2019-10-27','Approved','2019-10-05 22:59:23','2019-10-05 22:59:23'),(20,'4','0712345343','2019-11-21','Approved','2019-10-05 23:00:37','2019-10-05 23:00:37'),(21,'4','0712345343','2019-11-29','Approved','2019-10-05 23:02:25','2019-10-05 23:02:25'),(22,'4','0712345343','2019-10-22','Approved','2019-10-05 23:04:59','2019-10-05 23:04:59'),(23,'4','0712345343','2019-10-18','Approved','2019-10-05 23:06:53','2019-10-05 23:06:53'),(24,'4','0712345343','2019-10-16','Approved','2019-10-05 23:20:54','2019-10-05 23:20:54'),(25,'4','0712345343','2019-10-24','Approved','2019-10-05 23:24:15','2019-10-05 23:24:15'),(26,'4','0712345343','2019-10-26','Approved','2019-10-05 23:25:40','2019-10-05 23:25:40'),(27,'4','0712345343','2019-10-11','Approved','2019-10-05 23:28:08','2019-10-05 23:28:08'),(28,'4','0712345343','2019-10-21','Approved','2019-10-05 23:29:30','2019-10-05 23:29:30'),(29,'4','You successfully booked Eagle Liner and your sit number is 1 Thank you for doing business with us. All the best','2019-10-17','Approved','2019-10-05 23:30:56','2019-10-05 23:30:56'),(30,'1','You successfully booked Eagle Liner and your sit number is 1 Thank you for doing business with us. All the best','2019-10-23','Approved','2019-10-05 23:34:14','2019-10-05 23:34:14'),(31,'4','You successfully booked Eagle Liner and your sit number is 1 Thank you for doing business with us. All the best','2019-10-07','Approved','2019-10-05 23:36:09','2019-10-05 23:36:09'),(32,'4','0712345343','2019-10-20','Approved','2019-10-05 23:44:17','2019-10-05 23:44:17'),(33,'4','0712345343','2019-10-28','Approved','2019-10-05 23:49:58','2019-10-05 23:49:58'),(34,'4','0712345343','2019-10-15','Approved','2019-10-06 00:02:35','2019-10-06 00:02:35'),(35,'4','0712345343','2019-12-18','Approved','2019-10-06 01:03:00','2019-10-06 01:03:00'),(36,'4','0712345343','2020-01-23','Approved','2019-10-06 01:40:00','2019-10-06 01:40:00'),(37,'4','0712345343','2019-10-13','Approved','2019-10-06 01:43:17','2019-10-06 01:43:17'),(38,'4','0712590173','2019-10-10','Approved','2019-10-06 02:35:49','2019-10-06 02:35:49');
/*!40000 ALTER TABLE `book_buses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus_routes`
--

DROP TABLE IF EXISTS `bus_routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bus_routes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_arrival_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_passengers` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus_routes`
--

LOCK TABLES `bus_routes` WRITE;
/*!40000 ALTER TABLE `bus_routes` DISABLE KEYS */;
INSERT INTO `bus_routes` VALUES (1,'1','Gweru','Harare','90','10:00am','15:00pm','72','Active',NULL,NULL),(2,'1','Bulawayo','Gweru','50','7:00am','12:00pm','72','Active',NULL,NULL),(3,'1','Bulawayo','Mutare','800','03:23','03:23','80','Active','2019-10-03 10:22:50','2019-10-03 10:22:50'),(4,'3','Gweru','Harare','800','04:44','05:55','70','Active','2019-10-03 11:44:33','2019-10-03 11:44:33');
/*!40000 ALTER TABLE `bus_routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Gweru','Active','2019-10-03 04:58:24','2019-10-03 04:58:24');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mission` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `imageUrl` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (3,'Eagle Liner','Championing the passenger','http://10.140.39.137/bus_booking/storage/app/companylogo/$2y$10$6nVZ7TL2PFVHhCZeEdJDe.Xv//96gGg/YL3uls8sAeJnvyMeuxSLa.png','2019-10-03 11:36:50','2019-10-03 11:36:50');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_admins`
--

DROP TABLE IF EXISTS `company_admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_admins` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_admins`
--

LOCK TABLES `company_admins` WRITE;
/*!40000 ALTER TABLE `company_admins` DISABLE KEYS */;
INSERT INTO `company_admins` VALUES (1,'18','1','You','Mos','moswa@gmail.com','0771407147','1234 Wood','2019-10-03 09:03:50','2019-10-03 09:03:50'),(2,'20','3','Tari','Mashinga','tari@gmail.com','0771407147','23444 Wood','2019-10-03 11:42:48','2019-10-03 11:42:48');
/*!40000 ALTER TABLE `company_admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company_tokens`
--

DROP TABLE IF EXISTS `company_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company_tokens`
--

LOCK TABLES `company_tokens` WRITE;
/*!40000 ALTER TABLE `company_tokens` DISABLE KEYS */;
INSERT INTO `company_tokens` VALUES (1,'$2y$10$Eqx5S/z3aTocFUPGikWu...Vgk3VGMjhHhK4Zy5dLHrq8iCEPDIea','1','1','Unused','2019-10-03 05:44:43','2019-10-03 05:44:43'),(2,'$2y$10$WaZ3wDFUlzmBM0u7MgTWi.zVXSZwRooWOA.H3kxxS3kweqAdSvQ9.','City Link','1','Unused','2019-10-03 05:46:29','2019-10-03 05:46:29'),(3,'$2y$10$Th5VCjjIZlL4q..OZfm0nuJ4MJviKOJoPEapTx4iWgIWYMOfNt38u','Eagle Liner','3','Unused','2019-10-03 11:37:18','2019-10-03 11:37:18');
/*!40000 ALTER TABLE `company_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_receipts`
--

DROP TABLE IF EXISTS `customer_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_receipts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `route_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sit_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_arrival_time` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departure_time` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_receipts`
--

LOCK TABLES `customer_receipts` WRITE;
/*!40000 ALTER TABLE `customer_receipts` DISABLE KEYS */;
INSERT INTO `customer_receipts` VALUES (7,'','4','TIm Mos','2929','0777791898','Harare','Gweru','800','Pending','12/12/2019','1','','','2019-10-05 14:49:24','2019-10-05 14:49:24'),(8,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-23','1','','','2019-10-05 15:34:04','2019-10-05 15:34:04'),(9,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-25','1','','','2019-10-05 15:44:48','2019-10-05 15:44:48'),(10,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-29','1','','','2019-10-05 22:51:32','2019-10-05 22:51:32'),(11,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-31','1','','','2019-10-05 22:57:45','2019-10-05 22:57:45'),(12,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-27','1','','','2019-10-05 22:59:23','2019-10-05 22:59:23'),(13,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-11-21','1','','','2019-10-05 23:00:37','2019-10-05 23:00:37'),(14,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-11-29','1','','','2019-10-05 23:02:25','2019-10-05 23:02:25'),(15,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-22','1','','','2019-10-05 23:04:59','2019-10-05 23:04:59'),(16,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-18','1','','','2019-10-05 23:06:53','2019-10-05 23:06:53'),(17,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-16','1','','','2019-10-05 23:20:54','2019-10-05 23:20:54'),(18,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-24','1','','','2019-10-05 23:24:15','2019-10-05 23:24:15'),(19,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-26','1','','','2019-10-05 23:25:40','2019-10-05 23:25:40'),(20,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-11','1','','','2019-10-05 23:28:08','2019-10-05 23:28:08'),(21,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-21','1','','','2019-10-05 23:29:30','2019-10-05 23:29:30'),(22,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-20','1','','','2019-10-05 23:44:17','2019-10-05 23:44:17'),(23,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-28','1','','','2019-10-05 23:49:58','2019-10-05 23:49:58'),(24,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-10-15','1','','','2019-10-06 00:02:35','2019-10-06 00:02:35'),(25,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2019-12-18','1','05:55','04:44','2019-10-06 01:03:00','2019-10-06 01:03:00'),(26,'','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Pending','2020-01-23','1','05:55','04:44','2019-10-06 01:40:00','2019-10-06 01:40:00'),(27,'3','4','Webster Moswa','29295480M07','0712345343','Harare','Gweru','800','Processed','2019-10-13','1','05:55','04:44','2019-10-06 01:43:17','2019-10-06 04:10:19'),(28,'3','4','Job Scala','29292929','0712590173','Harare','Gweru','800','Pending','2019-10-10','1','05:55','04:44','2019-10-06 02:35:49','2019-10-06 02:35:49');
/*!40000 ALTER TABLE `customer_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `national_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phonenumber` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (5,'14','Webster','Moswa','29295480M07','0712345343','1450 Woodlands Park','2019-10-02 23:57:56','2019-10-02 23:57:56'),(8,'23','Webster','Moswa','29295480M07','0771407147','1450 Woodlands Park','2019-10-06 02:25:58','2019-10-06 02:25:58'),(9,'24','Timothy','Moswa','2929292929','0777791898','1450 Woodlands Park','2019-10-06 02:28:46','2019-10-06 02:28:46'),(10,'25','Job','Scala','29292929','0712590173','1345 Woodlands Park','2019-10-06 02:30:36','2019-10-06 02:30:36');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_09_30_235022_create_book_buses_table',1),(5,'2019_09_30_235103_create_admins_table',1),(6,'2019_09_30_235113_create_companies_table',1),(7,'2019_09_30_235135_create_customers_table',1),(8,'2019_10_01_000349_create_bus_routes_table',1),(9,'2019_10_01_000534_create_cities_table',1),(10,'2019_10_02_220229_create_company_admins_table',1),(11,'2019_10_02_220259_create_company_tokens_table',1),(12,'2019_10_05_143545_create_customer_receipts_table',2),(13,'2019_10_05_165428_create_promotions_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `promotion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'1','Eagle Liner','Buy 3 tickets per week snd get one free','Active',NULL,NULL),(2,'3','Eagle Liner','50% discount on all travels','Active','2019-10-06 03:35:02','2019-10-06 03:35:02'),(3,'3','Eagle Liner','Tikupa matickets ma1','Active','2019-10-06 03:36:06','2019-10-06 03:36:06');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Webster Moswa','webstermoswa11@gmail.com',NULL,'Admin','$2y$10$HkuDpTK/jV9wGf690Opw9.5xAUHER7Ea.WNmQO.eRHh7hXx8vXyfW',NULL,'2019-10-02 20:25:30','2019-10-02 20:25:30'),(2,'Trevor Kauyu','kauyu@gmail.com',NULL,'Admin','$2y$10$AtN9FnylN3sZxcmpWdVSl.8mhwqfStZV4G9o.9llyUe3jCUMmK3tC',NULL,'2019-10-02 20:36:53','2019-10-02 20:36:53'),(3,'Musoro Wegomo','tawedzerwa@steaknchips.co.zw',NULL,'Admin','$2y$10$UIiAvTyaleRkXTtIIU5ZoeScMmuKCPnoMek8c4z0E11CYBa.B3n2C',NULL,'2019-10-02 20:38:07','2019-10-02 20:38:07'),(14,'Webster Moswa','0712345343',NULL,'Customer','$2y$10$tAsxFl8lvE2GjOAViL1V9OYN390Fkv5loKicSTk5F7t3.sSvjN/6W',NULL,'2019-10-02 23:57:56','2019-10-02 23:57:56'),(15,'Webs Mos','rtyuu@gmail.com',NULL,'CompanyAdmin','$2y$10$39L1o5JjY1cuBZtqBsLakO12m5s2PI9k0uRtBj0nuVbBaEML5dAea',NULL,'2019-10-03 08:59:08','2019-10-03 08:59:08'),(16,'Mos Maski','w@gmail.com',NULL,'CompanyAdmin','$2y$10$Se1uGDZ7XYYuUxWjL/yGdemj53BCZn.Y9g/HwURKky7Sdy1xxCv2.',NULL,'2019-10-03 09:01:12','2019-10-03 09:01:12'),(17,'You Mos','mos@gmail.com',NULL,'CompanyAdmin','$2y$10$ImSzt6h/kDghZclERmsAzuGnVdMAp/m.t5uUjenmaKDpmOE6uBS3u',NULL,'2019-10-03 09:02:40','2019-10-03 09:02:40'),(18,'You Mos','moswa@gmail.com',NULL,'CompanyAdmin','$2y$10$7lDApQ6SlJqRmOWS1je/M.TOPrBR.tiaHWk83Z95sRqSruxW2QEQ2',NULL,'2019-10-03 09:03:50','2019-10-03 09:03:50'),(19,'Webster Mos','toto@gmail.com',NULL,'Admin','$2y$10$/GQvryhnUOwz6ZtqexcrJ.e6wT4jBWthFIVYoV3sMkkFEgODqwM2K',NULL,'2019-10-03 10:15:51','2019-10-03 10:15:51'),(20,'Tari Mashinga','tari@gmail.com',NULL,'CompanyAdmin','$2y$10$s2PyXqudsnvbmKG6b5792OZFlFBjphWHJWIie6EClKTYSjXu5SLC.',NULL,'2019-10-03 11:42:48','2019-10-03 11:42:48'),(23,'Webster Moswa','0771407147',NULL,'Customer','$2y$10$NZza6Kj0nA4FcHsFgWotDO2PWXiCdVGsFY2/lLKMevKzoz8znEEEy',NULL,'2019-10-06 02:25:58','2019-10-06 02:25:58'),(24,'Timothy Moswa','0777791898',NULL,'Customer','$2y$10$iObyyFNDchDP2j/dUGB23OSeSJZd4xj5x9uKig6kVO3KCd4yoeA.G',NULL,'2019-10-06 02:28:46','2019-10-06 02:28:46'),(25,'Job Scala','0712590173',NULL,'Customer','$2y$10$hJfReOPEFeNN.LJAlRHhEeTldXYUQbqUliOXtp9R165r54buQMKyy',NULL,'2019-10-06 02:30:35','2019-10-06 02:30:35');
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

-- Dump completed on 2019-10-06 12:28:13
