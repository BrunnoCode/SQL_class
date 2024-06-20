-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: PODCASTDB
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.22.04.3

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
-- Table structure for table `Descargas`
--

DROP TABLE IF EXISTS `Descargas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Descargas` (
  `id_descarga` int NOT NULL AUTO_INCREMENT,
  `id_usuario` int DEFAULT NULL,
  `id_podcast` int DEFAULT NULL,
  `hora_descarga` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_descarga`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_podcast` (`id_podcast`),
  CONSTRAINT `Descargas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `Users` (`id_user`),
  CONSTRAINT `Descargas_ibfk_2` FOREIGN KEY (`id_podcast`) REFERENCES `Podcast` (`id_podcast`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Descargas`
--

LOCK TABLES `Descargas` WRITE;
/*!40000 ALTER TABLE `Descargas` DISABLE KEYS */;
INSERT INTO `Descargas` VALUES (1,1,1,'2024-05-23 19:34:09'),(2,2,3,'2024-06-13 19:34:09'),(3,3,5,'2024-06-08 19:34:09'),(4,4,7,'2024-06-09 19:34:09'),(5,5,9,'2024-06-03 19:34:09'),(6,6,2,'2024-05-26 19:34:09'),(7,7,4,'2024-06-05 19:34:09'),(8,8,6,'2024-05-22 19:34:09'),(9,9,8,'2024-06-10 19:34:09'),(10,10,10,'2024-05-25 19:34:09'),(11,11,1,'2024-06-11 19:34:09'),(12,12,3,'2024-05-22 19:34:09'),(13,13,5,'2024-05-25 19:34:09'),(14,14,7,'2024-06-05 19:34:09'),(15,15,9,'2024-05-25 19:34:09'),(16,16,2,'2024-05-25 19:34:09'),(17,17,4,'2024-05-29 19:34:09'),(18,18,6,'2024-06-16 19:34:09'),(19,19,8,'2024-06-07 19:34:09'),(20,20,10,'2024-05-27 19:34:09');
/*!40000 ALTER TABLE `Descargas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detail_pedido`
--

DROP TABLE IF EXISTS `Detail_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detail_pedido` (
  `id_pedido` int NOT NULL,
  `peso_archivo` decimal(10,2) DEFAULT NULL,
  `duracion_episodio` time DEFAULT NULL,
  `enlace_descarga` varchar(255) DEFAULT NULL,
  `formato_archivo` varchar(50) DEFAULT NULL,
  `estado_pedido` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`),
  CONSTRAINT `Detail_pedido_ibfk_1` FOREIGN KEY (`id_pedido`) REFERENCES `Pedido` (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detail_pedido`
--

LOCK TABLES `Detail_pedido` WRITE;
/*!40000 ALTER TABLE `Detail_pedido` DISABLE KEYS */;
INSERT INTO `Detail_pedido` VALUES (1,150.25,'00:45:30','https://ejemplo.com/descarga1','MP3','Pendiente'),(2,120.50,'00:35:45','https://ejemplo.com/descarga2','MP3','En Proceso'),(3,180.75,'00:55:20','https://ejemplo.com/descarga3','MP3','Entregado'),(4,135.80,'00:40:15','https://ejemplo.com/descarga4','MP3','Cancelado'),(5,165.00,'00:50:00','https://ejemplo.com/descarga5','MP3','Pendiente'),(6,140.30,'00:42:30','https://ejemplo.com/descarga6','MP3','Entregado'),(7,160.90,'00:48:15','https://ejemplo.com/descarga7','MP3','Pendiente'),(8,125.60,'00:37:45','https://ejemplo.com/descarga8','MP3','En Proceso'),(9,170.40,'00:52:00','https://ejemplo.com/descarga9','MP3','Cancelado'),(10,185.20,'01:00:00','https://ejemplo.com/descarga10','MP3','Entregado');
/*!40000 ALTER TABLE `Detail_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pedido`
--

DROP TABLE IF EXISTS `Pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Pedido` (
  `id_pedido` int NOT NULL AUTO_INCREMENT,
  `fecha_pedido` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_id` int NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `Pedido_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `Users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pedido`
--

LOCK TABLES `Pedido` WRITE;
/*!40000 ALTER TABLE `Pedido` DISABLE KEYS */;
INSERT INTO `Pedido` VALUES (1,'2024-05-31 19:45:22',1),(2,'2024-06-19 19:45:22',2),(3,'2024-06-13 19:45:22',3),(4,'2024-05-22 19:45:22',4),(5,'2024-06-15 19:45:22',5),(6,'2024-06-19 19:45:22',6),(7,'2024-06-03 19:45:22',7),(8,'2024-05-26 19:45:22',8),(9,'2024-06-07 19:45:22',9),(10,'2024-05-29 19:45:22',10);
/*!40000 ALTER TABLE `Pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Podcast`
--

DROP TABLE IF EXISTS `Podcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Podcast` (
  `id_podcast` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descripcion` text,
  `autor` varchar(50) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  PRIMARY KEY (`id_podcast`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Podcast`
--

LOCK TABLES `Podcast` WRITE;
/*!40000 ALTER TABLE `Podcast` DISABLE KEYS */;
INSERT INTO `Podcast` VALUES (1,'Podcast de Tecnología','Discusiones sobre las últimas novedades tecnológicas.','Juan Pérez','Tecnología','2024-06-20'),(2,'Podcast de Entretenimiento','Entrevistas con celebridades y comentarios sobre películas y series.','María Gómez','Entretenimiento','2024-06-20'),(3,'Podcast de Salud y Bienestar','Consejos de salud, ejercicios y alimentación saludable.','Carlos Martínez','Salud','2024-06-20'),(4,'Podcast de Noticias','Noticias actualizadas sobre política, economía y eventos globales.','Ana López','Noticias','2024-06-20'),(5,'Podcast de Deportes','Análisis de juegos, entrevistas con atletas y comentarios deportivos.','José Rodríguez','Deportes','2024-06-20'),(6,'Podcast de Ciencia','Discusiones sobre avances científicos y descubrimientos recientes.','Laura Sánchez','Ciencia','2024-06-20'),(7,'Podcast de Educación','Entrevistas con educadores y discusiones sobre métodos de enseñanza.','Pablo González','Educación','2024-06-20'),(8,'Podcast de Negocios','Consejos para emprendedores, entrevistas con empresarios exitosos.','Elena Fernández','Negocios','2024-06-20'),(9,'Podcast de Historia','Relatos históricos, eventos destacados y curiosidades del pasado.','Diego Ruiz','Historia','2024-06-20'),(10,'Podcast de Comedia','Monólogos, chistes y humor para alegrar tu día.','Sara López','Comedia','2024-06-20'),(11,'Podcast de Ciencia Ficción','Explorando mundos imaginarios y tecnologías futuristas','Juan Pérez',NULL,'2023-05-15'),(12,'Entrevistas de Éxito','Conversaciones con líderes y emprendedores exitosos','María Gutiérrez',NULL,'2023-04-20'),(13,'Crímenes Sin Resolver','Analizando casos de crímenes misteriosos sin resolver','Carlos López',NULL,'2023-03-10'),(14,'Economía y Finanzas','Análisis y consejos sobre el mundo de la economía y las finanzas','Ana Martínez',NULL,'2023-02-05'),(15,'Música en Vivo','Grabaciones exclusivas de conciertos y presentaciones en vivo','Pedro Sánchez',NULL,'2023-01-18'),(16,'Gastronomía Internacional','Explorando sabores únicos de diversas culturas culinarias','Laura Rodríguez',NULL,'2022-12-22'),(17,'Destinos de Aventura','Descubre los destinos más emocionantes para los amantes de la aventura','Diego García',NULL,'2022-11-30'),(18,'Avances Médicos','Últimos avances en medicina y tratamientos innovadores','Sofía Fernández',NULL,'2022-10-14'),(19,'Comedia Stand-Up','Risas garantizadas con los mejores comediantes de stand-up','Andrés Jiménez',NULL,'2022-09-08'),(20,'Mindfulness y Meditación','Técnicas para alcanzar la paz interior y la claridad mental','Paula Pérez',NULL,'2022-08-03');
/*!40000 ALTER TABLE `Podcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `data_registro` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'João Silva','joao.silva@example.com','senha123','2024-06-20 18:46:35'),(2,'Maria Santos','maria.santos@example.com','senha456','2024-06-20 18:46:35'),(3,'Pedro Oliveira','pedro.oliveira@example.com','senha789','2024-06-20 18:46:35'),(4,'Ana Souza','ana.souza@example.com','senhaabc','2024-06-20 18:46:35'),(5,'Carlos Pereira','carlos.pereira@example.com','senhaxyz','2024-06-20 18:46:35'),(6,'Juliana Lima','juliana.lima@example.com','senha321','2024-06-20 18:46:35'),(7,'Rafael Fernandes','rafael.fernandes@example.com','senha654','2024-06-20 18:46:35'),(8,'Fernanda Costa','fernanda.costa@example.com','senha987','2024-06-20 18:46:35'),(9,'Gustavo Almeida','gustavo.almeida@example.com','senhadef','2024-06-20 18:46:35'),(10,'Patrícia Santos','patricia.santos@example.com','senhauvw','2024-06-20 18:46:35'),(11,'Lucas Martins','lucas.martins@example.com','senha456','2024-06-20 18:46:35'),(12,'Mariana Oliveira','mariana.oliveira@example.com','senha789','2024-06-20 18:46:35'),(13,'Rodrigo Silva','rodrigo.silva@example.com','senhajkl','2024-06-20 18:46:35'),(14,'Amanda Pereira','amanda.pereira@example.com','senhaqwe','2024-06-20 18:46:35'),(15,'Ricardo Souza','ricardo.souza@example.com','senhazxc','2024-06-20 18:46:35'),(16,'Camila Costa','camila.costa@example.com','senha123','2024-06-20 18:46:35'),(17,'Eduardo Santos','eduardo.santos@example.com','senha789','2024-06-20 18:46:35'),(18,'Carolina Lima','carolina.lima@example.com','senhaabc','2024-06-20 18:46:35'),(19,'Felipe Almeida','felipe.almeida@example.com','senhaxyz','2024-06-20 18:46:35'),(20,'Natália Martins','natalia.martins@example.com','senha321','2024-06-20 18:46:35');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-20 22:02:33
