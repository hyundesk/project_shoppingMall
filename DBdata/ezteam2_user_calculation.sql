-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 1.243.246.15    Database: ezteam2
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `user_calculation`
--

DROP TABLE IF EXISTS `user_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_calculation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `calculation_month` date NOT NULL,
  `electricity` decimal(10,1) NOT NULL,
  `gas` decimal(10,1) NOT NULL,
  `water` decimal(10,1) NOT NULL,
  `transportation` decimal(10,1) NOT NULL,
  `waste` decimal(10,1) NOT NULL,
  `total` decimal(10,1) NOT NULL,
  `checked_items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_savings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_month_unique` (`user_id`,`calculation_month`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_calculation`
--

LOCK TABLES `user_calculation` WRITE;
/*!40000 ALTER TABLE `user_calculation` DISABLE KEYS */;
INSERT INTO `user_calculation` VALUES (93,186663,'2024-03-02',58.8,267.6,29.2,16.1,66.3,438.0,'{\"electricity-4\":1.6,\"electricity-5\":1.8,\"electricity-2\":5.9}','{\"electricity\":9.3,\"gas\":0,\"water\":0,\"transportation\":0,\"waste\":0,\"total\":\"9.3\"}'),(94,118138,'2024-03-03',10.5,4.4,0.5,0.3,0.2,15.8,'{\"electricity-4\":1.6,\"electricity-5\":1.8,\"electricity-2\":5.9}','{\"electricity\":0,\"gas\":0,\"water\":0,\"transportation\":0,\"waste\":0,\"total\":0}'),(96,182477,'2024-03-05',167.3,108.8,4.7,0.0,12.9,293.7,'{\"electricity-0\":3.2,\"electricity-1\":0.6,\"electricity-5\":1.8,\"electricity-3\":1,\"electricity-4\":0,\"gas-0\":0,\"gas-1\":28.3,\"water-2\":0.6,\"waste-1\":7.3,\"waste-0\":7.3}','{\"electricity\":6.6000000000000005,\"gas\":28.3,\"water\":0.6,\"transportation\":0,\"waste\":14.6,\"total\":\"50.1\"}'),(102,135074,'2023-01-07',58.8,964.0,5.2,15.9,14.5,1058.4,'{\"electricity-1\":0.6,\"electricity-3\":1,\"gas-1\":28.3,\"water-1\":0.4,\"water-2\":0.6,\"transportation-1\":39.1,\"transportation-4\":6.9,\"waste-1\":7.3}','{\"electricity\":1.6,\"gas\":28.3,\"water\":1,\"transportation\":46,\"waste\":7.3,\"total\":\"84.2\"}'),(103,161451,'2023-04-07',58.8,267.6,29.2,15.6,68.5,439.7,'{}','{\"electricity\":0,\"gas\":0,\"water\":0,\"transportation\":0,\"waste\":0,\"total\":0}'),(106,135074,'2023-01-11',58.8,267.6,29.2,16.1,68.5,440.2,'{\"electricity-2\":5.9,\"electricity-4\":1.6,\"electricity-1\":0.6,\"gas-1\":28.3,\"water-1\":0.4,\"transportation-4\":6.9,\"transportation-1\":0,\"transportation-3\":4.7,\"waste-1\":7.3,\"waste-0\":7.3}','{\"electricity\":8.1,\"gas\":28.3,\"water\":0.4,\"transportation\":11.600000000000001,\"waste\":14.6,\"total\":\"63.0\"}'),(107,135074,'2023-02-11',58.8,287.2,1024.8,29.9,130.4,1531.2,'{\"electricity-2\":5.9,\"electricity-4\":1.6,\"electricity-1\":0.6,\"gas-1\":28.3,\"water-1\":0.4,\"water-0\":3.9,\"transportation-1\":39.1,\"waste-1\":7.3,\"waste-0\":7.3}','{\"electricity\":8.1,\"gas\":28.3,\"water\":4.3,\"transportation\":39.1,\"waste\":14.6,\"total\":\"94.4\"}'),(108,135074,'2023-03-11',206.5,702.8,55.5,306.4,0.6,1271.8,'{\"electricity-0\":3.2,\"electricity-4\":1.6,\"electricity-2\":5.9,\"gas-0\":14.6,\"gas-1\":28.3,\"water-1\":0.4,\"water-2\":0.6,\"transportation-0\":2.1,\"transportation-4\":6.9,\"transportation-2\":5.5,\"transportation-5\":32.6,\"waste-1\":7.3,\"waste-0\":7.3}','{\"electricity\":10.700000000000001,\"gas\":42.9,\"water\":1,\"transportation\":47.1,\"waste\":14.6,\"total\":\"116.3\"}'),(109,135074,'2023-04-11',259.6,742.0,81.8,45.1,6.1,1134.6,'{\"electricity-3\":1,\"electricity-4\":1.6,\"electricity-2\":5.9,\"gas-1\":28.3,\"gas-0\":14.6,\"water-1\":0.4,\"water-2\":0.6,\"transportation-1\":39.1,\"transportation-4\":6.9,\"waste-1\":7.3}','{\"electricity\":8.5,\"gas\":42.9,\"water\":1,\"transportation\":46,\"waste\":7.3,\"total\":\"105.7\"}'),(110,135074,'2023-05-12',164.9,43.5,2.4,129.0,0.6,340.4,'{\"electricity-1\":0.6,\"electricity-2\":5.9,\"gas-1\":28.3,\"water-1\":0.4,\"transportation-1\":39.1,\"transportation-4\":6.9,\"transportation-2\":5.5,\"waste-1\":7.3,\"waste-0\":7.3}','{\"electricity\":6.5,\"gas\":28.3,\"water\":0.4,\"transportation\":51.5,\"waste\":14.6,\"total\":\"101.3\"}'),(111,135074,'2024-01-12',271.1,1233.8,29.2,15.6,68.5,1618.1,'{\"electricity-3\":1,\"electricity-1\":0.6,\"gas-1\":28.3,\"gas-0\":14.6,\"water-1\":0.4,\"water-2\":0.6,\"transportation-0\":2.1,\"transportation-4\":6.9,\"transportation-5\":32.6,\"waste-1\":7.3,\"waste-0\":7.3}','{\"electricity\":1.6,\"gas\":42.9,\"water\":1,\"transportation\":41.6,\"waste\":14.6,\"total\":\"101.7\"}'),(112,135074,'2024-04-12',218.0,992.3,108.1,59.5,254.1,1632.0,'{\"electricity-4\":1.6,\"electricity-2\":5.9,\"gas-0\":14.6,\"water-1\":0.4,\"water-2\":0.6,\"transportation-1\":39.1,\"waste-1\":7.3,\"waste-0\":7.3}','{\"electricity\":7.5,\"gas\":14.6,\"water\":1,\"transportation\":39.1,\"waste\":14.6,\"total\":\"76.8\"}'),(115,146785,'2024-03-18',4.3,8.7,0.9,0.4,2.8,17.1,'{}','{\"electricity\":0,\"gas\":0,\"water\":0,\"transportation\":0,\"waste\":0,\"total\":0}'),(118,156066,'2024-03-21',58.8,267.6,29.2,16.1,68.0,439.7,'{\"electricity-0\":3.2,\"electricity-1\":0,\"electricity-2\":0,\"gas-0\":0,\"gas-1\":28.3,\"water-1\":0,\"water-2\":0,\"transportation-1\":0,\"transportation-4\":0,\"transportation-5\":0,\"transportation-2\":5.5,\"waste-1\":7.3,\"waste-0\":0,\"electricity-4\":0,\"water-0\":3.9}','{\"electricity\":3.2,\"gas\":28.3,\"water\":3.9,\"transportation\":5.5,\"waste\":7.3,\"total\":\"48.2\"}');
/*!40000 ALTER TABLE `user_calculation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:27:18
