-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: studentid
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `acomment`
--

DROP TABLE IF EXISTS `acomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acomment` (
  `aId` int NOT NULL,
  `cmtId` int NOT NULL,
  KEY `aId` (`aId`),
  KEY `cmtId` (`cmtId`),
  CONSTRAINT `acomment_ibfk_1` FOREIGN KEY (`aId`) REFERENCES `answers` (`aId`),
  CONSTRAINT `acomment_ibfk_2` FOREIGN KEY (`cmtId`) REFERENCES `comments` (`cmtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acomment`
--

LOCK TABLES `acomment` WRITE;
/*!40000 ALTER TABLE `acomment` DISABLE KEYS */;
INSERT INTO `acomment` VALUES (1,2);
/*!40000 ALTER TABLE `acomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `aId` int NOT NULL AUTO_INCREMENT,
  `answer` varchar(255) NOT NULL,
  `snumber` int NOT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`aId`),
  KEY `snumber` (`snumber`),
  CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`snumber`) REFERENCES `sinfoafter` (`snumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES ('2020-05-12 10:47:00',1,'Test ans q1',899123,1);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `cmtId` int NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) NOT NULL,
  `snumber` int NOT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`cmtId`),
  KEY `snumber` (`snumber`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`snumber`) REFERENCES `sinfoafter` (`snumber`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES ('2020-05-12 10:38:46',1,'Test cmt q1',899123,1),('2020-05-12 10:47:56',2,'Test cmt a1',899123,0);
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qanswer`
--

DROP TABLE IF EXISTS `qanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qanswer` (
  `qId` int NOT NULL,
  `aId` int NOT NULL,
  KEY `qId` (`qId`),
  KEY `aId` (`aId`),
  CONSTRAINT `qanswer_ibfk_1` FOREIGN KEY (`qId`) REFERENCES `questions` (`qId`),
  CONSTRAINT `qanswer_ibfk_2` FOREIGN KEY (`aId`) REFERENCES `answers` (`aId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qanswer`
--

LOCK TABLES `qanswer` WRITE;
/*!40000 ALTER TABLE `qanswer` DISABLE KEYS */;
INSERT INTO `qanswer` VALUES (1,1);
/*!40000 ALTER TABLE `qanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qcomment`
--

DROP TABLE IF EXISTS `qcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qcomment` (
  `qId` int NOT NULL,
  `cmtId` int NOT NULL,
  KEY `qId` (`qId`),
  KEY `cmtId` (`cmtId`),
  CONSTRAINT `qcomment_ibfk_1` FOREIGN KEY (`qId`) REFERENCES `questions` (`qId`),
  CONSTRAINT `qcomment_ibfk_2` FOREIGN KEY (`cmtId`) REFERENCES `comments` (`cmtId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qcomment`
--

LOCK TABLES `qcomment` WRITE;
/*!40000 ALTER TABLE `qcomment` DISABLE KEYS */;
INSERT INTO `qcomment` VALUES (1,1);
/*!40000 ALTER TABLE `qcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `qId` int NOT NULL AUTO_INCREMENT,
  `subId` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `snumber` int NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `vote` int NOT NULL,
  PRIMARY KEY (`qId`),
  KEY `subId` (`subId`),
  KEY `snumber` (`snumber`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subId`) REFERENCES `subjects` (`subId`),
  CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`snumber`) REFERENCES `sinfoafter` (`snumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES ('2020-05-12 09:06:18',1,1,'Test 1',667223,'Lala\nHehe',2);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinfoafter`
--

DROP TABLE IF EXISTS `sinfoafter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinfoafter` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `snumber` int NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `participationRating` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `noOfQns` int DEFAULT NULL,
  `noOfAns` int DEFAULT NULL,
  `noOfCmt` int DEFAULT NULL,
  `noOfVote` int DEFAULT NULL,
  PRIMARY KEY (`snumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinfoafter`
--

LOCK TABLES `sinfoafter` WRITE;
/*!40000 ALTER TABLE `sinfoafter` DISABLE KEYS */;
INSERT INTO `sinfoafter` VALUES ('hehe123','joker123',667223,'Heha Teh','f@f.com','89023325',24,1,5,3,3,12),('haha123','joker555',899123,'Haha Poh','ggwp@hotmail.com','89953451',7,1,1,2,2,2);
/*!40000 ALTER TABLE `sinfoafter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sinfobefore`
--

DROP TABLE IF EXISTS `sinfobefore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sinfobefore` (
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `snumber` int NOT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`snumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sinfobefore`
--

LOCK TABLES `sinfobefore` WRITE;
/*!40000 ALTER TABLE `sinfobefore` DISABLE KEYS */;
INSERT INTO `sinfobefore` VALUES ('exampleUsername1','jPasswordField1',101,'exampleName','exampleEmail','99665585'),('test2','jPasswordField1',102,'ddd','kk2@gmail.com','85696657');
/*!40000 ALTER TABLE `sinfobefore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subId` int NOT NULL AUTO_INCREMENT,
  `subName` varchar(50) NOT NULL,
  PRIMARY KEY (`subId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'Mathematics'),(2,'Science');
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-13 15:24:53
