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
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `Loan_id` int NOT NULL,
  `Loan_status` varchar(40) DEFAULT NULL,
  `Amount` int NOT NULL,
  `Cust_id` int DEFAULT NULL,
  `Account_id` int DEFAULT NULL,
  PRIMARY KEY (`Loan_id`),
  UNIQUE KEY `Loan_id` (`Loan_id`),
  KEY `Cust_id` (`Cust_id`),
  KEY `Account_id` (`Account_id`),
  CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`Cust_id`) REFERENCES `customer` (`Cust_id`),
  CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`Account_id`) REFERENCES `account` (`Account_id`),
  CONSTRAINT `loan_ibfk_3` FOREIGN KEY (`Account_id`) REFERENCES `account` (`Account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (4210,'Approved',200000,1009,100007),(4211,'Rejected',150000,1005,100008),(4212,'Approved',200000,1002,100009),(4213,'Approved',300000,1005,100006),(4214,'Approved',100000,1004,100010),(4215,'Approved',400000,1003,100002),(4216,'Rejected',100000,1003,NULL),(4217,'Approved',200000,1004,100003),(4218,'Rejected',300000,1002,100004),(4219,'Rejected',200000,1006,100001);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-06  2:54:23
