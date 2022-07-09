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
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `precio` decimal(5,2) NOT NULL,
  `categoria` enum('camiseta','pantalon','abrigo','camisa') NOT NULL,
  `tipo` enum('hombre','mujer','infantil') NOT NULL,
  `talla` enum('xl','l','m','s','xs') NOT NULL,
  `color` varchar(45) NOT NULL,
  `stock` int NOT NULL,
  `disponibilidad` tinyint(1) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Sneed\'s Pincushion Cactus',10.57,'camisa','mujer','xs','Aquamarine',315,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=2450'),(2,'Howell\'s Gumweed',60.71,'pantalon','mujer','xs','Crimson',104,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=3887'),(3,'Alpine Blood Lichen',82.44,'pantalon','hombre','s','Violet',184,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=4349'),(4,'Colchicum',58.56,'abrigo','mujer','xl','Purple',94,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=4073'),(5,'Globe Yellowcress',37.86,'camisa','hombre','m','Violet',719,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=5236'),(6,'Royal Jacob\'s-ladder',48.03,'camisa','infantil','xl','Turquoise',455,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=1320'),(7,'Timothy Canarygrass',58.55,'abrigo','mujer','l','Turquoise',571,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=1998'),(8,'South American Rubberweed',53.59,'abrigo','hombre','m','Orange',754,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=3577'),(9,'Nail Lichen',59.61,'camiseta','mujer','xl','Violet',101,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=1291'),(10,'Batoko Plum',87.59,'pantalon','mujer','xl','Green',285,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=9744'),(11,'Cabra Blanca',57.44,'camiseta','infantil','m','Mauv',212,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=2861'),(12,'Robbins\' Milkvetch',26.43,'camiseta','infantil','l','Violet',376,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=1803'),(13,'Sorbaronia',29.88,'camiseta','infantil','s','Indigo',206,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=5207'),(14,'Wrinkled Jointtail Grass',48.53,'abrigo','mujer','xl','Violet',533,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=9159'),(15,'Simpleleaf Chastetree',61.93,'camisa','hombre','xl','Indigo',150,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=6947'),(16,'Plumpseeded Madia',43.10,'abrigo','infantil','xl','Green',921,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=7162'),(17,'California Pleuridium Moss',49.77,'camiseta','infantil','l','Khaki',81,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=930'),(18,'Chalice Lichen',18.21,'abrigo','infantil','s','Fuscia',247,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=3535'),(19,'Beaked Hawksbeard',21.08,'abrigo','mujer','xs','Mauv',250,0,'https://api.lorem.space/image/fashion?w=640&h=480&r=6283'),(20,'Johnny-nip',22.11,'abrigo','mujer','xs','Crimson',33,1,'https://api.lorem.space/image/fashion?w=640&h=480&r=1514');
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
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
