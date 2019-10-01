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
-- Table structure for table `chef`
--

DROP TABLE IF EXISTS `chef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chef` (
  `Chef_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Chef_FName` varchar(45) NOT NULL,
  `Chef_LName` varchar(45) NOT NULL,
  `Chef_Category` varchar(45) NOT NULL,
  `Manager_Manager_Id` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Age` date NOT NULL,
  PRIMARY KEY (`Chef_Id`),
  KEY `fk_Chef_Manager1_idx` (`Manager_Manager_Id`),
  CONSTRAINT `fk_Chef_Manager1` FOREIGN KEY (`Manager_Manager_Id`) REFERENCES `manager` (`Manager_Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chef`
--

LOCK TABLES `chef` WRITE;
/*!40000 ALTER TABLE `chef` DISABLE KEYS */;
INSERT INTO `chef` VALUES (201,'Ciel','Housiaux','Italian',101,'Female','1975-02-04'),(202,'Ruperta','Boots','Chinese',101,'Female','1980-11-21'),(203,'Collen','Sabbin','Italian',102,'Female','1985-12-03'),(204,'Genevra','Earlam','Chinese',102,'Female','1990-09-07'),(205,'Isabelita','Bromont','Indian',103,'Female','1991-03-13'),(206,'Vonny','Ropcke','Indian',104,'Female','1989-03-15'),(207,'Davie','Calcraft','Greek',103,'Male','1980-09-25'),(208,'Phillipp','Cluse','Greek',104,'Male','1994-01-12'),(209,'Antonino','Skillicorn','American',105,'Male','1995-01-03'),(210,'Essy','O\'Crigane','American',105,'Female','1981-05-29');
/*!40000 ALTER TABLE `chef` ENABLE KEYS */;
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
