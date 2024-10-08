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
-- Temporary view structure for view `cu_acc`
--

DROP TABLE IF EXISTS `cu_acc`;
/*!50001 DROP VIEW IF EXISTS `cu_acc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `cu_acc` AS SELECT 
 1 AS `Cust_id`,
 1 AS `Cust_name`,
 1 AS `Account_no`,
 1 AS `Balance`,
 1 AS `Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bb`
--

DROP TABLE IF EXISTS `bb`;
/*!50001 DROP VIEW IF EXISTS `bb`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bb` AS SELECT 
 1 AS `Bank_id`,
 1 AS `bank_name`,
 1 AS `Branch_name`,
 1 AS `Address`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `em_br1`
--

DROP TABLE IF EXISTS `em_br1`;
/*!50001 DROP VIEW IF EXISTS `em_br1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `em_br1` AS SELECT 
 1 AS `Emp_id`,
 1 AS `Emp_name`,
 1 AS `Job_desc`,
 1 AS `Branch_name`,
 1 AS `Address`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `bbe`
--

DROP TABLE IF EXISTS `bbe`;
/*!50001 DROP VIEW IF EXISTS `bbe`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `bbe` AS SELECT 
 1 AS `Bank_id`,
 1 AS `Bank_name`,
 1 AS `Branch_name`,
 1 AS `Emp_name`,
 1 AS `Job_desc`,
 1 AS `salary`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `lc`
--

DROP TABLE IF EXISTS `lc`;
/*!50001 DROP VIEW IF EXISTS `lc`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `lc` AS SELECT 
 1 AS `Loan_id`,
 1 AS `Cust_name`,
 1 AS `Amount`,
 1 AS `Loan_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `cu_acc`
--

/*!50001 DROP VIEW IF EXISTS `cu_acc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `cu_acc` AS select `c`.`Cust_id` AS `Cust_id`,`c`.`Cust_name` AS `Cust_name`,`a`.`Account_no` AS `Account_no`,`a`.`Balance` AS `Balance`,`c`.`Address` AS `Address` from (`customer` `c` join `account` `a` on((`c`.`Cust_id` = `a`.`Cust_id`))) order by `c`.`Cust_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bb`
--

/*!50001 DROP VIEW IF EXISTS `bb`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bb` AS select `ba`.`Bank_id` AS `Bank_id`,`ba`.`Bank_name` AS `bank_name`,`br`.`Branch_name` AS `Branch_name`,`br`.`Address` AS `Address` from (`branch` `br` left join `bank` `ba` on((`ba`.`Bank_id` = `br`.`Bank_id`))) order by `ba`.`Bank_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `em_br1`
--

/*!50001 DROP VIEW IF EXISTS `em_br1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `em_br1` AS select `e`.`Emp_id` AS `Emp_id`,`e`.`Emp_name` AS `Emp_name`,`e`.`Job_desc` AS `Job_desc`,`b`.`Branch_name` AS `Branch_name`,`b`.`Address` AS `Address`,`e`.`salary` AS `salary` from (`employee` `e` join `branch` `b` on((`e`.`Branch_id` = `b`.`Branch_id`))) order by `e`.`Emp_id`,`e`.`salary` limit 5 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `bbe`
--

/*!50001 DROP VIEW IF EXISTS `bbe`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bbe` AS select `b5`.`Bank_id` AS `Bank_id`,`b5`.`Bank_name` AS `Bank_name`,`br`.`Branch_name` AS `Branch_name`,`e1`.`Emp_name` AS `Emp_name`,`e1`.`Job_desc` AS `Job_desc`,`e1`.`salary` AS `salary` from ((`bank` `b5` join `branch` `br` on((`b5`.`Bank_id` = `br`.`Bank_id`))) join `employee` `e1` on((`e1`.`Bank_id` = `br`.`Bank_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `lc`
--

/*!50001 DROP VIEW IF EXISTS `lc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `lc` AS select `l`.`Loan_id` AS `Loan_id`,`c2`.`Cust_name` AS `Cust_name`,`l`.`Amount` AS `Amount`,`l`.`Loan_status` AS `Loan_status` from (`loan` `l` join `customer` `c2` on((`l`.`Cust_id` = `c2`.`Cust_id`))) order by `l`.`Loan_status` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-06  2:54:26
