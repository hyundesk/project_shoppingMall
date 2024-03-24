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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` int DEFAULT NULL,
  `productCode` int NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '주문완료',
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `orderName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zipcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `addr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addrDetail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phoneNumber` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reqMessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` int NOT NULL,
  `totalCount` int NOT NULL,
  `totalAmount` int NOT NULL,
  `payment` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `refundText` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usePoint` int DEFAULT '0',
  `imageURL` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymentAmount` int DEFAULT '0',
  `reviewStatus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'182477202422714568-89',182477,89,'주문완료','2024-02-27 05:56:07','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',4,1,75600,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202205/5f806276db45be8c9fe0304818932595.jpg',75600,0),(2,'1121202024227214821-90',112120,90,'주문완료','2024-02-27 12:48:21','별',NULL,'지구, 삶이란..',NULL,'01000001111','Life. 즉 Li(리튬)과 Fe(철)로 이루어져 있다.',8,3,204600,'카드 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/d763ec57a54ba2c9f60501676cdcd5d3.jpg',40000,0),(3,'1121202024227214821-90',112120,84,'주문완료','2024-02-27 12:48:21','별',NULL,'지구, 삶이란..',NULL,'01000001111','Life. 즉 Li(리튬)과 Fe(철)로 이루어져 있다.',7,3,204600,'카드 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202309/60b1b79d2e5febb90cc47bfaeb0b1a6e.png',145600,0),(4,'1121202024227214821-90',112120,87,'주문완료','2024-02-27 12:48:21','별',NULL,'지구, 삶이란..',NULL,'01000001111','Life. 즉 Li(리튬)과 Fe(철)로 이루어져 있다.',2,3,204600,'카드 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202112/62277c80dc359ff142c9773fe523bded.jpg',19000,0),(5,'1181382024227215822-51',NULL,51,'주문완료','2024-02-27 12:58:22','김지수',NULL,'인천 서구 가경주로 10, ',NULL,'01075869967','오늘밤 당신의 아이디를 잠시 빌리겠습니다 _ 이기현',1,3,92900,'실시간 계좌이체',NULL,0,'//onlyeco.co.kr/web/product/big/202208/5b3d2fa149a6f2cba99f72c4d313b47d.jpg',2200,0),(6,'1181382024227215822-51',NULL,84,'주문완료','2024-02-27 12:58:22','김지수',NULL,'인천 서구 가경주로 10, ',NULL,'01075869967','오늘밤 당신의 아이디를 잠시 빌리겠습니다 _ 이기현',4,3,92900,'실시간 계좌이체',NULL,0,'//onlyeco.co.kr/web/product/big/202309/60b1b79d2e5febb90cc47bfaeb0b1a6e.png',83200,0),(7,'1181382024227215822-51',NULL,88,'주문완료','2024-02-27 12:58:22','김지수',NULL,'인천 서구 가경주로 10, ',NULL,'01075869967','오늘밤 당신의 아이디를 잠시 빌리겠습니다 _ 이기현',1,3,92900,'실시간 계좌이체',NULL,0,'//onlyeco.co.kr/web/product/big/202010/bb6f74ad063c24b5ffc43f226dd2468f.jpg',7500,0),(8,'131352202422722742-84',131352,84,'주문완료','2024-02-27 13:07:41','김민규',NULL,'인천 남동구 만수서로37번길 78-1, b',NULL,'010-222-2222','민규님 비밀번호도 털었습니다.',2,2,50600,'모바일 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202309/60b1b79d2e5febb90cc47bfaeb0b1a6e.png',41600,0),(9,'131352202422722742-84',131352,52,'주문완료','2024-02-27 13:07:41','김민규',NULL,'인천 남동구 만수서로37번길 78-1, b',NULL,'010-222-2222','민규님 비밀번호도 털었습니다.',2,2,50600,'모바일 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/62eeb0f91f901a905dfacd87e4c2b0ad.jpg',9000,0),(10,'145698202422722150-61',145698,61,'주문완료','2024-02-27 13:14:59','김민호',NULL,'1, 1',NULL,'1','민호님 계정도 잠시 빌립니다.',18,1,252000,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202402/85de686cb1df3f73fd1a27b4498f7f73.jpg',252000,0),(11,'11813820242289949-88',NULL,88,'주문완료','2024-02-28 00:09:48','이주호',NULL,'이젠아카데미',NULL,'010-222-2222','생일축하합니다.',10000,1,75000000,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202010/bb6f74ad063c24b5ffc43f226dd2468f.jpg',75000000,0),(12,'1824772024228125913-87',182477,87,'주문완료','2024-02-28 03:59:13','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','테스트',2,2,26500,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202112/62277c80dc359ff142c9773fe523bded.jpg',19000,0),(13,'1824772024228125913-87',182477,88,'주문완료','2024-02-28 03:59:13','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','테스트',1,2,26500,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202010/bb6f74ad063c24b5ffc43f226dd2468f.jpg',7500,0),(14,'1824772024229123942-87',182477,87,'주문완료','2024-02-29 03:39:38','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',7,1,66500,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202112/62277c80dc359ff142c9773fe523bded.jpg',66500,0),(15,'1824772024229133043-88',182477,88,'주문완료','2024-02-29 04:30:39','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,3,86900,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202010/bb6f74ad063c24b5ffc43f226dd2468f.jpg',7500,0),(16,'1824772024229133043-88',182477,85,'주문완료','2024-02-29 04:30:39','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',2,3,86900,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202202/1cb2654c6a922465f7c29d6a725c9143.jpg',17000,0),(17,'1824772024229133043-88',182477,84,'주문완료','2024-02-29 04:30:39','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',3,3,86900,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202309/60b1b79d2e5febb90cc47bfaeb0b1a6e.png',62400,0),(18,'1824772024229143058-90',182477,90,'주문완료','2024-02-29 05:30:55','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,2,57000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/d763ec57a54ba2c9f60501676cdcd5d3.jpg',5000,0),(19,'1824772024229143058-90',182477,102,'주문완료','2024-02-29 05:30:55','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,2,57000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',52000,0),(20,'31552520243491444-124',315525,124,'주문완료','2024-03-04 00:14:36','단체w주문',NULL,'서울 성북구 아리랑로 3, ',NULL,'010-1111-1111','',2,1,26000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230823_54/16927765319168NEz1_PNG/26635923533499211_1486046279.png?type=f296_296',26000,0),(21,'31552520243410222-90',315525,90,'주문완료','2024-03-04 01:02:21','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'032-516-8113','',1,3,121000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/d763ec57a54ba2c9f60501676cdcd5d3.jpg',5000,0),(22,'31552520243410222-90',315525,99,'주문완료','2024-03-04 01:02:21','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'032-516-8113','',2,3,121000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202107/2b1aec215e2875fe7aab7cdb28a1aae8.jpg',26000,0),(23,'31552520243410222-90',315525,101,'주문완료','2024-03-04 01:02:21','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'032-516-8113','',2,3,121000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202112/b197b95716941ffe3951f1bbf8073463.jpg',90000,0),(24,'27400420243410831-112',274004,112,'주문완료','2024-03-04 01:08:31','기업',NULL,'서울 강남구 논현로123길 4-1, 11',NULL,'010-5551-23232','기업 고객',2,1,16000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',16000,0),(25,'31552520243410222-112',315525,112,'주문완료','2024-03-04 01:02:21','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'032-516-8113','',2,3,121000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',90000,0),(26,'182477202434102932-112',182477,112,'주문완료','2024-03-04 01:29:31','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,3,79000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',8000,0),(27,'182477202434102932-112',182477,117,'주문완료','2024-03-04 01:29:31','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',2,3,79000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230828_108/1693189796793wXh1b_PNG/39206380577630640_946148955.png?type=f296_296',19000,0),(28,'182477202434102932-112',182477,102,'주문완료','2024-03-04 01:29:31','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,3,79000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',52000,0),(29,'315525202434104839-89',315525,100,'주문완료','2024-03-04 01:48:39','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'010-5474-2221','',5,5,380900,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202010/f4b99452c3819a28d0a9bbd72697f2c0.jpg',235000,0),(30,'315525202434104839-89',315525,89,'주문완료','2024-03-04 01:48:39','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'010-5474-2221','',1,5,380900,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202205/5f806276db45be8c9fe0304818932595.jpg',18900,0),(31,'315525202434104839-89',315525,102,'주문완료','2024-03-04 01:48:39','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'010-5474-2221','',2,5,380900,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',104000,0),(32,'315525202434104839-89',315525,120,'주문완료','2024-03-04 01:48:39','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'010-5474-2221','',1,5,380900,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230903_45/16937449272341ViP1_PNG/18085956059325572_2007987987.png?type=f296_296',7000,0),(33,'315525202434104839-89',315525,112,'주문완료','2024-03-04 01:48:39','단체',NULL,'서울 성북구 아리랑로 3, ',NULL,'010-5474-2221','',2,5,380900,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',16000,0),(34,'274004202434111858-112',274004,112,'주문완료','2024-03-04 02:18:58','기업',NULL,'서울 강남구 논현로123길 4-1, 11',NULL,'1234','테스트',9,4,138000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',72000,0),(35,'274004202434111858-112',274004,85,'주문완료','2024-03-04 02:18:58','기업',NULL,'서울 강남구 논현로123길 4-1, 11',NULL,'1234','테스트',1,4,138000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202202/1cb2654c6a922465f7c29d6a725c9143.jpg',8500,0),(36,'274004202434111858-112',274004,125,'주문완료','2024-03-04 02:18:58','기업',NULL,'서울 강남구 논현로123길 4-1, 11',NULL,'1234','테스트',1,4,138000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230828_99/1693200135347MnJnw_PNG/4853457390476680_1949621228.png?type=f296_296',5500,0),(37,'274004202434111858-112',274004,102,'주문완료','2024-03-04 02:18:58','기업',NULL,'서울 강남구 논현로123길 4-1, 11',NULL,'1234','테스트',1,4,138000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',52000,0),(38,'274004202434125324-100',274004,100,'주문완료','2024-03-04 03:53:23','분당구',NULL,'경기 성남시 분당구 판교역로 166, 카카오 판교 아지트 C동',NULL,'010-7174-3332','네카라쿠배',4,1,188000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202010/f4b99452c3819a28d0a9bbd72697f2c0.jpg',188000,0),(39,'274004202434135547-102',274004,102,'주문완료','2024-03-04 04:55:46','미소 주식회사',NULL,'대구 동구 첨단로8길 1, 미소빌딩',NULL,'032-719-4074','테스트',1,1,52000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',52000,0),(40,'182477202434144151-102',182477,102,'주문완료','2024-03-04 05:41:50','연수구',NULL,'인천 연수구 경원대로 294, 지젤하우스 1층 2호',NULL,'010-1004-2047','테스트',2,2,112000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',104000,0),(41,'182477202434144151-102',182477,112,'주문완료','2024-03-04 05:41:50','연수구',NULL,'인천 연수구 경원대로 294, 지젤하우스 1층 2호',NULL,'010-1004-2047','테스트',1,2,112000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',8000,0),(42,'18247720243514167-90',182477,90,'주문완료','2024-03-05 05:16:05','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,5,96000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/d763ec57a54ba2c9f60501676cdcd5d3.jpg',5000,0),(43,'18247720243514167-90',182477,99,'주문완료','2024-03-05 05:16:05','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,5,96000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202107/2b1aec215e2875fe7aab7cdb28a1aae8.jpg',13000,0),(44,'18247720243514167-90',182477,126,'주문완료','2024-03-05 05:16:05','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,5,96000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20240131_111/1706692149928wNcvT_PNG/107827984749868816_855394992.png?type=f296_296',18000,0),(45,'18247720243514167-90',182477,112,'주문완료','2024-03-05 05:16:05','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,5,96000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',8000,0),(46,'18247720243514167-90',182477,102,'주문완료','2024-03-05 05:16:05','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,5,96000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',52000,0),(47,'182477202437114544-87',182477,87,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,8,788300,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202112/62277c80dc359ff142c9773fe523bded.jpg',9500,0),(48,'182477202437114544-87',182477,117,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',2,8,788300,'카카오 페이',NULL,0,'//shop-phinf.pstatic.net/20230828_108/1693189796793wXh1b_PNG/39206380577630640_946148955.png?type=f296_296',19000,0),(49,'182477202437114544-87',182477,112,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',2,8,788300,'카카오 페이',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',16000,0),(50,'182477202437114544-87',182477,102,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',5,8,788300,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',260000,0),(51,'182477202437114544-87',182477,100,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',3,8,788300,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202010/f4b99452c3819a28d0a9bbd72697f2c0.jpg',141000,0),(52,'182477202437114544-87',182477,107,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',2,8,788300,'카카오 페이',NULL,0,'//shop-phinf.pstatic.net/20230728_228/16905277629234Dp00_JPEG/4241894810981033_1071956755.jpg?type=f296_296',1800,0),(53,'182477202437114544-87',182477,101,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',5,8,788300,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202112/b197b95716941ffe3951f1bbf8073463.jpg',225000,0),(54,'182477202437114544-87',182477,97,'주문완료','2024-03-07 02:45:44','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',4,8,788300,'카카오 페이',NULL,0,'//onlyeco.co.kr/web/product/big/202112/56adcbcf691b673d94fde2837a7ebce9.jpg',116000,0),(55,'1824772024371363-101',182477,101,'주문완료','2024-03-07 04:06:02','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,45000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202112/b197b95716941ffe3951f1bbf8073463.jpg',45000,0),(56,'182477202437134427-102',182477,102,'주문완료','2024-03-07 04:44:27','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','포인트 사용 테스트',1,2,54500,'카카오 페이',NULL,5000,'//onlyeco.co.kr/web/product/big/202312/e690ce5b4362fde30825e796c384471a.jpg',52000,0),(57,'182477202437134427-102',182477,88,'주문완료','2024-03-07 04:44:27','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','포인트 사용 테스트',1,2,54500,'카카오 페이',NULL,5000,'//onlyeco.co.kr/web/product/big/202010/bb6f74ad063c24b5ffc43f226dd2468f.jpg',7500,0),(58,'182477202437141224-105',182477,105,'주문완료','2024-03-07 05:12:23','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','포인트 사용 테스트',1,1,1324,'페이팔 결제',NULL,1176,'//shop-phinf.pstatic.net/20211201_196/1638339250880v2JyB_PNG/39475096544213042_1950903563.png?type=f296_296',2500,0),(59,'182477202437141454-92',182477,92,'주문완료','2024-03-07 05:14:53','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','포인트 사용 테스트2',1,1,63000,'페이팔 결제',NULL,4000,'//onlyeco.co.kr/web/product/big/202010/61173e7c4c0412f22eb4946bd93de15b.jpg',67000,0),(60,'182477202437141627-108',182477,108,'주문완료','2024-03-07 05:16:27','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,1000,'페이팔 결제',NULL,3000,'//shop-phinf.pstatic.net/20221103_300/1667465917331ibiHs_JPEG/68601752159622049_1920437116.jpg?type=f296_296',4000,0),(61,'18247720243894248-101',182477,101,'취소 요청','2024-03-08 00:42:46','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','포인트 결제 테스트',1,1,100,'페이팔 결제','테스트 취쇼',44900,'//onlyeco.co.kr/web/product/big/202112/b197b95716941ffe3951f1bbf8073463.jpg',45000,0),(62,'182477202438101110-111',182477,111,'주문완료','2024-03-08 01:11:08','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,100,'페이팔 결제',NULL,17900,'//shop-phinf.pstatic.net/20221223_2/1671766659861sOCiU_JPEG/72902502560008059_1047022535.jpg?type=f296_296',18000,0),(63,'182477202438101416-112',182477,112,'주문완료','2024-03-08 01:14:14','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','결제 프로세스 개선',1,1,100,'페이팔 결제',NULL,7900,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',8000,0),(64,'182477202438143514-112',182477,112,'주문완료','2024-03-08 05:35:14','이기현2',NULL,'인천 남동구 인주대로 593, 엔타스 빌딩 12층',NULL,'010-1234-1234','포인트 테스트',1,1,100,'페이팔 결제',NULL,7900,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',8000,0),(65,'1824772024312125214-101',182477,101,'주문완료','2024-03-12 03:52:14','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',2,1,89901,'페이팔 결제',NULL,99,'//onlyeco.co.kr/web/product/big/202112/b197b95716941ffe3951f1bbf8073463.jpg',90000,0),(66,'1824772024312134036-107',182477,107,'주문완료','2024-03-12 04:40:35','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','페이팔 결제 테스트',1,1,900,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230728_228/16905277629234Dp00_JPEG/4241894810981033_1071956755.jpg?type=f296_296',900,0),(67,'1824772024312134235-122',182477,122,'주문완료','2024-03-12 04:42:34','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',4,1,106000,'카카오 페이',NULL,0,'//shop-phinf.pstatic.net/20230823_110/1692778817106j1J8F_PNG/7668523933706880_641932572.png?type=f296_296',106000,0),(68,'1824772024312134852-123',182477,123,'주문완료','2024-03-12 04:48:52','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,18000,'카드 결제',NULL,0,'//shop-phinf.pstatic.net/20230823_255/16927762819635UiBV_PNG/6629147851718254_1381088384.png?type=f296_296',18000,0),(69,'141946202431214328-122',141946,122,'주문완료','2024-03-12 05:03:27','이기현',NULL,'경기 성남시 분당구 판교역로 166, 네카라쿠배 빌딩',NULL,'010-1234-1234','',1,1,25500,'페이팔 결제',NULL,1000,'//shop-phinf.pstatic.net/20230823_110/1692778817106j1J8F_PNG/7668523933706880_641932572.png?type=f296_296',26500,0),(70,'1824772024313102750-126',182477,126,'주문완료','2024-03-13 01:27:49','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,18000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20240131_111/1706692149928wNcvT_PNG/107827984749868816_855394992.png?type=f296_296',18000,0),(71,'1824772024313104538-106',182477,106,'주문완료','2024-03-13 01:45:37','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,2700,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230728_3/1690528466004cryVz_JPEG/2156563883705862_1739845634.jpg?type=f296_296',2700,0),(72,'1502492024315124157-90',150249,90,'주문완료','2024-03-15 03:41:57','Admin',NULL,'1, 1',NULL,'1','',1,1,5000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/d763ec57a54ba2c9f60501676cdcd5d3.jpg',5000,0),(73,'1502492024315124320-90',150249,90,'주문완료','2024-03-15 03:43:20','Admin',NULL,'1, 1',NULL,'1','',3,1,15000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/d763ec57a54ba2c9f60501676cdcd5d3.jpg',15000,0),(74,'1340442024315124950-90',134044,90,'주문완료','2024-03-15 03:49:49','오오오오',NULL,'인천 부평구 부평대로165번길 62, ㄴㅇㄹㄴ',NULL,'010','',3,1,15000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202209/d763ec57a54ba2c9f60501676cdcd5d3.jpg',15000,0),(75,'1824772024318123936-101',182477,101,'주문완료','2024-03-18 03:39:35','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,2,66000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202112/b197b95716941ffe3951f1bbf8073463.jpg',45000,0),(76,'1824772024318123936-101',182477,98,'주문완료','2024-03-18 03:39:36','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',3,2,66000,'페이팔 결제',NULL,0,'//onlyeco.co.kr/web/product/big/202106/bfdd918e7d50d92af12f51cbbb55c317.jpg',21000,0),(77,'182477202431993914-109',182477,109,'주문완료','2024-03-19 00:39:11','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,2,95000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20221103_182/1667465688155MlObK_JPEG/68601522946781620_1627567765.jpg?type=f296_296',4000,0),(78,'182477202431993914-109',182477,124,'주문완료','2024-03-19 00:39:11','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',7,2,95000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230823_54/16927765319168NEz1_PNG/26635923533499211_1486046279.png?type=f296_296',91000,0),(85,'1824772024319105615-87',182477,95,'주문완료','2024-03-19 01:56:12','테스트 결제',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,2,57500,'카카오 페이',NULL,3000,'//onlyeco.co.kr/web/product/big/202112/cae98a8dc4b5f2d099c054237f74d285.jpg',51000,0),(86,'1824772024319105615-87',182477,87,'주문완료','2024-03-19 01:56:12','테스트 결제',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,2,57500,'카카오 페이',NULL,3000,'//onlyeco.co.kr/web/product/big/202112/62277c80dc359ff142c9773fe523bded.jpg',9500,0),(87,'1824772024319111830-111',182477,111,'주문완료','2024-03-19 02:18:27','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,18000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20221223_2/1671766659861sOCiU_JPEG/72902502560008059_1047022535.jpg?type=f296_296',18000,0),(88,'1824772024319111915-112',182477,112,'주문완료','2024-03-19 02:19:12','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,8000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20230224_250/1677228001717WpwuG_JPEG/78363785403925065_157970000.jpg?type=f296_296',8000,0),(89,'182477202432422118-111',182477,111,'주문완료','2024-03-24 13:01:16','이기현2',NULL,'서울 종로구 청와대로 1, 청와대 20층 2001호',NULL,'010-1234-1234','',1,1,18000,'페이팔 결제',NULL,0,'//shop-phinf.pstatic.net/20221223_2/1671766659861sOCiU_JPEG/72902502560008059_1047022535.jpg?type=f296_296',18000,0);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-24 22:27:20