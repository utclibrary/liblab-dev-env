-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: mysql.lib.utc.edu    Database: Login
-- ------------------------------------------------------
-- Server version	5.5.9

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
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `idUser` varchar(6) NOT NULL,
  `email` varchar(45) NOT NULL,
  `fName` varchar(45) NOT NULL,
  `lName` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `reportingGroup` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `users` varchar(45) DEFAULT NULL,
  `collDev` varchar(5) DEFAULT NULL,
  `database` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `idUser_UNIQUE` (`idUser`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('	cwj18','Christopher-Riddle@utc.edu','	Chris','Riddle','423-425-5279',NULL,NULL,NULL,NULL,NULL),('blq766','Megha-Patel01@utc.edu','Megha','Patel','423-425-4501',NULL,NULL,NULL,NULL,NULL),('bqs582','Chantelle-Swaren@utc.edu','Chantelle','Swaren','423-425-2204',NULL,NULL,NULL,NULL,NULL),('bvw485','Joy-Vallandingham@utc.edu','Joy','Vallandingham','423-425-4501',NULL,NULL,NULL,NULL,NULL),('bys883','Brian-Bush@utc.edu','Brian','Bush','423-425-4739',NULL,NULL,NULL,NULL,NULL),('ckg289','Steven-Shelton@utc.edu','Steven','Shelton','423-425-5279',NULL,NULL,NULL,NULL,NULL),('csg376','Carolyn-Runyon@utc.edu','Carolyn','Runyon','423-425-4503',NULL,NULL,NULL,NULL,NULL),('czb661','Stacy-Chapman@utc.edu','Stacy','Chapman','423-425-4501',NULL,NULL,NULL,NULL,NULL),('ddq143','Megan-Coleman@utc.edu','Megan','Coleman','423-425-4501',NULL,NULL,NULL,NULL,NULL),('dkw571','Bo-Baker@utc.edu','Bo','Baker','423-425-4504',NULL,NULL,NULL,NULL,NULL),('dsf576','Susan-Edmondson@utc.edu','Susan','Edmondson','423-425-4739',NULL,NULL,NULL,NULL,NULL),('dvl593','rachel-fleming@utc.edu','Rachel','Fleming','423-425-4502 ',NULL,NULL,NULL,NULL,NULL),('dws575','Wesley-Smith01@utc.edu','Wesley','Smith','423-425-2219',NULL,NULL,NULL,NULL,NULL),('gpv648','Virginia-Cairns@utc.edu','Virginia','Cairns','423-425-2279',NULL,NULL,NULL,NULL,NULL),('gzb699','Lane-Wilkinson@utc.edu','Lane','Wilkinson','	423-425-2671',NULL,NULL,NULL,NULL,NULL),('hfb727','Valarie-Adams@utc.edu','Valarie','Adams','423-425-4095',NULL,NULL,NULL,NULL,NULL),('hld317','Natalie-Haber@utc.edu','Natalie','Haber','423-425-4469',NULL,NULL,NULL,NULL,NULL),('hvr585','Elisabeth-Ferguson@utc.edu','Elisabeth','Ferguson','423-425-2660',NULL,NULL,NULL,NULL,NULL),('jpp681','Basil-Considine@utc.edu','Basil','Considine','423-425-2668',NULL,NULL,NULL,NULL,NULL),('khm368','Charlie-Remy@utc.edu','Charlie','Remy','423-425-4470',NULL,NULL,NULL,NULL,NULL),('kyb263','Theresa-Liedtka@utc.edu','Theresa','Liedtka','	423-425-4508',NULL,NULL,NULL,NULL,NULL),('lly619','Alaina-Thomas@utc.edu','Alaina','Thomas','423-425-4501',NULL,NULL,NULL,NULL,NULL),('mgq581','Laura-Perryman@utc.edu','Laura','Perryman','423-425-2135',NULL,NULL,NULL,NULL,NULL),('mvx979','Albert-Salatka@utc.edu','Albert','Salatka','423-425-4502',NULL,NULL,NULL,NULL,NULL),('pgd128','Chapel-Cowden@utc.edu','Chapel','Cowden','423-425-4503',NULL,NULL,NULL,NULL,NULL),('pln867','Brittany-Richardson01@utc.edu','Brittany','Richardson',' 423-425-5279',NULL,NULL,NULL,NULL,NULL),('pqb796','Brian-Rogers@utc.edu','Brian','Rogers','	423-425-5279',NULL,NULL,NULL,NULL,NULL),('qkr721','Mike-Bell@utc.edu','Mike','Bell','423-425-2670',NULL,NULL,NULL,NULL,NULL),('qvg342','cassidy-campbell@utc.edu','Cassidy','Campbell','423-425-2219',NULL,NULL,NULL,NULL,NULL),('rck346','Melanie-Dunn@utc.edu','Melanie','Dunn','423-425-2187',NULL,NULL,NULL,NULL,NULL),('rlk522','Agnes-Fellner@utc.edu','Agnes','Fellner','423-425-2219',NULL,NULL,NULL,NULL,NULL),('rxv947','Abigail-Davis@utc.edu','Abbey','Davis','423-425-4510',NULL,NULL,NULL,NULL,NULL),('tky971','Haley-Ogle@utc.edu','Haley','Ogle','423-425-4501',NULL,NULL,NULL,NULL,NULL),('trc924','Andrea-Schurr@utc.edu','Andrea','Schurr','	423-425-5279',NULL,'lupt0n',NULL,NULL,NULL),('tss991','Brody-Crowder@utc.edu','Brody','Crowder','423-425-2119',NULL,NULL,NULL,NULL,NULL),('wbr413','Laird-Leathers@utc.edu','Laird','Leathers','	423-425-5279',NULL,NULL,NULL,NULL,NULL),('wyf611','Dunstan-Mcnutt@utc.edu','Dunstan','McNutt','423-425-2669',NULL,NULL,NULL,NULL,NULL),('xdk329','Evie-Deal@utc.edu','Evie','Deal','423-425-4510',NULL,NULL,NULL,NULL,NULL),('xhk951','Katie-Gohn@utc.edu','Katie','Gohn','	423-425-2366',NULL,NULL,NULL,NULL,NULL),('xyp733','Noah-Lasley@utc.edu','Noah','Lasley','423-425-4504',NULL,NULL,NULL,NULL,NULL),('ywf355','Emily-Thompson02@utc.edu','Emily','Thompson','423-425-2187',NULL,NULL,NULL,NULL,NULL),('zcp839','Elizabeth-Leahy@utc.edu','Beth','Leahy','423-425-5128',NULL,NULL,NULL,NULL,NULL),('zfg262','Anita-Greenwell@utc.edu','Anita','Greenwell','423-425-4739',NULL,NULL,NULL,NULL,NULL),('zwp364','Jonah-Lasley@utc.edu','Jonah','Lasley','423-425-2219',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-11 16:16:23
