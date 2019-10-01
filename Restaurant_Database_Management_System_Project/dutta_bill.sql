CREATE DATABASE  IF NOT EXISTS `dutta` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dutta`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dutta
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill` (
  `Bill_No` int(11) NOT NULL AUTO_INCREMENT,
  `Order_Detail` varchar(45) NOT NULL,
  `Price` float NOT NULL,
  `Discount` float NOT NULL,
  `Cashier_Cashier_Id` int(11) NOT NULL,
  `Customer_Customer_Id` int(11) NOT NULL,
  `bill_Date` datetime NOT NULL,
  PRIMARY KEY (`Bill_No`),
  KEY `fk_Bill_Cashier1_idx` (`Cashier_Cashier_Id`),
  KEY `fk_Bill_Customer1_idx` (`Customer_Customer_Id`),
  CONSTRAINT `fk_Bill_Cashier1` FOREIGN KEY (`Cashier_Cashier_Id`) REFERENCES `cashier` (`Cashier_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bill_Customer1` FOREIGN KEY (`Customer_Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=711 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES (701,'Chocolate Cake',54.95,4.19,301,501,'2017-05-28 05:03:18'),(702,'Sushi',27.34,9.13,302,502,'2017-11-18 20:50:41'),(703,'Buttered popcorn',30.85,9.67,303,503,'2017-07-01 08:06:08'),(704,'Peking duck',19.5,3.75,304,504,'2017-06-17 22:26:06'),(705,'Hamburger',22.81,3,305,505,'2017-05-16 17:03:20'),(706,'Lasagna',21.45,7.57,301,506,'2017-05-27 20:09:28'),(707,'Butter garlic crab',17.34,5.87,302,507,'2017-08-07 13:06:36'),(708,'Fajitas',15.09,8.67,303,508,'2017-03-29 00:28:53'),(709,'Fish n chips',20.99,8.88,304,509,'2017-06-02 06:21:35'),(710,'Hummus',56.44,4.68,305,510,'2017-06-17 15:22:34');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-14  6:24:05
