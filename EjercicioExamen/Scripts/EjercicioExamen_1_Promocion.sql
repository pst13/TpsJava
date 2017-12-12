-- MySQL dump 10.13  Distrib 5.7.20, for Linux (i686)
--
-- Host: localhost    Database: EjercicioExamen_1
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.16.04.1

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
-- Table structure for table `Promocion`
--

DROP TABLE IF EXISTS `Promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Promocion` (
  `idPromocion` int(11) NOT NULL,
  `idCafe_1` int(11) NOT NULL,
  `idCafe_2` int(11) NOT NULL,
  `nombre_promocion` varchar(45) DEFAULT NULL,
  `gramos_cafe_1` int(11) DEFAULT NULL,
  `gramos_cafe_2` int(11) DEFAULT NULL,
  `gramos_cafe_java` int(11) DEFAULT NULL,
  PRIMARY KEY (`idPromocion`),
  KEY `fk_Promocion_Cafe_idx` (`idCafe_1`),
  KEY `fk_Promocion_Cafe1_idx` (`idCafe_2`),
  CONSTRAINT `fk_Promocion_Cafe` FOREIGN KEY (`idCafe_1`) REFERENCES `Cafe` (`idCafe`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Promocion_Cafe1` FOREIGN KEY (`idCafe_2`) REFERENCES `Cafe` (`idCafe`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Promocion`
--

LOCK TABLES `Promocion` WRITE;
/*!40000 ALTER TABLE `Promocion` DISABLE KEYS */;
INSERT INTO `Promocion` VALUES (1,1,2,'Promocion 1',125,125,250),(2,1,2,'Promocion 2',250,125,125),(3,1,2,'Promocion 3',125,250,125),(4,1,2,'Promocion 4',100,200,200),(5,1,2,'Promocion 5',200,100,200),(6,1,2,'Promocion 6',200,200,100);
/*!40000 ALTER TABLE `Promocion` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-11 22:19:55
