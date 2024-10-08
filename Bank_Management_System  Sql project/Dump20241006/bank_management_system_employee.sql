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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Emp_id` int NOT NULL,
  `Emp_name` varchar(40) DEFAULT NULL,
  `Job_desc` varchar(40) DEFAULT NULL,
  `salary` int NOT NULL,
  `Branch_id` int DEFAULT NULL,
  `Bank_id` int DEFAULT NULL,
  PRIMARY KEY (`Emp_id`),
  UNIQUE KEY `Emp_id` (`Emp_id`),
  KEY `Branch_id` (`Branch_id`),
  KEY `Bank_id` (`Bank_id`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Branch_id`) REFERENCES `branch` (`Branch_id`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Bank_id`) REFERENCES `bank` (`Bank_id`),
  CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`Bank_id`) REFERENCES `bank` (`Bank_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1111,'Rajesh','Manager',26000,103,3),(1112,'Akilan','Cashier',24000,102,2),(1113,'John','Accountant',25000,106,3),(1114,'Rajesh','Loan officer',21000,102,2),(1115,'Gopi','Manager',35000,105,5),(1116,'Kalai','HR',19000,107,4),(1117,'John','HR',23000,104,7),(1118,'Arjun','Cashier',25000,109,1),(1119,'Ram','Accountant',24000,104,9),(1120,'Ranjith','Accountant',25000,102,10);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-06  2:54:24
