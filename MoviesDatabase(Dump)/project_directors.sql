-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `directors`
--

DROP TABLE IF EXISTS `directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `directors` (
  `director_id` int NOT NULL AUTO_INCREMENT,
  `director_name` varchar(50) NOT NULL,
  `director_sex` enum('M','F') DEFAULT NULL,
  `director_nationality` varchar(50) DEFAULT NULL,
  `director_birthdate` date DEFAULT NULL,
  PRIMARY KEY (`director_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `directors`
--

LOCK TABLES `directors` WRITE;
/*!40000 ALTER TABLE `directors` DISABLE KEYS */;
INSERT INTO `directors` VALUES (1,'Frank Darabont','M','Hungarian-American','1959-01-28'),(2,'Anthony Russo','M','American','1970-02-03'),(3,'Robert Zemeckis','M','American','1952-05-14'),(4,'Lana Wachowski','F','American','1965-06-21'),(5,'Martin Scorsese','M','American','1942-11-17'),(6,'Irvin Kershner','M','American','1923-04-29'),(7,'Christopher Nolan','M','British-American','1970-07-30'),(8,'Todd Phillips','M','American','1970-12-20'),(9,'Steven Spielberg','M','American','1946-12-18'),(10,'Francis Ford Coppola','M','American','1939-04-07'),(11,'Gus Van Sant','M','American','1952-07-24'),(12,'Richard Marquand','M','Welsh','1937-09-22'),(13,'Joel Coen','M','American','1954-11-29'),(14,'Quentin Tarantino','M','American','1963-03-27'),(15,'Andrew Stanton','M','American','1965-12-03'),(16,'Pete Docter','M','American','1968-10-09'),(17,'Ethan Coen','M','American','1957-09-21'),(18,'Dean DeBlois','M','Canadian','1970-06-07'),(19,'Ashutosh Gowariker','M','Indian','1964-02-15'),(20,'Steven Spielberg','M','American','1946-12-18'),(21,'Lee Unkrich','M','American','1967-08-08'),(22,'Hayao Miyazaki','M','Japanese','1941-01-05');
/*!40000 ALTER TABLE `directors` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-15 22:09:29
