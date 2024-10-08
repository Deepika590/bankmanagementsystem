-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: bank_management_system
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Account_id` int NOT NULL,
  `Account_no` int DEFAULT NULL,
  `Account_type` varchar(40) DEFAULT NULL,
  `Balance` int NOT NULL,
  `Account_Status` varchar(40) DEFAULT NULL,
  `Acco_opening_date` date DEFAULT NULL,
  `Cust_id` int DEFAULT NULL,
  PRIMARY KEY (`Account_id`),
  UNIQUE KEY `Account_id` (`Account_id`),
  KEY `Cust_id` (`Cust_id`),
  CONSTRAINT `account_ibfk_1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (100001,4200001,'Saving',1000,'Active','2020-03-21',1001),(100002,4200002,'Saving',5000,'Active','2022-04-04',1002),(100003,4200003,'Saving',2500,'Active','2024-09-24',1003),(100004,4200002,'Saving',3000,'Active','2023-04-21',1004),(100005,4200006,'Saving',8000,'Active','2021-12-12',1003),(100006,4200007,'Saving',2000,'Suspended','2024-03-18',1006),(100007,4200007,'Saving',1000,'Active','2023-05-14',1002),(100008,4200001,'Saving',1200,'Terminated','2024-10-29',1004),(100009,4200003,'Saving',1500,'Terminated','2024-03-29',1005),(100010,4200004,'Saving',6000,'Active','2021-02-28',1008);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-06  2:54:25
