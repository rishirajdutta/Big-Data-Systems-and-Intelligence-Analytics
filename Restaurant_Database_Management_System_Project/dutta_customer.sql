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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customer_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_FName` varchar(45) NOT NULL,
  `Customer_LName` varchar(45) NOT NULL,
  `Customer_Contact` varchar(45) NOT NULL,
  `Customer_Address` varchar(45) NOT NULL,
  `Customer_City` varchar(45) NOT NULL,
  `Customer_Zip` int(11) NOT NULL,
  `Waiter_Waiter_Id` int(11) NOT NULL,
  `Email_Id` varchar(50) NOT NULL,
  PRIMARY KEY (`Customer_Id`),
  KEY `fk_Customer_Waiter1_idx` (`Waiter_Waiter_Id`),
  CONSTRAINT `fk_Customer_Waiter1` FOREIGN KEY (`Waiter_Waiter_Id`) REFERENCES `waiter` (`Waiter_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (501,'Faber','Cabrera','9791341544','33 Almo Park','Boston',2132,401,'fcabrera0@tinyurl.com'),(502,'Karel','Comettoi','8672467103','3738 Riverside Trail','Los Angeles',90001,401,'kcomettoi1@nifty.com'),(503,'Elfreda','Gothard','7192125783','040 Anderson Place','San Francisco',94104,402,'egothard2@businesswire.com'),(504,'Hyacinth','Ludman','6409993268','9 Division Terrace','Boston',2901,402,'hludman3@msu.edu'),(505,'Kara-lynn','Metzig','7849881962','0074 Oxford Place','Ohio',43001,403,'kmetzig4@usnews.com'),(506,'Ollie','Sutton','6083310822','4065 Harper Drive','Los Angeles',90002,403,'osutton5@bluehost.com'),(507,'Debby','Endon','6911546790','55837 Sunnyside Pass','San Francisco',94189,404,'dendon6@fda.gov'),(508,'Staci','Fosh','4877993017','0 Kennedy Terrace','Boston',2120,404,'sfosh7@cdc.gov'),(509,'Sheila-kathryn','Simmgen','8196693662','1700 Cordelia Plaza','Los Angeles',90014,405,'ssimmgen8@comsenz.com'),(510,'Leanora','Andersson','9414588246','30880 Autumn Leaf Drive','Boston',2110,405,'landersson9@ehow.com');
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

-- Dump completed on 2017-12-14  6:24:04
