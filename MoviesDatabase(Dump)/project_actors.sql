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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `actors` (
  `actor_id` int NOT NULL AUTO_INCREMENT,
  `actor_name` varchar(50) NOT NULL,
  `actor_sex` enum('M','F') DEFAULT NULL,
  `actor_nationality` varchar(50) DEFAULT NULL,
  `actor_birthdate` date DEFAULT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES (1,'Tim Robbins','M','American','1958-10-16'),(2,'Morgan Freeman','M','American','1937-06-01'),(3,'Bob Gunton','M','American','1945-11-15'),(4,'William Sadler','M','American','1950-04-13'),(5,'Joe Russo','M','American','1971-07-08'),(6,'Robert Downey Jr.','M','American','1965-04-04'),(7,'Chris Evans','M','American','1981-06-13'),(8,'Mark Ruffalo','M','American','1967-11-22'),(9,'Tom Hanks','M','American','1956-07-09'),(10,'Robin Wright','F','American','1966-04-08'),(11,'Gary Sinise','M','American','1955-03-17'),(12,'Sally Field','F','American','1946-11-06'),(13,'Lilly Wachowski','F','American','1967-12-29'),(14,'Keanu Reeves','M','Canadian','1964-09-02'),(15,'Laurence Fishburne','M','American','1961-07-30'),(16,'Carrie-Anne Moss','F','Canadian','1967-08-21'),(17,'Robert De Niro','M','American','1943-08-17'),(18,'Ray Liotta','M','American','1954-12-18'),(19,'Joe Pesci','M','American','1943-02-09'),(20,'Lorraine Bracco','F','American','1954-10-02'),(21,'Mark Hamill','M','American','1951-09-25'),(22,'Harrison Ford','M','American','1942-07-13'),(23,'Carrie Fisher','F','American','1956-10-21'),(24,'Billy Dee Williams','M','American','1937-04-06'),(25,'Matthew McConaughey','M','American','1969-11-04'),(26,'Anne Hathaway','F','American','1982-11-12'),(27,'Jessica Chastain','F','American','1977-03-24'),(28,'Mackenzie Foy','F','American','2000-11-10'),(29,'Joaquin Phoenix','M','American','1974-10-28'),(30,'Robert De Niro','M','American','1943-08-17'),(31,'Zazie Beetz','F','German-American','1991-06-01'),(32,'Frances Conroy','F','American','1953-11-13'),(33,'Harrison Ford','M','American','1942-07-13'),(34,'Karen Allen','F','American','1951-10-05'),(35,'Paul Freeman','M','British','1943-01-18'),(36,'John Rhys-Davies','M','Welsh','1944-05-05'),(37,'Martin Sheen','M','American','1940-08-03'),(38,'Marlon Brando','M','American','1924-04-03'),(39,'Robert Duvall','M','American','1931-01-05'),(40,'Frederic Forrest','M','American','1936-12-23'),(41,'Robin Williams','M','American','1951-07-21'),(42,'Matt Damon','M','American','1970-10-08'),(43,'Ben Affleck','M','American','1972-08-15'),(44,'Stellan Skarsgård','M','Swedish','1951-06-13'),(45,'Mark Hamill','M','American','1951-09-25'),(46,'Harrison Ford','M','American','1942-07-13'),(47,'Carrie Fisher','F','American','1956-10-21'),(48,'Billy Dee Williams','M','American','1937-04-06'),(49,'Ethan Coen','M','American','1957-09-21'),(50,'Jeff Bridges','M','American','1949-12-04'),(51,'John Goodman','M','American','1952-06-20'),(52,'Julianne Moore','F','American','1960-12-03'),(53,'Uma Thurman','F','American','1970-04-29'),(54,'David Carradine','M','American','1936-12-08'),(55,'Daryl Hannah','F','American','1960-12-03'),(56,'Michael Madsen','M','American','1957-09-25'),(57,'Lee Unkrich','M','American','1967-08-08'),(58,'Albert Brooks','M','American','1947-07-22'),(59,'Ellen DeGeneres','F','American','1958-01-26'),(60,'Alexander Gould','M','American','1994-05-04'),(61,'David Silverman','M','American','1957-03-15'),(62,'Lee Unkrich','M','American','1967-08-08'),(63,'Billy Crystal','M','American','1948-03-14'),(64,'John Goodman','M','American','1952-06-20'),(65,'Joel Coen','M','American','1954-11-29'),(66,'Tommy Lee Jones','M','American','1946-09-15'),(67,'Javier Bardem','M','Spanish','1969-03-01'),(68,'Josh Brolin','M','American','1968-02-12'),(69,'Chris Sanders','M','American','1962-03-12'),(70,'Jay Baruchel','M','Canadian','1982-04-09'),(71,'Gerard Butler','M','Scottish','1969-11-13'),(72,'Christopher Mintz-Plasse','M','American','1989-06-20'),(73,'Aamir Khan','M','Indian','1965-03-14'),(74,'Raghuvir Yadav','M','Indian','1957-06-25'),(75,'Gracy Singh','F','Indian','1980-07-20'),(76,'Rachel Shelley','F','British','1969-08-25'),(77,'Harrison Ford','M','American','1942-07-13'),(78,'Sean Connery','M','Scottish','1930-08-25'),(79,'Alison Doody','F','Irish','1966-11-11'),(80,'Denholm Elliott','M','English','1922-05-31'),(81,'Tom Hanks','M','American','1956-07-09'),(82,'Tim Allen','M','American','1953-06-13'),(83,'Joan Cusack','F','American','1962-10-11'),(84,'Ned Beatty','M','American','1937-07-06'),(85,'Yôji Matsuda','M','Japanese','1960-10-19'),(86,'Yuriko Ishida','F','Japanese','1969-10-03'),(87,'Yûko Tanaka','F','Japanese','1955-04-29'),(88,'Billy Crudup','M','American','1968-07-08'),(89,'John Travolta','M','American','1954-02-18'),(90,'Uma Thurman','F','American','1970-04-29'),(91,'Samuel L. Jackson','M','American','1948-12-21'),(92,'Bruce Willis','M','American','1955-03-19'),(93,'Liam Neeson','M','Northern Irish','1952-06-07'),(94,'Ralph Fiennes','M','English','1962-12-22'),(95,'Ben Kingsley','M','English','1943-12-31'),(96,'Caroline Goodall','F','British','1959-11-13');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
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
