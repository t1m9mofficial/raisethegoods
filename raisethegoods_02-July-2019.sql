-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: raisethegoods
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `application_id` int(11) NOT NULL AUTO_INCREMENT,
  `applied_person` varchar(55) DEFAULT NULL,
  `applied_person_role` varchar(55) DEFAULT NULL,
  `charity_enterprise_initiative_name` varchar(55) DEFAULT NULL,
  `charity_enterprise_initiative_address` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `website` varchar(55) DEFAULT NULL,
  `facebook` varchar(55) DEFAULT NULL,
  `twitter` varchar(55) DEFAULT NULL,
  `instagram` varchar(55) DEFAULT NULL,
  `linkedin` varchar(55) DEFAULT NULL,
  `charity_enterprise_initiative_description` varchar(255) DEFAULT NULL,
  `charity_enterprise_initiative_team` varchar(255) DEFAULT NULL,
  `charity_enterprise_initiative_work` varchar(255) DEFAULT NULL,
  `charity_enterprise_initiative_why` varchar(255) DEFAULT NULL,
  `charity_enterprise_initiative_innovation` varchar(255) DEFAULT NULL,
  `charity_enterprise_initiative_solutions` varchar(255) DEFAULT NULL,
  `anything_else` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`application_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES (1,'Dolores esse sed ac','Sit in quo et amet','Amethyst Payne','Sit officiis tempore','piqo@mailinator.net','+1 (829) 313-7712','https://www.cygu.org','Id culpa ut exercit','Labore maxime esse l','Voluptas recusandae','Nihil officia exerci','Ipsa eius ut tempor','Ipsam modi et conseq','Quidem omnis dolorem','In aspernatur et non','Sint aliqua Vel est','In lorem placeat ip','Deserunt amet nisi ','Venus_0001.mp4',1561906854),(2,'Ab ex ut illo labori','Autem labore omnis n','Giselle Pratt','Quia lorem lorem qua','mytipino@mailinator.net','+1 (321) 267-5479','https://www.pisig.us','Sit error molestiae','Beatae sint totam cu','Cupiditate pariatur','Sed anim aliquam aut','Odio anim qui neque ','Voluptatem perspicia','Sunt esse aute temp','A recusandae Labore','Tempore blanditiis ','Adipisicing neque co','Ea earum placeat cu','Venus_0001.mp4',1561906986),(3,'Rerum culpa ab omnis','Quaerat mollit occae','Marah House','Maxime ullam accusam','syweloveq@mailinator.com','+1 (331) 593-7292','https://www.daqymojyzalib.net','Velit id do volupta','Corporis aliqua Ips','Pariatur Maxime sed','Pariatur Consectetu','Repudiandae maiores ','Voluptas sed cum ali','Laboris omnis explic','Saepe quia sunt et ','Aut debitis veritati','Deserunt mollit est','Voluptate doloremque','Mars_0001.mp4',1561907013);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nomination`
--

DROP TABLE IF EXISTS `nomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nomination` (
  `nomination_id` int(11) NOT NULL AUTO_INCREMENT,
  `nominated_person` varchar(55) DEFAULT NULL,
  `charity_enterprise_initiative_know_how` varchar(255) DEFAULT NULL,
  `charity_enterprise_initiative_name` varchar(55) DEFAULT NULL,
  `charity_enterprise_initiative_address` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `website` varchar(55) DEFAULT NULL,
  `facebook` varchar(55) DEFAULT NULL,
  `twitter` varchar(55) DEFAULT NULL,
  `instagram` varchar(55) DEFAULT NULL,
  `linkedin` varchar(55) DEFAULT NULL,
  `nomination_reasons` varchar(255) DEFAULT NULL,
  `nomination_description` varchar(255) DEFAULT NULL,
  `nomination_work` varchar(255) DEFAULT NULL,
  `anything_else` varchar(255) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`nomination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nomination`
--

LOCK TABLES `nomination` WRITE;
/*!40000 ALTER TABLE `nomination` DISABLE KEYS */;
INSERT INTO `nomination` VALUES (1,'jh','jhj','hh','h','h@d.com','ff','fd','dsf','fsdfs','sdf','dsfds','dsfds','sdf','fdsf','fsd',1561868624);
/*!40000 ALTER TABLE `nomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `not_in_ireland`
--

DROP TABLE IF EXISTS `not_in_ireland`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `not_in_ireland` (
  `not_in_ireland_id` int(11) NOT NULL AUTO_INCREMENT,
  `where_from` varchar(255) DEFAULT NULL,
  `heard_about` varchar(255) DEFAULT NULL,
  `charity_enterprise_initiative` varchar(255) DEFAULT NULL,
  `why_goods` varchar(255) DEFAULT NULL,
  `name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `anything_else` varchar(255) DEFAULT NULL,
  `created_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`not_in_ireland_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `not_in_ireland`
--

LOCK TABLES `not_in_ireland` WRITE;
/*!40000 ALTER TABLE `not_in_ireland` DISABLE KEYS */;
INSERT INTO `not_in_ireland` VALUES (1,'fine','j','j','j','j','jj','ff','ff',1561823824),(2,'h','h','hh','h','h','h@f.com','h','hh',1561823902),(3,'Fine','Website','Yes','Dhaka','Tamim','tamim@shamim.com','1112223333','No',1561824796),(4,'a','s','d','w','q','oba4me@gmail.com','sd','sdf',1561867793);
/*!40000 ALTER TABLE `not_in_ireland` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-02 10:21:58
