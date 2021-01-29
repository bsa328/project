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
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'관리자','0','0','1','1',NULL,NULL,'Y',10,'그린컴퓨터',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'김철수','100','1','2110011','1','2021-01-01','2021-01-30','Y',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'김영희','200','3','2120038','1','2021-01-07','2021-01-30','N',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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

-- Dump completed on 2021-01-30  2:48:24
