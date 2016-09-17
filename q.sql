create database dpu;
use dpu;
-- MySQL dump 10.13  Distrib 5.5.25, for Win64 (x86)
--
-- Host: localhost    Database: dpu
-- ------------------------------------------------------
-- Server version	5.5.25

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
-- Table structure for table `acipassengermaster`
--

DROP TABLE IF EXISTS `acipassengermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acipassengermaster` (
  `passenger_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `present_state` varchar(45) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `cell_no` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `dob` datetime DEFAULT NULL,
  PRIMARY KEY (`passenger_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acipassengermaster`
--

LOCK TABLES `acipassengermaster` WRITE;
/*!40000 ALTER TABLE `acipassengermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `acipassengermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additionalcontactforshipper`
--

DROP TABLE IF EXISTS `additionalcontactforshipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additionalcontactforshipper` (
  `contactid` int(11) NOT NULL AUTO_INCREMENT,
  `contactname` varchar(40) DEFAULT NULL,
  `position` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  `cellular` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `ext` varchar(40) DEFAULT NULL,
  `prefix` varchar(40) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `shipperid` int(11) DEFAULT NULL,
  PRIMARY KEY (`contactid`),
  KEY `shipperid` (`shipperid`),
  CONSTRAINT `additionalcontactforshipper_ibfk_1` FOREIGN KEY (`shipperid`) REFERENCES `shippermaster` (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additionalcontactforshipper`
--

LOCK TABLES `additionalcontactforshipper` WRITE;
/*!40000 ALTER TABLE `additionalcontactforshipper` DISABLE KEYS */;
INSERT INTO `additionalcontactforshipper` VALUES (1,'jkj','kj','kj','kj','jk','kj','kj','jk',1,13),(2,'hjh','hjgh','76786','8789','7897','hgf','979','798',1,13),(3,'jkg','5765','765','76565','576','jhgbv','765','6',1,13);
/*!40000 ALTER TABLE `additionalcontactforshipper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `additionalcontactmaster`
--

DROP TABLE IF EXISTS `additionalcontactmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `additionalcontactmaster` (
  `add_contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `customer_name` varchar(30) DEFAULT NULL,
  `position` varchar(40) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `ext` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `cellular` varchar(40) DEFAULT NULL,
  `prefix` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`add_contact_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `additionalcontactmaster_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companymaster` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `additionalcontactmaster`
--

LOCK TABLES `additionalcontactmaster` WRITE;
/*!40000 ALTER TABLE `additionalcontactmaster` DISABLE KEYS */;
INSERT INTO `additionalcontactmaster` VALUES (5,30,'JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ',NULL,'JJJJJJJJJJJ',0,'JJJJJJJJJJJ'),(7,31,'JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ','JJJJJJJJJJJ',1,'JJJJJJJJJJJ'),(8,32,'AAAAAAA','AAAAAAAAAA','AAAAAAAAAA','AAAAAAAAAA','AAAAAAAAAA','AAAAAAAAAA','AAAAAAAAAA',1,'AAAAAAAAAA'),(9,33,'TTTTT','TTTTT','TTTTT','TTTTT','TTTTT','TTTTT','TTTTT',1,'TTTTT'),(10,34,'AAAAAAA','AAAAAAA','AAAAAAA','AAAAAAA','AAAAAAA','AAAAAAA','AAAAAAA',1,'AAAAAAA'),(17,38,'MIMIMIMIMIMIM','MIMIMIMIMIMIM','MIMIMIMIMIMIM','MIMIMIMIMIMIM','MIMIMIMIMIMIM','MIMIMIMIMIMIM','MIMIMIMIMIMIM',1,'MIMIMIMIMIMIM'),(18,38,'GHGHGHGHG','GHGHGHGHG','GHGHGHGHG','GHGHGHGHG','GHGHGHGHG','GHGHGHGHG','GHGHGHGHG',1,'GHGHGHGHG'),(19,39,'AAAAA','AAAAA','AAAAA','AAAAA','AAAAA','AAAAA','AAAAA',1,'AAAAA'),(20,39,'BBBB','BBBB','BBBB','BBBB','BBBB','BBBB','BBBB',1,'BBBB'),(21,39,'hhhhhh','hhhhh','hhhhhhhhhhhh','hhhhh','hhhhh','hhhhh','hhhhh',1,'hhhhh'),(22,40,'HHHH','HHHH','(222) 222-2222','HHHH','(222) 222-2222','(444) 444-4444','HHHH',1,'HHHH'),(23,41,'nnnnnn','nnnnnn','(333) 333-3333','nnnnnn','(999) 999-9999','(666) 666-6666','nnnnnn',1,'nnnnnn'),(24,41,'BBBBBBBBBBB','BBBBBBBBBBB','(999) 999-9999','BBBBBBBBBBB','(777) 777-7777','(555) 555-5555','BBBBBBBBBBB',1,'BBBBBBBBBBB'),(25,42,'jjjjjjjjj','jjjjjjjjj','(812) 121-2121','jjjjjjjjj','(212) 121-2121','(212) 121-2121','jjjjjjjjj',1,'jjjjjjjjj'),(26,42,'nnnnnnnn','nnnnnnnn','(675) 675-7656','nnnnnnnn','(765) 765-7657','(765) 765-7657','nnnnnnnn',1,'nnnnnnnn');
/*!40000 ALTER TABLE `additionalcontactmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billinglocationmaster`
--

DROP TABLE IF EXISTS `billinglocationmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billinglocationmaster` (
  `billing_location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `unit_no` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `province_state` varchar(30) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `ar_cdn` varchar(30) DEFAULT NULL,
  `ar_us` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `cellular` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `ext` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `prefix` varchar(30) DEFAULT NULL,
  `tollfree` varchar(30) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`billing_location_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `billinglocationmaster_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `companymaster` (`company_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billinglocationmaster`
--

LOCK TABLES `billinglocationmaster` WRITE;
/*!40000 ALTER TABLE `billinglocationmaster` DISABLE KEYS */;
INSERT INTO `billinglocationmaster` VALUES (15,'KKKKKKa','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO',1,'OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','KKKKK',32);
/*!40000 ALTER TABLE `billinglocationmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `border_agent`
--

DROP TABLE IF EXISTS `border_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `border_agent` (
  `border_agent_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(40) DEFAULT NULL,
  `border_agent` varchar(30) DEFAULT NULL,
  `border_crossing` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `ext` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `open_from` varchar(20) DEFAULT NULL,
  `open_to` varchar(30) DEFAULT NULL,
  `is24Hr` int(11) DEFAULT NULL,
  `comments` varchar(30) DEFAULT NULL,
  `custom_broker_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`border_agent_id`),
  KEY `border_agent_ibfk_1` (`custom_broker_id`),
  CONSTRAINT `border_agent_ibfk_1` FOREIGN KEY (`custom_broker_id`) REFERENCES `custombrokermaster` (`custom_broker_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `border_agent`
--

LOCK TABLES `border_agent` WRITE;
/*!40000 ALTER TABLE `border_agent` DISABLE KEYS */;
INSERT INTO `border_agent` VALUES (1,'sdf','sdf','sdf','sdf','sdf','sdf',1,'sdf','sdf','dfd',1,'sdf',1);
/*!40000 ALTER TABLE `border_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorymaster`
--

DROP TABLE IF EXISTS `categorymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorymaster` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorymaster`
--

LOCK TABLES `categorymaster` WRITE;
/*!40000 ALTER TABLE `categorymaster` DISABLE KEYS */;
INSERT INTO `categorymaster` VALUES (1,'sdfsd'),(2,'Cat');
/*!40000 ALTER TABLE `categorymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classmaster`
--

DROP TABLE IF EXISTS `classmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classmaster` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`class_id`),
  UNIQUE KEY `class_id_UNIQUE` (`class_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classmaster`
--

LOCK TABLES `classmaster` WRITE;
/*!40000 ALTER TABLE `classmaster` DISABLE KEYS */;
INSERT INTO `classmaster` VALUES (1,'CLASSa'),(2,'BB');
/*!40000 ALTER TABLE `classmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companymaster`
--

DROP TABLE IF EXISTS `companymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companymaster` (
  `company_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(155) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `unit_no` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province_state` varchar(50) DEFAULT NULL,
  `zip` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `contact` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `ext` varchar(20) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  `prefix` varchar(30) DEFAULT NULL,
  `tollfree` varchar(30) DEFAULT NULL,
  `cellular` varchar(30) DEFAULT NULL,
  `pager` varchar(30) DEFAULT NULL,
  `customer_notes` varchar(500) DEFAULT NULL,
  `after_hours` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companymaster`
--

LOCK TABLES `companymaster` WRITE;
/*!40000 ALTER TABLE `companymaster` DISABLE KEYS */;
INSERT INTO `companymaster` VALUES (30,'GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','GGGGG','HHHHHHHHHHHHHHHHHHHHHHHHHHHHHH',NULL),(31,'YYYYY','YYYYY','YYYYY','YYYYY','YYYYY','YYYYY','YYYYY','YYYYY','YYYYY','YYYYY','(222) 222-2222','YYYYY','(222) 222-2222','YYYYY','(222) 222-2222','(222) 222-2222','(222) 222-2222',NULL,'(222) 222-2222'),(32,'OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','OOOOO','(222) 222-2222','OOOOO','(222) 222-2222','OOOOO','(222) 222-2222','(222) 222-2222','(222) 222-2222',NULL,'(222) 222-2222'),(33,'JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','JHJHJHHJH','(222) 222-2222','JHJHJHHJH','(222) 222-2222','JHJHJHHJH','(222) 222-2222','(222) 222-2222','(222) 222-2222',NULL,'(222) 222-2222'),(34,'BBBBB','BBBBB','BBBBB','BBBBB','BBBBB','BBBBB','BBBBB','BBBBB','BBBBB','BBBBB','(222) 222-2222','BBBBB','(222) 222-2222','BBBBB','(222) 222-2222','(222) 222-2222','(222) 222-2222',NULL,'(222) 222-2222'),(38,'JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','JUJUJUJUU','(666) 666-6666','JUJUJUJUU','(666) 666-6666','JUJUJUJUU','(666) 666-6666','(666) 666-6666','(666) 666-6666',NULL,'(666) 666-6666'),(39,'','','','','','','','','','','(___) ___-____','','(___) ___-____','','(___) ___-____','(___) ___-____','(___) ___-____',NULL,'(___) ___-____'),(40,'','','','','','','','','','','(___) ___-____','','(___) ___-____','','(___) ___-____','(___) ___-____','(___) ___-____',NULL,'(___) ___-____'),(41,'GGGGGGG','GGGGGGG','GGGGGGG','GGGGGGG','GGGGGGG','GGGGGGG','GGGGGGG','GGGGGGG','GGGGGGG','GGGGGGG','(888) 888-8888','GGGGGGG','(888) 888-8888','GGGGGGG','(888) 888-8888','(888) 888-8888','(888) 888-8888',NULL,'(888) 888-8888'),(42,'Harry','Harry','Harry','Harry','Harry','Harry','Harry','Harry','Harry','Harry','(888) 888-8888','Harry','(777) 777-7777','Harry','(444) 444-4444','(333) 333-3333','(222) 222-2222',NULL,'(666) 666-6666');
/*!40000 ALTER TABLE `companymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `containermaster`
--

DROP TABLE IF EXISTS `containermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `containermaster` (
  `container_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`container_id`),
  KEY `owner_id_idx` (`owner_id`),
  KEY `equipment_id_idx` (`equipment_id`),
  KEY `terminal_id_idx` (`terminal_id`),
  CONSTRAINT `equipment_id_containermaster` FOREIGN KEY (`equipment_id`) REFERENCES `equipmentmaster` (`equipment_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `owner_id_containermaster` FOREIGN KEY (`owner_id`) REFERENCES `companymaster` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `terminal_id_containermaster` FOREIGN KEY (`terminal_id`) REFERENCES `terminalmaster` (`terminal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `containermaster`
--

LOCK TABLES `containermaster` WRITE;
/*!40000 ALTER TABLE `containermaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `containermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countrymaster`
--

DROP TABLE IF EXISTS `countrymaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countrymaster` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countrymaster`
--

LOCK TABLES `countrymaster` WRITE;
/*!40000 ALTER TABLE `countrymaster` DISABLE KEYS */;
INSERT INTO `countrymaster` VALUES (1,'CA');
/*!40000 ALTER TABLE `countrymaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custombrokermaster`
--

DROP TABLE IF EXISTS `custombrokermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custombrokermaster` (
  `custom_broker_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_broker` varchar(30) DEFAULT NULL,
  `contact_name` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `ext` varchar(30) DEFAULT NULL,
  `fax_no` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`custom_broker_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custombrokermaster`
--

LOCK TABLES `custombrokermaster` WRITE;
/*!40000 ALTER TABLE `custombrokermaster` DISABLE KEYS */;
INSERT INTO `custombrokermaster` VALUES (1,'sdf','sdf','sdf','sdfsd','(333) 333-3333',0,'sdfs','sdf'),(7,'JJJJJJJJ','JJJJJJJJ','(345) 345-3535','JJJJJJJJ','(345) 345-3453',1,'JJJJJJJJ','JJJJJJJJ'),(8,'PPPPPPP','PPPPPPP','(111) 111-1111','PPPPPPP','(777) 777-7777',1,'PPPPPPP','PPPPPPP');
/*!40000 ALTER TABLE `custombrokermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `divisionmaster`
--

DROP TABLE IF EXISTS `divisionmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `divisionmaster` (
  `division_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`division_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `divisionmaster`
--

LOCK TABLES `divisionmaster` WRITE;
/*!40000 ALTER TABLE `divisionmaster` DISABLE KEYS */;
INSERT INTO `divisionmaster` VALUES (1,'Toronto'),(2,'Calgary111'),(3,'Alberta'),(4,'Missisauga'),(5,'Ontario'),(6,'Ottawa'),(7,'Regina'),(8,'London'),(9,'Niagara');
/*!40000 ALTER TABLE `divisionmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drivermaster`
--

DROP TABLE IF EXISTS `drivermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drivermaster` (
  `driver_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `def_truck` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `home_phone` varchar(45) DEFAULT NULL,
  `cellular` varchar(45) DEFAULT NULL,
  `pager` varchar(45) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_trip` varchar(45) DEFAULT NULL,
  `last_ETA` date DEFAULT NULL,
  `last_event` varchar(45) DEFAULT NULL,
  `last_location` varchar(45) DEFAULT NULL,
  `last_city` varchar(45) DEFAULT NULL,
  `L/S` varchar(45) DEFAULT NULL,
  `fax_no` varchar(45) DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `zip` varchar(45) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`driver_id`),
  KEY `division_id_idx` (`division_id`),
  KEY `terminal_id_idx` (`terminal_id`),
  KEY `category_id_idx` (`category_id`),
  KEY `class_id_idx` (`class_id`),
  CONSTRAINT `category_id_drivermaster` FOREIGN KEY (`category_id`) REFERENCES `categorymaster` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `class_id_drivermaster` FOREIGN KEY (`class_id`) REFERENCES `classmaster` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `division_id_drivermaster` FOREIGN KEY (`division_id`) REFERENCES `divisionmaster` (`division_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `terminal_id_drivermaster` FOREIGN KEY (`terminal_id`) REFERENCES `terminalmaster` (`terminal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drivermaster`
--

LOCK TABLES `drivermaster` WRITE;
/*!40000 ALTER TABLE `drivermaster` DISABLE KEYS */;
INSERT INTO `drivermaster` VALUES (1,'gf','ee','ee','33','324','234','234',1,'wer','2016-09-09','dfg','df','sdfsdf','sdf','sdf',2,2,2,2,'sdfsd',2),(2,'gf','ee','ee','33','324','234','234',1,'wer','2016-09-09','dfg','df','sdfsdf','sdf','sdf',2,2,2,2,'sdfsd',2),(3,'gf','ee','ee','33','324','234','234',1,'wer','2016-09-09','dfg','df','sdfsdf','sdf','sdf',2,2,2,2,'sdfsd',2),(4,'gf','ee','ee','33','324','234','234',1,'wer','2016-09-09','dfg','df','sdfsdf','sdf','sdf',2,2,2,2,'sdfsd',2),(5,'gf','ee','ee','33','324','234','234',1,'wer','2016-09-09','dfg','df','sdfsdf','sdf','sdf',2,2,2,2,'sdfsd',2);
/*!40000 ALTER TABLE `drivermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmaster`
--

DROP TABLE IF EXISTS `equipmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipmaster` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`equipment_id`),
  UNIQUE KEY `container_id_UNIQUE` (`equipment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmaster`
--

LOCK TABLES `equipmaster` WRITE;
/*!40000 ALTER TABLE `equipmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipmentmaster`
--

DROP TABLE IF EXISTS `equipmentmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipmentmaster` (
  `equipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`equipment_id`),
  UNIQUE KEY `container_id_UNIQUE` (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipmentmaster`
--

LOCK TABLES `equipmentmaster` WRITE;
/*!40000 ALTER TABLE `equipmentmaster` DISABLE KEYS */;
INSERT INTO `equipmentmaster` VALUES (1,'JJJGG');
/*!40000 ALTER TABLE `equipmentmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jurisdictionmaster`
--

DROP TABLE IF EXISTS `jurisdictionmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jurisdictionmaster` (
  `jurisdiction_id` int(11) NOT NULL AUTO_INCREMENT,
  `jurisdiction_name` varchar(30) DEFAULT NULL,
  `jurisdiction_IFA` varchar(30) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `road_tax` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`jurisdiction_id`),
  KEY `country_id` (`country_id`),
  CONSTRAINT `jurisdictionmaster_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countrymaster` (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jurisdictionmaster`
--

LOCK TABLES `jurisdictionmaster` WRITE;
/*!40000 ALTER TABLE `jurisdictionmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `jurisdictionmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `powerunitmaster`
--

DROP TABLE IF EXISTS `powerunitmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `powerunitmaster` (
  `unit_no` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) DEFAULT NULL,
  `truck_class` varchar(45) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `VIN` varchar(45) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `truck_year` int(11) DEFAULT NULL,
  `plate_no` varchar(45) DEFAULT NULL,
  `jurisdiction` varchar(10) DEFAULT NULL,
  `tare_weight` int(11) DEFAULT NULL,
  `rgw` varchar(155) DEFAULT NULL,
  `tracking_id` int(11) DEFAULT NULL,
  `current_odometer` varchar(45) DEFAULT NULL,
  `equipment_type` varchar(45) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`unit_no`),
  KEY `owner_id_idx` (`owner_id`),
  KEY `tracking_id_idx` (`tracking_id`),
  KEY `terminal_id_idx` (`terminal_id`),
  CONSTRAINT `owner_id` FOREIGN KEY (`owner_id`) REFERENCES `companymaster` (`company_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `terminal_id` FOREIGN KEY (`terminal_id`) REFERENCES `terminalmaster` (`terminal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tracking_id` FOREIGN KEY (`tracking_id`) REFERENCES `trackingmaster` (`tracking_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `powerunitmaster`
--

LOCK TABLES `powerunitmaster` WRITE;
/*!40000 ALTER TABLE `powerunitmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `powerunitmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolemaster`
--

DROP TABLE IF EXISTS `rolemaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rolemaster` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolemaster`
--

LOCK TABLES `rolemaster` WRITE;
/*!40000 ALTER TABLE `rolemaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `rolemaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salespersonmaster`
--

DROP TABLE IF EXISTS `salespersonmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salespersonmaster` (
  `person_id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `present_state` varchar(45) DEFAULT NULL,
  `postal_code` varchar(45) DEFAULT NULL,
  `phone_no` varchar(45) DEFAULT NULL,
  `fax_no` varchar(45) DEFAULT NULL,
  `cellular_no` varchar(45) DEFAULT NULL,
  `pager_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salespersonmaster`
--

LOCK TABLES `salespersonmaster` WRITE;
/*!40000 ALTER TABLE `salespersonmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `salespersonmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shippermaster`
--

DROP TABLE IF EXISTS `shippermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shippermaster` (
  `shipper_id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(40) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `unit` varchar(40) DEFAULT NULL,
  `city` varchar(40) DEFAULT NULL,
  `prov_state` varchar(40) DEFAULT NULL,
  `postal_zip` varchar(40) DEFAULT NULL,
  `zone` varchar(40) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `lead_time` varchar(40) DEFAULT NULL,
  `time_zone` varchar(40) DEFAULT NULL,
  `internam_notes` varchar(100) DEFAULT NULL,
  `contact` varchar(40) DEFAULT NULL,
  `position` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `fax` varchar(40) DEFAULT NULL,
  `toll_free` varchar(40) DEFAULT NULL,
  `ext` varchar(40) DEFAULT NULL,
  `prefix` varchar(40) DEFAULT NULL,
  `plant` varchar(40) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `importer` varchar(40) DEFAULT NULL,
  `standard_notes` varchar(100) DEFAULT NULL,
  `date_stamp` varchar(40) DEFAULT NULL,
  `direction` varchar(100) DEFAULT NULL,
  `report` varchar(40) DEFAULT NULL,
  `report_name` varchar(40) DEFAULT NULL,
  `cell_number` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shippermaster`
--

LOCK TABLES `shippermaster` WRITE;
/*!40000 ALTER TABLE `shippermaster` DISABLE KEYS */;
INSERT INTO `shippermaster` VALUES (1,'hj','fghj','fgh','hjg','j','45','gh',0,' gj','Item 2','fghjkl','678','gh','87687','8767','567','jh','6786','fg','dfgh','ghjk','fghjkl',NULL,NULL,NULL,NULL,NULL),(2,'aaaaa','bbbb','234','eeee','ff','5678','jhg',0,'55','AST: Atlantic Standard','dfghjkl','56789','cccc','4567','5678','5678','678','678','67','gfg','fghj','ghjkl','Fri Sep 02 17:25:38 IST 2016','fffffffffffffffffffffffffffff','Item 1','Item 1',NULL),(3,'jj','jj','j','j','j','j','j',0,'j','NFT: Newfoundland','j','j','j','j','j','j','j','j','j','j','j','j','Fri Sep 02 17:31:53 IST 2016','jjjjjj',NULL,NULL,NULL),(4,'k','k','k','k','kk','kk','l',0,'k','NFT: Newfoundland','k','k','k','k','k','8989988','k','k','kk','kk','k','k','Fri Sep 02 17:38:26 IST 2016','kkk',NULL,NULL,NULL),(5,'vv','v','v','v','vv','567','vv',0,'v','NFT: Newfoundland','vvv','vv','v','v','v','vv','v','v','','v','v','vv','Sat Sep 03 14:38:55 IST 2016','jhghjgjhg',NULL,NULL,NULL),(6,'ui','ui','i','yiug','jh','87','jhh',0,'jhhg','NFT: Newfoundland','jhg','ui','ui','87678','786','gh','7','876','g','gfhgf','jhg','jhg','Sat Sep 03 16:14:43 IST 2016','hgfh',NULL,NULL,NULL),(7,'rt','fghjk','dfghj','dfgh','ff','ff','dfghj',0,'45','NFT: Newfoundland','fghj','5678','dfghj','567','j567','567','5678','5678','5678','dfghjk','dfgh','fghj','Sat Sep 03 16:19:39 IST 2016','jjjjjjjjjj',NULL,NULL,NULL),(8,'kjhj','kkh','hkj','hkh','jkhkj','hkj','hkj',0,'hkj','NFT: Newfoundland','jhjk','h','kj','hj','k','hjkh','hkjhkj','hkjh','kjh','hkjhkj','kjh','hk','Sat Sep 03 16:24:50 IST 2016','kjhjkh',NULL,NULL,NULL),(9,'kh','kjhkj','khk','hkj','khk','jj','hkh',0,'kjh','NFT: Newfoundland','kjhkj','kh','hh','hkj','','hkjkh','hkj','hjkh','kh','kjjk','hkj','hkj','Sat Sep 03 16:26:52 IST 2016','sdfsd',NULL,NULL,NULL),(10,'fgh','hkj','hk','hk','kj','hh','h',0,'kjh','NFT: Newfoundland','hkj','fg','kj','k','kh','jkh','','kjh','hkj','hkj','kjh','hkjh','Sat Sep 03 16:28:29 IST 2016','kjhkjh	 ',NULL,NULL,NULL),(11,'hgfj','gjhg','ghj','gjg','hjgjhg','jhgj','jg',0,'gj','NFT: Newfoundland','gjh','hgjh','jgjh','gjhgj','jhg','gjg','gjh','jg','jhg','gjhg','gjh','gjh','Sat Sep 03 16:31:34 IST 2016','ytf  ',NULL,NULL,NULL),(12,'jhgjh','ghhj','ghjg','gjh','jg','jh','hgjg',0,'jh','GMT: Greenwich Mean Time','jhgjhgj','gjh','hj','hjg','gj','ghj','jhgjh','gjhghghjg','gjg','jg','gjh','jjhgjhg','Sat Sep 03 16:35:09 IST 2016','jhghjg 		',NULL,NULL,NULL),(13,'kjh','hkj','hk','kjhkj','kjh','kjh','kjh',0,'kjh','NFT: Newfoundland','kjh','hkj','hkj','jh','hkjh','kjh','kjhkjh','kjh','kj','kjh','kjhk','kj','Tue Sep 06 16:10:10 IST 2016','kjkljkl',NULL,NULL,'hkjh');
/*!40000 ALTER TABLE `shippermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `straighttruckmaster`
--

DROP TABLE IF EXISTS `straighttruckmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `straighttruckmaster` (
  `unit_no` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(45) DEFAULT NULL,
  `VIN` varchar(45) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `plate_no` varchar(45) DEFAULT NULL,
  `jurisdiction` varchar(45) DEFAULT NULL,
  `tare_weight` varchar(45) DEFAULT NULL,
  `rgw` varchar(45) DEFAULT NULL,
  `tracking_id` int(11) DEFAULT NULL,
  `current_odometer` varchar(45) DEFAULT NULL,
  `reading_taken` date DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` date DEFAULT NULL,
  `division` varchar(45) DEFAULT NULL,
  `terminal_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `IFTA_account` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`unit_no`),
  KEY `tracking_id_idx` (`tracking_id`),
  KEY `terminal_id_idx` (`terminal_id`),
  KEY `category_id_idx` (`category_id`),
  CONSTRAINT `category_id_straighttruckmaster` FOREIGN KEY (`category_id`) REFERENCES `categorymaster` (`category_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `terminal_id_straighttruckmaster` FOREIGN KEY (`terminal_id`) REFERENCES `terminalmaster` (`terminal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tracking_id_straighttruckmaster` FOREIGN KEY (`tracking_id`) REFERENCES `trackingmaster` (`tracking_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `straighttruckmaster`
--

LOCK TABLES `straighttruckmaster` WRITE;
/*!40000 ALTER TABLE `straighttruckmaster` DISABLE KEYS */;
INSERT INTO `straighttruckmaster` VALUES (1,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(2,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(3,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(4,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(5,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(6,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(7,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(8,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(9,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(10,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(11,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(12,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(13,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(14,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(15,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg'),(16,'df','sdf','dsf','tyui',2016,'234fdg','CA','435435','rrr',1,'234234','2016-09-09',1,'2017-03-05','SDSD',1,1,'234fdg');
/*!40000 ALTER TABLE `straighttruckmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `terminalmaster`
--

DROP TABLE IF EXISTS `terminalmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `terminalmaster` (
  `terminal_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  UNIQUE KEY `terminal_id_UNIQUE` (`terminal_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `terminalmaster`
--

LOCK TABLES `terminalmaster` WRITE;
/*!40000 ALTER TABLE `terminalmaster` DISABLE KEYS */;
INSERT INTO `terminalmaster` VALUES (1,'AAA'),(2,'sdfsdf');
/*!40000 ALTER TABLE `terminalmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trackingmaster`
--

DROP TABLE IF EXISTS `trackingmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trackingmaster` (
  `tracking_id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_date` datetime DEFAULT NULL,
  PRIMARY KEY (`tracking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trackingmaster`
--

LOCK TABLES `trackingmaster` WRITE;
/*!40000 ALTER TABLE `trackingmaster` DISABLE KEYS */;
INSERT INTO `trackingmaster` VALUES (1,'2016-09-09 00:00:00');
/*!40000 ALTER TABLE `trackingmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trailermaster`
--

DROP TABLE IF EXISTS `trailermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trailermaster` (
  `trailer_id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) DEFAULT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `length` int(11) DEFAULT NULL,
  `VIN` varchar(45) DEFAULT NULL,
  `make` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `plate_no` varchar(45) DEFAULT NULL,
  `jurisdiction` varchar(45) DEFAULT NULL,
  `tare_weight` varchar(45) DEFAULT NULL,
  `rgw` varchar(45) DEFAULT NULL,
  `current_odometer` varchar(45) DEFAULT NULL,
  `reading_taken_date` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  PRIMARY KEY (`trailer_id`),
  KEY `class_id_idx` (`class_id`),
  KEY `equipment_id_idx` (`equipment_id`),
  CONSTRAINT `class_id` FOREIGN KEY (`class_id`) REFERENCES `classmaster` (`class_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `equipment_id` FOREIGN KEY (`equipment_id`) REFERENCES `equipmentmaster` (`equipment_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trailermaster`
--

LOCK TABLES `trailermaster` WRITE;
/*!40000 ALTER TABLE `trailermaster` DISABLE KEYS */;
INSERT INTO `trailermaster` VALUES (1,1,1,345,'sdfsd','gfhfg','sdfsdf',2016,'dfgdfg','3454','3454','345345','sdfsdf','2015-09-09 00:00:00',1,'2016-08-02 15:26:04');
/*!40000 ALTER TABLE `trailermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tripmaster`
--

DROP TABLE IF EXISTS `tripmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tripmaster` (
  `trip_no` int(11) NOT NULL AUTO_INCREMENT,
  `driver_id` int(11) DEFAULT NULL,
  `truck_id` int(11) DEFAULT NULL,
  `trailer_id` int(11) DEFAULT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `next_date` datetime DEFAULT NULL,
  `next_event` varchar(45) DEFAULT NULL,
  `next_location` varchar(45) DEFAULT NULL,
  `next_city` varchar(45) DEFAULT NULL,
  `next_state` varchar(45) DEFAULT NULL,
  `last_location` varchar(45) DEFAULT NULL,
  `last_city` varchar(45) DEFAULT NULL,
  `last_state` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `cellular` varchar(45) DEFAULT NULL,
  `on_time` int(11) DEFAULT NULL,
  `check_call_location` varchar(45) DEFAULT NULL,
  `eta_to_nextstop` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`trip_no`),
  KEY `driver_id_idx` (`driver_id`),
  KEY `truck_id_idx` (`truck_id`),
  KEY `trailer_id_idx` (`trailer_id`),
  CONSTRAINT `driver_id` FOREIGN KEY (`driver_id`) REFERENCES `drivermaster` (`driver_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `trailer_id` FOREIGN KEY (`trailer_id`) REFERENCES `trailermaster` (`trailer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `truck_id` FOREIGN KEY (`truck_id`) REFERENCES `powerunitmaster` (`unit_no`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tripmaster`
--

LOCK TABLES `tripmaster` WRITE;
/*!40000 ALTER TABLE `tripmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `tripmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermaster`
--

DROP TABLE IF EXISTS `usermaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermaster` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermaster`
--

LOCK TABLES `usermaster` WRITE;
/*!40000 ALTER TABLE `usermaster` DISABLE KEYS */;
INSERT INTO `usermaster` VALUES (1,'jaimal','j4f76g','jaimal20.1990@gmail.com');
/*!40000 ALTER TABLE `usermaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_hours_additionalcontact`
--

DROP TABLE IF EXISTS `working_hours_additionalcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `working_hours_additionalcontact` (
  `working_id` int(11) NOT NULL AUTO_INCREMENT,
  `working_day` varchar(30) DEFAULT NULL,
  `open1` varchar(30) DEFAULT NULL,
  `open2` varchar(30) DEFAULT NULL,
  `close1` varchar(30) DEFAULT NULL,
  `close2` varchar(30) DEFAULT NULL,
  `is24Hr` int(11) DEFAULT NULL,
  `additional_contact_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`working_id`),
  KEY `additional_contact_id` (`additional_contact_id`),
  CONSTRAINT `working_hours_additionalcontact_ibfk_1` FOREIGN KEY (`additional_contact_id`) REFERENCES `additionalcontactmaster` (`add_contact_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_hours_additionalcontact`
--

LOCK TABLES `working_hours_additionalcontact` WRITE;
/*!40000 ALTER TABLE `working_hours_additionalcontact` DISABLE KEYS */;
INSERT INTO `working_hours_additionalcontact` VALUES (1,'Sun','11:59','12:01','00:00','12:00',1,17),(2,'Mon','11:59','12:01','00:00','12:00',1,17),(3,'Thur','11:59','12:01','00:00','12:00',1,18),(4,'Fri','11:59','12:01','00:00','12:00',1,18),(5,'Sun','11:59','12:01','00:00','12:00',1,19),(6,'Mon','11:59','12:01','00:00','12:00',1,19),(7,'Tue','11:59','12:01','00:00','12:00',1,19),(8,'Wed','11:59','12:01','00:00','12:00',1,19),(9,'Fri','11:59','12:01','00:00','12:00',1,20),(10,'Sat','11:59','12:01','00:00','12:00',1,20),(11,'Sun','11:59','12:01','00:00','12:00',1,22),(12,'Mon','11:59','12:01','00:00','12:00',1,22),(13,'Sun','11:59','12:01','00:00','12:00',1,23),(14,'Mon','11:59','12:01','00:00','12:00',1,23),(15,'Thur','11:59','12:01','00:00','12:00',1,24),(16,'Fri','11:59','12:01','00:00','12:00',1,24),(17,'Sun','11:59','12:01','00:00','12:00',1,25),(18,'Mon','11:59','12:01','00:00','12:00',1,25),(19,'Sat','11:59','12:01','00:00','12:00',1,26);
/*!40000 ALTER TABLE `working_hours_additionalcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `working_hours_additionalshipper`
--

DROP TABLE IF EXISTS `working_hours_additionalshipper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `working_hours_additionalshipper` (
  `working_id` int(10) NOT NULL AUTO_INCREMENT,
  `working_day` varchar(30) DEFAULT NULL,
  `open1` varchar(30) DEFAULT NULL,
  `open2` varchar(30) DEFAULT NULL,
  `close1` varchar(30) DEFAULT NULL,
  `close2` varchar(30) DEFAULT NULL,
  `is24Hr` int(11) DEFAULT NULL,
  `additional_shipper_id` int(11) DEFAULT NULL,
  `type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`working_id`),
  KEY `additional_shipper_id` (`additional_shipper_id`),
  CONSTRAINT `working_hours_additionalshipper_ibfk_1` FOREIGN KEY (`additional_shipper_id`) REFERENCES `shippermaster` (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `working_hours_additionalshipper`
--

LOCK TABLES `working_hours_additionalshipper` WRITE;
/*!40000 ALTER TABLE `working_hours_additionalshipper` DISABLE KEYS */;
INSERT INTO `working_hours_additionalshipper` VALUES (1,'Sun','11:59','12:01','00:00','12:00',1,12,'receiving'),(2,'Mon','11:59','12:01','00:00','12:00',1,12,'receiving'),(3,'Tue','11:59','12:01','00:00','12:00',1,12,'receiving'),(4,'Wed','11:59','12:01','00:00','12:00',1,12,'receiving'),(5,'Thu','11:59','12:01','00:00','12:00',1,12,'receiving'),(6,'Fri','11:59','12:01','00:00','12:00',1,12,'receiving'),(7,'Sat','11:59','12:01','00:00','12:00',1,12,'receiving'),(8,'Sun','11:59','12:01','00:00','12:00',1,12,'shipping'),(9,'Mon','11:59','12:01','00:00','12:00',1,12,'shipping'),(10,'Tue','11:59','12:01','00:00','12:00',1,12,'shipping'),(11,'Wed','11:59','12:01','00:00','12:00',1,12,'shipping'),(12,'Thu','11:59','12:01','00:00','12:00',1,12,'shipping'),(13,'Fri','11:59','12:01','00:00','12:00',1,12,'shipping'),(14,'Sat','11:59','12:01','00:00','12:00',1,12,'shipping'),(15,'Sun','11:59','12:01','00:00','12:00',1,12,'receiving'),(16,'Mon','11:59','12:01','00:00','12:00',1,12,'receiving'),(17,'Tue','11:59','12:01','00:00','12:00',1,12,'receiving'),(18,'Wed','11:59','12:01','00:00','12:00',1,12,'receiving'),(19,'Thu','11:59','12:01','00:00','12:00',1,12,'receiving'),(20,'Fri','11:59','12:01','00:00','12:00',1,12,'receiving'),(21,'Sat','11:59','12:01','00:00','12:00',1,12,'receiving'),(22,'Sun','11:59','12:01','00:00','12:00',1,12,'shipping'),(23,'Mon','11:59','12:01','00:00','12:00',1,12,'shipping'),(24,'Tue','11:59','12:01','00:00','12:00',1,12,'shipping'),(25,'Wed','11:59','12:01','00:00','12:00',1,12,'shipping'),(26,'Thu','11:59','12:01','00:00','12:00',1,12,'shipping'),(27,'Fri','11:59','12:01','00:00','12:00',1,12,'shipping'),(28,'Sat','11:59','12:01','00:00','12:00',1,12,'shipping'),(29,'Sun','11:59','12:01','00:00','12:00',1,12,'receiving'),(30,'Mon','11:59','12:01','00:00','12:00',1,12,'receiving'),(31,'Tue','11:59','12:01','00:00','12:00',1,12,'receiving'),(32,'Wed','11:59','12:01','00:00','12:00',1,12,'receiving'),(33,'Thu','11:59','12:01','00:00','12:00',1,12,'receiving'),(34,'Fri','11:59','12:01','00:00','12:00',1,12,'receiving'),(35,'Sat','11:59','12:01','00:00','12:00',1,12,'receiving'),(36,'Sun','11:59','12:01','00:00','12:00',1,12,'shipping'),(37,'Mon','11:59','12:01','00:00','12:00',1,12,'shipping'),(38,'Tue','11:59','12:01','00:00','12:00',1,12,'shipping'),(39,'Wed','11:59','12:01','00:00','12:00',1,12,'shipping'),(40,'Thu','11:59','12:01','00:00','12:00',1,12,'shipping'),(41,'Fri','11:59','12:01','00:00','12:00',1,12,'shipping'),(42,'Sat','11:59','12:01','00:00','12:00',1,12,'shipping'),(43,'Sun','11:59','12:01','00:00','12:00',1,12,'receiving'),(44,'Mon','11:59','12:01','00:00','12:00',1,12,'receiving'),(45,'Tue','11:59','12:01','00:00','12:00',1,12,'receiving'),(46,'Wed','11:59','12:01','00:00','12:00',1,12,'receiving'),(47,'Thu','11:59','12:01','00:00','12:00',1,12,'receiving'),(48,'Fri','11:59','12:01','00:00','12:00',1,12,'receiving'),(49,'Sat','11:59','12:01','00:00','12:00',1,12,'receiving'),(50,'Sun','11:59','12:01','00:00','12:00',1,12,'shipping'),(51,'Mon','11:59','12:01','00:00','12:00',1,12,'shipping'),(52,'Tue','11:59','12:01','00:00','12:00',1,12,'shipping'),(53,'Wed','11:59','12:01','00:00','12:00',1,12,'shipping'),(54,'Thu','11:59','12:01','00:00','12:00',1,12,'shipping'),(55,'Fri','11:59','12:01','00:00','12:00',1,12,'shipping'),(56,'Sat','11:59','12:01','00:00','12:00',1,12,'shipping'),(57,'Sun','11:59','12:01','00:00','12:00',1,13,'receiving'),(58,'Mon','11:59','12:01','00:00','12:00',1,13,'receiving'),(59,'Tue','11:59','12:01','00:00','12:00',1,13,'receiving'),(60,'Wed','11:59','12:01','00:00','12:00',1,13,'receiving'),(61,'Thu','11:59','12:01','00:00','12:00',1,13,'receiving'),(62,'Fri','11:59','12:01','00:00','12:00',1,13,'receiving'),(63,'Sat','11:59','12:01','00:00','12:00',1,13,'receiving'),(64,'Sun','11:59','12:01','00:00','12:00',1,13,'shipping'),(65,'Mon','11:59','12:01','00:00','12:00',1,13,'shipping'),(66,'Tue','11:59','12:01','00:00','12:00',1,13,'shipping'),(67,'Wed','11:59','12:01','00:00','12:00',1,13,'shipping'),(68,'Thu','11:59','12:01','00:00','12:00',1,13,'shipping'),(69,'Fri','11:59','12:01','00:00','12:00',1,13,'shipping'),(70,'Sat','11:59','12:01','00:00','12:00',1,13,'shipping');
/*!40000 ALTER TABLE `working_hours_additionalshipper` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-17 16:48:15
