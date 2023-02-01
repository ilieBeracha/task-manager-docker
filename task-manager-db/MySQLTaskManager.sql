-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: task_manager
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL,
  `projectName` varchar(40) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_idx` (`userid`),
  CONSTRAINT `id` FOREIGN KEY (`userid`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `taskName` varchar(45) DEFAULT NULL,
  `taskContent` varchar(200) DEFAULT NULL,
  `taskDate` date DEFAULT NULL,
  `taskPriority` varchar(45) DEFAULT NULL,
  `taskStatus` varchar(45) DEFAULT NULL,
  `label` varchar(45) DEFAULT NULL,
  `indexPriority` int DEFAULT NULL,
  `indexPriorityTimeStamp` bigint DEFAULT NULL,
  `projectId` int DEFAULT NULL,
  `imageUrl` longtext,
  PRIMARY KEY (`id`),
  KEY `_id_idx` (`userId`),
  KEY `project_id_idx` (`projectId`),
  KEY `id_idx` (`projectId`),
  KEY `_id_idx1` (`projectId`),
  CONSTRAINT `_id` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`),
  CONSTRAINT `user_id` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,11,'Dashboard footer','Add content','2023-01-14','Low','todo','Personal',1,1673527789781,NULL,NULL),(2,11,'Dark mode','dark/light mode','2023-01-21','Mid','completed','Home',1,1673526975678,NULL,NULL),(13,11,'Jwt','Fix the jwt sub on register','2023-03-12','High','completed','Personal',1,1673527766698,NULL,NULL),(15,11,'Add collaborations','Add functionallity to friend request and work together','2023-01-28','High','inProgress','Work',1,1673534261696,NULL,NULL),(16,11,'Responsive','Make the all website responsive','2023-01-13','High','inProgress','Financial',2,1673622999557,NULL,NULL),(17,11,'Array of labels','Add many to many table MySql','2023-01-24','Mid','inProgress','Personal',2,1673527763415,NULL,NULL),(19,11,'Beach','have fun at the beach','2023-01-12','High','todo','School',0,1673983600349,NULL,'https://oaidalleapiprodscus.blob.core.windows.net/private/org-OXB7yWKT4ka2oRXy4xVihn0w/user-w2bjs0YIFKvjQ3umf8zOqdGx/img-PAY88PwlD9a4AodgzHcbS2cn.png?st=2023-01-17T18%3A26%3A56Z&se=2023-01-17T20%3A26%3A56Z&sp=r&sv=2021-08-06&sr=b&rscd=inline&rsct=image/png&skoid=6aaadede-4fb3-4698-a8f6-684d7786b067&sktid=a48cca56-e6da-484e-a814-9c849652bcb3&skt=2023-01-17T18%3A33%3A23Z&ske=2023-01-18T18%3A33%3A23Z&sks=b&skv=2021-08-06&sig=O5ZBwHaC17mygergrRCd1X9VbeNPZSRrkxJIGR2%2B0TU%3D'),(30,11,'Node','Fix node routes','2023-01-14','High','todo','Leisure',1,1673527759798,NULL,NULL),(38,11,'Settings route','add settings route','2023-02-12','High','completed','Personal',0,1673622998408,NULL,NULL);
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (11,'ilie','beracha','ilieberacha123@gmail.com','ilieberacha','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f'),(17,'tami','beracha','tamiber@gmail.com','tamiberacha','e24df920078c3dd4e7e8d2442f00e5c9ab2a231bb3918d65cc50906e49ecaef4'),(18,'shahar','gorali','sharargorali@gmail.com','shahargorali','1b2afbd213074793639630880fb906e9f9b1e32b49bad564b7d32822f0d31212'),(19,'rami','beracha','ramiber@gmail.com','ramiberacha','2247ecaff43bb8fb963b3a09c6ddba7ad0c454e2950d21051374800a9c808017'),(20,'sapir','moskovich','sapirmo2000@gmail.com','sapirmo','c9c183ee8636970a8326e31ba58478b947d2c1fefa1cd6e6cfac7fc7299a279f');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-19 19:15:16
