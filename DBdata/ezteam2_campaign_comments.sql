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
-- Table structure for table `campaign_comments`
--

DROP TABLE IF EXISTS `campaign_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `userid` int NOT NULL,
  `comment_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fk_post_id_idx` (`post_id`),
  KEY `fk_userid_idx` (`userid`),
  CONSTRAINT `fk_post_id` FOREIGN KEY (`post_id`) REFERENCES `campaign_posts` (`id`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_comments`
--

LOCK TABLES `campaign_comments` WRITE;
/*!40000 ALTER TABLE `campaign_comments` DISABLE KEYS */;
INSERT INTO `campaign_comments` VALUES (25,1,146785,'test','2024-02-19 20:25:31'),(28,2,146785,'fdf','2024-02-19 20:39:33'),(66,100,274004,'댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요?  댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? 댓글 영역이 잘 잡히나요? ','2024-02-28 13:39:43'),(68,100,161451,'dsafaf','2024-02-29 12:29:27'),(75,126,149552,'최고~~!','2024-03-06 12:36:36'),(76,116,149552,'test','2024-03-06 12:52:13'),(78,100,149552,'test','2024-03-06 12:58:55'),(80,128,146785,'^^b','2024-03-07 13:55:32'),(81,131,112120,'~','2024-03-12 12:41:33'),(82,135,256276,'좋은 캠페인이네요^^','2024-03-13 13:14:23'),(84,110,149552,'좋아요~^^','2024-03-13 13:59:35'),(85,135,156066,'test용','2024-03-18 10:46:16'),(86,126,146785,'저도 참여하고 싶어요~!','2024-03-18 14:15:56');
/*!40000 ALTER TABLE `campaign_comments` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:27:14
