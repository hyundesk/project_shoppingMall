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
-- Table structure for table `campaign_form`
--

DROP TABLE IF EXISTS `campaign_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_form` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `memo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_campaign_form_userid` (`userid`),
  CONSTRAINT `fk_campaign_form_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_form`
--

LOCK TABLES `campaign_form` WRITE;
/*!40000 ALTER TABLE `campaign_form` DISABLE KEYS */;
INSERT INTO `campaign_form` VALUES (6,'대장기업','참여할게용',274004,98),(7,'team2','신청!',119075,101),(15,'환경사랑','신청합니다',274004,110),(17,'팀2!!','신청합니다!',135074,114),(24,'ㅠ','',279894,35),(25,'1234','1234',279894,31),(26,'최고기업','신청하고 싶습니다.',279894,100),(27,'이기현','자몽이 분양 신청합니다.',182477,6),(28,'이기현','마감?',182477,116),(29,'환경사랑','^^',146785,126),(30,'이젠','신청!',135074,126),(31,'','ㅛ허',135074,113),(32,'환경사랑','신청합니다',149552,122),(33,'','참여하고 싶어요~!',146785,128),(34,'','',112120,131),(35,'qwer','qwer',156066,4),(36,'globalezen','신청합니다',256276,135),(37,'환경사랑','참여 희망합니다!',149552,164),(38,'환경사랑','참여신청합니다.',149552,114),(39,'환경사랑','참여 신청합니다.',149552,160);
/*!40000 ALTER TABLE `campaign_form` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:27:16
