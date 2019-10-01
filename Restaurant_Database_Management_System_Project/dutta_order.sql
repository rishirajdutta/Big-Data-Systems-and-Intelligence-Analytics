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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `Order_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Customer_Id` int(11) NOT NULL,
  `Waiter_Waiter_Id` int(11) NOT NULL,
  `Chef_Chef_Id` int(11) NOT NULL,
  `Manager_Manager_Id` int(11) NOT NULL,
  `Bill_No` int(11) NOT NULL,
  `order_date` datetime NOT NULL,
  PRIMARY KEY (`Order_Id`),
  KEY `fk_Order_Customer1_idx` (`Customer_Customer_Id`),
  KEY `fk_Order_Waiter1_idx` (`Waiter_Waiter_Id`),
  KEY `fk_Order_Chef1_idx` (`Chef_Chef_Id`),
  KEY `fk_Order_Manager1_idx` (`Manager_Manager_Id`),
  KEY `fk_Order_Bill1_idx` (`Bill_No`),
  CONSTRAINT `fk_Order_Bill1` FOREIGN KEY (`Bill_No`) REFERENCES `bill` (`Bill_No`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Chef1` FOREIGN KEY (`Chef_Chef_Id`) REFERENCES `chef` (`Chef_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Customer1` FOREIGN KEY (`Customer_Customer_Id`) REFERENCES `customer` (`Customer_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Manager1` FOREIGN KEY (`Manager_Manager_Id`) REFERENCES `manager` (`Manager_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Waiter1` FOREIGN KEY (`Waiter_Waiter_Id`) REFERENCES `waiter` (`Waiter_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=811 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (801,501,401,201,101,701,'2017-08-12 11:08:34'),(802,502,402,202,102,702,'2017-10-23 13:50:56'),(803,503,403,203,103,703,'2017-07-20 16:28:54'),(804,504,404,204,104,704,'2017-10-09 15:14:29'),(805,505,405,205,105,705,'2017-11-27 01:14:12'),(806,506,401,206,101,706,'2017-10-06 23:32:37'),(807,507,402,207,102,707,'2017-01-10 12:15:12'),(808,508,403,208,103,708,'2017-01-23 13:22:46'),(809,509,404,209,104,709,'2017-11-18 09:30:17'),(810,510,405,210,105,710,'2017-10-17 17:35:05');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
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
