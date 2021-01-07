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
  `board_num` int NOT NULL AUTO_INCREMENT,
  `board_title` varchar(100) NOT NULL,
  `board_writer` varchar(20) NOT NULL,
  `board_content` text,
  `board_regdate` date DEFAULT NULL,
  `board_views` int DEFAULT '0',
  PRIMARY KEY (`board_num`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (1,'나는 사과!','사과','<p>나는 사과!나는 사과!나는 사과!나는 사과!나는 사과!나는 사과!나는 사과!나는 사과!나는 사과!나는 사과!</p>\r\n','2021-01-05',0),(2,'나는 바나나!','바나나','<p>나는 바나나!나는 바나나!나는 바나나!나는 바나나!나는 바나나!나는 바나나!나는 바나나!나는 바나나!나는 바나나!나는 바나나!</p>\r\n','2021-01-05',0),(3,'ㅇㄹㅇ','바나나','<p>fㅇㄹㅇㄹ</p>\r\n','2021-01-05',0),(4,'ㄷㄹ','바나나','<p>ㄴㄷㄹㄴㄷㄹㄴㄷㄹ</p>\r\n','2021-01-05',0),(5,'ㄴㄹ','바나나','<p>sㅇㄹㄴㅇㄹ</p>\r\n','2021-01-05',0),(6,'ㄴㅇㄴㅇ','바나나','<p>ㄴㅇㄴ</p>\r\n','2021-01-05',0),(7,'dㅈㅇㅈ','바나나','<p>ㅇㅈㅇ</p>\r\n','2021-01-05',0),(8,'ㄴㅇ','바나나','<p>ㄴㅇ</p>\r\n','2021-01-05',0),(9,'ㅇㄹㄹ','바나나','<p>ㅇㄹ</p>\r\n','2021-01-05',0),(10,'ㄹㅇㄴㅇ','바나나','','2021-01-05',0),(11,'ㄴㅇㄹ','바나나','<p>ㄴㅇㄹㅇㄴ</p>\r\n','2021-01-05',0),(12,'ㄹㅇㄴㄹㄴ','바나나','<p>dㄹㅇㄴㄹㅇㄴㄹㅇㄴ</p>\r\n','2021-01-05',0),(13,'나는 오렌지!','김오렌지','','2021-01-05',0),(14,'오렌오레노렝ㄹㄴㄹㅇ','김오렌지','','2021-01-05',0),(15,'ㅇㄴㄹ','김오렌지','<p>ㄴㅇㄹㅇㄴㄹ</p>\r\n','2021-01-05',0),(16,'ㅇㄴㄹㄴㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ','김오렌지','<p>ㅇㄹㄴㅇㄹ</p>\r\n','2021-01-05',0),(17,'ㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗㅗ','김오렌지','<p>ㅓㅗㅓㅗㅓ쇼ㅓ</p>\r\n','2021-01-05',0),(18,'ㅓㅛㄱㅅㄱㅅㄷ','김오렌지','<p>ㄱㄷㅅㄱ</p>\r\n','2021-01-05',0),(19,'weqqqq','김오렌지','<p>wq</p>\r\n','2021-01-05',0),(20,'fwf','김오렌지','<p>ewfewf</p>\r\n','2021-01-05',0),(21,'fgfggggggggggggggg','김오렌지','<p>ewfewf</p>\r\n','2021-01-05',0),(22,'apple apple apple apple apple','사과','','2021-01-05',0),(23,'aaaaaaaaaaaaaaaaaaaaaaapple','사과','','2021-01-05',0),(24,'ㄴㅇㄴㅇ','','<p>ㄴㅇㅇㄴ</p>\r\n','2021-01-05',0),(25,'wrqfewfe','qotndk','','2021-01-05',0),(26,'babababbabananananna','바나나','','2021-01-05',0),(27,'s','사과','<p>s</p>\r\n','2021-01-05',0),(28,'나는 포도!','박포도','','2021-01-06',0),(29,'ㄴㅇㄴㅇ','박포도','','2021-01-06',0),(30,'홍ㄺㅎㅇㄱ','박포도','','2021-01-06',0),(31,'솟고','박포도','','2021-01-06',0),(32,'ㅎㄱㄷㅎㄷㄱㅎ','김오렌지','','2021-01-06',0),(33,'ㄷㄹㄷㄹㄷㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ','김오렌지','','2021-01-06',0),(34,'ㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂㅂ','김오렌지','','2021-01-06',0),(35,'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ','김오렌지','','2021-01-06',0),(36,'ㅠㅠㅠㅠㅠㅠㅠㅠㅠ','김오렌지','','2021-01-06',0),(37,'ㄹㅀㄹ','김오렌지','','2021-01-06',0),(38,'ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ','김오렌지','','2021-01-06',0),(39,'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ','김오렌지','','2021-01-06',0),(40,'쇼쇼','김오렌지','','2021-01-06',0),(41,'zz','qotndk','','2021-01-06',0),(42,'fedfd','qotndk','','2021-01-06',0),(43,'dddddddddddd','qotndk','','2021-01-06',0),(44,'kkk','qotndk','','2021-01-06',0),(45,'','qotndk','','2021-01-06',0),(46,'dfdf','qotndk','','2021-01-06',0),(47,'zzzzz','qotndk','','2021-01-06',0),(48,'zzzz','qotndk','','2021-01-06',0),(49,'qqqqqqqqqqqqqq','qotndk','','2021-01-06',0),(50,'ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ','qotndk','','2021-01-06',0),(51,'ㄹㄷㄹㄷㄹ','qotndk','','2021-01-06',0),(52,'ㅂㅂㅂㅂ','qotndk','','2021-01-06',0),(53,'ㄷㄷㄷㄷㄷ','qotndk','','2021-01-06',0),(54,'dsfds','김오렌지','','2021-01-06',0),(55,'dsd','김오렌지','','2021-01-06',0),(56,'sds','김오렌지','','2021-01-06',0),(57,'wdw','김오렌지','','2021-01-06',0),(58,'ddd','김오렌지','','2021-01-06',0),(59,'bbbb','김오렌지','','2021-01-06',0),(60,'ㄹㄷㄹㄷㄹㄷㄹ','김그린','','2021-01-06',0),(61,'ㅇㄹㄷㅈㄷ','김그린','','2021-01-06',0),(62,'ㅇㄹㅇㄼㅂㅂㅂㅂㅂㅂㅂㅂㅂ','김그린','','2021-01-06',0),(63,'ㄷㄹㄷㄹ','김그린','','2021-01-06',0),(64,'ㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏㅏ','김그린','','2021-01-06',0),(65,'ㅓㅓ','김그린','','2021-01-06',0),(66,'ㄹㄹㄹㄹ','김그린','','2021-01-06',0),(67,'쇼ㅛ쇼쇼','김그린','','2021-01-06',0),(68,'ㅏㅏㅏㅏㅏ','김그린','','2021-01-06',0),(69,'ㅀㅀㅀ','김그린','','2021-01-06',0),(70,'ㅀㅀㅀ','김그린','','2021-01-06',0),(71,'ㅋㅋㅋㅋㅋ','김그린','','2021-01-06',0),(72,'ㅀㄹㅋㅋㅋㅋㅋ','김그린','','2021-01-06',0),(73,'ㅇㄹㅇㄹ','김그린','','2021-01-06',0),(74,'ㅎㅎㅎㅎㅎ','김그린','','2021-01-06',0),(75,'ㅌㅌㅌㅌㅌ','김그린','','2021-01-06',0),(76,'ㅎㅎㅎㅎㅎ허허ㅓㅓㅓ','김그린','','2021-01-06',0),(77,'ㅇㄹㅇㄹ','김그린','','2021-01-06',0),(78,'ㅀㄹ','김그린','','2021-01-06',0),(79,'ㅇㄹㄴㅇㄴㄹ','김그린','','2021-01-06',0),(80,'ㅂㅂㅂㅈㅈㅈㅂ','김그린','','2021-01-06',0),(81,'ㅎㅎㅎㅎㅎㄱㄱㅎ','김그린','','2021-01-06',0),(82,'ㅋㅁㅋㅁㅋㅁ','김그린','','2021-01-06',0),(83,'ㄴㅇㄴㅇㄴ','김그린','','2021-01-06',0),(84,'ㅏㅓㅏㅓㅏㅓㅏ','김그린','','2021-01-06',0),(85,'ㅓㅏㅓㅏㅓㅏㅓㅏ','김그린','','2021-01-06',0),(86,'wwwwwwwww','김그린','','2021-01-06',0),(87,'jhkhj','김그린','','2021-01-06',0),(88,'kkkkkkkkkkkk','김그린','','2021-01-06',0),(89,'ererere','김그린','','2021-01-06',0),(90,'jkjkjtyewrewr','김그린','','2021-01-06',0),(91,'rrrrrrrrrrrrrrrrrr','김그린','','2021-01-06',0),(92,'eeee','김그린','','2021-01-06',0),(93,'yjyj','','','2021-01-06',0),(94,'uky','','','2021-01-06',0),(95,'uky','','','2021-01-06',0),(96,'kkkkkkkkkkkk','','','2021-01-06',0),(97,'reg','','','2021-01-06',0),(98,'김바나나','바나나','','2021-01-06',0),(99,'ㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹㄹ','바나나','<p>ㄹㄹㄹ</p>\r\n','2021-01-06',0),(100,'gfgf','바나나','','2021-01-06',0),(101,'kkkkykuy','바나나','','2021-01-06',0),(102,'jhjhj','바나나','','2021-01-06',0),(103,'ukkuy','바나나','','2021-01-06',0),(104,'jjjj','바나나','','2021-01-06',0),(105,'effef','바나나','','2021-01-06',0),(106,'rgdrg','바나나','','2021-01-06',0),(107,'fdgggd','바나나','','2021-01-06',0),(108,'gggggg','바나나','','2021-01-06',0),(109,'sf','박포도','','2021-01-06',0),(110,'zzzzzzzzzzzz','qotndk','','2021-01-06',0);
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `member_num` int NOT NULL AUTO_INCREMENT,
  `member_name` varchar(10) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `member_passwd` varchar(20) NOT NULL,
  `member_regdate` date DEFAULT NULL,
  PRIMARY KEY (`member_num`,`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'관리자','admin','admin','2021-01-05'),(2,'사과','apple','apple','2021-01-05'),(3,'바나나','banana','banana','2021-01-05'),(4,'김오렌지','orange','orange','2021-01-05'),(5,'qotndk','qotndk','qotndk','2021-01-05'),(6,'박포도','grape','grape','2021-01-06'),(7,'가가가','gagaga','gagaga','2021-01-06'),(8,'김그린','greenart','greenart','2021-01-06');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 10:40:18
