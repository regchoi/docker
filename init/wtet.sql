-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wtet
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `member_id` bigint NOT NULL,
  PRIMARY KEY (`member_id`),
  CONSTRAINT `FKqe770yjl5gjfgesmdn6xj44sn` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `category_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `FK2y94svpmqttx80mshyny85wqr` (`parent_id`),
  CONSTRAINT `FK2y94svpmqttx80mshyny85wqr` FOREIGN KEY (`parent_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'전체메뉴',1),(2,'한식',1),(3,'일식',1),(4,'중식',1),(5,'양식',1),(6,'치킨',1),(7,'분식',1),(8,'디저트',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition`
--

DROP TABLE IF EXISTS `condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condition` (
  `condition_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `conditioncategory_id` bigint DEFAULT NULL,
  PRIMARY KEY (`condition_id`),
  KEY `FKhujjof572vfdlbc7d37rwbfhk` (`conditioncategory_id`),
  CONSTRAINT `FKhujjof572vfdlbc7d37rwbfhk` FOREIGN KEY (`conditioncategory_id`) REFERENCES `condition_category` (`condition_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition`
--

LOCK TABLES `condition` WRITE;
/*!40000 ALTER TABLE `condition` DISABLE KEYS */;
INSERT INTO `condition` VALUES (1,'즐거운',1),(2,'무기력한',1),(3,'입이 심심한',1),(4,'허전한',1),(5,'행복한',1),(6,'설레는',1),(7,'긴장되는',1),(8,'짜증나는',1),(9,'피곤한',1),(10,'기쁜',1),(11,'슬픈',1),(12,'답답한',1),(13,'우울한',1),(14,'예민한',1),(15,'스트레스 받는',1),(16,'화창한',2),(17,'선선한',2),(18,'추운',2),(19,'더운',2),(20,'비가오는',2),(21,'눈오는',2),(22,'바람부는',2),(23,'미세먼지 심한',2),(24,'따뜻한',2),(25,'번개치는',2),(26,'안개 낀',2),(27,'쌀쌀한',2),(28,'건조한',2),(29,'습한',2),(30,'흐린',2),(31,'다이어트 3일차 날',3),(32,'회사점심회식 날',3),(33,'가족식사 날',3),(34,'집들이 날',3),(35,'손님 대접하는 날',3),(36,'단체 주문 있는 날',3),(37,'야식 당기는 날',3),(38,'소화 안 되는 날',3),(39,'데이트 하는 날',3),(40,'당기는 음식이 없는 날',3),(41,'잠 안오는 날',3),(42,'배부른데 입 심심한 날',3),(43,'혼밥하는 날',3),(44,'면접 날',3),(45,'기념일',3);
/*!40000 ALTER TABLE `condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_category`
--

DROP TABLE IF EXISTS `condition_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condition_category` (
  `condition_category_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`condition_category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_category`
--

LOCK TABLES `condition_category` WRITE;
/*!40000 ALTER TABLE `condition_category` DISABLE KEYS */;
INSERT INTO `condition_category` VALUES (1,'기분'),(2,'날씨'),(3,'상황');
/*!40000 ALTER TABLE `condition_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `condition_menu`
--

DROP TABLE IF EXISTS `condition_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `condition_menu` (
  `condition_menu_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `condition_id` bigint DEFAULT NULL,
  `cross_menu_id` bigint DEFAULT NULL,
  PRIMARY KEY (`condition_menu_id`),
  KEY `FKkxvf049obga9b2a221vrvcfj9` (`condition_id`),
  KEY `FK9hf70sh4ytyjp6qm1n0e8fgao` (`cross_menu_id`),
  CONSTRAINT `FK9hf70sh4ytyjp6qm1n0e8fgao` FOREIGN KEY (`cross_menu_id`) REFERENCES `cross_menu` (`cross_menu_id`),
  CONSTRAINT `FKkxvf049obga9b2a221vrvcfj9` FOREIGN KEY (`condition_id`) REFERENCES `condition` (`condition_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `condition_menu`
--

LOCK TABLES `condition_menu` WRITE;
/*!40000 ALTER TABLE `condition_menu` DISABLE KEYS */;
INSERT INTO `condition_menu` VALUES (5,'밥',1,4),(7,'스파게티',1,6),(9,'스테이크',17,8),(11,'짬뽕',2,10),(13,'짜장면',3,12),(15,'파르페',4,14),(16,'짬뽕',5,10),(17,'짬뽕',7,10),(18,'짬뽕',9,10),(19,'짬뽕',10,10),(20,'짬뽕',11,10),(21,'짬뽕',14,10),(22,'짬뽕',22,10),(23,'짬뽕',32,10);
/*!40000 ALTER TABLE `condition_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cross_menu`
--

DROP TABLE IF EXISTS `cross_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cross_menu` (
  `cross_menu_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cross_menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cross_menu`
--

LOCK TABLES `cross_menu` WRITE;
/*!40000 ALTER TABLE `cross_menu` DISABLE KEYS */;
INSERT INTO `cross_menu` VALUES (2,'기타'),(4,'밥'),(6,'스파게티'),(8,'스테이크'),(10,'짬뽕'),(12,'짜장면'),(14,'파르페');
/*!40000 ALTER TABLE `cross_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `member_id` bigint NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `FK94tsjku6qt1ao1xc8slu72h1b` (`admin_id`),
  CONSTRAINT `FK94tsjku6qt1ao1xc8slu72h1b` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`member_id`),
  CONSTRAINT `FKhk2iailalafyhee26cw9i4n1v` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (27,NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eating_houses`
--

DROP TABLE IF EXISTS `eating_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eating_houses` (
  `eating_house_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `address_detail` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `store_eating_house_file_name` varchar(255) DEFAULT NULL,
  `upload_eating_house_file_name` varchar(255) DEFAULT NULL,
  `manager_id` bigint DEFAULT NULL,
  PRIMARY KEY (`eating_house_id`),
  KEY `FK7px0e9dqijggnmqm54esvq1m4` (`manager_id`),
  CONSTRAINT `FK7px0e9dqijggnmqm54esvq1m4` FOREIGN KEY (`manager_id`) REFERENCES `managers` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eating_houses`
--

LOCK TABLES `eating_houses` WRITE;
/*!40000 ALTER TABLE `eating_houses` DISABLE KEYS */;
INSERT INTO `eating_houses` VALUES (24,'중국집','{\"status\":\"OK\",\"meta\":{\"totalCount\":1,\"page\":1,\"count\":1},\"addresses\":[{\"roadAddress\":\"경기도 성남시 분당구 판교역로 166 카카오 판교 아지트\",\"jibunAddress\":\"경기도 성남시 분당구 백현동 532 카카오 판교 아지트\",\"englishAddress\":\"166, Pangyoyeok-ro, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea\",\"addressElements\":[{\"types\":[\"SIDO\"],\"longName\":\"경기도\",\"shortName\":\"경기도\",\"code\":\"\"},{\"types\":[\"SIGUGUN\"],\"longName\":\"성남시 분당구\",\"shortName\":\"성남시 분당구\",\"code\":\"\"},{\"types\":[\"DONGMYUN\"],\"longName\":\"백현동\",\"shortName\":\"백현동\",\"code\":\"\"},{\"types\":[\"RI\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"ROAD_NAME\"],\"longName\":\"판교역로\",\"shortName\":\"판교역로\",\"code\":\"\"},{\"types\":[\"BUILDING_NUMBER\"],\"longName\":\"166\",\"shortName\":\"166\",\"code\":\"\"},{\"types\":[\"BUILDING_NAME\"],\"longName\":\"카카오 판교 아지트\",\"shortName\":\"카카오 판교 아지트\",\"code\":\"\"},{\"types\":[\"LAND_NUMBER\"],\"longName\":\"532\",\"shortName\":\"532\",\"code\":\"\"},{\"types\":[\"POSTAL_CODE\"],\"longName\":\"13529\",\"shortName\":\"13529\",\"code\":\"\"}],\"x\":\"127.1103706\",\"y\":\"37.3954970\",\"distance\":0}],\"errorMessage\":\"\"}','101호','중국집입니다',NULL,NULL,3),(28,'이탈리안레스토랑','{\"status\":\"OK\",\"meta\":{\"totalCount\":1,\"page\":1,\"count\":1},\"addresses\":[{\"roadAddress\":\"경기도 성남시 분당구 판교역로192번길 14 리치투게더센터\",\"jibunAddress\":\"경기도 성남시 분당구 삼평동 663 리치투게더센터\",\"englishAddress\":\"14, Pangyoyeok-ro 192beon-gil, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea\",\"addressElements\":[{\"types\":[\"SIDO\"],\"longName\":\"경기도\",\"shortName\":\"경기도\",\"code\":\"\"},{\"types\":[\"SIGUGUN\"],\"longName\":\"성남시 분당구\",\"shortName\":\"성남시 분당구\",\"code\":\"\"},{\"types\":[\"DONGMYUN\"],\"longName\":\"삼평동\",\"shortName\":\"삼평동\",\"code\":\"\"},{\"types\":[\"RI\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"ROAD_NAME\"],\"longName\":\"판교역로192번길\",\"shortName\":\"판교역로192번길\",\"code\":\"\"},{\"types\":[\"BUILDING_NUMBER\"],\"longName\":\"14\",\"shortName\":\"14\",\"code\":\"\"},{\"types\":[\"BUILDING_NAME\"],\"longName\":\"리치투게더센터\",\"shortName\":\"리치투게더센터\",\"code\":\"\"},{\"types\":[\"LAND_NUMBER\"],\"longName\":\"663\",\"shortName\":\"663\",\"code\":\"\"},{\"types\":[\"POSTAL_CODE\"],\"longName\":\"13524\",\"shortName\":\"13524\",\"code\":\"\"}],\"x\":\"127.1114194\",\"y\":\"37.3973932\",\"distance\":0}],\"errorMessage\":\"\"}','101호','이탈리안 음식 전문점입니다',NULL,NULL,3),(33,'중식당','{\"status\":\"OK\",\"meta\":{\"totalCount\":1,\"page\":1,\"count\":1},\"addresses\":[{\"roadAddress\":\"경기도 성남시 분당구 판교역로146번길 20 현대백화점 판교점\",\"jibunAddress\":\"경기도 성남시 분당구 백현동 541 현대백화점 판교점\",\"englishAddress\":\"20, Pangyoyeok-ro 146beon-gil, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea\",\"addressElements\":[{\"types\":[\"SIDO\"],\"longName\":\"경기도\",\"shortName\":\"경기도\",\"code\":\"\"},{\"types\":[\"SIGUGUN\"],\"longName\":\"성남시 분당구\",\"shortName\":\"성남시 분당구\",\"code\":\"\"},{\"types\":[\"DONGMYUN\"],\"longName\":\"백현동\",\"shortName\":\"백현동\",\"code\":\"\"},{\"types\":[\"RI\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"ROAD_NAME\"],\"longName\":\"판교역로146번길\",\"shortName\":\"판교역로146번길\",\"code\":\"\"},{\"types\":[\"BUILDING_NUMBER\"],\"longName\":\"20\",\"shortName\":\"20\",\"code\":\"\"},{\"types\":[\"BUILDING_NAME\"],\"longName\":\"현대백화점 판교점\",\"shortName\":\"현대백화점 판교점\",\"code\":\"\"},{\"types\":[\"LAND_NUMBER\"],\"longName\":\"541\",\"shortName\":\"541\",\"code\":\"\"},{\"types\":[\"POSTAL_CODE\"],\"longName\":\"13529\",\"shortName\":\"13529\",\"code\":\"\"}],\"x\":\"127.1120875\",\"y\":\"37.3927946\",\"distance\":0}],\"errorMessage\":\"\"}','101호','중식당입니다',NULL,NULL,32);
/*!40000 ALTER TABLE `eating_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (36);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `managers`
--

DROP TABLE IF EXISTS `managers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `managers` (
  `member_id` bigint NOT NULL,
  `admin_id` bigint DEFAULT NULL,
  PRIMARY KEY (`member_id`),
  KEY `FK6ncgs8pnrmiwqynooyamqqqqt` (`admin_id`),
  CONSTRAINT `FK6ncgs8pnrmiwqynooyamqqqqt` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`member_id`),
  CONSTRAINT `FKsioq9ee7nj0rq1fnqowx8agjo` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `managers`
--

LOCK TABLES `managers` WRITE;
/*!40000 ALTER TABLE `managers` DISABLE KEYS */;
INSERT INTO `managers` VALUES (3,NULL),(32,NULL);
/*!40000 ALTER TABLE `managers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `dtype` varchar(31) NOT NULL,
  `member_id` bigint NOT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `address_detail` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('A',1,NULL,NULL,'admin','admin','admin','admin','admin'),('M',3,'{\"status\":\"OK\",\"meta\":{\"totalCount\":1,\"page\":1,\"count\":1},\"addresses\":[{\"roadAddress\":\"경기도 성남시 분당구 판교역로18번길 2\",\"jibunAddress\":\"경기도 성남시 분당구 백현동 577-8\",\"englishAddress\":\"2, Pangyoyeok-ro 18beon-gil, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea\",\"addressElements\":[{\"types\":[\"SIDO\"],\"longName\":\"경기도\",\"shortName\":\"경기도\",\"code\":\"\"},{\"types\":[\"SIGUGUN\"],\"longName\":\"성남시 분당구\",\"shortName\":\"성남시 분당구\",\"code\":\"\"},{\"types\":[\"DONGMYUN\"],\"longName\":\"백현동\",\"shortName\":\"백현동\",\"code\":\"\"},{\"types\":[\"RI\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"ROAD_NAME\"],\"longName\":\"판교역로18번길\",\"shortName\":\"판교역로18번길\",\"code\":\"\"},{\"types\":[\"BUILDING_NUMBER\"],\"longName\":\"2\",\"shortName\":\"2\",\"code\":\"\"},{\"types\":[\"BUILDING_NAME\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"LAND_NUMBER\"],\"longName\":\"577-8\",\"shortName\":\"577-8\",\"code\":\"\"},{\"types\":[\"POSTAL_CODE\"],\"longName\":\"13536\",\"shortName\":\"13536\",\"code\":\"\"}],\"x\":\"127.1109592\",\"y\":\"37.3838613\",\"distance\":0}],\"errorMessage\":\"\"}','101호','manager@naver.com','manager','김철수','manager','010-1234-5678'),('C',27,'{\"status\":\"OK\",\"meta\":{\"totalCount\":1,\"page\":1,\"count\":1},\"addresses\":[{\"roadAddress\":\"경기도 성남시 분당구 판교역로10번길 6\",\"jibunAddress\":\"경기도 성남시 분당구 백현동 581-9\",\"englishAddress\":\"6, Pangyoyeok-ro 10beon-gil, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea\",\"addressElements\":[{\"types\":[\"SIDO\"],\"longName\":\"경기도\",\"shortName\":\"경기도\",\"code\":\"\"},{\"types\":[\"SIGUGUN\"],\"longName\":\"성남시 분당구\",\"shortName\":\"성남시 분당구\",\"code\":\"\"},{\"types\":[\"DONGMYUN\"],\"longName\":\"백현동\",\"shortName\":\"백현동\",\"code\":\"\"},{\"types\":[\"RI\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"ROAD_NAME\"],\"longName\":\"판교역로10번길\",\"shortName\":\"판교역로10번길\",\"code\":\"\"},{\"types\":[\"BUILDING_NUMBER\"],\"longName\":\"6\",\"shortName\":\"6\",\"code\":\"\"},{\"types\":[\"BUILDING_NAME\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"LAND_NUMBER\"],\"longName\":\"581-9\",\"shortName\":\"581-9\",\"code\":\"\"},{\"types\":[\"POSTAL_CODE\"],\"longName\":\"13536\",\"shortName\":\"13536\",\"code\":\"\"}],\"x\":\"127.1117294\",\"y\":\"37.3840922\",\"distance\":0}],\"errorMessage\":\"\"}','101호','customer@naver.com','customer','김영희','customer','010-9876-5432'),('M',32,'{\"status\":\"OK\",\"meta\":{\"totalCount\":1,\"page\":1,\"count\":1},\"addresses\":[{\"roadAddress\":\"경기도 성남시 분당구 판교역로192번길 22 판교 효성 해링턴 타워\",\"jibunAddress\":\"경기도 성남시 분당구 삼평동 659 판교 효성 해링턴 타워\",\"englishAddress\":\"22, Pangyoyeok-ro 192beon-gil, Bundang-gu, Seongnam-si, Gyeonggi-do, Republic of Korea\",\"addressElements\":[{\"types\":[\"SIDO\"],\"longName\":\"경기도\",\"shortName\":\"경기도\",\"code\":\"\"},{\"types\":[\"SIGUGUN\"],\"longName\":\"성남시 분당구\",\"shortName\":\"성남시 분당구\",\"code\":\"\"},{\"types\":[\"DONGMYUN\"],\"longName\":\"삼평동\",\"shortName\":\"삼평동\",\"code\":\"\"},{\"types\":[\"RI\"],\"longName\":\"\",\"shortName\":\"\",\"code\":\"\"},{\"types\":[\"ROAD_NAME\"],\"longName\":\"판교역로192번길\",\"shortName\":\"판교역로192번길\",\"code\":\"\"},{\"types\":[\"BUILDING_NUMBER\"],\"longName\":\"22\",\"shortName\":\"22\",\"code\":\"\"},{\"types\":[\"BUILDING_NAME\"],\"longName\":\"판교 효성 해링턴 타워\",\"shortName\":\"판교 효성 해링턴 타워\",\"code\":\"\"},{\"types\":[\"LAND_NUMBER\"],\"longName\":\"659\",\"shortName\":\"659\",\"code\":\"\"},{\"types\":[\"POSTAL_CODE\"],\"longName\":\"13524\",\"shortName\":\"13524\",\"code\":\"\"}],\"x\":\"127.1120303\",\"y\":\"37.3980298\",\"distance\":0}],\"errorMessage\":\"\"}','101호','manager2@naver.com','manager2','김바둑','manager2','010-5678-1234');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `menu_id` bigint NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int NOT NULL,
  `store_menu_file_name` varchar(255) DEFAULT NULL,
  `upload_menu_file_name` varchar(255) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `cross_menu_id` bigint DEFAULT NULL,
  `eating_house_id` bigint DEFAULT NULL,
  PRIMARY KEY (`menu_id`),
  KEY `FKww84tou7nixng06lmxawvcre` (`category_id`),
  KEY `FK5u0nyhac98idwpxamltu6wfsu` (`cross_menu_id`),
  KEY `FKpeh5sbrna6yv2vaal5hg36lan` (`eating_house_id`),
  CONSTRAINT `FK5u0nyhac98idwpxamltu6wfsu` FOREIGN KEY (`cross_menu_id`) REFERENCES `cross_menu` (`cross_menu_id`),
  CONSTRAINT `FKpeh5sbrna6yv2vaal5hg36lan` FOREIGN KEY (`eating_house_id`) REFERENCES `eating_houses` (`eating_house_id`),
  CONSTRAINT `FKww84tou7nixng06lmxawvcre` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (25,'짜장면',8000,NULL,NULL,4,12,24),(26,'짬뽕',8000,NULL,NULL,4,10,24),(29,'까르보나라',16000,NULL,NULL,5,2,28),(30,'빠네',18000,NULL,NULL,5,2,28),(31,'크림스파게티',22000,NULL,NULL,5,6,28),(34,'매운짜장면',10000,NULL,NULL,4,12,33),(35,'백짬뽕',11000,NULL,NULL,4,10,33);
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-24 18:51:02
