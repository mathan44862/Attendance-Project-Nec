-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: attendance
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `email` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('ashok@gmail.com','123456');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_request`
--

DROP TABLE IF EXISTS `leave_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `leave_request` (
  `id` varchar(30) DEFAULT NULL,
  `staff_dept` varchar(10) DEFAULT NULL,
  `date` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `reason` varchar(30) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_request`
--

LOCK TABLES `leave_request` WRITE;
/*!40000 ALTER TABLE `leave_request` DISABLE KEYS */;
INSERT INTO `leave_request` VALUES ('21it027','IT',12,9,2023,'emergency_leave','staff'),('hodit01','IT',14,8,2023,'vacation_leave','hod');
/*!40000 ALTER TABLE `leave_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_mail_id` varchar(30) DEFAULT NULL,
  `staff_password` varchar(30) DEFAULT NULL,
  `staff_id` varchar(7) DEFAULT NULL,
  `staff_name` varchar(30) DEFAULT NULL,
  `staff_dept` varchar(30) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES ('hod@gmail.com','123456','hodit01','HOD','IT','hod'),('secretory@gmail.com','123456','nec001','Secretory','NEC','secretory'),('director@gmail.com','123456','nec002','Director','NEC','director'),('officestaff@gmail.com','123456','nec01os','Officestaff','NEC','nonteach'),('ceo@gmail.com','123456','necceo1','CEO','NEC','ceo'),('ao@gmail.com','123456','necao1','AO','NEC','ao'),('labincharge@gmail.com','123456','nonit01','LabIncharge','IT','labteach'),('principal@gmail.com','123456','21pr001','Principal','NEC','principal'),('coe@gmail.com','123456','21coe01','COE','NEC','coe');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_21coe01_leave`
--

DROP TABLE IF EXISTS `staff_21coe01_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_21coe01_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_21coe01_leave`
--

LOCK TABLES `staff_21coe01_leave` WRITE;
/*!40000 ALTER TABLE `staff_21coe01_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_21coe01_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_21coe01_leave_year`
--

DROP TABLE IF EXISTS `staff_21coe01_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_21coe01_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_21coe01_leave_year`
--

LOCK TABLES `staff_21coe01_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_21coe01_leave_year` DISABLE KEYS */;
INSERT INTO `staff_21coe01_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_21coe01_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_21pr001_leave`
--

DROP TABLE IF EXISTS `staff_21pr001_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_21pr001_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_21pr001_leave`
--

LOCK TABLES `staff_21pr001_leave` WRITE;
/*!40000 ALTER TABLE `staff_21pr001_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_21pr001_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_21pr001_leave_year`
--

DROP TABLE IF EXISTS `staff_21pr001_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_21pr001_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_21pr001_leave_year`
--

LOCK TABLES `staff_21pr001_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_21pr001_leave_year` DISABLE KEYS */;
INSERT INTO `staff_21pr001_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_21pr001_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_hodit01_leave`
--

DROP TABLE IF EXISTS `staff_hodit01_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_hodit01_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `reason` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_hodit01_leave`
--

LOCK TABLES `staff_hodit01_leave` WRITE;
/*!40000 ALTER TABLE `staff_hodit01_leave` DISABLE KEYS */;
INSERT INTO `staff_hodit01_leave` VALUES (29,8,2023,2),(13,9,2023,2),(31,8,2023,3);
/*!40000 ALTER TABLE `staff_hodit01_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_hodit01_leave_year`
--

DROP TABLE IF EXISTS `staff_hodit01_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_hodit01_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_hodit01_leave_year`
--

LOCK TABLES `staff_hodit01_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_hodit01_leave_year` DISABLE KEYS */;
INSERT INTO `staff_hodit01_leave_year` VALUES (2023,0,2,1);
/*!40000 ALTER TABLE `staff_hodit01_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_info`
--

DROP TABLE IF EXISTS `staff_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_info` (
  `staff_id` varchar(7) DEFAULT NULL,
  `joining_year` int DEFAULT NULL,
  `joining_month` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_info`
--

LOCK TABLES `staff_info` WRITE;
/*!40000 ALTER TABLE `staff_info` DISABLE KEYS */;
INSERT INTO `staff_info` VALUES ('21it031',2016,12),('21it028',2023,7),('21it027',2023,8),('hodit01',2023,8),('nec001',2023,8),('nec002',2023,8),('nec01os',2023,8),('necceo1',2023,8),('necao1',2023,8),('nonit01',2023,8),('21pr001',2023,8),('21coe01',2023,8);
/*!40000 ALTER TABLE `staff_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_leave`
--

DROP TABLE IF EXISTS `staff_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_leave` (
  `staff_name` varchar(30) DEFAULT NULL,
  `staff_dept` varchar(10) DEFAULT NULL,
  `staff_id` varchar(7) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  `year` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `date` int DEFAULT NULL,
  `reason` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_leave`
--

LOCK TABLES `staff_leave` WRITE;
/*!40000 ALTER TABLE `staff_leave` DISABLE KEYS */;
INSERT INTO `staff_leave` VALUES ('Logesh T','IT','21it028','staff',8,8,2023,'vacation_leave');
/*!40000 ALTER TABLE `staff_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nec001_leave`
--

DROP TABLE IF EXISTS `staff_nec001_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nec001_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nec001_leave`
--

LOCK TABLES `staff_nec001_leave` WRITE;
/*!40000 ALTER TABLE `staff_nec001_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_nec001_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nec001_leave_year`
--

DROP TABLE IF EXISTS `staff_nec001_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nec001_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nec001_leave_year`
--

LOCK TABLES `staff_nec001_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_nec001_leave_year` DISABLE KEYS */;
INSERT INTO `staff_nec001_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_nec001_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nec002_leave`
--

DROP TABLE IF EXISTS `staff_nec002_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nec002_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nec002_leave`
--

LOCK TABLES `staff_nec002_leave` WRITE;
/*!40000 ALTER TABLE `staff_nec002_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_nec002_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nec002_leave_year`
--

DROP TABLE IF EXISTS `staff_nec002_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nec002_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nec002_leave_year`
--

LOCK TABLES `staff_nec002_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_nec002_leave_year` DISABLE KEYS */;
INSERT INTO `staff_nec002_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_nec002_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nec01os_leave`
--

DROP TABLE IF EXISTS `staff_nec01os_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nec01os_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nec01os_leave`
--

LOCK TABLES `staff_nec01os_leave` WRITE;
/*!40000 ALTER TABLE `staff_nec01os_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_nec01os_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nec01os_leave_year`
--

DROP TABLE IF EXISTS `staff_nec01os_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nec01os_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nec01os_leave_year`
--

LOCK TABLES `staff_nec01os_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_nec01os_leave_year` DISABLE KEYS */;
INSERT INTO `staff_nec01os_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_nec01os_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_necao1_leave`
--

DROP TABLE IF EXISTS `staff_necao1_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_necao1_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_necao1_leave`
--

LOCK TABLES `staff_necao1_leave` WRITE;
/*!40000 ALTER TABLE `staff_necao1_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_necao1_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_necao1_leave_year`
--

DROP TABLE IF EXISTS `staff_necao1_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_necao1_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_necao1_leave_year`
--

LOCK TABLES `staff_necao1_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_necao1_leave_year` DISABLE KEYS */;
INSERT INTO `staff_necao1_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_necao1_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_necceo1_leave`
--

DROP TABLE IF EXISTS `staff_necceo1_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_necceo1_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_necceo1_leave`
--

LOCK TABLES `staff_necceo1_leave` WRITE;
/*!40000 ALTER TABLE `staff_necceo1_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_necceo1_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_necceo1_leave_year`
--

DROP TABLE IF EXISTS `staff_necceo1_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_necceo1_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_necceo1_leave_year`
--

LOCK TABLES `staff_necceo1_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_necceo1_leave_year` DISABLE KEYS */;
INSERT INTO `staff_necceo1_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_necceo1_leave_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nonit01_leave`
--

DROP TABLE IF EXISTS `staff_nonit01_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nonit01_leave` (
  `day` int DEFAULT NULL,
  `month` int DEFAULT NULL,
  `year` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nonit01_leave`
--

LOCK TABLES `staff_nonit01_leave` WRITE;
/*!40000 ALTER TABLE `staff_nonit01_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `staff_nonit01_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_nonit01_leave_year`
--

DROP TABLE IF EXISTS `staff_nonit01_leave_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_nonit01_leave_year` (
  `year` int DEFAULT NULL,
  `vacation_leave` int DEFAULT NULL,
  `monthly_leave` int DEFAULT NULL,
  `emergency_leave` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_nonit01_leave_year`
--

LOCK TABLES `staff_nonit01_leave_year` WRITE;
/*!40000 ALTER TABLE `staff_nonit01_leave_year` DISABLE KEYS */;
INSERT INTO `staff_nonit01_leave_year` VALUES (2023,0,0,0);
/*!40000 ALTER TABLE `staff_nonit01_leave_year` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30  8:57:45
