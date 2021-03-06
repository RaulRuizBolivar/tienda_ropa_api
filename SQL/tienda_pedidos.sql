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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `producto_id` int NOT NULL,
  `usuario_id` int NOT NULL,
  `fecha` timestamp NOT NULL,
  PRIMARY KEY (`producto_id`,`usuario_id`,`fecha`),
  KEY `fk_productos_has_usuarios_usuarios1_idx` (`usuario_id`),
  CONSTRAINT `fk_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `fk_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (4,1,'2022-05-22 22:00:00'),(9,1,'2022-02-06 23:00:00'),(9,2,'2021-08-08 22:00:00'),(20,2,'2021-01-23 23:00:00'),(20,2,'2022-01-21 23:00:00'),(1,3,'2022-06-15 22:00:00'),(9,3,'2020-11-10 23:00:00'),(11,3,'2022-02-13 23:00:00'),(13,3,'2021-07-31 22:00:00'),(18,3,'2021-08-10 22:00:00'),(18,3,'2021-11-03 23:00:00'),(4,4,'2021-02-23 23:00:00'),(14,5,'2021-10-26 22:00:00'),(16,5,'2022-03-12 23:00:00'),(19,5,'2021-09-27 22:00:00'),(4,6,'2021-03-18 23:00:00'),(7,7,'2021-07-07 22:00:00'),(18,7,'2021-05-14 22:00:00'),(4,8,'2022-01-05 23:00:00'),(7,8,'2022-01-16 23:00:00'),(18,9,'2021-05-15 22:00:00'),(19,9,'2021-05-05 22:00:00'),(4,10,'2022-03-20 23:00:00'),(10,10,'2021-12-27 23:00:00'),(11,10,'2021-04-24 22:00:00'),(11,11,'2021-07-03 22:00:00'),(17,11,'2022-01-22 23:00:00'),(6,12,'2021-04-23 22:00:00'),(6,13,'2022-06-10 22:00:00'),(19,13,'2022-05-27 22:00:00'),(7,14,'2022-01-31 23:00:00'),(7,14,'2022-04-19 22:00:00'),(12,15,'2021-04-19 22:00:00'),(13,15,'2021-07-15 22:00:00'),(3,16,'2021-05-26 22:00:00'),(8,16,'2022-02-22 23:00:00'),(16,16,'2021-07-25 22:00:00'),(14,17,'2021-09-04 22:00:00'),(20,17,'2021-05-04 22:00:00'),(7,18,'2021-01-26 23:00:00'),(12,18,'2022-02-28 23:00:00'),(14,18,'2021-01-15 23:00:00'),(7,19,'2021-12-16 23:00:00'),(8,19,'2020-10-28 23:00:00'),(9,19,'2021-04-22 22:00:00'),(9,19,'2022-04-22 22:00:00'),(10,19,'2021-09-05 22:00:00'),(4,20,'2021-05-29 22:00:00'),(4,20,'2021-08-31 22:00:00'),(10,20,'2022-05-09 22:00:00');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
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
