-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: Dates
-- ------------------------------------------------------
-- Server version	5.7.28

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
-- Table structure for table `Calendar`
--

DROP TABLE IF EXISTS `Calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calendar` (
  `startDate` date NOT NULL,
  `termLabel` varchar(45) NOT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `special` tinyint(1) NOT NULL,
  PRIMARY KEY (`startDate`),
  UNIQUE KEY `startDate_UNIQUE` (`startDate`),
  KEY `termLabel` (`termLabel`),
  CONSTRAINT `termLabel` FOREIGN KEY (`termLabel`) REFERENCES `Term` (`termLabel`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calendar`
--

LOCK TABLES `Calendar` WRITE;
/*!40000 ALTER TABLE `Calendar` DISABLE KEYS */;
INSERT INTO `Calendar` VALUES ('2013-05-15','Summer_2018','Summer 2013',0),('2013-05-25','Closed','Memorial Day',1),('2013-05-28','Summer_2018','Summer 2013',0),('2013-07-04','Closed','Independence Day',1),('2013-07-05','Summer_2018','Summer 2013',0),('2013-08-07','Break_5pm','Summer To Fall',1),('2013-08-18','FallSpring_2013','Fall 2013',0),('2013-08-31','Holiday_Mon_2013','Labor Day',1),('2013-09-03','FallSpring_2013','Fall 2013',0),('2013-10-19','Break_6pm','Fall Break',1),('2013-10-21','Break_8pm','Fall Break',1),('2013-10-22','FallSpring_2013','Fall 2013',0),('2013-11-26','Break_8pm','Thanksgiving',1),('2013-11-27','Break_5pm','Thanksgiving',1),('2013-11-28','Closed','Thanksgiving',1),('2013-12-01','Exams_2013','Final Exam',1),('2013-12-09','Exam_Last','Final Exam',1),('2013-12-10','Break_5pm','Winter Break',1),('2013-12-21','Closed','Winter Break',1),('2013-12-30','Break_5pm','Winter Break',1),('2014-01-01','Closed','Winter Break',1),('2014-01-02','Break_5pm','Winter Break',1),('2014-01-04','FallSpring_2013','Spring 2014',0),('2014-01-18','Holiday_Mon_2013','MLKing',1),('2014-01-21','FallSpring_2013','Spring 2014',0),('2014-03-08','Break_8pm','Spring Break',1),('2014-03-16','FallSpring_2013','Spring 2014',0),('2014-04-14','Exams_2013','Final Exam',1),('2014-04-17','Easter_Exam','Spring Holiday',1),('2014-04-21','Exams_2013','Final Exam',1),('2014-04-28','Exam_Last','Final Exam',1),('2014-04-29','Break_5pm','Spring to Summer',1),('2014-05-13','Summer_2018','Summer',0),('2014-05-24','Closed','Memorial Day',1),('2014-05-27','Summer_2018','Summer',0),('2014-07-04','Closed','Independence Day',1),('2014-07-06','Summer_2018','Summer',0),('2014-08-06','Break_5pm','Summer to Fall',1),('2014-08-16','FallSpring_2013','Fall 2014',0),('2014-08-30','Holiday_Mon_2013','Labor Day',1),('2014-09-02','FallSpring_2013','Fall 2014',0),('2014-10-18','Closed','Fall Break',1),('2014-10-20','Break_8pm','Fall Break',1),('2014-10-22','FallSpring_2013','Fall 2014',0),('2014-11-26','Break_5pm','Thanksgiving',1),('2014-11-27','Closed','Thanksgiving',1),('2014-11-30','FallSpring_2013','Fall 2014',0),('2014-12-01','Exams_2013','Final Exam',1),('2014-12-08','Break_8pm','Final Exam',1),('2014-12-09','Break_5pm','Winter Break',1),('2014-12-13','Closed','WinterBreak',1),('2014-12-29','New_Library','New Library',1),('2015-01-05','FallSpring_2013','Spring 2015',0),('2015-01-17','Holiday_Mon_2013','MLKing',1),('2015-01-20','FallSpring_2013','Spring 2015',0),('2015-03-07','Break_8pm','Spring Break',1),('2015-03-15','FallSpring_2013','Spring 2015',0),('2015-04-03','Easter_Exam','Spring Holiday',1),('2015-04-06','FallSpring_2013','Spring2015',0),('2015-04-13','Exams_2013','Final Exam',1),('2015-04-28','Break_8pm','Final Exam',1),('2015-04-29','Break_5pm','Spring to Summer',1),('2015-05-12','Summer_2018','Summer',0),('2015-05-23','Closed','Memorial Day',1),('2015-05-26','Summer_2018','Summer',0),('2015-07-03','Closed','Independence Day',1),('2015-07-05','Summer_2018','Summer',0),('2015-08-05','Break_5pm','Summer to Fall',1),('2015-08-16','FallSpring_2013','Fall2015',0),('2015-09-05','Holiday_Mon_2013','Labor Day',1),('2015-09-08','FallSpring_2013','Fall2015',0),('2015-10-17','Break_8pm','Fall Break',0),('2015-10-20','FallSpring_2013','Fall2015',1),('2015-11-25','Break_5pm','Thanksgiving',1),('2015-11-26','Closed','Thanksgiving',1),('2015-11-29','FallSpring_2013','Fall2015',0),('2015-11-30','Exams_2013','Final Exam',1),('2015-12-08','Exam_Last','Final Exam',1),('2015-12-09','Break_5pm','Winter Break',1),('2015-12-19','Closed','Winter Break',1),('2015-12-28','Break_5pm','Winter Break',1),('2016-01-01','Closed','Winter Break',1),('2016-01-04','Break_5pm','Winter Break',1),('2016-01-09','FallSpring_2016','Spring2016',0),('2016-01-16','Holiday_Mon_2013','ML King',1),('2016-01-19','FallSpring_2016','Spring2016',0),('2016-03-12','Break_8pm','Spring Break',1),('2016-03-20','FallSpring_2016','Spring2016',0),('2016-03-25','Closed','Spring Holiday',1),('2016-03-27','FallSpring_2013','Spring Holiday',1),('2016-03-28','FallSpring_2016','Spring2016',0),('2016-04-18','Exams_2013','Final Exam',1),('2016-05-03','Exam_Last','Final Exam',1),('2016-05-04','Break_5pm','Spring to Summer',1),('2016-05-17','Summer_2018','Summer2016',0),('2016-05-28','Closed','Memorial Day',1),('2016-05-31','Summer_2018','Summer2016',0),('2016-07-02','Closed','Independence Day',1),('2016-07-05','Summer_2018','Summer2016',0),('2016-08-10','Break_5pm','Summer to Fall',1),('2016-08-20','FallSpring_2016','Fall 2016',0),('2016-09-03','Holiday_Mon_2016','Labor Day',1),('2016-09-06','FallSpring_2016','Fall 2016',0),('2016-10-15','Break_8pm','Fall Break',1),('2016-10-18','FallSpring_2016','Fall 2016',0),('2016-11-23','Break_5pm','Thanksgiving',1),('2016-11-24','Closed','Thanksgiving',1),('2016-11-27','FallSpring_2016','Fall 2016',0),('2016-12-05','Exams_2013','Exams',1),('2016-12-13','Exam_Last','Exams',1),('2016-12-14','Break_5pm','Intersession',1),('2016-12-24','Closed','Intersession',1),('2017-01-03','Break_5pm','Intersession',1),('2017-01-07','FallSpring_2016','Spring 2017',0),('2017-01-14','Holiday_Mon_2016','ML King',1),('2017-01-17','FallSpring_2016','Spring 2017',0),('2017-03-01','Closed','Inclement Weather',0),('2017-03-02','FallSpring_2016','Spring 2017',0),('2017-03-11','Break_8pm','Spring Break',1),('2017-03-19','FallSpring_2016','Spring 2017',0),('2017-04-14','Closed','Spring Holiday',1),('2017-04-16','FallSpring_2016','Spring 2017',0),('2017-04-24','Exams_2013','Exams',1),('2017-05-02','Exam_Last','Exams',1),('2017-05-03','Break_5pm','Intersession',1),('2017-05-16','Summer_2018','Summer 2017',0),('2017-05-27','Closed','Memorial Day',1),('2017-05-30','Summer_2018','Summer 2017',0),('2017-07-04','Closed','Independence Day',1),('2017-07-05','Summer_2018','Summer 2017',0),('2017-08-09','Break_5pm','Intersession',1),('2017-08-19','FallSpring_2016','Fall 2017',0),('2017-08-21','Closed','Eclipse',1),('2017-08-22','FallSpring_2016','Fall 2017',0),('2017-09-04','Holiday_Noon','Labor Day',1),('2017-09-05','FallSpring_2016','Fall 2017',0),('2017-09-11','Emergency','Closing at Noon',1),('2017-09-12','FallSpring_2016','Fall 2017',0),('2017-10-14','Break_8pm','Fall Break',1),('2017-10-17','FallSpring_2016','Fall 2017',0),('2017-11-22','Break_5pm','Thanksgiving',1),('2017-11-23','Closed','Thanksgiving',1),('2017-11-26','FallSpring_2016','Fall 2017',0),('2017-12-04','Exams_2013','Exams',1),('2017-12-12','Exam_Last','Exams',1),('2017-12-13','Break_5pm','Intersession',1),('2017-12-23','Closed','Intersession',1),('2018-01-02','Break_5pm','Intersession',1),('2018-01-06','FallSpring_2016','Spring 2018',0),('2018-01-15','Holiday_Noon','ML King Holiday',1),('2018-01-16','FallSpring_2016','Spring 2018',0),('2018-03-10','Break_8pm','Spring Break',1),('2018-03-17','FallSpring_2016','Spring 2018',0),('2018-03-30','Closed','Spring Holiday',1),('2018-03-31','FallSpring_2016','Spring 2018',0),('2018-04-23','Exams_2013','Exams',1),('2018-05-01','Exam_Last','Exams',1),('2018-05-02','Break_5pm','Intersession',1),('2018-05-12','Summer_2018','Summer 2018',0),('2018-05-26','Closed','Memorial Day',1),('2018-05-29','Summer_2018','Summer 2018',0),('2018-07-04','Closed','Independence Day',1),('2018-07-05','Summer_2018','Summer 2018',0),('2018-08-08','Break_5pm','Intersession',1),('2018-08-18','FallSpring_2016','Fall 2018',0),('2018-09-03','Holiday_Noon','Labor Day',1),('2018-09-04','FallSpring_2016','Fall 2018',0),('2018-10-13','Break_8pm','Fall Break',1),('2018-10-16','FallSpring_2016','Fall 2018',0),('2018-11-21','Break_5pm','Thanksgiving',1),('2018-11-22','Closed','Thanksgiving',1),('2018-11-25','FallSpring_2016','Fall 2018',0),('2018-12-03','Exams_2013','Exams',1),('2018-12-11','Exam_Last','Exams',1),('2018-12-12','Break_5pm','Intersession',1),('2018-12-22','Closed','Intersession',1),('2018-12-31','Break_5pm','Intersession',1),('2019-01-01','Closed','New Years',1),('2019-01-02','Break_5pm','Intersession',1),('2019-01-05','FallSpring_2016','Spring 2019',1),('2019-01-07','FallSpring','Spring 2019',0),('2019-01-18','Holiday_Mon','ML King Holiday',1),('2019-01-22','FallSpring','Spring 2019',0),('2019-01-29','Closed','Snow Day',1),('2019-01-30','FallSpring','Spring 2019',0),('2019-03-09','Break_8pm','Spring Break',1),('2019-03-16','FallSpring','Spring 2019',0),('2019-04-19','Closed','Spring Holiday',1),('2019-04-20','FallSpring','Spring 2019',0),('2019-04-22','Exams','Exams',1),('2019-04-30','Exam_Last','Exams',1),('2019-05-01','Break_5pm','Intersession',1),('2019-05-11','Summer','Summer 2019',0),('2019-05-25','Closed','Memorial Day',1),('2019-05-28','Summer','Summer 2019',0),('2019-07-04','Closed','Independence Day',1),('2019-07-05','Summer','Summer 2019',0),('2019-08-07','Break_5pm','Intersession',1),('2019-08-16','FallSpring','Fall 2019',0),('2019-08-30','Holiday_Mon','Labor Day',1),('2019-09-03','FallSpring','Fall 2019',0),('2019-09-13','Closed','Water Main Break',1),('2019-09-14','FallSpring','Fall 2019',0),('2019-10-12','Break_8pm','Fall Break',1),('2019-10-15','FallSpring','Fall 2019',0),('2019-11-27','Break_5pm','Thanksgiving',1),('2019-11-28','Closed','Thanksgiving',1),('2019-12-01','FallSpring','Fall 2019',0),('2019-12-02','Exams','Exams',1),('2019-12-10','Exam_Last','Exams',1),('2019-12-11','Break_5pm','Intersession',1),('2019-12-21','Closed','Intersession',1),('2019-12-30','Break_5pm','Intersession',1),('2020-01-01','Closed','New Years',1),('2020-01-02','Break_5pm','Intersession',1),('2020-01-04','FallSpring','Spring 2020',0);
/*!40000 ALTER TABLE `Calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Term`
--

DROP TABLE IF EXISTS `Term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Term` (
  `termLabel` varchar(45) NOT NULL,
  `monOpen` time NOT NULL,
  `monClose` time NOT NULL,
  `tueOpen` time NOT NULL,
  `tueClose` time NOT NULL,
  `wedOpen` time NOT NULL,
  `wedClose` time NOT NULL,
  `thuOpen` time NOT NULL,
  `thuClose` time NOT NULL,
  `friOpen` time NOT NULL,
  `friClose` time NOT NULL,
  `satOpen` time NOT NULL,
  `satClose` time NOT NULL,
  `sunOpen` time NOT NULL,
  `sunClose` time NOT NULL,
  PRIMARY KEY (`termLabel`),
  UNIQUE KEY `termLabel_UNIQUE` (`termLabel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Term`
--

LOCK TABLES `Term` WRITE;
/*!40000 ALTER TABLE `Term` DISABLE KEYS */;
INSERT INTO `Term` VALUES ('Break_5pm','07:45:00','17:00:00','07:45:00','17:00:00','07:45:00','17:00:00','07:45:00','17:00:00','07:45:00','17:00:00','00:00:00','00:00:00','00:00:00','00:00:00'),('Break_6pm','07:45:00','18:00:00','07:45:00','18:00:00','07:45:00','18:00:00','07:45:00','18:00:00','07:45:00','17:00:00','00:00:00','00:00:00','14:00:00','18:00:00'),('Break_8pm','07:45:00','20:00:00','07:45:00','20:00:00','07:45:00','20:00:00','07:45:00','20:00:00','07:45:00','17:00:00','00:00:00','00:00:00','00:00:00','00:00:00'),('Closed','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00'),('Easter_Exam','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','20:00:00','00:00:00','00:00:00','00:00:00','00:00:00','16:00:00','00:00:00'),('Emergency','07:45:00','12:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00','00:00:00'),('Exams','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','22:00:00','09:00:00','20:00:00','09:00:00','02:00:00'),('Exams_2013','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','02:00:00','07:30:00','22:00:00','09:00:00','20:00:00','12:00:00','02:00:00'),('Exam_Last','07:30:00','20:00:00','07:30:00','20:00:00','07:30:00','20:00:00','07:30:00','20:00:00','07:30:00','20:00:00','07:30:00','20:00:00','07:30:00','20:00:00'),('FallSpring','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','20:00:00','09:00:00','20:00:00','09:00:00','00:00:00'),('FallSpring_2013','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','17:00:00','13:00:00','17:00:00','14:00:00','00:00:00'),('FallSpring_2016','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','17:00:00','11:00:00','17:00:00','12:00:00','00:00:00'),('Holiday_Mon','12:00:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','17:00:00','09:00:00','17:00:00','12:00:00','20:00:00'),('Holiday_Mon_2013','14:00:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','17:00:00','00:00:00','00:00:00','00:00:00','00:00:00'),('Holiday_Mon_2016','12:00:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','00:00:00','07:45:00','17:00:00','00:00:00','00:00:00','00:00:00','00:00:00'),('Holiday_Noon','12:00:00','00:00:00','12:00:00','00:00:00','12:00:00','00:00:00','12:00:00','00:00:00','12:00:00','00:00:00','12:00:00','00:00:00','12:00:00','00:00:00'),('New_Library','09:00:00','17:00:00','09:00:00','17:00:00','09:00:00','17:00:00','00:00:00','00:00:00','07:45:00','17:00:00','13:00:00','17:00:00','14:00:00','22:00:00'),('Summer','07:45:00','21:00:00','07:45:00','21:00:00','07:45:00','21:00:00','07:45:00','21:00:00','07:45:00','17:00:00','00:00:00','00:00:00','12:00:00','21:00:00'),('Summer_2018','07:45:00','21:00:00','07:45:00','21:00:00','07:45:00','21:00:00','07:45:00','21:00:00','07:45:00','17:00:00','00:00:00','00:00:00','13:00:00','21:00:00');
/*!40000 ALTER TABLE `Term` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-17  1:15:41
