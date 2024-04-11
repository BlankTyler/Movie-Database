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
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `release_year` int DEFAULT NULL,
  `certificate` enum('A','U','UA','R') DEFAULT NULL,
  `runtime` varchar(10) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `earnings` int DEFAULT NULL,
  `genre_id` int NOT NULL,
  `director_id` int NOT NULL,
  `studio_id` int NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `genre_id` (`genre_id`),
  KEY `director_id` (`director_id`),
  KEY `studio_id` (`studio_id`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`genre_id`),
  CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`director_id`) REFERENCES `directors` (`director_id`),
  CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`studio_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'The Shawshank Redemption',1994,'A','142',9.3,28341469,1,1,1),(2,'Avengers: Endgame',2019,'UA','181',8.4,858373000,2,2,2),(3,'Avengers: Infinity War',2018,'UA','149',8.4,678815482,2,2,2),(4,'Forrest Gump',1994,'UA','142',8.8,330252182,1,3,3),(5,'The Matrix',1999,'A','136',8.7,171479930,2,4,4),(6,'Goodfellas',1990,'A','146',8.7,46836394,3,5,8),(7,'Star Wars: Episode V - The Empire Strikes Back',1980,'UA','124',8.7,290475067,2,6,5),(8,'Interstellar',2014,'UA','169',8.6,188020017,4,7,4),(9,'Joker',2019,'A','122',8.5,335451311,5,8,3),(10,'Raiders of the Lost Ark',1981,'A','115',8.4,248159971,2,9,3),(11,'Apocalypse Now',1979,'R','147',8.4,83471511,1,10,7),(12,'Good Will Hunting',1997,'U','126',8.3,138433435,1,11,8),(13,'Star Wars: Episode VI - Return of the Jedi',1983,'U','131',8.3,309125409,2,12,5),(14,'The Big Lebowski',1998,'R','117',8.1,17498804,6,13,8),(15,'Kill Bill: Vol. 1',2003,'R','111',8.1,70099045,5,14,8),(16,'Finding Nemo',2003,'U','100',8.1,380843261,7,15,11),(17,'Monsters, Inc.',2001,'U','92',8.1,289916256,7,16,11),(18,'No Country for Old Men',2007,'R','122',8.1,74283625,5,17,15),(19,'How to Train Your Dragon',2010,'U','98',8.1,217581231,7,18,12),(20,'Lagaan: Once Upon a Time in India',2001,'U','224',8.1,70147,4,19,13),(21,'Indiana Jones and the Last Crusade',1989,'U','127',8.2,197171806,2,20,3),(22,'Toy Story 3',2010,'U','103',8.2,415004880,7,21,11),(23,'Mononoke-hime',1997,'U','134',8.4,2375308,7,22,14),(24,'Pulp Fiction',1994,'A','154',8.9,107928762,5,14,8),(25,'Schindler\'s List',1993,'A','195',8.9,96898818,3,9,15);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
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
