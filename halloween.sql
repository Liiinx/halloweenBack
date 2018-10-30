-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: halloween
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Current Database: `halloween`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `halloween` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `halloween`;

--
-- Table structure for table `adresse`
--

DROP TABLE IF EXISTS `adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adresse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `adresse` varchar(165) NOT NULL,
  `longitude` float NOT NULL,
  `latitude` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adresse`
--

LOCK TABLES `adresse` WRITE;
/*!40000 ALTER TABLE `adresse` DISABLE KEYS */;
INSERT INTO `adresse` VALUES (1,'prison saint paul saint joseph','17 rue delandine 69002 lyon',0,0),(2,'prison montluc','4 rue jeanne hachette 69003 lyon',0,0),(3,'cimetière de la guillotiere','228 avenue de berthelot 69008 lyon',0,0),(4,'traboule de lyon','vieux lyon ',0,0),(5,'place des terreaux','8 place des terreaux',0,0),(6,'palais de la bourse','place de la bourse 69002 lyon',0,0),(7,'passerelle des 4 vents','Chemin du Viaduc, 69005 Lyon',0,0),(8,'hotel chateau perrache','12 Cours de Verdun Rambaud, 69002 Lyon',0,0);
/*!40000 ALTER TABLE `adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonbonslist`
--

DROP TABLE IF EXISTS `bonbonslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonbonslist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `rang` varchar(155) NOT NULL,
  `img` varchar(300) NOT NULL,
  `imgGris` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonbonslist`
--

LOCK TABLES `bonbonslist` WRITE;
/*!40000 ALTER TABLE `bonbonslist` DISABLE KEYS */;
INSERT INTO `bonbonslist` VALUES (1,'BonAppart','2','https://nsa39.casimages.com/img/2018/10/30/mini_181030060130271775.png','https://nsa39.casimages.com/img/2018/10/30/mini_181030060130318173.png'),(2,'BonbonBienBon','1','https://nsa39.casimages.com/img/2018/10/30/181030060130570837.png','https://nsa39.casimages.com/img/2018/10/30/181030060130827375.png'),(3,'BonBonBon','3','https://nsa39.casimages.com/img/2018/10/30/18103006013184912.png','https://nsa39.casimages.com/img/2018/10/30/181030060131334510.png'),(4,'BonBonne','3','https://nsa39.casimages.com/img/2018/10/30/181030060131585980.png','https://nsa39.casimages.com/img/2018/10/30/181030060131833532.png'),(5,'BonPasbon','3','https://nsa39.casimages.com/img/2018/10/30/18103006013280949.png','https://nsa39.casimages.com/img/2018/10/30/181030060132330617.png'),(6,'ChikeuBoum','2','https://nsa39.casimages.com/img/2018/10/30/181030060132592505.png','https://nsa39.casimages.com/img/2018/10/30/181030060132832945.png'),(7,'Habibon','1','https://nsa39.casimages.com/img/2018/10/30/18103006013381886.png','https://nsa39.casimages.com/img/2018/10/30/181030060133627587.png'),(8,'MacDoum','1','https://nsa39.casimages.com/img/2018/10/30/181030060133687549.png','https://nsa39.casimages.com/img/2018/10/30/181030060133941206.png'),(9,'Mathieu','2','https://nsa39.casimages.com/img/2018/10/30/181030060134198384.png','https://nsa39.casimages.com/img/2018/10/30/181030060134455229.png'),(10,'Misubichi','1','https://nsa39.casimages.com/img/2018/10/30/181030060134709938.png','https://nsa39.casimages.com/img/2018/10/30/181030060134950094.png');
/*!40000 ALTER TABLE `bonbonslist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bonbonsusers`
--

DROP TABLE IF EXISTS `bonbonsusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bonbonsusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(125) NOT NULL,
  `rang` varchar(125) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bonbonsusers`
--

LOCK TABLES `bonbonsusers` WRITE;
/*!40000 ALTER TABLE `bonbonsusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `bonbonsusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reponse1` varchar(255) NOT NULL,
  `reponse2` varchar(255) NOT NULL,
  `reponse3` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'Quel etait la superficie d\'une cellule pour 3 prisonniers ?','Prison Saint Paul et Saint Joseph','9 m²','12 m²','15 m²'),(2,'De combien de place disposait la prison ?','Prison Montluc','127 places','452 places','1425 places'),(3,'Quel est le nombre de tombe de ce cimetiere ?','Cemetiere de la guillotiere','500 tombes','2500 tombes','4000 tombes'),(4,'Combien y a t\'il de traboule à Lyon ?','Traboules de Lyon','250','400','560'),(5,'Quelle machine du diable était installée sur cette place ?','Place des terreaux','un broyeur de genoux','Le boston pub','La guillotine'),(6,'Quel président fut assassiné en sortant du palais de la bourse ?','Palais de la bourse','Sadi Carnot','Felix Faure','cyril Hanouna'),(7,'Quel etait le nom de l\'ancien viaduc situé à la place de cette passerelle ?','Passerelle des 4 vents','Viaduc du répit','Viaduc des Corbillards','Le pont des Citrouilles'),(8,'Qui hante cet hotel ?','Hotel chateau Perrache','Des fantômes','Une banshee','ton oncle');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-30 23:05:10
