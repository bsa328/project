-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `article_notice`
--

DROP TABLE IF EXISTS `article_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_notice` (
  `article_id` int NOT NULL AUTO_INCREMENT,
  `article_division` char(1) DEFAULT NULL,
  `article_title` varchar(300) NOT NULL,
  `article_writer` varchar(20) NOT NULL,
  `article_content` text,
  `article_regdate` datetime DEFAULT NULL,
  `article_hit` int DEFAULT '0',
  `article_file_name` varchar(300) DEFAULT NULL,
  `article_file_ori_name` varchar(300) DEFAULT NULL,
  `article_filr_url` varchar(500) DEFAULT NULL,
  `ref` int DEFAULT NULL,
  PRIMARY KEY (`article_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_notice`
--

LOCK TABLES `article_notice` WRITE;
/*!40000 ALTER TABLE `article_notice` DISABLE KEYS */;
INSERT INTO `article_notice` VALUES (1,'Y','점심메뉴','김짱구','<p>라면</p>\r\n','2021-02-03 15:36:04',31,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `article_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `board_id` int NOT NULL AUTO_INCREMENT,
  `board_group` varchar(20) NOT NULL,
  `board_code` varchar(20) NOT NULL,
  `board_manager` varchar(20) NOT NULL,
  `board_color` varchar(20) NOT NULL,
  `board_title` varchar(255) NOT NULL,
  `board_read` char(1) NOT NULL,
  `board_write` char(1) NOT NULL,
  `board_regdate` date DEFAULT NULL,
  PRIMARY KEY (`board_id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (78,'관리부','notice','김짱구','#a578ca','관리부 공지사항','2','2','2021-02-03');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `buseo`
--

DROP TABLE IF EXISTS `buseo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buseo` (
  `buseo_id` varchar(10) DEFAULT NULL,
  `buseo_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buseo`
--

LOCK TABLES `buseo` WRITE;
/*!40000 ALTER TABLE `buseo` DISABLE KEYS */;
INSERT INTO `buseo` VALUES ('0','admin'),('100','관리부'),('200','기획부'),('300','인사부'),('400','영업부'),('500','생산부');
/*!40000 ALTER TABLE `buseo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment_notice`
--

DROP TABLE IF EXISTS `comment_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_notice` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `comment_writer` varchar(20) DEFAULT NULL,
  `comment_content` text,
  `comment_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_notice`
--

LOCK TABLES `comment_notice` WRITE;
/*!40000 ALTER TABLE `comment_notice` DISABLE KEYS */;
INSERT INTO `comment_notice` VALUES (6,1,'김씨','ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','2021-02-04 16:14:26');
/*!40000 ALTER TABLE `comment_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(20) NOT NULL,
  `emp_buseo` varchar(20) NOT NULL,
  `emp_grade` varchar(20) NOT NULL,
  `emp_num` varchar(20) NOT NULL,
  `emp_pwd` varchar(20) NOT NULL,
  `emp_enter` date DEFAULT NULL,
  `emp_regdate` date DEFAULT NULL,
  `emp_confirm` char(1) DEFAULT 'N',
  `emp_auth` int DEFAULT '1',
  `emp_company` varchar(20) DEFAULT '그린컴퓨터',
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'관리자','0','0','admin','admin',NULL,NULL,'Y',10,'그린컴퓨터'),(2,'김씨','100','1','2110011','1','2021-02-01','2021-02-05','Y',1,'그린컴퓨터'),(3,'최씨','200','2','2120022','1','2021-02-02','2021-02-05','N',1,'그린컴퓨터'),(4,'정씨','300','3','2130033','1','2021-02-03','2021-02-05','N',1,'그린컴퓨터'),(5,'박씨','400','4','2140044','1','2021-02-04','2021-02-05','N',1,'그린컴퓨터');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grade`
--

DROP TABLE IF EXISTS `grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grade` (
  `grade_id` varchar(10) DEFAULT NULL,
  `grade_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grade`
--

LOCK TABLES `grade` WRITE;
/*!40000 ALTER TABLE `grade` DISABLE KEYS */;
INSERT INTO `grade` VALUES ('0','admin'),('1','부장'),('2','과장'),('3','대리'),('4','사원');
/*!40000 ALTER TABLE `grade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05 18:14:40
