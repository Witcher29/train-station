-- MySQL dump 10.13  Distrib 8.3.0, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: train_station
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `action` varchar(20) DEFAULT NULL,
  `name_table` varchar(20) DEFAULT NULL,
  `time_of_action` datetime(6) DEFAULT NULL,
  `id_of_target_table` int DEFAULT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log`
--

LOCK TABLES `log` WRITE;
/*!40000 ALTER TABLE `log` DISABLE KEYS */;
INSERT INTO `log` VALUES (1,'INSERT','passenger','2024-11-03 17:55:03.000000',7),(2,'UPDATE','passenger','2024-11-03 17:55:49.000000',7),(3,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',1),(4,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',1),(5,'UPDATE','train_card','2024-11-03 19:15:44.000000',1),(6,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',2),(7,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',2),(8,'UPDATE','train_card','2024-11-03 19:15:44.000000',2),(9,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',3),(10,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',3),(11,'UPDATE','train_card','2024-11-03 19:15:44.000000',3),(12,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',4),(13,'UPDATE','schedule_card','2024-11-03 19:15:44.000000',4),(14,'UPDATE','train_card','2024-11-03 19:15:44.000000',4),(15,'UPDATE','schedule_card','2024-11-03 19:16:00.000000',2),(16,'UPDATE','schedule_card','2024-11-03 19:16:00.000000',2),(17,'UPDATE','train_card','2024-11-03 19:16:00.000000',2),(18,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',1),(19,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',1),(20,'UPDATE','train_card','2024-11-03 21:44:48.000000',1),(21,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',2),(22,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',2),(23,'UPDATE','train_card','2024-11-03 21:44:48.000000',2),(24,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',3),(25,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',3),(26,'UPDATE','train_card','2024-11-03 21:44:48.000000',3),(27,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',4),(28,'UPDATE','schedule_card','2024-11-03 21:44:48.000000',4),(29,'UPDATE','train_card','2024-11-03 21:44:48.000000',4),(30,'UPDATE','schedule_card','2024-11-03 21:45:09.000000',1),(31,'UPDATE','schedule_card','2024-11-03 21:45:09.000000',1),(32,'UPDATE','train_card','2024-11-03 21:45:09.000000',1),(33,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',1),(34,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',1),(35,'UPDATE','train_card','2024-11-03 21:45:43.000000',1),(36,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',2),(37,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',2),(38,'UPDATE','train_card','2024-11-03 21:45:43.000000',2),(39,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',3),(40,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',3),(41,'UPDATE','train_card','2024-11-03 21:45:43.000000',3),(42,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',4),(43,'UPDATE','schedule_card','2024-11-03 21:45:43.000000',4),(44,'UPDATE','train_card','2024-11-03 21:45:43.000000',4),(45,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',1),(46,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',1),(47,'UPDATE','train_card','2024-11-03 21:49:23.000000',1),(48,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',2),(49,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',2),(50,'UPDATE','train_card','2024-11-03 21:49:23.000000',2),(51,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',3),(52,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',3),(53,'UPDATE','train_card','2024-11-03 21:49:23.000000',3),(54,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',4),(55,'UPDATE','schedule_card','2024-11-03 21:49:23.000000',4),(56,'UPDATE','train_card','2024-11-03 21:49:23.000000',4),(57,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',1),(58,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',1),(59,'UPDATE','train_card','2024-11-03 21:51:31.000000',1),(60,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',2),(61,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',2),(62,'UPDATE','train_card','2024-11-03 21:51:31.000000',2),(63,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',3),(64,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',3),(65,'UPDATE','train_card','2024-11-03 21:51:31.000000',3),(66,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',4),(67,'UPDATE','schedule_card','2024-11-03 21:51:31.000000',4),(68,'UPDATE','train_card','2024-11-03 21:51:31.000000',4),(69,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',1),(70,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',1),(71,'UPDATE','train_card','2024-11-03 21:58:22.000000',1),(72,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',2),(73,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',2),(74,'UPDATE','train_card','2024-11-03 21:58:22.000000',2),(75,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',3),(76,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',3),(77,'UPDATE','train_card','2024-11-03 21:58:22.000000',3),(78,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',4),(79,'UPDATE','schedule_card','2024-11-03 21:58:22.000000',4),(80,'UPDATE','train_card','2024-11-03 21:58:22.000000',4),(81,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',1),(82,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',1),(83,'UPDATE','train_card','2024-11-03 22:02:57.000000',1),(84,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',2),(85,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',2),(86,'UPDATE','train_card','2024-11-03 22:02:57.000000',2),(87,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',3),(88,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',3),(89,'UPDATE','train_card','2024-11-03 22:02:57.000000',3),(90,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',4),(91,'UPDATE','schedule_card','2024-11-03 22:02:57.000000',4),(92,'UPDATE','train_card','2024-11-03 22:02:57.000000',4),(93,'UPDATE','schedule_card','2024-11-03 22:12:41.000000',1),(94,'UPDATE','schedule_card','2024-11-03 22:12:41.000000',1),(95,'UPDATE','train_card','2024-11-03 22:12:41.000000',1),(96,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',1),(97,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',1),(98,'UPDATE','train_card','2024-11-03 22:14:43.000000',1),(99,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',2),(100,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',2),(101,'UPDATE','train_card','2024-11-03 22:14:43.000000',2),(102,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',3),(103,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',3),(104,'UPDATE','train_card','2024-11-03 22:14:43.000000',3),(105,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',4),(106,'UPDATE','schedule_card','2024-11-03 22:14:43.000000',4),(107,'UPDATE','train_card','2024-11-03 22:14:43.000000',4),(108,'INSERT','vip_hall','2024-11-03 23:00:41.000000',2),(109,'INSERT','vip_hall','2024-11-03 23:01:24.000000',3),(110,'UPDATE','passenger','2024-11-03 23:59:34.000000',2),(111,'UPDATE','passenger','2024-11-04 11:37:56.000000',7),(112,'UPDATE','passenger','2024-11-04 12:44:21.000000',4),(113,'UPDATE','passenger','2024-11-04 12:44:21.000000',6),(114,'UPDATE','passenger','2024-11-04 12:44:21.000000',3),(115,'UPDATE','passenger','2024-11-04 12:44:21.000000',1),(116,'UPDATE','passenger','2024-11-04 12:47:20.000000',7),(117,'UPDATE','passenger','2024-11-04 12:47:20.000000',5),(118,'UPDATE','passenger','2024-11-04 12:47:20.000000',2),(119,'UPDATE','passenger','2024-11-04 12:47:20.000000',3),(120,'UPDATE','passenger','2024-11-04 12:47:20.000000',4),(121,'UPDATE','passenger','2024-11-04 12:47:20.000000',6),(122,'UPDATE','vip_hall','2024-11-04 13:00:11.000000',3),(123,'UPDATE','vip_hall','2024-11-04 13:00:11.000000',2),(124,'UPDATE','vip_hall','2024-11-04 13:00:11.000000',1),(125,'UPDATE','vip_hall','2024-11-04 13:05:31.000000',2),(126,'UPDATE','vip_hall','2024-11-04 13:05:31.000000',1),(127,'UPDATE','vip_hall','2024-11-04 13:05:31.000000',3),(128,'INSERT','vip_hall','2024-11-04 13:13:51.000000',5),(129,'UPDATE','passenger','2024-11-04 13:29:22.000000',4),(130,'UPDATE','passenger','2024-11-04 13:29:55.000000',4),(131,'UPDATE','passenger','2024-11-04 13:30:04.000000',4),(132,'UPDATE','passenger','2024-11-04 14:16:48.000000',3),(133,'INSERT','waiting_hall','2024-11-04 16:00:10.000000',1),(134,'UPDATE','waiting_hall','2024-11-04 16:00:10.000000',1),(135,'INSERT','waiting_hall','2024-11-04 16:01:03.000000',2),(136,'UPDATE','waiting_hall','2024-11-04 16:01:03.000000',2),(137,'INSERT','waiting_hall','2024-11-04 16:01:21.000000',3),(138,'UPDATE','waiting_hall','2024-11-04 16:01:21.000000',3),(139,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',1),(140,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',1),(141,'UPDATE','train_card','2024-11-04 19:50:28.000000',1),(142,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',2),(143,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',2),(144,'UPDATE','train_card','2024-11-04 19:50:28.000000',2),(145,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',3),(146,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',3),(147,'UPDATE','train_card','2024-11-04 19:50:28.000000',3),(148,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',4),(149,'UPDATE','schedule_card','2024-11-04 19:50:28.000000',4),(150,'UPDATE','train_card','2024-11-04 19:50:28.000000',4),(151,'INSERT','schedule_card','2024-11-04 19:57:59.000000',7),(152,'INSERT','schedule_card','2024-11-04 19:57:59.000000',8),(153,'UPDATE','schedule_card','2024-11-04 20:01:03.000000',6),(154,'INSERT','schedule_card','2024-11-04 20:01:03.000000',9),(155,'INSERT','schedule_card','2024-11-04 20:01:36.000000',10),(156,'INSERT','schedule_card','2024-11-04 20:05:12.000000',11),(157,'INSERT','schedule_card','2024-11-04 20:05:12.000000',12),(158,'INSERT','schedule_card','2024-11-04 20:08:29.000000',13),(159,'INSERT','schedule_card','2024-11-04 20:08:29.000000',14),(160,'INSERT','schedule_card','2024-11-04 20:08:29.000000',15),(161,'INSERT','schedule_card','2024-11-04 20:08:29.000000',16),(162,'UPDATE','passenger','2024-11-04 20:36:12.000000',2),(163,'INSERT','railway_worker','2024-11-04 21:11:53.000000',1),(164,'INSERT','railway_worker','2024-11-04 21:15:15.000000',2),(165,'INSERT','railway_worker','2024-11-04 21:23:55.000000',3),(166,'INSERT','railway_worker','2024-11-04 21:29:38.000000',4),(167,'INSERT','railway_worker','2024-11-04 21:39:21.000000',5),(168,'INSERT','railway_worker','2024-11-04 22:39:11.000000',6),(169,'INSERT','railway_worker','2024-11-04 22:39:53.000000',7),(170,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',1),(171,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',1),(172,'UPDATE','train_card','2024-11-05 12:36:28.000000',1),(173,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',2),(174,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',2),(175,'UPDATE','train_card','2024-11-05 12:36:28.000000',2),(176,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',3),(177,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',3),(178,'UPDATE','train_card','2024-11-05 12:36:28.000000',3),(179,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',4),(180,'UPDATE','schedule_card','2024-11-05 12:36:28.000000',4),(181,'UPDATE','train_card','2024-11-05 12:36:28.000000',4),(182,'INSERT','train_card','2024-11-05 12:39:26.000000',6),(183,'INSERT','train_card','2024-11-05 12:41:44.000000',7),(184,'INSERT','train_card','2024-11-05 12:41:44.000000',8),(185,'INSERT','train_card','2024-11-05 12:41:44.000000',9),(186,'INSERT','train_card','2024-11-05 12:41:44.000000',10),(187,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',8),(188,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',8),(189,'UPDATE','train_card','2024-11-05 12:44:27.000000',8),(190,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',9),(191,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',9),(192,'UPDATE','train_card','2024-11-05 12:44:27.000000',9),(193,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',6),(194,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',6),(195,'UPDATE','train_card','2024-11-05 12:44:27.000000',7),(196,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',5),(197,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',5),(198,'UPDATE','train_card','2024-11-05 12:44:27.000000',6),(199,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',10),(200,'UPDATE','schedule_card','2024-11-05 12:44:27.000000',10),(201,'UPDATE','train_card','2024-11-05 12:44:27.000000',10),(202,'INSERT','train_card','2024-11-05 12:44:27.000000',11),(203,'INSERT','train_card','2024-11-05 12:44:27.000000',12),(204,'INSERT','train_card','2024-11-05 12:45:42.000000',13),(205,'INSERT','train_card','2024-11-05 12:45:42.000000',14),(206,'INSERT','train_card','2024-11-05 12:45:42.000000',15),(207,'INSERT','train_card','2024-11-05 12:45:42.000000',16),(208,'UPDATE','schedule_card','2024-11-05 12:56:49.000000',11),(209,'UPDATE','schedule_card','2024-11-05 12:56:49.000000',11),(210,'UPDATE','train_card','2024-11-05 12:56:49.000000',11),(211,'UPDATE','schedule_card','2024-11-05 12:56:49.000000',12),(212,'UPDATE','schedule_card','2024-11-05 12:56:49.000000',12),(213,'UPDATE','train_card','2024-11-05 12:56:49.000000',12),(214,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',1),(215,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',1),(216,'UPDATE','train_card','2024-11-05 21:06:36.000000',1),(217,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',2),(218,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',2),(219,'UPDATE','train_card','2024-11-05 21:06:36.000000',2),(220,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',3),(221,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',3),(222,'UPDATE','train_card','2024-11-05 21:06:36.000000',3),(223,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',4),(224,'UPDATE','schedule_card','2024-11-05 21:06:36.000000',4),(225,'UPDATE','train_card','2024-11-05 21:06:36.000000',4),(226,'UPDATE','schedule_card','2024-11-05 21:23:25.000000',1),(227,'UPDATE','schedule_card','2024-11-05 21:23:25.000000',1),(228,'UPDATE','train_card','2024-11-05 21:23:25.000000',1),(230,'UPDATE','schedule_card','2024-11-05 21:24:31.000000',1),(231,'UPDATE','schedule_card','2024-11-05 21:24:31.000000',1),(232,'UPDATE','train_card','2024-11-05 21:24:31.000000',1),(233,'UPDATE','schedule_card','2024-11-05 21:24:45.000000',1),(234,'UPDATE','schedule_card','2024-11-05 21:24:45.000000',1),(235,'UPDATE','train_card','2024-11-05 21:24:45.000000',1),(237,'UPDATE','schedule_card','2024-11-05 21:26:42.000000',1),(238,'UPDATE','schedule_card','2024-11-05 21:26:42.000000',1),(239,'UPDATE','train_card','2024-11-05 21:26:42.000000',1),(246,'UPDATE','train_card','2024-11-05 22:18:38.000000',2),(247,'UPDATE','schedule_card','2024-11-05 22:18:38.000000',2),(248,'UPDATE','schedule_card','2024-11-05 22:18:38.000000',2),(249,'UPDATE','train_card','2024-11-05 22:18:52.000000',3),(250,'UPDATE','schedule_card','2024-11-05 22:18:52.000000',3),(251,'UPDATE','schedule_card','2024-11-05 22:18:52.000000',3),(252,'UPDATE','train_card','2024-11-05 22:19:31.000000',4),(253,'UPDATE','schedule_card','2024-11-05 22:19:31.000000',4),(254,'UPDATE','schedule_card','2024-11-05 22:19:31.000000',4),(255,'UPDATE','train_card','2024-11-05 22:19:46.000000',6),(256,'UPDATE','schedule_card','2024-11-05 22:19:46.000000',5),(257,'UPDATE','schedule_card','2024-11-05 22:19:46.000000',5),(258,'UPDATE','train_card','2024-11-05 22:20:25.000000',1),(259,'UPDATE','schedule_card','2024-11-05 22:20:25.000000',1),(260,'UPDATE','schedule_card','2024-11-05 22:20:25.000000',1),(261,'UPDATE','train_card','2024-11-05 22:20:54.000000',1),(262,'UPDATE','schedule_card','2024-11-05 22:20:54.000000',1),(263,'UPDATE','schedule_card','2024-11-05 22:20:54.000000',1),(264,'UPDATE','train_card','2024-11-05 22:21:05.000000',2),(265,'UPDATE','schedule_card','2024-11-05 22:21:05.000000',2),(266,'UPDATE','schedule_card','2024-11-05 22:21:05.000000',2),(267,'UPDATE','train_card','2024-11-05 22:21:28.000000',1),(268,'UPDATE','schedule_card','2024-11-05 22:21:28.000000',1),(269,'UPDATE','schedule_card','2024-11-05 22:21:28.000000',1),(270,'UPDATE','train_card','2024-11-05 22:25:12.000000',1),(271,'UPDATE','schedule_card','2024-11-05 22:25:12.000000',1),(272,'UPDATE','schedule_card','2024-11-05 22:25:12.000000',1),(273,'UPDATE','schedule_card','2024-11-05 22:25:59.000000',6),(274,'UPDATE','train_card','2024-11-05 22:28:23.000000',1),(275,'UPDATE','schedule_card','2024-11-05 22:28:23.000000',1),(276,'UPDATE','schedule_card','2024-11-05 22:28:23.000000',1),(277,'UPDATE','train_card','2024-11-05 22:28:41.000000',1),(278,'UPDATE','schedule_card','2024-11-05 22:28:41.000000',1),(279,'UPDATE','schedule_card','2024-11-05 22:28:41.000000',1),(280,'UPDATE','train_card','2024-11-05 22:29:52.000000',3),(281,'UPDATE','schedule_card','2024-11-05 22:29:52.000000',3),(282,'UPDATE','schedule_card','2024-11-05 22:29:52.000000',3),(283,'UPDATE','train_card','2024-11-05 22:32:25.000000',3),(284,'UPDATE','schedule_card','2024-11-05 22:32:25.000000',3),(285,'UPDATE','schedule_card','2024-11-05 22:32:25.000000',3),(286,'UPDATE','train_card','2024-11-05 22:32:52.000000',1),(287,'UPDATE','schedule_card','2024-11-05 22:32:52.000000',1),(288,'UPDATE','schedule_card','2024-11-05 22:32:52.000000',1),(289,'UPDATE','train_card','2024-11-05 22:33:07.000000',1),(290,'UPDATE','schedule_card','2024-11-05 22:33:07.000000',1),(291,'UPDATE','schedule_card','2024-11-05 22:33:07.000000',1),(292,'UPDATE','train_card','2024-11-05 22:33:47.000000',1),(293,'UPDATE','schedule_card','2024-11-05 22:33:47.000000',1),(294,'UPDATE','schedule_card','2024-11-05 22:33:47.000000',1),(295,'UPDATE','train_card','2024-11-05 22:34:00.000000',1),(296,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',1),(297,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',1),(298,'UPDATE','train_card','2024-11-05 22:34:00.000000',2),(299,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',2),(300,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',2),(301,'UPDATE','train_card','2024-11-05 22:34:00.000000',3),(302,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',3),(303,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',3),(304,'UPDATE','train_card','2024-11-05 22:34:00.000000',4),(305,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',4),(306,'UPDATE','schedule_card','2024-11-05 22:34:00.000000',4);
/*!40000 ALTER TABLE `log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `id_passenger` int NOT NULL AUTO_INCREMENT,
  `id_vip_hall` int DEFAULT NULL,
  `mail` varchar(20) DEFAULT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `second_name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_passenger`),
  KEY `FK3h62sp03gywlqb2vemxm4qak0` (`id_vip_hall`),
  CONSTRAINT `FK3h62sp03gywlqb2vemxm4qak0` FOREIGN KEY (`id_vip_hall`) REFERENCES `vip_hall` (`id_vip_hall`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,2,'vtre@mail.ru','34567890','Alexandr','Sergeevich','Vyakhirev'),(2,3,'vtre@mail.ru','8345687','Alexandr','Pavlovich','Kuslin'),(3,1,'vtre@mail.ru','83456789','Alexandr','Chernov','Alekseevich'),(4,NULL,'vtre@mail.ru','0987654','Mihail','Pavlovich','Lisovsky'),(5,1,'vtre@mail.ru','8345687','Maria','Olegovna','Stepushina'),(6,2,'vtre@mail.ru','45678','Gleb','Ivanovich','Voropaev'),(7,NULL,'vtre@mail.ru','45678','Sergey','Alexandrovich','Morozov');
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_passenger` AFTER INSERT ON `passenger` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table,time_of_action, action, name_table)
        VALUES (NEW.id_passenger,NOW(), 'INSERT', 'passenger');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_passenger` AFTER UPDATE ON `passenger` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_passenger, NOW(), 'UPDATE', 'passenger');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `railway_worker`
--

DROP TABLE IF EXISTS `railway_worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `railway_worker` (
  `id_railway_worker` int NOT NULL AUTO_INCREMENT,
  `id_station` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `second_name` varchar(50) DEFAULT NULL,
  `surname` varchar(50) DEFAULT NULL,
  `post` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_railway_worker`),
  KEY `FK5nlf3w8v8elgs6uo87er94ig1` (`id_station`),
  CONSTRAINT `FK5nlf3w8v8elgs6uo87er94ig1` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `railway_worker`
--

LOCK TABLES `railway_worker` WRITE;
/*!40000 ALTER TABLE `railway_worker` DISABLE KEYS */;
INSERT INTO `railway_worker` VALUES (1,1,'Ivan','Ivanovich','Ivanov','Guard'),(5,1,'Ivan','Ivanovich','Ivanov','Guard');
/*!40000 ALTER TABLE `railway_worker` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_railway_worker` AFTER INSERT ON `railway_worker` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_railway_worker, NOW(), 'INSERT', 'railway_worker');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_railway_worker` AFTER UPDATE ON `railway_worker` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_railway_worker,NOW(), 'UPDATE', 'railway_worker');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `route`
--

DROP TABLE IF EXISTS `route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `route` (
  `id_route` int NOT NULL AUTO_INCREMENT,
  `id_station` int DEFAULT NULL,
  `id_train` int DEFAULT NULL,
  `number` int DEFAULT NULL,
  PRIMARY KEY (`id_route`),
  KEY `FKtd29rllif7i2i8qtf1wrh23yx` (`id_station`),
  KEY `FKsorqmxfliux6281id10b9xl1p` (`id_train`),
  CONSTRAINT `FKsorqmxfliux6281id10b9xl1p` FOREIGN KEY (`id_train`) REFERENCES `train` (`id_train`),
  CONSTRAINT `FKtd29rllif7i2i8qtf1wrh23yx` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `route`
--

LOCK TABLES `route` WRITE;
/*!40000 ALTER TABLE `route` DISABLE KEYS */;
INSERT INTO `route` VALUES (2,1,1,1),(3,1,2,2),(4,1,3,5),(5,1,4,8);
/*!40000 ALTER TABLE `route` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_route` AFTER INSERT ON `route` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_route, NOW(), 'INSERT', 'route');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_route` AFTER UPDATE ON `route` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_route, NOW(), 'UPDATE', 'route');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule` (
  `id_schedule` int NOT NULL AUTO_INCREMENT,
  `duration` varchar(50) DEFAULT NULL,
  `start_point` varchar(50) DEFAULT NULL,
  `end_point` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_schedule`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule`
--

LOCK TABLES `schedule` WRITE;
/*!40000 ALTER TABLE `schedule` DISABLE KEYS */;
INSERT INTO `schedule` VALUES (1,'48 hours','St.Petersburg','Samara'),(2,'5 hours 30 minutes','St.Petersburg','Petrozavodsk'),(3,'10 hours','St.Petersburg','Moscow'),(4,'10 hours','St.Petersburg','Cherepovetz');
/*!40000 ALTER TABLE `schedule` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_schedule` AFTER INSERT ON `schedule` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_schedule, NOW(), 'INSERT', 'schedule');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_schedule` AFTER UPDATE ON `schedule` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_schedule, NOW(), 'UPDATE', 'schedule');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `schedule_card`
--

DROP TABLE IF EXISTS `schedule_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedule_card` (
  `id_schedule_card` int NOT NULL AUTO_INCREMENT,
  `id_schedule` int DEFAULT NULL,
  `stop_point` varchar(50) DEFAULT NULL,
  `time_of_arrive` datetime DEFAULT NULL,
  `time_of_departure` datetime DEFAULT NULL,
  PRIMARY KEY (`id_schedule_card`),
  KEY `id_schedule` (`id_schedule`),
  CONSTRAINT `FKcjrltnqsxnr91pj1gux2kaoxt` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id_schedule`),
  CONSTRAINT `schedule_card_ibfk_1` FOREIGN KEY (`id_schedule`) REFERENCES `schedule` (`id_schedule`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_card`
--

LOCK TABLES `schedule_card` WRITE;
/*!40000 ALTER TABLE `schedule_card` DISABLE KEYS */;
INSERT INTO `schedule_card` VALUES (1,2,'St.Petersburg',NULL,'2024-11-20 15:22:00'),(2,2,'Podporozhie','2024-11-18 12:05:00','2024-11-18 10:05:00'),(3,2,'Svir','2024-11-18 12:35:00','2024-11-18 10:35:00'),(4,2,'Petrozavodsk','2024-11-18 12:00:00',NULL),(5,1,'St.Petersburg',NULL,'2024-11-24 20:00:00'),(6,1,'Kovrov','2024-11-25 21:20:00','2024-11-25 21:30:00'),(8,1,'Burmakino','2024-11-25 23:00:00','2024-11-25 23:20:00'),(9,1,'Volga','2024-11-26 06:00:00','2024-11-26 06:20:00'),(10,1,'Samara','2024-11-27 21:30:00',NULL),(11,3,'St.Petersburg',NULL,'2024-11-26 20:00:00'),(12,3,'Moscow','2024-11-27 06:00:00',NULL),(13,4,'St.Petersburg',NULL,'2024-11-22 12:00:00'),(14,4,'Volhov','2024-11-22 15:00:00','2024-11-22 15:10:00'),(15,4,'Pikalevo','2024-11-22 17:20:00','2024-11-22 17:30:00'),(16,4,'Cherepovetz','2024-11-22 22:00:00',NULL);
/*!40000 ALTER TABLE `schedule_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_schedule_card` AFTER INSERT ON `schedule_card` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_schedule_card, NOW(), 'INSERT', 'schedule_card');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_schedule_card` AFTER UPDATE ON `schedule_card` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_schedule_card, NOW(), 'UPDATE', 'schedule_card');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `station`
--

DROP TABLE IF EXISTS `station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `station` (
  `id_station` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `human_capacity` int DEFAULT NULL,
  PRIMARY KEY (`id_station`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `station`
--

LOCK TABLES `station` WRITE;
/*!40000 ALTER TABLE `station` DISABLE KEYS */;
INSERT INTO `station` VALUES (1,'Leningadskay','St. Petersburg',2000);
/*!40000 ALTER TABLE `station` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_station` AFTER INSERT ON `station` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_station, NOW(), 'INSERT', 'station');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_station` AFTER UPDATE ON `station` FOR EACH ROW begin
    INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
    VALUES (NEW.id_station, NOW(), 'UPDATE', 'station');
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `train`
--

DROP TABLE IF EXISTS `train`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train` (
  `id_train` int NOT NULL AUTO_INCREMENT,
  `route_name` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `number_of_wagons` int DEFAULT NULL,
  `numbering_of_wagons` enum('From the head of the train','From the back of the train') DEFAULT NULL,
  `presence_of_restaurant_wagon` varchar(5) DEFAULT NULL,
  `presence_of_shower` varchar(5) DEFAULT NULL,
  `train_number` int DEFAULT NULL,
  PRIMARY KEY (`id_train`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train`
--

LOCK TABLES `train` WRITE;
/*!40000 ALTER TABLE `train` DISABLE KEYS */;
INSERT INTO `train` VALUES (1,'St.Petersburg-Petrozavodsk','sitting',6,'From the head of the train','no','no',805),(2,'St.Petersburg-Cherepovetz','reserved seat',12,'From the head of the train','yes','no',2001),(3,'St.Petersburg-Samara','compartment',14,'From the back of the train','yes','yes',3004),(4,'St.Petersburg-Moscow','sitting',8,'From the head of the train','no','no',604);
/*!40000 ALTER TABLE `train` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_train` AFTER INSERT ON `train` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_train, NOW(), 'INSERT', 'train');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_train` AFTER UPDATE ON `train` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_train, NOW(), 'UPDATE', 'train');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `train_card`
--

DROP TABLE IF EXISTS `train_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `train_card` (
  `delay` time(6) DEFAULT '00:00:00.000000',
  `id_schedule_card` int DEFAULT NULL,
  `id_train` int DEFAULT NULL,
  `id_train_card` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_train_card`),
  KEY `FK78gcxhphpsaowpc3ui6ybal4a` (`id_schedule_card`),
  KEY `FK14icqumh7o1a4i59666htv3i9` (`id_train`),
  CONSTRAINT `FK14icqumh7o1a4i59666htv3i9` FOREIGN KEY (`id_train`) REFERENCES `train` (`id_train`),
  CONSTRAINT `FK78gcxhphpsaowpc3ui6ybal4a` FOREIGN KEY (`id_schedule_card`) REFERENCES `schedule_card` (`id_schedule_card`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `train_card`
--

LOCK TABLES `train_card` WRITE;
/*!40000 ALTER TABLE `train_card` DISABLE KEYS */;
INSERT INTO `train_card` VALUES ('00:00:00.000000',1,1,1),('00:00:00.000000',2,1,2),('00:00:00.000000',3,1,3),('00:00:00.000000',4,1,4),('02:00:00.000000',5,3,6),('00:00:00.000000',6,3,7),('00:00:00.000000',8,3,8),('00:00:00.000000',9,3,9),('00:00:00.000000',10,3,10),('00:00:00.000000',11,4,11),('00:00:00.000000',12,4,12),('00:00:00.000000',13,2,13),('00:00:00.000000',14,2,14),('00:00:00.000000',15,2,15),('00:00:00.000000',16,2,16);
/*!40000 ALTER TABLE `train_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_train_card` AFTER INSERT ON `train_card` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_train_card, NOW(), 'INSERT', 'train_card');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_train_card` AFTER UPDATE ON `train_card` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_train_card, NOW(), 'UPDATE', 'train_card');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_time` AFTER UPDATE ON `train_card` FOR EACH ROW begin
    update schedule_card inner join train_card on train_card.id_schedule_card = schedule_card.id_schedule_card
    set schedule_card.time_of_arrive=CASE
                                         when NEW.delay > OLD.delay
                                             then ADDTIME(schedule_card.time_of_arrive, TIMEDIFF(NEW.delay, OLD.delay))
                                         when NEW.delay < OLD.delay
                                             then SUBTIME(schedule_card.time_of_arrive, -TIMEDIFF(NEW.delay, OLD.delay))
                                         else schedule_card.time_of_arrive end
    WHERE schedule_card.id_schedule_card = NEW.id_schedule_card;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_time2` AFTER UPDATE ON `train_card` FOR EACH ROW begin
    update schedule_card inner join train_card on train_card.id_schedule_card = schedule_card.id_schedule_card
    set schedule_card.time_of_departure=CASE
                                         when NEW.delay > OLD.delay
                                             then ADDTIME(schedule_card.time_of_departure, TIMEDIFF(NEW.delay, OLD.delay))
                                         when NEW.delay < OLD.delay
                                             then SUBTIME(schedule_card.time_of_departure, -TIMEDIFF(NEW.delay, OLD.delay))
                                         else schedule_card.time_of_departure end
    WHERE schedule_card.id_schedule_card = NEW.id_schedule_card;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `vip_hall`
--

DROP TABLE IF EXISTS `vip_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vip_hall` (
  `id_station` int DEFAULT NULL,
  `id_vip_hall` int NOT NULL AUTO_INCREMENT,
  `wifi_access` varchar(4) DEFAULT NULL,
  `sofa_with_table` varchar(10) DEFAULT NULL,
  `tv` varchar(10) DEFAULT NULL,
  `snack_machine` varchar(4) DEFAULT NULL,
  `number_of_hall` int NOT NULL,
  PRIMARY KEY (`id_vip_hall`),
  UNIQUE KEY `unique_number_of_hall` (`number_of_hall`),
  KEY `FK725d8j7s99e5p3wqe7xet34q` (`id_station`),
  KEY `index_number_of_hall` (`number_of_hall`),
  CONSTRAINT `FK725d8j7s99e5p3wqe7xet34q` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vip_hall`
--

LOCK TABLES `vip_hall` WRITE;
/*!40000 ALTER TABLE `vip_hall` DISABLE KEYS */;
INSERT INTO `vip_hall` VALUES (1,1,'yes','yes','yes','yes',1),(1,2,'yes','yes','yes','no',2),(1,3,'no','no','yes','yes',3);
/*!40000 ALTER TABLE `vip_hall` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_vip_hall` AFTER INSERT ON `vip_hall` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_vip_hall, NOW(), 'INSERT', 'vip_hall');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_vip_hall` AFTER UPDATE ON `vip_hall` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_vip_hall, NOW(), 'UPDATE', 'vip_hall');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `waiting_hall`
--

DROP TABLE IF EXISTS `waiting_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `waiting_hall` (
  `total_seats` int DEFAULT NULL,
  `id_station` int NOT NULL,
  `id_waiting_hall` int NOT NULL AUTO_INCREMENT,
  `quantity_usb_charges` int DEFAULT NULL,
  PRIMARY KEY (`id_waiting_hall`),
  KEY `FKb64exmkf9obny1gnyjue5ei5n` (`id_station`),
  CONSTRAINT `FKb64exmkf9obny1gnyjue5ei5n` FOREIGN KEY (`id_station`) REFERENCES `station` (`id_station`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiting_hall`
--

LOCK TABLES `waiting_hall` WRITE;
/*!40000 ALTER TABLE `waiting_hall` DISABLE KEYS */;
INSERT INTO `waiting_hall` VALUES (100,1,1,35),(200,1,2,40),(200,1,3,25);
/*!40000 ALTER TABLE `waiting_hall` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ins_waiting_hall` AFTER INSERT ON `waiting_hall` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_waiting_hall, NOW(), 'INSERT', 'waiting_hall');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `upd_waiting_hall` AFTER INSERT ON `waiting_hall` FOR EACH ROW begin
        INSERT INTO log (id_of_target_table, time_of_action, action, name_table)
        VALUES (NEW.id_waiting_hall, NOW(), 'UPDATE', 'waiting_hall');
    end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-06 11:03:57
