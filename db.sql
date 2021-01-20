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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'영업부','notice','김과장','#6F809A','영업부 공지사항 게시판입니다.','2','2','2021-01-19'),(2,'admin','admin','admin','#5D1049','사내 공지사항입니다. 확인 바랍니다.','1','1','2021-01-19'),(3,'admin','dqwdwq','admin','#6F809A','wqdw','1','2','2021-01-19'),(4,'영업부','dadwdq','김과장','#2962FF','fsfdsf','1','3','2021-01-19'),(5,'영업부','asdasd','김과장','#B00020','asdsad','2','3','2021-01-19'),(6,'영업부','fe','김과장','#5D1049','ewfewf','1','2','2021-01-19'),(7,'영업부','dawd','김과장','#B00020','wdawd','2','1','2021-01-19'),(8,'영업부','gr','김과장','#B00020','gr','1','2','2021-01-19'),(9,'영업부','gr','김과장','#B00020','gr','1','2','2021-01-19'),(10,'영업부','ds','김과장','#B00020','sd','2','1','2021-01-19'),(11,'영업부','fsef','김과장','#B00020','sefse','2','2','2021-01-19'),(12,'영업부','dqd','김과장','#B00020','dqw','1','3','2021-01-19'),(13,'영업부','admin','김과장','#B00020','df','1','2','2021-01-19'),(14,'영업부','admin','김과장','#5D1049','asd','2','1','2021-01-19'),(15,'영업부','admin','김과장','#B00020','fse','2','1','2021-01-19'),(16,'영업부','free','김과장','#2962FF','영업부 자유게시판','2','1','2021-01-20');
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
INSERT INTO `buseo` VALUES ('0','-'),('100','관리부'),('200','기획부'),('300','인사부'),('400','영업부'),('500','생산부');
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
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'admin','0','0','1','1',NULL,NULL,'Y',10),(2,'김부장','100','1','2110011','1','2021-01-01','2021-01-20','N',1),(5,'김과장','100','2','2110022','1','2021-01-01','2021-01-20','N',1),(6,'김과장','100','2','2110025','1','2021-01-01','2021-01-20','N',1),(7,'1','200','3','2120036','1','2021-01-06','2021-01-20','N',1),(8,'ㅋㅋ','200','2','2120027','1','2021-01-06','2021-01-20','N',1),(9,'ㄴㄴ','300','2','2130028','1','2021-01-21','2021-01-20','N',1),(10,'1','200','3','2120039','1','2021-01-06','2021-01-20','N',1),(11,'김씨','200','2','21200210','1','2021-01-06','2021-01-20','N',1),(12,'김씨','200','1','21200111','1','2021-01-13','2021-01-20','N',1);
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

-- Dump completed on 2021-01-20 23:52:20
