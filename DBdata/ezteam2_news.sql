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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `newsid` int NOT NULL AUTO_INCREMENT,
  `image_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int DEFAULT '0',
  `pubDate` datetime NOT NULL,
  PRIMARY KEY (`newsid`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'https://imgnews.pstatic.net/image/005/2024/03/19/2024022911050757404_1709172307_0019907005_20240319111701421.jpg?type=w647','경주시 시민 주도 탄소중립 도시 만든다','https://n.news.naver.com/mnews/article/005/0001682029?sid=102',0,'2024-03-19 11:17:00'),(2,'data:image/png;base64,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','기후금융에 6년간 452조 지원','https://n.news.naver.com/mnews/article/016/0002282419?sid=101',0,'2024-03-19 11:16:00'),(3,'data:image/png;base64,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','포스코홀딩스 떠나는 외국인들','https://n.news.naver.com/mnews/article/016/0002282410?sid=101',0,'2024-03-19 11:11:00'),(4,'https://imgnews.pstatic.net/image/030/2024/03/19/0003190239_001_20240319111101072.jpg?type=w647','신한라이프, 임직원 걸음기부로 보행장애 아동에 특수신발 지원','https://n.news.naver.com/mnews/article/030/0003190239?sid=101',0,'2024-03-19 11:11:00'),(5,'https://imgnews.pstatic.net/image/468/2024/03/19/0001040923_001_20240319111004299.png?type=w647','‘영국에서 가장 리스펙하는 자동차 회사는?’ 벤틀리, 2년 연속 선정…완전전동화 실현하는 ‘비욘드100’ 높게 평가','https://n.news.naver.com/mnews/article/468/0001040923?sid=101',0,'2024-03-19 11:10:00'),(6,'https://imgnews.pstatic.net/image/421/2024/03/19/0007420455_001_20240319111023737.jpg?type=w647','신한라이프, 임직원 5000만보 걸으면 보행장애 아동 특수신발 기부','https://n.news.naver.com/mnews/article/421/0007420455?sid=101',0,'2024-03-19 11:09:00'),(7,'https://imgnews.pstatic.net/image/028/2024/03/19/0002681512_001_20240319111701086.jpg?type=w647','정부, 기후위기 대응 본격화…2030년까지 452조원 금융지원','https://n.news.naver.com/mnews/article/028/0002681512?sid=101',0,'2024-03-19 11:09:00'),(8,'https://imgnews.pstatic.net/image/018/2024/03/19/0005695440_001_20240319110503750.jpg?type=w647','신한라이프, 보행장애 아동에 특수제작 신발 지원','https://n.news.naver.com/mnews/article/018/0005695440?sid=101',0,'2024-03-19 11:05:00'),(9,'data:image/png;base64,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','기후위기대응에 민관 합동 대응…452조 금융지원해 \'저탄소 전환\'','https://n.news.naver.com/mnews/article/448/0000451965?sid=101',0,'2024-03-19 11:03:00'),(10,'https://imgnews.pstatic.net/image/029/2024/03/19/0002861913_001_20240319110403499.jpg?type=w647','경기도 철도시대 열린다','https://n.news.naver.com/mnews/article/029/0002861913?sid=100',0,'2024-03-19 11:03:00'),(11,'https://imgnews.pstatic.net/image/119/2024/03/19/0002810851_001_20240319110101259.jpeg?type=w647','수소·연료전지 분야 국제표준 선점 위해 민관 협력','https://n.news.naver.com/mnews/article/119/0002810851?sid=101',0,'2024-03-19 11:01:00'),(12,'https://imgnews.pstatic.net/image/001/2024/03/19/AKR20240318118000003_02_i_P4_20240319110144820.jpg?type=w647','정부 \"전기 수요 적은 봄, 모든 발전소 출력제어 참여\"','https://n.news.naver.com/mnews/article/001/0014572642?sid=101',0,'2024-03-19 11:00:00'),(13,'https://imgnews.pstatic.net/image/015/2024/03/19/0004961618_001_20240319105901028.jpg?type=w647','\"영국에서 가장 존경받는 자동차 회사\"…벤틀리, 2년 연속 선정','https://n.news.naver.com/mnews/article/015/0004961618?sid=101',0,'2024-03-19 10:59:00'),(14,'https://imgnews.pstatic.net/image/055/2024/03/19/0001139860_001_20240319105701117.jpg?type=w647','민주-진보, 서울 중랑갑 후보 서영교로 단일화','https://n.news.naver.com/mnews/article/055/0001139860?sid=165',0,'2024-03-19 10:55:00'),(15,'https://imgnews.pstatic.net/image/003/2024/03/19/NISI20240318_0001504386_web_20240318173459_20240319105103916.jpg?type=w647','\'주행 거리 줄이면 최대 10만원\' 임실군, \'탄소중립 포인트제\' 참가자 모집','https://n.news.naver.com/mnews/article/003/0012435349?sid=102',0,'2024-03-19 10:49:00'),(16,'https://imgnews.pstatic.net/image/001/2024/03/19/PYH2024031902720001300_P4_20240319103621056.jpg?type=w647','민주-진보, 서울 중랑갑 후보 민주 현역 서영교로 단일화','https://n.news.naver.com/mnews/article/001/0014572537?sid=165',2,'2024-03-19 10:35:00'),(17,'https://imgnews.pstatic.net/image/030/2024/03/19/0003190218_001_20240319103201071.jpg?type=w647','에너지밸리포럼, \'정부 에너지 정책 방향은\' 제62차 정례포럼 개최','https://n.news.naver.com/mnews/article/030/0003190218?sid=102',0,'2024-03-19 10:32:00'),(18,'https://imgnews.pstatic.net/image/001/2024/03/19/AKR20240319055600053_01_i_P4_20240319102812007.jpg?type=w647','[경북소식] 포항시, 유튜버 흥삼이와 손잡고 농특산물 홍보','https://n.news.naver.com/mnews/article/001/0014572516?sid=102',0,'2024-03-19 10:27:00'),(19,'https://imgnews.pstatic.net/image/082/2024/03/19/0001260877_001_20240319102501157.jpg?type=w647','2030년까지 기후위기대응에 452조 민관금융지원','https://n.news.naver.com/mnews/article/082/0001260877?sid=101',0,'2024-03-19 10:25:00'),(20,'https://imgnews.pstatic.net/image/022/2024/03/19/20240319505613_20240319102301851.jpg?type=w647','경주시, 시민 주도 ‘탄소중립 실천 선도 도시’ 닻 올려','https://n.news.naver.com/mnews/article/022/0003915494?sid=102',1,'2024-03-19 10:23:00'),(21,'https://imgnews.pstatic.net/image/030/2024/03/19/0003190313_001_20240319130401103.jpg?type=w647','2030년까지 기후위기 대응 위해 420조 정책금융 투입…은행권, 녹색펀드로 지원 사격','https://n.news.naver.com/mnews/article/030/0003190313?sid=101',1,'2024-03-19 13:04:00'),(22,'','정부, 기후위기 대응 위해 녹색자금 420조원 공급','https://n.news.naver.com/mnews/article/422/0000650543?sid=101',0,'2024-03-19 12:45:00'),(23,'','중기중앙회, 김효섭·김재중 대표 \'자랑스러운 기업인\' 선정','https://n.news.naver.com/mnews/article/015/0004961665?sid=101',0,'2024-03-19 12:25:00'),(24,'https://imgnews.pstatic.net/image/081/2024/03/19/0003438156_001_20240319121703236.jpg?type=w647','김동연, “4월 총선은 ‘경제·민생 심판선거’”···“민주당 심판은 소가 웃을 일”','https://n.news.naver.com/mnews/article/081/0003438156?sid=102',0,'2024-03-19 12:17:00'),(25,'https://imgnews.pstatic.net/image/277/2024/03/19/0005394085_001_20240319120108518.jpg?type=w647','\'자랑스러운 중기人\'에 김동섭 효동기계공업 대표·김재중 라피치 대표','https://n.news.naver.com/mnews/article/277/0005394085?sid=101',0,'2024-03-19 12:00:00'),(26,'https://imgnews.pstatic.net/image/008/2024/03/19/0005013769_001_20240319120124188.jpg?type=w647','중기중앙회, 김동섭·김재중 대표 \'자랑스러운 중소기업인\' 선정','https://n.news.naver.com/mnews/article/008/0005013769?sid=101',0,'2024-03-19 12:00:00'),(27,'https://imgnews.pstatic.net/image/003/2024/03/19/NISI20240319_0001504555_web_20240319085115_20240319120201405.jpg?type=w647','\'자랑스러운 중기인\'에 효동기계공업·라피치 대표 선정','https://n.news.naver.com/mnews/article/003/0012435697?sid=101',0,'2024-03-19 12:00:00'),(28,'https://imgnews.pstatic.net/image/421/2024/03/19/0007420690_001_20240319120110668.jpg?type=w647','김동섭·김재중 대표 \'자랑스러운 중소기업인\' 선정','https://n.news.naver.com/mnews/article/421/0007420690?sid=101',0,'2024-03-19 12:00:00'),(29,'https://imgnews.pstatic.net/image/008/2024/03/19/0005013759_001_20240319115904931.jpg?type=w647','국립수목원 3곳, 중형차 3.5만대 1년간 배출 온실가스 감축 효과','https://n.news.naver.com/mnews/article/008/0005013759?sid=102',0,'2024-03-19 11:58:00'),(30,'https://imgnews.pstatic.net/image/056/2024/03/19/0011684051_001_20240319115302733.jpg?type=w647','정부 “전기 수요 적은 봄, 모든 발전소 출력제어 유도”','https://n.news.naver.com/mnews/article/056/0011684051?sid=101',0,'2024-03-19 11:52:00'),(31,'https://imgnews.pstatic.net/image/021/2024/03/19/0002627226_001_20240319114923985.jpg?type=w647','‘기후위기대응’ 2030년까지 452兆 금융지원','https://n.news.naver.com/mnews/article/021/0002627226?sid=101',0,'2024-03-19 11:46:00'),(32,'https://imgnews.pstatic.net/image/003/2024/03/19/NISI20240319_0001504867_web_20240319112617_20240319114317898.jpg?type=w647','김동연 경기지사 \"2035년까지 철도 42개 노선·645km 확충\"','https://n.news.naver.com/mnews/article/003/0012435652?sid=102',0,'2024-03-19 11:41:00'),(33,'https://imgnews.pstatic.net/image/001/2024/03/19/AKR20240319073800060_01_i_P4_20240319113811120.jpg?type=w647','경기도 \"파주 문산까지 KTX 연장하고 의정부까지 SRT 연결 추진\"','https://n.news.naver.com/mnews/article/001/0014572867?sid=102',0,'2024-03-19 11:37:00'),(34,'https://imgnews.pstatic.net/image/629/2024/03/19/202490661710814133_20240319113707335.jpg?type=w647','\'비엔지니어 출신\' 최정우 포스코 회장 연임 임기 완주…\'명암\' 뚜렷','https://n.news.naver.com/mnews/article/629/0000274530?sid=101',0,'2024-03-19 11:37:00'),(35,'https://imgnews.pstatic.net/image/079/2024/03/19/0003875347_001_20240319113401216.jpg?type=w647','김동연 \"경제 좋으면 여당, 팍팍하면 야당…국민이 판단할 것\"','https://n.news.naver.com/mnews/article/079/0003875347?sid=165',0,'2024-03-19 11:34:00'),(36,'https://imgnews.pstatic.net/image/082/2024/03/19/0001260907_001_20240319113301163.jpg?type=w647','새마을지도자광안4동협의회, 탄소중립 실천 ‘새마을 줍깅 데이’','https://n.news.naver.com/mnews/article/082/0001260907?sid=102',0,'2024-03-19 11:33:00'),(37,'https://imgnews.pstatic.net/image/014/2024/03/19/0005158271_001_20240319113203921.jpg?type=w647','HBM 스크러버 장비는 유니셈 \"수요 증가\"-그로쓰리서치','https://n.news.naver.com/mnews/article/014/0005158271?sid=101',0,'2024-03-19 11:32:00'),(38,'https://imgnews.pstatic.net/image/003/2024/03/19/NISI20240318_0001504038_web_20240318134658_20240319120316917.jpg?type=w647','백혜련 \"8년 노하우·네트워크…서수원 발전 완성\"[수원총선Ⅱ-②]','https://n.news.naver.com/mnews/article/003/0012435600?sid=165',0,'2024-03-19 11:30:00'),(39,'https://imgnews.pstatic.net/image/016/2024/03/19/20240319050413_0_20240319112903952.jpg?type=w647','한국타이어, CDP 탄소경영 섹터 아너스 수상','https://n.news.naver.com/mnews/article/016/0002282446?sid=101',0,'2024-03-19 11:29:00'),(40,'https://imgnews.pstatic.net/image/382/2024/03/19/0001113694_001_20240319112705183.jpg?type=w647','강수현 양주시장, 수소에너지 ‘인천연료전지·파주에코에너지’ 견학','https://n.news.naver.com/mnews/article/382/0001113694?sid=102',0,'2024-03-19 11:27:00'),(41,'https://imgnews.pstatic.net/image/015/2024/03/20/0004962446_001_20240320183601021.jpg?type=w647','\'골칫거리\' 코로나 가림막…\"적극적 환경행정으로 재활용\"','https://n.news.naver.com/mnews/article/015/0004962446?sid=102',0,'2024-03-20 18:36:00'),(42,'https://imgnews.pstatic.net/image/018/2024/03/20/0005696783_001_20240320183001070.jpg?type=w647','\"경영진의 배려 느꼈다\"…달라진 삼성의 첫 \'열린 주총\'','https://n.news.naver.com/mnews/article/018/0005696783?sid=101',1,'2024-03-20 18:30:00'),(43,'data:image/png;base64,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','대전, 2037년까지 ‘전력 완전 자립’ 도전','https://n.news.naver.com/mnews/article/014/0005159311?sid=102',2,'2024-03-20 18:27:00'),(44,'https://imgnews.pstatic.net/image/011/2024/03/20/0004316146_001_20240320182401047.jpg?type=w647','목재문화진흥회, 창립 10주년 기념행사 열어','https://n.news.naver.com/mnews/article/011/0004316146?sid=102',0,'2024-03-20 18:24:00'),(45,'https://imgnews.pstatic.net/image/056/2024/03/20/0011685160_001_20240320182402998.jpg?type=w647','KBS ‘다큐 인사이트 - 지속 가능한 지구는 없다’, 방심위 ‘이달의 좋은 프로그램’ 최우수상','https://n.news.naver.com/mnews/article/056/0011685160?sid=105',7,'2024-03-20 18:22:00'),(46,'https://imgnews.pstatic.net/image/011/2024/03/20/0004316140_001_20240320181804573.jpg?type=w647','대전시, 2037년까지 전력자립도 100% 달성','https://n.news.naver.com/mnews/article/011/0004316140?sid=102',0,'2024-03-20 18:18:00'),(47,'https://imgnews.pstatic.net/image/002/2024/03/20/0002324302_001_20240320181600990.jpg?type=w647','대전시, 2037년까지 전력자립도 100% 수준 달성 추진','https://n.news.naver.com/mnews/article/002/0002324302?sid=102',0,'2024-03-20 18:16:00'),(48,'https://imgnews.pstatic.net/image/001/2024/03/20/PYH2024032022430006200_P4_20240320180342050.jpg?type=w647','국회의원 후보는 탈석탄 공약하라','https://n.news.naver.com/mnews/article/001/0014577243?sid=102',0,'2024-03-20 18:02:00'),(49,'https://imgnews.pstatic.net/image/001/2024/03/20/PYH2024032022410006200_P4_20240320180335348.jpg?type=w647','국회의원 후보는 탈석탄 공약하라','https://n.news.naver.com/mnews/article/001/0014577240?sid=102',0,'2024-03-20 18:02:00'),(50,'https://imgnews.pstatic.net/image/421/2024/03/20/0007424894_001_20240320175601494.jpg?type=w647','대전시, 2037년까지 교촌국가산단에 500㎿급 발전소 4기 건설','https://n.news.naver.com/mnews/article/421/0007424894?sid=102',0,'2024-03-20 17:55:00'),(51,'https://imgnews.pstatic.net/image/382/2024/03/20/0001114096_001_20240320174701333.jpg?type=w647','전남도의회, ESG 실천 우수 ‘장은영 의원’ 선정','https://n.news.naver.com/mnews/article/382/0001114096?sid=102',0,'2024-03-20 17:47:00'),(52,'https://imgnews.pstatic.net/image/082/2024/03/20/0001261223_001_20240320174401179.jpg?type=w647','이갑준 사하구청장, ‘바이바이 플라스틱(Bye Bye Plastic - BBP)’ 챌린지에 동참','https://n.news.naver.com/mnews/article/082/0001261223?sid=102',0,'2024-03-20 17:44:00'),(53,'https://imgnews.pstatic.net/image/001/2024/03/20/PYH2024031903940001300_P4_20240320174414885.jpg?type=w647','기재차관 \"저출산·연금개혁, 한-프 공통현안…재정협력\"','https://n.news.naver.com/mnews/article/001/0014577185?sid=102',0,'2024-03-20 17:43:00'),(54,'https://imgnews.pstatic.net/image/016/2024/03/20/20240320050740_0_20240320173201473.jpg?type=w647','기재 2차관, 佛국가전략기구와 면담…지속가능한 재정·저출산 대응책 논의','https://n.news.naver.com/mnews/article/016/0002283326?sid=101',0,'2024-03-20 17:32:00'),(55,'https://imgnews.pstatic.net/image/119/2024/03/20/0002811534_001_20240320173201234.jpeg?type=w647','한-OECD 국제공동연구체계 구축','https://n.news.naver.com/mnews/article/119/0002811534?sid=101',0,'2024-03-20 17:32:00'),(56,'https://imgnews.pstatic.net/image/014/2024/03/20/0005159257_001_20240320173107883.jpg?type=w647','기재차관 \"건전재정 중에도 필요분야 역량 집중해야\"','https://n.news.naver.com/mnews/article/014/0005159257?sid=101',0,'2024-03-20 17:31:00'),(57,'https://imgnews.pstatic.net/image/018/2024/03/20/0005696728_001_20240320181703280.jpg?type=w647','김윤상 기재차관 프랑스 방문…OECD와 공동연구 추진','https://n.news.naver.com/mnews/article/018/0005696728?sid=101',0,'2024-03-20 17:31:00'),(58,'https://imgnews.pstatic.net/image/088/2024/03/20/0000868369_001_20240320172601212.jpg?type=w647','민주당, \'기후변화 대응\' 총선 공약…2035년 재생에너지 비중 40%로 확대','https://n.news.naver.com/mnews/article/088/0000868369?sid=100',0,'2024-03-20 17:26:00'),(59,'https://imgnews.pstatic.net/image/468/2024/03/20/0001041532_001_20240320182902471.jpg?type=w647','‘매운맛 대잔치’ 삼성전자 정기주총, 주주들 쓴소리에 경영진 진땀[SS현장]','https://n.news.naver.com/mnews/article/468/0001041532?sid=101',0,'2024-03-20 17:23:00'),(60,'https://imgnews.pstatic.net/image/047/2024/03/20/0002426654_001_20240320171701103.jpg?type=w647','\"수원군공항 이전 반드시 막아내겠다\"','https://n.news.naver.com/mnews/article/047/0002426654?sid=165',0,'2024-03-20 17:17:00'),(61,'https://imgnews.pstatic.net/image/003/2024/03/21/NISI20240130_0001470527_web_20240130165630_20240321162610033.jpg?type=w647','홍성군, 체류형 관광상품으로 생활인구 유입 증가 기대','https://n.news.naver.com/mnews/article/003/0012442570?sid=102',2,'2024-03-21 16:25:00'),(62,'https://imgnews.pstatic.net/image/003/2024/03/21/NISI20240321_0001507417_web_20240321161913_20240321162537393.jpg?type=w647','23일 지구촌 전등끄기 캠페인…광안대교 10분 소등','https://n.news.naver.com/mnews/article/003/0012442568?sid=102',8,'2024-03-21 16:24:00'),(63,'https://imgnews.pstatic.net/image/421/2024/03/21/0007427751_001_20240321162001527.jpg?type=w647','대전상공회의소, ESG 경영· 탄소저감 플랫폼 지원사업 설명회','https://n.news.naver.com/mnews/article/421/0007427751?sid=102',1,'2024-03-21 16:19:00'),(64,'https://imgnews.pstatic.net/image/119/2024/03/21/0002811978_001_20240321161105030.jpeg?type=w647','동서발전, 세계 물의 날 맞아 \'친환경 흙공 던지기\' 행사','https://n.news.naver.com/mnews/article/119/0002811978?sid=101',0,'2024-03-21 16:11:00'),(65,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276125_002_20240321160942351.jpg?type=w647','현대제철, 고부가 철강제품 설비 구축 한창…해상풍력 시장서 새바람','https://n.news.naver.com/mnews/article/009/0005276125?sid=101',0,'2024-03-21 16:08:00'),(66,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276108_002_20240321160719844.jpg?type=w647','GS칼텍스, 바이오연료 사업 확대하고 청정수소 클러스터도 구축','https://n.news.naver.com/mnews/article/009/0005276108?sid=101',0,'2024-03-21 16:07:00'),(67,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276098_001_20240321160628582.jpg?type=w647','에쓰오일, 석유화학 프로젝트에 9조 투입 에너지 효율 높여 \'넷제로\' 앞장','https://n.news.naver.com/mnews/article/009/0005276098?sid=101',0,'2024-03-21 16:06:00'),(68,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276071_002_20240321160504134.jpg?type=w647','포스코, 친환경 미래 소재·탈탄소 박차 … 사업 포트폴리오 확 늘린다','https://n.news.naver.com/mnews/article/009/0005276071?sid=101',1,'2024-03-21 16:05:00'),(69,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276069_001_20240321160415102.jpg?type=w647','5·5·5 담대한 도전 경제강국 도약, 한국기업 뛴다','https://n.news.naver.com/mnews/article/009/0005276069?sid=101',0,'2024-03-21 16:04:00'),(70,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276049_002_20240321160309182.jpg?type=w647','효성, 바이오 섬유·수소 신시장 개척 … 혁신적 소재 개발도 온힘','https://n.news.naver.com/mnews/article/009/0005276049?sid=101',0,'2024-03-21 16:03:00'),(71,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276059_002_20240321160338253.jpg?type=w647','LG에너지솔루션, 압도적 기술력·원가경쟁력 확보 … 배터리 \'넘버1\' 굳힌다','https://n.news.naver.com/mnews/article/009/0005276059?sid=101',0,'2024-03-21 16:03:00'),(72,'https://imgnews.pstatic.net/image/009/2024/03/21/0005276053_001_20240321160320923.jpg?type=w647','신한자산운용, 가치담은 ESG펀드 … 투자·기부 함께','https://n.news.naver.com/mnews/article/009/0005276053?sid=101',0,'2024-03-21 16:03:00'),(73,'https://imgnews.pstatic.net/image/015/2024/03/21/0004962851_001_20240321155606912.jpg?type=w647','경남에너지, 올해 320억 투자 도시가스 보급 확대…에너지 불균형 해소 주력','https://n.news.naver.com/mnews/article/015/0004962851?sid=101',0,'2024-03-21 15:56:00'),(74,'https://imgnews.pstatic.net/image/003/2024/03/21/NISI20240321_0001507341_web_20240321154341_20240321155704539.jpg?type=w647','충남도, CO2보다 28배 독한 ‘메탄’ 35% 잡는다','https://n.news.naver.com/mnews/article/003/0012442442?sid=102',0,'2024-03-21 15:56:00'),(75,'https://imgnews.pstatic.net/image/001/2024/03/21/PCM20211106000043054_P4_20240321155410295.jpg?type=w647','해남군, 자동차 운행 시간 줄이고 현금 받자','https://n.news.naver.com/mnews/article/001/0014579852?sid=102',0,'2024-03-21 15:53:00'),(76,'https://imgnews.pstatic.net/image/003/2024/03/21/NISI20240319_0001504877_web_20240319113538_20240321155422797.jpg?type=w647','창원상의 경남FTA통상진흥센터, 탄소배출량 산정 지원사업 추진','https://n.news.naver.com/mnews/article/003/0012442433?sid=102',0,'2024-03-21 15:52:00'),(77,'https://imgnews.pstatic.net/image/648/2024/03/21/0000024223_001_20240321154201761.jpg?type=w647','새시대 연 포스코 장인화…\"철강·소재 쌍두마차로 지속 성장\"','https://n.news.naver.com/mnews/article/648/0000024223?sid=101',0,'2024-03-21 15:42:00'),(78,'https://imgnews.pstatic.net/image/001/2024/03/21/AKR20240321059051003_01_i_P4_20240321153808920.jpg?type=w647','닻 올린 포스코 \'장인화호\'…본업회복·미래사업 과제 안고 출항(종합)','https://n.news.naver.com/mnews/article/001/0014579749?sid=101',0,'2024-03-21 15:37:00'),(79,'https://imgnews.pstatic.net/image/003/2024/03/21/NISI20240321_0001507308_web_20240321152532_20240321153807030.jpg?type=w647','전북자치도, 4월부터 도청사내 1회용컵 반입 ‘NO’','https://n.news.naver.com/mnews/article/003/0012442326?sid=102',0,'2024-03-21 15:37:00'),(80,'https://imgnews.pstatic.net/image/047/2024/03/21/0002426803_001_20240321153401117.jpg?type=w647','전 지구 이산화탄소 연평균 농도 410ppm 시대, 무엇을 할 수 있을까','https://n.news.naver.com/mnews/article/047/0002426803?sid=102',0,'2024-03-21 15:34:00');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
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