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
-- Table structure for table `community_comments`
--

DROP TABLE IF EXISTS `community_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `community_comments` (
  `commentid` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `postid` int NOT NULL,
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `responseTo` int DEFAULT NULL,
  PRIMARY KEY (`commentid`),
  KEY `userid` (`userid`),
  KEY `community_comments_ibfk_1` (`responseTo`),
  KEY `community_comments_ibfk_3` (`postid`),
  CONSTRAINT `community_comments_ibfk_1` FOREIGN KEY (`responseTo`) REFERENCES `community_comments` (`commentid`) ON DELETE CASCADE,
  CONSTRAINT `community_comments_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  CONSTRAINT `community_comments_ibfk_3` FOREIGN KEY (`postid`) REFERENCES `community_posts` (`postid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_comments`
--

LOCK TABLES `community_comments` WRITE;
/*!40000 ALTER TABLE `community_comments` DISABLE KEYS */;
INSERT INTO `community_comments` VALUES (2,171381,1,'댓글 남겨주세요~','2024-02-25 15:32:45',NULL),(7,171381,1,'댓글남겨주세요','2024-02-25 15:47:53',NULL),(8,171381,1,'답글도요','2024-02-25 15:48:04',NULL),(9,171381,1,'답글도요~!','2024-02-25 20:39:36',2),(10,171381,1,'답글도용','2024-02-25 20:39:59',7),(11,131352,1,'댓글','2024-02-26 02:27:59',NULL),(12,131352,1,'답글','2024-02-26 02:28:05',11),(13,131352,8,'ㅁ','2024-02-26 06:05:09',NULL),(14,131352,8,'ㅁ','2024-02-26 06:05:21',NULL),(15,131352,8,'ㅁ','2024-02-26 06:05:24',NULL),(16,131352,8,'ㅁㅁㅁㅁ','2024-02-26 06:05:27',NULL),(25,171381,10,'깔꼼앤클린~!!!!!','2024-02-27 21:44:38',NULL),(26,161451,11,'나 왔다감','2024-02-28 23:50:01',NULL),(27,161451,11,'또 적고감','2024-02-28 23:50:17',26),(31,171381,10,'다른 분들도 팁 있으면 남겨주세요^*^','2024-03-04 00:50:02',NULL),(32,171381,10,'깔끔하쥬???','2024-03-04 01:20:46',25),(33,171381,10,'사소한 것도 좋아요','2024-03-04 02:34:04',31),(34,171381,10,'ㅎㅎ','2024-03-04 02:45:48',NULL),(36,112120,23,'덧글~','2024-03-11 00:12:18',NULL),(37,186663,23,'ㅎㅎ','2024-03-11 04:56:13',NULL),(39,186663,10,'ㅎㅎ','2024-03-11 05:40:04',34),(40,148016,10,'33','2024-03-11 05:41:08',39),(41,171381,34,'ggg','2024-03-12 02:43:39',NULL),(42,171381,34,'ggggg','2024-03-12 02:43:49',41),(43,171381,34,'gggg','2024-03-12 02:43:54',42),(44,171381,34,'gg','2024-03-12 02:44:01',42),(45,171381,34,'dd','2024-03-12 04:38:01',NULL),(46,171381,34,'gggg','2024-03-12 05:03:06',42),(47,171381,34,'ss','2024-03-12 05:05:48',41),(48,171381,34,'g','2024-03-12 05:06:40',42),(49,171381,35,'안녕','2024-03-12 05:11:57',NULL),(50,171381,35,'안녕2','2024-03-12 05:12:04',49),(51,171381,35,'안녕3','2024-03-12 05:12:16',50),(52,171381,35,'안녕4','2024-03-12 05:56:50',51),(53,171381,35,'안녕5','2024-03-12 05:57:00',52),(54,171381,35,'안녕6','2024-03-12 05:57:06',53),(55,171381,35,'안녕7','2024-03-12 05:57:17',54),(56,171381,33,'굿','2024-03-12 06:10:43',NULL),(58,171381,39,'화이팅 !','2024-03-13 04:10:57',NULL),(59,155487,39,'','2024-03-13 04:36:40',NULL),(60,155487,40,'','2024-03-13 04:41:36',NULL),(65,112120,2,'됐다!!!!!!!!!','2024-03-14 00:26:21',NULL),(66,147386,46,'ㅎㅎ','2024-03-14 05:53:23',NULL),(67,147386,46,'ㅎㅎㅎ','2024-03-14 05:54:37',NULL),(68,147386,46,'ㅎㅎㅎㅎ','2024-03-14 05:54:41',66),(71,112120,50,' zzzㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2024-03-15 09:50:12',NULL),(72,112120,39,'야호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호호','2024-03-16 04:53:56',NULL),(73,116353,46,'오 이런게 있네요?? 귀찮지만 가지고 다녀야겠네요...!!!!','2024-03-16 14:34:18',NULL),(74,147386,50,'탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요탄소중립해요','2024-03-16 15:54:49',NULL),(75,112120,46,'붐업~','2024-03-17 03:27:56',NULL),(148,123310,141,'출퇴근 자전거라니 대단하세요..!','2024-03-21 20:32:10',NULL),(149,123310,141,'춥진 않나요????','2024-03-21 20:32:23',NULL),(150,123310,153,'와우','2024-03-23 15:21:24',NULL);
/*!40000 ALTER TABLE `community_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:27:13
