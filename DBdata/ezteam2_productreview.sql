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
-- Table structure for table `productreview`
--

DROP TABLE IF EXISTS `productreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productreview` (
  `reviewid` int NOT NULL AUTO_INCREMENT,
  `userid` int NOT NULL,
  `orderid` varchar(450) DEFAULT NULL,
  `prodid` varchar(45) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` varchar(4500) NOT NULL,
  `rate` int NOT NULL,
  `date` datetime NOT NULL,
  `img1` varchar(2000) DEFAULT NULL,
  `img2` varchar(2000) DEFAULT NULL,
  `img3` varchar(2000) DEFAULT NULL,
  `img4` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`reviewid`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productreview`
--

LOCK TABLES `productreview` WRITE;
/*!40000 ALTER TABLE `productreview` DISABLE KEYS */;
INSERT INTO `productreview` VALUES (1,341,'5','90','정말 마음에 들어요','제가 평소엔 리뷰같은 거 잘 안 쓰는데\n    이건 쓸 수밖에 없어요\n    ㄹㅇ ㄹㅇ 만족임',5,'2024-02-20 09:34:36','http://localhost:8000/sadpepe.jpg','http://localhost:8000/gunpepe.jpeg',NULL,NULL),(24,13444,'25','24','조아여','너무 조아여~',5,'2024-03-04 14:55:21',NULL,NULL,NULL,NULL),(26,134044,'25','90','굳굳','굳굳<br>이게 굳<br>정말 굳',1,'2024-03-08 10:31:26',NULL,NULL,NULL,NULL),(27,134044,'42','90','조아여~','아주 조아여~',5,'2024-03-15 10:18:53','http://localhost:8000/1710465533462.jpg',NULL,NULL,NULL),(29,182477,'71','106','무슨 이딴 맛이 다있나요','환불해주세요. 고소하기 전에',1,'2024-03-14 11:41:30',NULL,NULL,NULL,NULL),(44,150249,'73','90','좋아요','맨날 이것만 쓸듯',4,'2024-03-17 10:49:35','http://localhost:8000/1710640177037.jpg',NULL,NULL,NULL);
/*!40000 ALTER TABLE `productreview` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:27:23
