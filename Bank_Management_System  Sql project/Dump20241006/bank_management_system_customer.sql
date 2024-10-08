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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Cust_id` int NOT NULL,
  `Cust_name` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `phno` int NOT NULL,
  `Branch_id` int DEFAULT NULL,
  PRIMARY KEY (`Cust_id`),
  UNIQUE KEY `Cust_id` (`Cust_id`),
  KEY `Branch_id` (`Branch_id`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Branch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1001,'Akilan','Rajwada','Male','2004-04-23',943197390,103),(1002,'Jeyamurugan','Kovil Street','Male','2003-03-21',763925932,102),(1003,'Arun','VGPselva nagar','Male','2005-08-29',975155323,105),(1004,'Kalai','Vijya Street','Female','2003-05-07',763925934,106),(1005,'Kala','vijyanagar','Female','2002-01-28',884231768,105),(1006,'Rajinth','Godha Street','Male','2004-12-05',967543218,103),(1007,'Rajesh','Baker Street','Male','2002-04-04',763452718,106),(1008,'Deepika','putin hall','Female','2003-05-16',657483921,102),(1009,'Anjali','Geeta Street','Female','2004-02-18',756432981,108),(1010,'John','Rajawada Street','Male','2003-05-20',986549328,108),(1011,'David','123 Main road','Male','2004-04-29',987654329,NULL),(1012,'john','Vijya stree','Male','2024-04-13',984319734,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
