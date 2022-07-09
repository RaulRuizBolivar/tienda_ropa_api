CREATE DATABASE  IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda`;
-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: tienda
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre_completo` varchar(45) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `rol` enum('admin','cliente') NOT NULL DEFAULT 'cliente',
  `imagen` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'vbrazer0@jiathis.com','pZlVR5eWzF0','Vernor Brazer','Brazer','admin',NULL),(2,'iedmeads1@zdnet.com','SHkr8R','Ignaz Edmeads','Edmeads','cliente','https://randomuser.me/api/portraits/med/women/25.jpg'),(3,'arodger2@diigo.com','646lCtNupCY','Alexandrina Rodger','Rodger','cliente','https://randomuser.me/api/portraits/med/women/47.jpg'),(4,'amotion3@blogspot.com','H1UEnBgTP61','Ardys Motion','Motion','cliente','https://randomuser.me/api/portraits/med/men/84.jpg'),(5,'wrosi4@a8.net','m14235H5PJr','Waylin Rosi','Rosi','cliente','https://randomuser.me/api/portraits/med/women/45.jpg'),(6,'mparadin5@cnet.com','kSCk6naN','Maurise Paradin','Paradin','cliente','https://randomuser.me/api/portraits/med/men/82.jpg'),(7,'aclaisse6@answers.com','AhSxXtrcelq','Abe Claisse','Claisse','cliente','https://randomuser.me/api/portraits/med/men/69.jpg'),(8,'cburchess7@toplist.cz','cyqVO8bzRC','Cathi Burchess','Burchess','cliente','https://randomuser.me/api/portraits/med/women/88.jpg'),(9,'nheinsius8@census.gov','8BGEJx0HdV','Netti Heinsius','Heinsius','cliente','https://randomuser.me/api/portraits/med/women/9.jpg'),(10,'lsaintsbury9@twitpic.com','QeSYeoIeYwqB','Loren Saintsbury','Saintsbury','cliente','https://randomuser.me/api/portraits/med/men/1.jpg'),(11,'kvautera@cloudflare.com','V3B3PKKYDXG','Kristien Vauter','Vauter','cliente','https://randomuser.me/api/portraits/med/women/94.jpg'),(12,'pmaddinb@marketwatch.com','E4HoW10Otj','Padget Maddin','Maddin','cliente','https://randomuser.me/api/portraits/med/men/87.jpg'),(13,'cduckworthc@pen.io','Hz91iLXOXgK','Chance Duckworth','Duckworth','cliente','https://randomuser.me/api/portraits/med/men/71.jpg'),(14,'jgrasd@admin.ch','wZ2oE89CAYvj','Joli Gras','Gras','cliente','https://randomuser.me/api/portraits/med/men/13.jpg'),(15,'egiorgiettoe@barnesandnoble.com','7ZVm60','Egon Giorgietto','Giorgietto','cliente',NULL),(16,'claskeyf@hhs.gov','PVTbbm6xA','Colver Laskey','Laskey','cliente','https://randomuser.me/api/portraits/med/women/0.jpg'),(17,'lhounshamg@netscape.com','pIvjAoOmyxB','Liesa Hounsham','Hounsham','cliente','https://randomuser.me/api/portraits/med/men/98.jpg'),(18,'cgulbergh@ibm.com','4O7zu8wNpH5','Cilka Gulberg','Gulberg','cliente','https://randomuser.me/api/portraits/med/men/4.jpg'),(19,'efradsoni@istockphoto.com','vlMoIDSF0UFt','Edithe Fradson','Fradson','cliente','https://randomuser.me/api/portraits/med/women/74.jpg'),(20,'zspourej@acquirethisname.com','cXYISpP6zSY','Zaneta Spoure','Spoure','cliente','https://randomuser.me/api/portraits/med/men/41.jpg');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-09 13:50:27
