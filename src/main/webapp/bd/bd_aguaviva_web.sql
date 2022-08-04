CREATE DATABASE  IF NOT EXISTS `bd_aguaviva_web` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bd_aguaviva_web`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_aguaviva_web
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumnos` (
  `id_alumnos` int NOT NULL AUTO_INCREMENT,
  `cod_alumno` varchar(45) NOT NULL,
  `nombres` varchar(45) NOT NULL,
  `ape_paterno` varchar(45) NOT NULL,
  `ape_materno` varchar(45) NOT NULL,
  `documento` int NOT NULL,
  `fecha_naci` date NOT NULL,
  `edad` int NOT NULL,
  `nacionalidad` varchar(45) NOT NULL,
  `domicilio` varchar(45) NOT NULL,
  `telefono` int DEFAULT NULL,
  `sexo` varchar(45) NOT NULL,
  `id_apoderado` int NOT NULL,
  `estado_id_estado` int NOT NULL,
  PRIMARY KEY (`id_alumnos`),
  UNIQUE KEY `id_alumnos_UNIQUE` (`id_alumnos`),
  UNIQUE KEY `documento_UNIQUE` (`documento`),
  UNIQUE KEY `cod_alumno` (`cod_alumno`),
  KEY `fk_alumnos_apoderados1_idx` (`id_apoderado`),
  KEY `fk_alumnos_estado1_idx` (`estado_id_estado`),
  CONSTRAINT `fk_alumnos_apoderados1` FOREIGN KEY (`id_apoderado`) REFERENCES `apoderados` (`id_apoderado`),
  CONSTRAINT `fk_alumnos_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumnos`
--

LOCK TABLES `alumnos` WRITE;
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
INSERT INTO `alumnos` VALUES (1,'ALU00001','Mariano Jose','Silva','Roca',22318769,'2014-07-05',8,'PERUANO','AV. TUPAC AMARU 7412',942188797,'M',3,7),(2,'ALU00002','Lucia','Gonzales','Acevedo',19354790,'2016-11-09',6,'PERUANO','CALLE LOS OLIVOS 4563',942188797,'F',4,5),(3,'ALU00003','Juan Pablo','Vergara','Acero',28144756,'2010-07-01',12,'PERUANO','AV. ESPAÑA 458',933288657,'M',6,7),(4,'ALU00004','Charlie','Solano','Hernandez',17456863,'2007-08-06',15,'PERUANO','AV. GIRASOLES 1245',998226192,'M',1,7),(5,'ALU00005','Pedro','Rey','Costa',35216784,'2011-05-21',11,'PERUANO','AV. PORTALES 4512',953579994,'M',2,7),(6,'ALU00006','Carol','Zambrano','Villa',15347985,'2016-10-08',6,'PERUANO','CALLE LIBERACION 8547',977652119,'F',8,5),(7,'ALU00007','Fernando','Cruz','Delgado',23745864,'2015-09-09',7,'PERUANO','AV. PERU 852',903970116,'M',7,5),(8,'ALU00008','Jenny Paola','Jimenez','Piñeros',29436567,'2013-05-19',9,'PERUANO','CALLE SUCRE 7854',942188797,'F',9,5),(9,'ALU00009','Mia Ximena','Narvaez','Blanco',31699760,'2014-10-11',8,'PERUANO','CALLE JUNIN 963',908288822,'F',10,5),(10,'ALU00010','Diana Cecilia','Ubilluz','Rocha',26985310,'2008-07-17',14,'PERUANO','CALLE HIPOLITO UNANUE 852',902775454,'F',11,5);
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `apoderados`
--

DROP TABLE IF EXISTS `apoderados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `apoderados` (
  `id_apoderado` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `documento` int NOT NULL,
  `telefono` int DEFAULT NULL,
  `domicilio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_apoderado`),
  UNIQUE KEY `id_padres_UNIQUE` (`id_apoderado`),
  UNIQUE KEY `documento_UNIQUE` (`documento`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `apoderados`
--

LOCK TABLES `apoderados` WRITE;
/*!40000 ALTER TABLE `apoderados` DISABLE KEYS */;
INSERT INTO `apoderados` VALUES (1,'PADRE','ADRIAN JOSE','HERNANDEZ MONTERROZA',74490801,998226192,'AV. GIRASOLES 1245'),(2,'MADRE','ADRIANA MARCELA','REY SANCHEZ',72732289,953579994,'AV. PORTALES 4512'),(3,'PADRE','MARCELO TRISTAN','ROCA MALCA',77376908,942188797,'AV. TUPAC AMARU 7412'),(4,'TIO','ALEJANDRO','ABONDANO ACEVEDO',75796748,942188797,'CALLE LOS OLIVOS 4563'),(5,'TIO','ALEXANDER','CARVAJAL VARGAS',70468699,907680366,'AV. MIRAFLORES 852'),(6,'PADRE','CAMILO ESTEBAN','ACERO CARO',60368152,933288657,'AV. ESPAÑA 458'),(7,'MADRE','ANDREA LILIANA','CRUZ GARCIA',63345565,903970116,'AV. PERU 852'),(8,'PADRE','ANDRES FELIPE','VILLA MONROY',73752092,977652119,'CALLE LIBERACION 8547'),(9,'TIO','ANGEL','MAHECHA PIÑEROS',74042781,942188797,'CALLE SUCRE 7854'),(10,'TIA','ANGELICA LISSETH','BLANCO CONCHA',78200914,908288822,'CALLE JUNIN 963'),(11,'PADRE','MARIO LUIS','ROCHA GARCIA',73827632,902775454,'CALLE HIPOLITO UNANUE 852'),(12,'MADRE','ANGIE TATIANA','FERNÁNDEZ MARTÍNEZ',73832021,942188797,'CALLE SAN LUIS 457'),(13,'PADRE','DANIEL','POLANCO RUIZ',74463397,924933982,'CALLE LIMA 898'),(14,'TIO','JAVIER JESUS','VILLAMIZAR ARISTIZABAL',77678627,942188797,'AV. EJERCITO 789'),(15,'TIA','RAQUEL','RODRÍGUEZ BOTERO',77320639,942188797,'AV. PANAMA 674'),(16,'PADRE','JEFFREY JAIME','CORTÉS MONTEJO',76670415,903075006,'CALLE BOLOGNESI 254'),(17,'MADRE','SANDRA PAMELA','GOMEZ RODRIGUEZ',71139744,942188797,'CALLE ORBEGOSO 963'),(18,'PADRE','CARLOS ANDRÉS','POLO CASTELLANOS',72420565,942188797,'CALLE GAMARRA 625'),(19,'TIO','DIDIER KARIM','CASTAÑO CONTRERAS',60792235,965212622,'AV. JUAN PABLO II 1425'),(20,'TIA','KATIA FELICIA','MOGOLLÓN PACHÓN',75994637,953108164,'AV. JUAN PABLO II 345');
/*!40000 ALTER TABLE `apoderados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dt_nivelgradoseccion`
--

DROP TABLE IF EXISTS `dt_nivelgradoseccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dt_nivelgradoseccion` (
  `id_nivelgrado` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  `cantidad` int NOT NULL,
  `id_nivel` int NOT NULL,
  `id_grado` int NOT NULL,
  `id_seccion` int NOT NULL,
  `cantidad_actual` int DEFAULT NULL,
  PRIMARY KEY (`id_nivelgrado`),
  UNIQUE KEY `id_nivelgrado` (`id_nivelgrado`),
  KEY `fk_idnivel_idx` (`id_nivel`),
  KEY `fk_idgrado_idx` (`id_grado`),
  KEY `fk_idseccion_idx` (`id_seccion`),
  CONSTRAINT `fk_idgrado` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  CONSTRAINT `fk_idnivel` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`),
  CONSTRAINT `fk_seccion` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id_seccion`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dt_nivelgradoseccion`
--

LOCK TABLES `dt_nivelgradoseccion` WRITE;
/*!40000 ALTER TABLE `dt_nivelgradoseccion` DISABLE KEYS */;
INSERT INTO `dt_nivelgradoseccion` VALUES (1,'AULA INCOMPLETA',30,1,1,1,21),(2,'AULA INCOMPLETA',30,1,2,1,27),(3,'AULA COMPLETA',30,1,3,1,30),(4,'AULA INCOMPLETA',30,1,4,1,22),(5,'AULA INCOMPLETA',30,1,5,1,19),(6,'AULA COMPLETA',30,1,6,1,30),(7,'AULA INCOMPLETA',30,2,1,1,29),(8,'AULA INCOMPLETA',30,2,1,2,17),(9,'AULA INCOMPLETA',30,2,1,3,10),(10,'AULA COMPLETA',30,2,2,1,30),(11,'AULA INCOMPLETA',30,2,2,2,17),(12,'AULA INCOMPLETA',30,2,2,3,24),(13,'AULA INCOMPLETA',30,2,3,1,13),(14,'AULA COMPLETA',30,2,3,2,30),(15,'AULA INCOMPLETA',30,2,3,3,25),(16,'AULA INCOMPLETA',30,2,4,1,14),(17,'AULA INCOMPLETA',30,2,4,2,27),(18,'AULA INCOMPLETA',30,2,4,3,12),(19,'AULA INCOMPLETA',30,2,5,1,10),(20,'AULA COMPLETA',30,2,5,2,30),(21,'AULA INCOMPLETA',30,2,5,3,17);
/*!40000 ALTER TABLE `dt_nivelgradoseccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleados` int NOT NULL AUTO_INCREMENT,
  `cod_empleado` varchar(45) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `documento` int NOT NULL,
  `telefono` int NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `edad` int NOT NULL,
  `estado_id_estado` int NOT NULL,
  PRIMARY KEY (`id_empleados`),
  UNIQUE KEY `id_empleados_UNIQUE` (`id_empleados`),
  UNIQUE KEY `cod_empleado_UNIQUE` (`cod_empleado`),
  UNIQUE KEY `documento_UNIQUE` (`documento`),
  KEY `fk_empleados_estado1_idx` (`estado_id_estado`),
  CONSTRAINT `fk_empleados_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'EM0001','Alejandro David','Mendez Mendez',11564988,99125634,'Av. Perú 1145',25,1),(2,'EM0002','Arnulfo Jose','Carrera García',14552169,95741231,'Jiron Pumacahua 533',41,3),(3,'EM0003','Bernardo Javier','López Serrano',10887661,94565211,'Calle 3 Mz D Lte 5 Urb Los Sauces',28,3),(4,'EM0004','Carlos Armando','Cetino Ruiz',11835749,98455476,'Av. Larco 2240 Dpto 211',34,3),(5,'EM0005','Ramon Esteban','Galindo Asturias',10559648,93324256,'Av. America 1845 Interior C',27,3),(6,'EM0006','César Augusto','Noriega Morales',13694014,98712546,'Av. Cesar Vallejo 735',45,4),(7,'EM0007','Edgar Raúl','Castro Bazan',19825470,99512465,'Condominio El Angel Block D Dpto 506',51,4),(8,'EM0008','Eliza Janet','Perez Cubas',11884328,95574651,'Calle Los Poetas 486',44,3),(9,'EM0009','Fermina','Chacon Soto',10577321,95465321,'Av. Los Ficus 1342',40,3),(10,'EM0010','Héctor Leónidas','Rebaza Quevedo',10849753,97741528,'Jiron Paracas 638 Dpto 401',35,2),(11,'EM0011','Hugo Leonel','Lopez Villacorta',11204589,97835214,'Calle Inca Roca 326',38,3),(12,'EM0012','José Luis','Marino Carrera',14568277,96584442,'Jiron Caceres 766 Dpto 203',39,3),(13,'EM0013','Manuel  Encarnación','Alarcón Diaz',16843570,95142356,'Av. Santo Tomas 569 Interior D',33,3),(14,'EM0014','Rafael Fernando','Soto Juárez',16985653,98744621,'Calle Los Pumas 642',37,4),(15,'EM0015','María Inés','Vásquez Cruz',13018756,91325846,'Jiron Piura 105 Interior F',36,4),(16,'EM0016','Jose Luis','Alemán Galindo',11365400,97517658,'Av. Santa 877 Dpto 404',29,4),(17,'EM0017','Mario Izariel','Villatoro Jarrin',15637489,95244571,'Av. Los Incas 2465 Dpto 302',28,4),(18,'EM0018','Nancy Beatriz','Calderón Muller',13948720,98547632,'Av. El Corregidor 407',32,3),(19,'EM0019','Octavio','Carrasco Ramírez',12004583,96542137,'Condominio Constelacion Block F Dpto 305',33,3),(20,'EM0020','Osman','Rosales Arias',11475036,99874216,'Calle 9 Mz L Lt 22 Urb La Pradera',34,3),(21,'EM0021','Rafael Arnulfo','Carrera Vereau',10675841,96584521,'Calle Ingenieros 664',38,3),(22,'EM0022','Josefa Maritza ','Martinez Canelo',11246750,98765123,'Av. Juan Pablo II 1143',42,3),(23,'EM0023','Josue Daniel','Miranda Valer',14785493,96584413,'Jiron Las Gaviotas 471',43,3),(24,'EM0024','Juan Andres','Alvarez Simac',16347511,98542653,'Calle San Mateo 996 Dpto 203',50,3),(25,'EM0025','Alberto ','Garcia Ramos',10749315,99741564,'Jiron Los Profetas 765',47,3),(26,'EM0026','Ingrid Yessenia','Rodriguez Melgar',18741258,99658214,'Jiron Manco Inca 355',52,3),(27,'EM0027','Ivan Alfredo','Castillo Arevalo',14397473,92548726,'Calle Zaragoza 1024 Dpto 402',34,3),(28,'EM0028','Jimmy Alberto ','Mejia Barrios',10479340,94741235,'Condominio Los Incas Block K Dpto 203',39,3),(29,'EM0029','Jorge Anibal','Cadenas Suzuki',19373125,95123643,'Av. Julio C. Tello 3553 Dpto 502',36,3),(30,'EM0030','Luis Ernesto','Pazos Calderón ',19763477,99745862,'Calle Bolivia 401 Interior F',31,3);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id_estado` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Activo'),(2,'Inactivo'),(3,'Contratado'),(4,'Separado'),(5,'Matriculado'),(6,'Retirado'),(7,'Reserva'),(8,'Deudor');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grado`
--

DROP TABLE IF EXISTS `grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grado` (
  `id_grado` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_grado`),
  UNIQUE KEY `id_grado_UNIQUE` (`id_grado`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grado`
--

LOCK TABLES `grado` WRITE;
/*!40000 ALTER TABLE `grado` DISABLE KEYS */;
INSERT INTO `grado` VALUES (1,'PRIMERO'),(2,'SEGUNDO'),(3,'TERCERO'),(4,'CUARTO'),(5,'QUINTO'),(6,'SEXTO');
/*!40000 ALTER TABLE `grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matricula`
--

DROP TABLE IF EXISTS `matricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `matricula` (
  `id_matricula` int NOT NULL AUTO_INCREMENT,
  `cod_matricula` varchar(45) NOT NULL,
  `cod_alumno` varchar(45) NOT NULL,
  `cod_reserva` varchar(45) DEFAULT NULL,
  `fecha_registro` date NOT NULL,
  `monto` double NOT NULL,
  `estado` varchar(45) NOT NULL,
  `id_nivel` int DEFAULT NULL,
  `id_grado` int DEFAULT NULL,
  `id_seccion` int DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `estado_id_estado` int NOT NULL,
  PRIMARY KEY (`id_matricula`),
  UNIQUE KEY `id_matricula_UNIQUE` (`id_matricula`),
  UNIQUE KEY `cod_matricula_UNIQUE` (`cod_matricula`),
  KEY `fk_cod_alumno_idx` (`cod_alumno`),
  KEY `fk_id_nivel_idx` (`id_nivel`),
  KEY `fk_id_grado_idx` (`id_grado`),
  KEY `fk_id_seccion_idx` (`id_seccion`),
  KEY `fk_usuario_idx` (`usuario`),
  KEY `fk_matricula_estado1_idx` (`estado_id_estado`),
  CONSTRAINT `fk_cod_alumno` FOREIGN KEY (`cod_alumno`) REFERENCES `alumnos` (`cod_alumno`),
  CONSTRAINT `fk_id_grado` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`),
  CONSTRAINT `fk_id_nivel` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id_nivel`),
  CONSTRAINT `fk_id_seccion` FOREIGN KEY (`id_seccion`) REFERENCES `seccion` (`id_seccion`),
  CONSTRAINT `fk_matricula_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`),
  CONSTRAINT `fk_usuario` FOREIGN KEY (`usuario`) REFERENCES `usuarios` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matricula`
--

LOCK TABLES `matricula` WRITE;
/*!40000 ALTER TABLE `matricula` DISABLE KEYS */;
INSERT INTO `matricula` VALUES (1,'MAT00002','ALU00002','RES00005','2022-01-05',150,'Matriculado',1,1,1,'blopez',5),(2,'MAT00006','ALU00006','RES00006','2022-05-15',150,'Matriculado',1,1,1,'ccetino',5),(3,'MAT00007','ALU00007','RES00007','2022-05-25',150,'Matriculado',1,2,1,'ccetino',5),(4,'MAT00008','ALU00008','RES00008','2022-05-26',150,'Matriculado',1,4,1,'hlopez',5),(5,'MAT00009','ALU00009','RES00009','2022-06-01',150,'Matriculado',1,3,1,'eperez',5),(6,'MAT00010','ALU00010','RES00010','2022-06-03',150,'Matriculado',2,3,2,'fchacon',5);
/*!40000 ALTER TABLE `matricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel` (
  `id_nivel` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_nivel`),
  UNIQUE KEY `id_nivel_UNIQUE` (`id_nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'PRIMARIA'),(2,'SECUNDARIA');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservamatricula`
--

DROP TABLE IF EXISTS `reservamatricula`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservamatricula` (
  `id_reserva` int NOT NULL AUTO_INCREMENT,
  `cod_reserva` varchar(45) NOT NULL,
  `fecha_registro` date NOT NULL,
  `monto_cuenta` double NOT NULL,
  `cod_alumno` varchar(45) NOT NULL,
  `estado_id_estado` int NOT NULL,
  PRIMARY KEY (`id_reserva`),
  UNIQUE KEY `id_reserva_UNIQUE` (`id_reserva`),
  UNIQUE KEY `cod_reserva_UNIQUE` (`cod_reserva`),
  KEY `fk_codalum_idx` (`cod_alumno`),
  KEY `fk_reservamatricula_estado1_idx` (`estado_id_estado`),
  CONSTRAINT `fk_codalumno` FOREIGN KEY (`cod_alumno`) REFERENCES `alumnos` (`cod_alumno`),
  CONSTRAINT `fk_reservamatricula_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservamatricula`
--

LOCK TABLES `reservamatricula` WRITE;
/*!40000 ALTER TABLE `reservamatricula` DISABLE KEYS */;
INSERT INTO `reservamatricula` VALUES (1,'RES00001','2022-05-20',80,'ALU00001',7),(2,'RES00002','2022-05-21',50,'ALU00003',7),(3,'RES00003','2022-06-01',50,'ALU00004',7),(4,'RES00004','2022-06-02',60,'ALU00005',7),(5,'RES00005','2022-01-05',150,'ALU00002',5),(6,'RES00006','2022-05-15',150,'ALU00006',5),(7,'RES00007','2022-05-25',150,'ALU00007',5),(8,'RES00008','2022-05-26',150,'ALU00008',5),(9,'RES00009','2022-06-01',150,'ALU00009',5),(10,'RES00010','2022-06-03',150,'ALU00010',5);
/*!40000 ALTER TABLE `reservamatricula` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL,
  `descripcion` varchar(20) NOT NULL,
  PRIMARY KEY (`id_rol`),
  UNIQUE KEY `id_rol_UNIQUE` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'SYSADMIN'),(2,'DIRECTOR'),(3,'SECRETARIA'),(4,'ASISTENTE'),(5,'PROFESOR');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccion`
--

DROP TABLE IF EXISTS `seccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seccion` (
  `id_seccion` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_seccion`),
  UNIQUE KEY `id_seccion_UNIQUE` (`id_seccion`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccion`
--

LOCK TABLES `seccion` WRITE;
/*!40000 ALTER TABLE `seccion` DISABLE KEYS */;
INSERT INTO `seccion` VALUES (1,'A'),(2,'B'),(3,'C');
/*!40000 ALTER TABLE `seccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id_usuarios` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(45) NOT NULL,
  `password` varchar(5) NOT NULL,
  `id_rol` int NOT NULL,
  `cod_empleado` varchar(45) NOT NULL,
  `estado_id_estado` int NOT NULL,
  PRIMARY KEY (`id_usuarios`),
  UNIQUE KEY `id_usuarios_UNIQUE` (`id_usuarios`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  KEY `fk_usuarios_rol1_idx` (`id_rol`),
  KEY `fk_id_empleado_idx` (`cod_empleado`),
  KEY `fk_usuarios_estado1_idx` (`estado_id_estado`),
  CONSTRAINT `fk_codempleado` FOREIGN KEY (`cod_empleado`) REFERENCES `empleados` (`cod_empleado`),
  CONSTRAINT `fk_idrol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`),
  CONSTRAINT `fk_usuarios_estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado` (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'amendez','admin',1,'EM0001',1),(2,'acarrera','direc',2,'EM0002',3),(3,'blopez','12345',3,'EM0003',3),(4,'ccetino','12345',3,'EM0004',3),(5,'rgalindo','12345',4,'EM0005',3),(6,'cnoriega','12345',3,'EM0006',4),(7,'ecastro','12345',3,'EM0007',4),(8,'eperez','12345',3,'EM0008',3),(9,'fchacon','12345',3,'EM0009',3),(10,'hrebaza','12345',1,'EM0010',2),(11,'hlopez','12345',3,'EM0011',3),(12,'jmarino','12345',4,'EM0012',3),(13,'malarcon','12345',4,'EM0013',3),(14,'rsoto','12345',5,'EM0014',4),(15,'mvasquez','12345',5,'EM0015',4),(16,'jaleman','12345',5,'EM0016',4),(17,'mvillatoro','12345',5,'EM0017',4),(18,'ncalderon','12345',5,'EM0018',3),(19,'ocarrasco','12345',5,'EM0019',3),(20,'orosales','12345',5,'EM0020',3),(21,'rcarrera','12345',5,'EM0021',3),(22,'jmartinez','12345',5,'EM0022',3),(23,'jmiranda','12345',5,'EM0023',3),(24,'jalvarez','12345',5,'EM0024',3),(25,'agarcia','12345',5,'EM0025',3),(26,'irodriguez','12345',5,'EM0026',3),(27,'icastillo','12345',5,'EM0027',3),(28,'jmejia','12345',5,'EM0028',3),(29,'jcadenas','12345',5,'EM0029',3),(30,'lpazos','12345',5,'EM0030',3);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_aguaviva_web'
--

--
-- Dumping routines for database 'bd_aguaviva_web'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-27  0:50:48
