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
-- Table structure for table `productquestion`
--

DROP TABLE IF EXISTS `productquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productquestion` (
  `qid` int NOT NULL AUTO_INCREMENT,
  `userid` varchar(450) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodid` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productquestion`
--

LOCK TABLES `productquestion` WRITE;
/*!40000 ALTER TABLE `productquestion` DISABLE KEYS */;
INSERT INTO `productquestion` VALUES (1,'325','90','이거 어린아이가 쓰기에 알맞을까요?','2024-02-20 14:07:11'),(2,'134044','90','ㅋㅌㅊㅌ','2024-03-05 09:56:45'),(3,'134044','90','우와 된당','2024-03-05 09:57:07'),(4,'134044','90','ㄴㅁㅇㄻㄴㅇㄹ','2024-03-05 10:05:13'),(5,'134044','90','fasdfasdfa','2024-03-05 10:07:12'),(6,'134044','90','이거 튼튼한가요? 부러질까봐 겁이나요','2024-03-06 14:59:09'),(19,'134044','90','이거 어떤가요\n좋은가요?','2024-03-08 10:42:06'),(20,'134044','90','이거 뭐임?<br>이거 뭐임?<br>어케씀?','2024-03-08 10:44:41'),(21,'134044','90','이거 어린아이 손에도 맞을까요?','2024-03-11 09:23:05'),(22,'134044','90','이거 나무 재질인가요?','2024-03-15 10:32:11');
/*!40000 ALTER TABLE `productquestion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:27:24
