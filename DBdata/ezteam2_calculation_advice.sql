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
-- Table structure for table `calculation_advice`
--

DROP TABLE IF EXISTS `calculation_advice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calculation_advice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_id` int DEFAULT NULL,
  `advice_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `savings_value` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `calculation_advice_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `calculation_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calculation_advice`
--

LOCK TABLES `calculation_advice` WRITE;
/*!40000 ALTER TABLE `calculation_advice` DISABLE KEYS */;
INSERT INTO `calculation_advice` VALUES (1,1,'하루 1시간은 에어컨 대신 선풍기로!',3.20),(2,1,'세탁은 모아서 해도 잘 된답니다.',0.60),(3,1,'전기밥솥 보온기능은 전기먹는 하마',5.90),(4,1,'냉장실은 60% 채우면 효율이 최고',1.00),(5,1,'컴퓨터 절전프로그램사용',1.60),(6,1,'TV 시청 줄이고 가족과 대화 늘리고!',1.80),(7,2,'겨울철 난방온도는 20˚C가 적당해요',14.60),(8,2,'보일러 사용시간 1시간만 줄여요',28.30),(9,3,'절수기로 물낭비를 쉽게 막아요.',3.90),(10,3,'물을 받아서 사용해요.(설거지, 양치할때)',0.40),(11,3,'짧게 샤워하는 그대가 진정한 멋쟁이!',0.60),(12,4,'도보와 자전거로 건강도 UP!',2.10),(13,4,'1주일에 한번쯤은 대중교통 어때요?',39.10),(14,4,'경제속도는 60~80km/h, 연비 최고!',5.50),(15,4,'불필요한 짐은 트렁크에서 OUT!',4.70),(16,4,'타이어 공기압 체크, 연료비 DOWN!',6.90),(17,4,'실시간 네비게이션 더 빠른 길로 GO!',32.60),(18,5,'재활용이 가능한 유리병, 캔 등 분리배출해요',7.30),(19,5,'먹을만큼 만들고 쓰레기를 20% 줄여봐요!',7.30);
/*!40000 ALTER TABLE `calculation_advice` ENABLE KEYS */;
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
