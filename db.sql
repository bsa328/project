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
-- Table structure for table `article_dinner`
--

DROP TABLE IF EXISTS `article_dinner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_dinner` (
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
-- Dumping data for table `article_dinner`
--

LOCK TABLES `article_dinner` WRITE;
/*!40000 ALTER TABLE `article_dinner` DISABLE KEYS */;
INSERT INTO `article_dinner` VALUES (1,'N','저녁 메뉴 투표','김영희','','2021-01-30 11:21:00',4,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `article_dinner` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `article_notice` VALUES (1,'Y','점심메뉴','김철수','','2021-01-30 11:19:33',19,NULL,NULL,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (71,'관리부','notice','김철수','#e9d565','관리부 공지사항','2','2','2021-01-30'),(72,'기획부','dinner','김영희','#98d1e6','저녁 메뉴','1','1','2021-01-30');
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
-- Table structure for table `comment_dinner`
--

DROP TABLE IF EXISTS `comment_dinner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment_dinner` (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `comment_writer` varchar(20) DEFAULT NULL,
  `comment_content` text,
  `comment_regdate` datetime DEFAULT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_dinner`
--

LOCK TABLES `comment_dinner` WRITE;
/*!40000 ALTER TABLE `comment_dinner` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment_dinner` ENABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment_notice`
--

LOCK TABLES `comment_notice` WRITE;
/*!40000 ALTER TABLE `comment_notice` DISABLE KEYS */;
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
  `emp_gender` char(2) DEFAULT NULL,
  `emp_birth` char(8) DEFAULT NULL,
  `emp_bth` char(2) DEFAULT NULL,
  `emp_phone` char(8) DEFAULT NULL,
  `emp_tel` char(7) DEFAULT NULL,
  `emp_recruit` char(4) DEFAULT NULL,
  `emp_hope_job` varchar(20) DEFAULT NULL,
  `emp_email` varchar(50) DEFAULT NULL,
  `emp_military` char(4) DEFAULT NULL,
  `emp_religion` char(3) DEFAULT NULL,
  `emp_hobby` varchar(20) DEFAULT NULL,
  `emp_specialty` varchar(20) DEFAULT NULL,
  `emp_disability` char(3) DEFAULT NULL,
  `emp_veteran` char(3) DEFAULT NULL,
  `emp_marriage` char(2) DEFAULT NULL,
  `emp_qualification1` varchar(20) DEFAULT NULL,
  `emp_qualification2` varchar(20) DEFAULT NULL,
  `emp_qualification3` varchar(20) DEFAULT NULL,
  `emp_qualification4` varchar(20) DEFAULT NULL,
  `emp_qualification5` varchar(20) DEFAULT NULL,
  `emp_language1` varchar(20) DEFAULT NULL,
  `emp_language_level1` char(2) DEFAULT NULL,
  `emp_language2` varchar(20) DEFAULT NULL,
  `emp_language_level2` char(2) DEFAULT NULL,
  `emp_language3` varchar(20) DEFAULT NULL,
  `emp_language_level3` char(2) DEFAULT NULL,
  `emp_language4` varchar(20) DEFAULT NULL,
  `emp_language_level4` char(2) DEFAULT NULL,
  `emp_language5` varchar(20) DEFAULT NULL,
  `emp_language_level5` char(2) DEFAULT NULL,
  `emp_reward_punish1` varchar(20) DEFAULT NULL,
  `emp_reward_punish2` varchar(20) DEFAULT NULL,
  `emp_reward_punish3` varchar(20) DEFAULT NULL,
  `emp_reward_punish4` varchar(20) DEFAULT NULL,
  `emp_reward_punish5` varchar(20) DEFAULT NULL,
  `emp_detail` text,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'관리자','0','0','1','1',NULL,NULL,'Y',1,'그린컴퓨터',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'철수','100','1','2110011','1','2021-01-01','2021-01-30','Y',1,'그린컴퓨터',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'영희','200','2','2120022','1','2021-01-05','2021-01-30','N',1,'그린컴퓨터','남자','19900101','양력','42354375','6524375','공개채용','1','1','병역필','무교','1','1','비장애','비대상','미혼','1','1','1','1','1','1','상','1','중','1','상','','상','','','1','','','','','');
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
INSERT INTO `grade` VALUES ('0','-'),('1','부장'),('2','과장'),('3','대리'),('4','사원');
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

-- Dump completed on 2021-01-30 15:15:41
