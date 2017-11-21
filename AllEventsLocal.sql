CREATE DATABASE  IF NOT EXISTS `allevents` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `allevents`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: allevents
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `attendees`
--

DROP TABLE IF EXISTS `attendees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendees` (
  `EventID` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `Approved` int(1) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  KEY `EventID_attendees_event_idx` (`EventID`),
  KEY `UserID_attendees_user_idx` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendees`
--

LOCK TABLES `attendees` WRITE;
/*!40000 ALTER TABLE `attendees` DISABLE KEYS */;
INSERT INTO `attendees` VALUES (18,5,2,'2017-11-10 11:12:00'),(15,5,2,'2017-11-10 11:12:00'),(14,5,2,'2017-11-10 11:12:00'),(17,5,2,'2017-11-10 11:12:00'),(9,5,2,'2017-11-10 11:12:00'),(8,5,2,'2017-11-10 11:13:00'),(18,14,2,'2017-11-10 11:13:00'),(15,14,2,'2017-11-10 11:14:00'),(14,14,2,'2017-11-10 11:14:00'),(17,14,2,'2017-11-10 11:14:00'),(9,14,2,'2017-11-10 11:14:00'),(8,14,2,'2017-11-10 11:14:00');
/*!40000 ALTER TABLE `attendees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `EventID` int(10) NOT NULL AUTO_INCREMENT,
  `EventCode` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `EventName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EventType` int(1) DEFAULT NULL,
  `EventCategoryID` int(10) DEFAULT NULL,
  `EventDescription` text CHARACTER SET utf8,
  `EventVenue` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EventCity` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `EventDate` date DEFAULT NULL,
  `EventTime` time DEFAULT NULL,
  `eventenddate` date DEFAULT NULL,
  `eventendtime` time DEFAULT NULL,
  `EventPoster` varchar(255) CHARACTER SET utf8 DEFAULT 'EventPosters/default.png',
  `UserID` int(10) DEFAULT NULL,
  `CreatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `VisitCounter` int(255) DEFAULT '0',
  `TimeStamp` datetime DEFAULT NULL,
  PRIMARY KEY (`EventID`),
  KEY `UserID_event_user_idx` (`UserID`),
  KEY `EventCategoryID_event_eventcategory_idx` (`EventCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (7,'https://n8k78.app.goo.gl/LJBd','Birthday',1,1,'Bday. Www.google.com','Abc hall','Ahmedabad, Gujarat, India','2017-10-31','14:48:00','2017-11-14','14:48:00','EventCategoryImages/010917104602993.png',3,'Shreyansh Doshi',1,42,'2017-10-26 14:49:00'),(8,'https://n8k78.app.goo.gl/o5QP','Reception',0,5,'Reception','Amc party plot','Ahmedabad, Gujarat, India','2017-11-14','18:30:00','2017-11-14','21:30:00','EventCategoryImages/121017044646113.png',5,'Amy Weds Hemanti',1,2,'2017-11-07 11:22:00'),(9,'https://n8k78.app.goo.gl/Tt4v','Angagement',0,5,'Angage','Surat','Surat, Gujarat, India','2017-11-12','11:29:00','2017-11-12','17:29:00','EventCategoryImages/121017044646113.png',5,'Shah Family',1,4,'2017-11-07 11:29:00'),(14,'https://n8k78.app.goo.gl/R3QR','It',0,2,'It','Samuak','Ahmedabad, Gujarat, India','2017-11-14','18:43:00','2017-11-19','18:43:00','EventCategoryImages/010917111539008.jpg',3,'Samyak',1,7,'2017-11-09 18:43:00'),(15,'https://n8k78.app.goo.gl/eLEU','Part Exebutiin',0,4,'Exec','Samyak..','Bengaluru, Karnataka, India','2017-11-18','22:44:00','2017-11-22','22:44:00','0',3,'Samyak',1,2,'2017-11-09 18:44:00'),(16,'https://n8k78.app.goo.gl/7EKn','Exec',0,4,'Exec\n\n','Samuak','Mumbai, Maharashtra, India','2017-11-24','18:45:00','2017-11-29','18:45:00','0',3,'qqqqqqqqqqaaaaaaaaaaccccccccccqqqqqqqqqqaaaaaaaaaaccccccccccqqqqqqqqqqaaaaaaaaaaccccccccccqqqqqqqqqqaaaaaaaaaaccccccccccqqqqqqqqqqaaaaaaaaaaccccccccccqqqqqqqqqqaaaaaaaaaaccccccccccqqqqqqqqqqaaaaaaaaaaccccccccccqqqqqqqqqqaaaaaaaaaaccccccccccaaaappppppppppp',1,0,'2017-11-09 18:45:00'),(17,'https://n8k78.app.goo.gl/VuWN','kitty',0,8,'Kitty\n','Kitt','Surat, Gujarat, India','2017-11-18','18:46:00','2017-11-23','18:46:00','EventCategoryImages/061117121629840.jpg',3,'Dhruvin',1,2,'2017-11-09 18:46:00'),(18,'https://n8k78.app.goo.gl/VuWN','Handloom Exebution',0,4,'Exec','Samyak','Surat, Gujarat, India','2017-11-18','18:46:00','2017-11-22','18:46:00','EventCategoryImages/061117121629840.jpg',3,'Welcome Handloom',1,2,'2017-11-09 18:46:00');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventcategory`
--

DROP TABLE IF EXISTS `eventcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventcategory` (
  `EventCategoryID` int(10) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(45) DEFAULT NULL,
  `CategoryDescription` varchar(255) DEFAULT NULL,
  `CategoryPoster` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EventCategoryID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventcategory`
--

LOCK TABLES `eventcategory` WRITE;
/*!40000 ALTER TABLE `eventcategory` DISABLE KEYS */;
INSERT INTO `eventcategory` VALUES (1,'Birthday','hello','EventCategoryImages/010917104602993.png'),(2,'It Fair','It Fairs','EventCategoryImages/010917111539008.jpg'),(3,'HIii','Bla...Bla','EventCategoryImages/111017045322972.png'),(4,'Exebution','Bla...Bla.....','0'),(5,'Marital Functions','Marrige functoins here.....','EventCategoryImages/121017044646113.png'),(6,'Political Academics','Politics','EventCategoryImages/131017012657920.png'),(7,'Diwali Celebrations','','EventCategoryImages/131017015733600.png'),(8,'Kitty Parties','','EventCategoryImages/061117121629840.jpg'),(9,'Election Meeting','','EventCategoryImages/061117121854251.jpg');
/*!40000 ALTER TABLE `eventcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications_history`
--

DROP TABLE IF EXISTS `notifications_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications_history` (
  `NotificationId` int(11) NOT NULL AUTO_INCREMENT,
  `NotificationTitle` varchar(45) DEFAULT NULL,
  `NotificationBody` varchar(255) DEFAULT NULL,
  `UserId` int(10) DEFAULT NULL,
  `EventId` int(10) DEFAULT NULL,
  PRIMARY KEY (`NotificationId`),
  KEY `UserId_notifications_history_user` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications_history`
--

LOCK TABLES `notifications_history` WRITE;
/*!40000 ALTER TABLE `notifications_history` DISABLE KEYS */;
INSERT INTO `notifications_history` VALUES (1,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(2,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(3,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(4,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(5,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(6,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(7,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(8,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(9,'Event Request','Samyak India requested you to join for BirthdayParty event',10,1),(10,'Event Request','Shreyans Doshi requested you to join for Diwali event',29,4),(11,'Event Request','Shreyans Doshi requested you to join for Diwali event',29,4),(12,'Event Request','Shreyans Doshi requested you to join for Diwali event',29,4),(13,'Event Request','Shreyans Doshi requested you to join for Diwali event',29,4),(14,'Event Request',NULL,29,4),(15,'Event Request',NULL,29,4),(16,'Event Request',NULL,29,4),(17,'Event Request',NULL,29,4),(18,'Event Request',NULL,29,4),(19,'Event Request',NULL,29,4),(20,'Event Request',NULL,29,4),(21,'Event Request',NULL,29,4),(22,'Event Request',NULL,29,4),(23,'Event Request',NULL,29,4),(24,'Event Request',NULL,29,4),(25,'Event Request',NULL,29,4),(26,'Event Request',NULL,29,4),(27,'Event Request',NULL,29,4),(28,'Event Request',NULL,29,4),(29,'Event Request',NULL,29,4),(30,'Event Request',NULL,29,4),(31,'Event Request',NULL,29,4),(32,'Event Request',NULL,29,4),(33,'Event Request',NULL,29,4),(34,'Event Request',NULL,29,4);
/*!40000 ALTER TABLE `notifications_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `PhotoID` int(10) NOT NULL AUTO_INCREMENT,
  `EventID` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  PRIMARY KEY (`PhotoID`),
  KEY `EventID_photos_event_idx` (`EventID`),
  KEY `UserID_photos_user_idx` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties`
--

DROP TABLE IF EXISTS `properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties` (
  `idProperties` int(11) NOT NULL AUTO_INCREMENT,
  `PropertiesName` varchar(255) DEFAULT NULL,
  `PropertiesValue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProperties`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties`
--

LOCK TABLES `properties` WRITE;
/*!40000 ALTER TABLE `properties` DISABLE KEYS */;
INSERT INTO `properties` VALUES (1,'isFacebookLogInEnable','true'),(2,'schedulerHour','20'),(3,'schedulerMin','30');
/*!40000 ALTER TABLE `properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportabuse`
--

DROP TABLE IF EXISTS `reportabuse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportabuse` (
  `ReportID` int(10) NOT NULL AUTO_INCREMENT,
  `EventID` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `ReportDescription` varchar(255) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  PRIMARY KEY (`ReportID`),
  KEY `EventID_reportabuse_event_idx` (`EventID`),
  KEY `UserID_reportabuse_user_idx` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportabuse`
--

LOCK TABLES `reportabuse` WRITE;
/*!40000 ALTER TABLE `reportabuse` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportabuse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `UserID` int(10) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `UserPhoto` varchar(255) DEFAULT NULL,
  `UserTypeID` int(10) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  `LoginType` varchar(2) DEFAULT 'R',
  `Fcmtoken` varchar(300) DEFAULT NULL,
  `NotiStatus` int(1) DEFAULT '0',
  `UserCity` varchar(255) DEFAULT NULL,
  `IsAdminNotify` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`UserID`),
  KEY `UserTypeID_user_usertype_idx` (`UserTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Admin','samyak','PASS123','admin@samyak.com','9858525555',NULL,1,1,'2017-08-24 14:55:00','R','eYiSvA7ZzNw:APA91bFYM0hifuWFf108XfGf7MpoNwH6ACsncek0B5pmLmMjrwAKtQwerxK8IDwgQ_7Lk8rjsdFDA6XNQNtcFb-0aWYbfmLE_MS_CKAobLrmOkiUGFAoJGThIvokAMjNlgr9sUBIDlJd',2,NULL,0),(3,'Shreyansh','Doshi','Pass','sdoshi@samyak.com','9494949494',NULL,2,1,'2017-10-26 14:47:00','R','eS5rkH_oqL4:APA91bFcbL2ge3nfnjJYNxysuJl_JEJozW-6nYYU8iut0QLMp3KG_TR4Ue9bmFX4Te7qVALKmW1BzwAKWQgfFlsxpZdLhyzWewUiMUwQs2irO9Gw2zGACXCMSowOZrAhYDRnLjMjf-vh',0,NULL,0),(4,'Shreyans','Doshi',NULL,'shreyansh.doshi010@gmail.com','',NULL,2,1,'2017-10-26 14:49:00','F','cgB7l059fDE:APA91bEJHXnn2bIyO5IRWBqKFq5AxsN6gYEMfX2y-DZc9oY7RLIvVYb9iLYA0fwBh3XifrXPiljepFf_GbyMD7VHUEwx8qlXuegQIjN8dOlkdkOvYu0rrX9o8zLQYfyZLJ7nreKT1hw_',0,NULL,1),(5,'Samyak','India',NULL,'samyakahd@gmail.com','8511500006','UserProfilePictures/261017025359167.jpg',2,1,'2017-10-26 14:52:00','G','fdb3g5P3bJ4:APA91bGbY5wMNXwqu889RQwtKeuLxgOAdnVSNlF1LJ00U2OtE2boQbgg7bSq0RzdvQf-wr_iDXabxUZoiqHcGP1lRQaDIqwsNwZyDYIsR0V9X0A8Lye283mcsXOmiopxb3fZ4-FhxZkH',1,NULL,0),(6,'test','hsh','test','hdhs@dhsj.djsj','1234567890','UserProfilePictures/261017031842529.png',2,1,'2017-10-27 03:17:00','R',NULL,2,NULL,0),(7,'test','test','test','test8@test.com','1234567890','UserProfilePictures/261017050700216.png',2,1,'2017-10-27 05:05:00','R',NULL,1,NULL,0),(8,'Nikunj','Soni','nsoni123','nsoni@samyak.com','1234567890','UserProfilePictures/261017052946331.png',2,1,'2017-10-27 05:27:00','R','fcNnqVS7QFY:APA91bGHqMINdsgh3tiz3W0ybCZ9LOLSoeS-fKLBTAPNMmmgWBQwGxquQCnN7bxYK3WWC32EeNdlaprWKdbBTYnHSgT2KjQbtP70JIndNoLAQ4kG0i2jhItylMsIp-1wcyBUW1CDk74n',1,NULL,0),(9,'Moksha','Shah',NULL,'',NULL,NULL,2,1,'0017-07-11 13:22:00','F',NULL,1,NULL,0),(10,'Moksha','Shah',NULL,'ms@rocketmail.com',NULL,NULL,2,1,'0017-07-11 13:22:00','F',NULL,1,NULL,0),(11,'Naresh','Doshi','ndoshi','imndoshi@gmail.com','9537539502',NULL,2,1,'2017-11-06 12:05:00','R',NULL,1,NULL,0),(12,'Usha','Doshi','udoshi','udoshi@gmail.com','9898986565',NULL,2,1,'2017-11-07 16:22:00','R','fq0gdwDSGHs:APA91bGdUAM96FcsZRIXm_LXbvLx-YMrjLDgti8pD_4n8cgiq1C9Icd69MqEHpSDn8tufTqBQrwaeZUYybYZXI_arm4bonOW24PSrGKh-0FSRxTUBunLj6IWGAd6ddLh311BlPSFS2DS',0,NULL,0),(13,'Naina','Shah','nshah','nshah@samyak.com','9465781235',NULL,2,1,'2017-11-08 10:33:00','R',NULL,1,NULL,0),(14,'Tanvi','Mehta','tmehta','tmehta@gmail.com','9865475825',NULL,2,1,'2017-11-08 10:39:00','R','eS5rkH_oqL4:APA91bFcbL2ge3nfnjJYNxysuJl_JEJozW-6nYYU8iut0QLMp3KG_TR4Ue9bmFX4Te7qVALKmW1BzwAKWQgfFlsxpZdLhyzWewUiMUwQs2irO9Gw2zGACXCMSowOZrAhYDRnLjMjf-vh',0,NULL,0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotification`
--

DROP TABLE IF EXISTS `usernotification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotification` (
  `UserNotificationId` int(10) NOT NULL AUTO_INCREMENT,
  `UserId` int(10) DEFAULT NULL,
  `EventCategoryID` int(10) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`UserNotificationId`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotification`
--

LOCK TABLES `usernotification` WRITE;
/*!40000 ALTER TABLE `usernotification` DISABLE KEYS */;
INSERT INTO `usernotification` VALUES (1,3,1,0),(2,3,2,0),(3,3,3,0),(4,3,4,0),(5,3,5,1),(6,3,6,0),(7,3,7,0),(8,3,8,0),(9,3,9,0),(10,4,1,0),(11,4,2,0),(12,4,3,0),(13,4,4,0),(14,4,5,0),(15,4,6,0),(16,4,7,0),(17,4,8,0),(18,4,9,0),(19,5,1,1),(20,5,2,1),(21,5,3,1),(22,5,4,1),(23,5,5,1),(24,5,6,1),(25,5,7,1),(26,5,8,1),(27,5,9,1),(28,6,1,0),(29,6,2,0),(30,6,3,0),(31,6,4,0),(32,6,5,0),(33,6,6,0),(34,6,7,0),(35,6,8,0),(36,6,9,0),(37,7,1,1),(38,7,2,1),(39,7,3,1),(40,7,4,1),(41,7,5,1),(42,7,6,1),(43,7,7,1),(44,7,8,1),(45,7,9,1),(46,8,1,1),(47,8,2,1),(48,8,3,1),(49,8,4,1),(50,8,5,1),(51,8,6,1),(52,8,7,1),(53,8,8,1),(54,8,9,1),(55,9,1,1),(56,9,2,1),(57,9,3,1),(58,9,4,1),(59,9,5,1),(60,9,6,1),(61,9,7,1),(62,9,8,1),(63,9,9,1),(64,10,1,1),(65,10,2,1),(66,10,3,1),(67,10,4,1),(68,10,5,1),(69,10,6,1),(70,10,7,1),(71,10,8,1),(72,10,9,1),(73,11,1,1),(74,11,2,1),(75,11,3,1),(76,11,4,1),(77,11,5,1),(78,11,6,1),(79,11,7,1),(80,11,8,1),(81,11,9,1),(128,12,1,0),(129,12,2,0),(130,12,3,0),(131,12,4,1),(132,12,5,0),(133,12,6,0),(134,12,7,0),(135,12,8,0),(136,12,9,0),(143,13,1,1),(144,13,2,1),(145,13,3,1),(146,13,4,1),(147,13,5,1),(148,13,6,1),(149,13,7,1),(150,13,8,1),(151,13,9,1),(158,14,1,0),(159,14,2,1),(160,14,3,1),(161,14,4,1),(162,14,5,1),(163,14,6,1),(164,14,7,1),(165,14,8,1),(166,14,9,1);
/*!40000 ALTER TABLE `usernotification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `UserTypeID` int(10) NOT NULL AUTO_INCREMENT,
  `UserType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserTypeID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
INSERT INTO `usertype` VALUES (1,'Admin'),(2,'User');
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wishlist` (
  `WishID` int(10) NOT NULL AUTO_INCREMENT,
  `EventID` int(10) DEFAULT NULL,
  `UserID` int(10) DEFAULT NULL,
  `WishName` varchar(45) DEFAULT NULL,
  `TimeStamp` datetime DEFAULT NULL,
  PRIMARY KEY (`WishID`),
  KEY `EventID_wishlist_event_idx` (`EventID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'allevents'
--

--
-- Dumping routines for database 'allevents'
--
/*!50003 DROP PROCEDURE IF EXISTS `addDeleteEventPhotos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `addDeleteEventPhotos`(IN user_id INT(10), IN event_id INT(10), IN photo_path VARCHAR(255), IN time_stamp DATETIME,IN list_photo_id TEXT,IN get_mode VARCHAR(10), OUT message VARCHAR(255), OUT success Boolean)
BEGIN

IF(get_mode = 'add') THEN
Insert Into photos (UserID,EventID,Photo,TimeStamp) 
values(user_id,event_id,photo_path,time_stamp);

IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Photo added successfully';
	ELSE
		SET success = false;
		SET message = 'Error while addning photo. Please try again';
	END IF;
    
ELSEIF(get_mode = 'delete') THEN
SET @q = concat('DELETE FROM photos WHERE  photoId IN (', list_photo_id ,')');

PREPARE stmt FROM @q;
EXECUTE stmt;
    
IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Photos are deleted successfully';
	ELSE
		SET success = false;
		SET message = 'Some error occured while deleting Photos';
	END IF;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addRemoveItemFromWishList` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `addRemoveItemFromWishList`(In wish_id Int(10),IN event_id INT(10),IN wish_name VARCHAR(45),IN time_stamp DATETIME,In get_mode VARCHAR(10),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

IF(get_mode = 'add') THEN
INSERT INTO wishlist (EventID,WishName,TimeStamp) 
VALUES (event_id,wish_name,time_stamp);

	IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Wish added successfully';
	ELSE
		SET success = false;
		SET message = 'Error while adding wish. Please try again';
	END IF;
    
ELSEIF(get_mode = 'delete') THEN
DELETE FROM `wishlist` WHERE WishId = wish_id;
	IF(ROW_COUNT() > 0) THEN		
		SET success = true;
		SET message = 'Wish deleted successfully';
	ELSE
		SET success = false;
		SET message = 'Some error occured while deleting Wish';
	END IF;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `addUpdateEventCategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `addUpdateEventCategory`(IN cat_id INT(10),IN cat_name VARCHAR(45),IN cat_des TEXT,IN cat_poster TEXT,OUT message VARCHAR(255), OUT success Boolean)
BEGIN

DECLARE inserted_id INT(10);

IF(cat_id > 0) THEN
	IF(cat_poster IS NOT NULL) THEN
		UPDATE `eventcategory` 
		SET `CategoryName` = cat_name,
		`CategoryDescription` = cat_des,
		`CategoryPoster` = cat_poster
		WHERE `EventCategoryID` = cat_id;
		
	ELSE
		UPDATE `eventcategory` 
		SET `CategoryName` = cat_name,
		`CategoryDescription` = cat_des
		WHERE `EventCategoryID` = cat_id;
		
	END IF;

	IF(ROW_COUNT() > 0) THEN 		
			SET success = true;
			SET message = 'Event category is updated successfully';
		ELSE
			SET success = false;
			SET message = 'Some error while updating event category';
		END IF;
ELSE
	INSERT INTO `eventcategory` (`CategoryName`,`CategoryDescription`,`CategoryPoster`) 
    VALUES (cat_name,cat_des,cat_poster);
    
    IF(ROW_COUNT() > 0) THEN 	
			SET inserted_id = LAST_INSERT_ID();
			SET success = true;
			SET message = 'Event category is added successfully';
            
            INSERT INTO `allevents`.`usernotification` (`UserId`,`EventCategoryId`,`Status`)
			SELECT UserId,inserted_id,(CASE when NotiStatus = 1 THEN 1 ELSE 0 END) from user 
			where UserTypeID = 2;
		ELSE
			SET success = false;
			SET message = 'Some error while adding event category';
		END IF;
    
END IF;
    


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `bringWishItems` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `bringWishItems`(IN user_id INT(10) , IN list_wish_id TEXT,OUT message VARCHAR(255), OUT success Boolean)
BEGIN

SET @q = concat('UPDATE wishlist SET UserID =', user_id ,' WHERE WishID IN (', list_wish_id ,')');
    
PREPARE stmt FROM @q;
    EXECUTE stmt;
    
IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Success! You take this item';
	ELSE
		SET success = false;
		SET message = 'Failure!';
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `changeAdminAndEventStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `changeAdminAndEventStatus`(IN admin_id INT(10),IN event_id INT(10),OUT message VARCHAR(255))
BEGIN

DECLARE curr_status INT(1);

IF(admin_id > 0) THEN
	SELECT Status INTO curr_status FROM user WHERE UserID = admin_id;
    
    UPDATE `user` SET Status = (CASE WHEN curr_status = 1 THEN 0 ELSE 1 END) WHERE UserID = admin_id;
        
ELSEIF(event_id > 0) THEN
	SELECT Status INTO curr_status FROM event WHERE EventID = event_id;
    
    UPDATE `event` SET Status = (CASE WHEN curr_status = 1 THEN 0 ELSE 1 END) WHERE EventID = event_id;
    
END IF;

IF(ROW_COUNT() > 0) THEN
		SET message = 'Success';
	ELSE
		SET message = 'Failure';
END IF;
		
	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `changePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `changePassword`(IN user_id INT(10),IN curr_pass VARCHAR(30),IN new_pass VARCHAR(30),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

DECLARE count INT;
DECLARE curr_pass_db VARCHAR(30);

SELECT COUNT(1),Password INTO count,curr_pass_db FROM user WHERE UserID = user_id;

IF(count > 0) THEN
	IF(curr_pass = curr_pass_db) THEN
		IF(curr_pass = new_pass) THEN
			SET success = true;
            SET message = 'Can\'t update same password';
		ELSE
			UPDATE user SET Password = new_pass WHERE UserID = user_id;
            IF(ROW_COUNT() > 0) THEN 
				SET success = true;
				SET message = 'Password is updated successfully';
			ELSE
				SET success = false;
				SET message = 'Error while updating password';
			END IF;
		END IF;	
	ELSE
		SET success = false;
		SET message = 'Current password is wrong';
	END IF;	
    
END IF;
	

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `changeUserStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `changeUserStatus`(IN user_id INT(10),IN get_mode VARCHAR(15),OUT message VARCHAR(255))
BEGIN

IF(get_mode = 'activate') THEN
	UPDATE user SET Status = 1 WHERE UserID = user_id;
    IF(ROW_COUNT() > 0) THEN
		SET message = 'User is activated';
	ELSE		
		SET message = 'Error in activating user';
	END IF;
    
ELSEIF(get_mode = 'deactivate') THEN
	UPDATE user SET Status = 0 WHERE UserID = user_id;
    IF(ROW_COUNT() > 0) THEN
		SET message = 'User is deactivated';
	ELSE		
		SET message = 'Error in deactivating user';
	END IF;
    
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `contactSync` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `contactSync`(IN email_ids TEXT, IN mobile_nums TEXT)
BEGIN

SET @query = CONCAT('SELECT Email,FirstName,LastName,UserID,UserPhoto,MobileNo FROM `user` WHERE UserTypeID = (SELECT UserTypeID FROM usertype WHERE UserType = \'User\') 
AND ( Email IN (',email_ids,') OR MobileNo IN (',mobile_nums,'));') ;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createUpdateEvent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `createUpdateEvent`(IN event_id INT(10), IN eve_code VARCHAR(150),IN eve_name VARCHAR(255),IN eve_type INT(1), IN eve_cat_id INT(10),IN eve_des TEXT,IN eve_venue VARCHAR(255),IN eve_city VARCHAR(255),IN eve_date DATE,IN eve_time TIME,IN eve_end_date DATE,IN eve_end_time TIME,IN user_id INT(10),IN created_by VARCHAR(255),IN eve_status INT(1),IN time_stamp DATETIME,IN eve_poster VARCHAR(255),OUT eve_creator VARCHAR(100),OUT inserted_id INT(50), OUT message VARCHAR(255), OUT success Boolean)
BEGIN

IF(event_id > 0) THEN
	UPDATE `event` 
	SET `EventName` = eve_name,
		`EventType` = eve_type,
		`EventCategoryID` = eve_cat_id,
		`EventDescription` = eve_des,
		`CreatedBy` = created_by,
		`EventVenue` = eve_venue,
		`EventCity` = eve_city,
		`EventDate` = eve_date,
		`EventTime` = eve_time,
		`EventEndDate` = eve_end_date,
		`EventEndTime` = eve_end_time
	WHERE `EventID` = event_id;

	IF(ROW_COUNT() > 0) THEN 		
			SET success = true;
			SET message = 'Event details are updated successfully';
		ELSE
			SET success = false;
			SET message = 'Error while updating event details';
		END IF;
        
ELSE	
	INSERT INTO `event`(`EventCode`,`EventName`,`EventType`,`EventCategoryID`,`EventDescription`,`EventVenue`,`EventCity`,`EventDate`,`EventTime`,`eventenddate`,`eventendtime`,`UserID`,`CreatedBy`,`Status`,`TimeStamp`,`EventPoster`)
	VALUES(eve_code,eve_name,eve_type,eve_cat_id,eve_des,eve_venue,eve_city,eve_date,eve_time,eve_end_date,eve_end_time,user_id,created_by,eve_status,time_stamp,eve_poster);		

	IF(ROW_COUNT() > 0) THEN 
			SET inserted_id = LAST_INSERT_ID();
			SET success = true;
			SET message = 'Event is created successfully';
			
			#SELECT Fcmtoken FROM user WHERE NotiStatus=1;
            SELECT Fcmtoken FROM user u 
			INNER JOIN usernotification un ON u.UserID = un.UserId
			WHERE un.Status = 1 and un.EventCategoryID = eve_cat_id;
			
			SELECT (CASE WHEN CreatedBy IS NOT NULL THEN CreatedBy 
					ELSE  CONCAT(u.FirstName, ' ', u.LastName)
					END) INTO eve_creator FROM event e INNER JOIN user u ON e.UserID = u.UserID WHERE e.EventId = inserted_id;
		ELSE
			SET success = false;
			SET message = 'Error while creating an event';
		END IF;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deleteevent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `deleteevent`(in event_id INT(10),OUT noti_title VARCHAR(100),OUT noti_body TEXT)
BEGIN

DECLARE event_name VARCHAR(255);

SELECT EventName INTO event_name FROM event WHERE eventid = event_id;

SELECT Fcmtoken FROM attendees a JOIN user t ON a.UserID=t.UserId WHERE t.NotiStatus=1 AND  a.EventID = event_id;

SET noti_title = 'Event Deleted';
SET noti_body = CONCAT(event_name,' event just deleted');

DELETE FROM wishlist WHERE EventID=event_id ;
DELETE FROM attendees WHERE EventID=event_id ;
DELETE FROM photos WHERE EventID=event_id ;
DELETE FROM reportabuse WHERE EventID=event_id ;
DELETE FROM event WHERE EventID=event_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `enterUserInUserNotification` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `enterUserInUserNotification`(IN UserId INT(10),IN _list TEXT)
BEGIN
	
DECLARE _next TEXT DEFAULT NULL;
DECLARE _nextlen INT DEFAULT NULL;
DECLARE _value TEXT DEFAULT NULL; 

iterator:
LOOP


  #capture the next value from the list
  SET _next = SUBSTRING_INDEX(REPLACE(_list, '\"', ''),',',1);
  
  #save the length of the captured value; we will need to remove this
  #many characters + 1 from the beginning of the string 
  #before the next iteration
  SET _nextlen = LENGTH(_next);
  
  SET _value = TRIM(_next);
  
INSERT INTO `allevents`.`usernotification` (` UserId`,`CategoryId`)
VALUES (UserId,CAST(_next AS unsigned));

#remove element from list (in this case, we "insert" an empty string, which removes _nextlen + 1 characters)
SET _list = INSERT(_list,1,_nextlen + 1,'');

END LOOP;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `forgotPassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `forgotPassword`(In email_id VARCHAR(45),IN user_type VARCHAR(10),OUT pass VARCHAR(30),OUT first_name VARCHAR(45),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

DECLARE count,user_status INT;

SELECT COUNT(1),Password,FirstName,Status INTO count,pass,first_name,user_status FROM user 
WHERE Email = email_id and UserTypeID = (SELECT UserTypeID FROM usertype WHERE UserType = user_type) and loginType='R';

IF(count > 0) THEN 
	IF(user_status > 0) THEN 
		SET success = true;
		SET message = 'Your password has been sent to your email id. We recommand you to change password once you logged in.';
	ELSE
		SET success = false;
        SET message = 'Your Account is not activated';
	END IF;
ELSE
	SET success = false;
	SET message = CONCAT('No account found with email id : ', email_id);
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAbuseReports` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getAbuseReports`(IN abuser_name VARCHAR(100),IN email_id VARCHAR(45))
BEGIN

SELECT r.EventID,r.ReportDescription,u.Email,CONCAT(u.FirstName,' ',u.LastName) AS Abuser, r.TimeStamp
FROM reportabuse r 
INNER JOIN user u ON r.UserID = u.UserID 
WHERE CONCAT(u.FirstName,' ',u.LastName) like (CASE WHEN (abuser_name IS NOT NULL OR abuser_name <> '') THEN concat('%',abuser_name,'%') ELSE '%' END)
AND Email like (CASE WHEN (email_id IS NOT NULL OR email_id <> '') THEN concat('%',email_id,'%') ELSE '%' END);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAdminDataFromIds` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getAdminDataFromIds`(IN cat_id INT(10),IN event_id INT(10),IN user_id INT(10),IN get_mode VARCHAR(25))
BEGIN
	
IF(get_mode = 'getAdminDetails') THEN
	SELECT FirstName,LastName,MobileNo,Email,Password 
    FROM `user` 
    WHERE UserID = user_id;
    
ELSEIF(get_mode = 'getUserDetails') THEN
	SELECT FirstName,LastName,MobileNo,Email,UserPhoto,loginType,TimeStamp,IsAdminNotify 
    FROM `user` 
    WHERE UserID = user_id;
    
ELSEIF(get_mode = 'getEventDetails') THEN
	SELECT EventName,e.EventCategoryID,ec.CategoryName,EventType,EventDescription,EventVenue,EventCity,EventDate,EventTime,EventEndDate,EventEndTime,e.Status,e.TimeStamp,CONCAT(u.FirstName,' ',u.LastName) as EventCreater,(SELECT count(1) from attendees WHERE EventID = event_id) as AttendeesCount
	FROM event e 
    INNER JOIN eventcategory ec on e.EventCategoryID = ec.EventCategoryID
	INNER JOIN user u on e.UserID = u.UserID where EventID = event_id;
    
ELSEIF(get_mode = 'getCategoryDetails') THEN
	SELECT EventCategoryID,CategoryName,CategoryDescription,CategoryPoster 
    FROM eventcategory 
    WHERE EventCategoryID = cat_id;
    
ELSEIF(get_mode = 'getAllAttendees') THEN
	SELECT a.UserID AS AtendeeId, u.FirstName,u.LastName,u.Email, u.MobileNo 
    FROM attendees a 
    INNER JOIN user u ON a.UserID = u.UserID WHERE EventID = event_id;
    
ELSEIF(get_mode = 'getAllAdmins') THEN
	SELECT UserID, FirstName, LastName, Email, MobileNo, Status, TimeStamp
    FROM `user` 
    WHERE UserTypeID = (SELECT UserTypeID FROM usertype WHERE UserType = 'Admin');

END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getAllEvents`(
	IN `user_id` INT(10),
	IN `user_city` VARCHAR(255),
	IN `get_event_type` VARCHAR(10)
)
BEGIN

declare date_timezone datetime;
#according to arizona timezone 12 hours 30 minutes added
set date_timezone = (select date_add(now(),INTERVAL 750 minute) from dual);

IF(get_event_type = 'public') THEN

	SELECT e.EventID,EventName,EventVenue,EventDate,
	EventPoster,e.UserID,ec.CategoryName,att.Approved,
	(SELECT count(1) FROM event 
	WHERE (CASE WHEN user_city IS NULL OR user_city = '' THEN
			date(TimeStamp) = date(date_timezone) and EventCategoryID = e.EventCategoryID and EventType = 0
			ELSE
			date(TimeStamp) = date(date_timezone) and EventCategoryID = e.EventCategoryID and EventType = 0 AND EventCity = user_city END)) as NewEventsCount
	FROM `event` e inner join `eventcategory` ec on e.EventCategoryID = ec.EventCategoryID
	left  join (select * from attendees where UserID = user_id) att on e.EventID=att.EventID
	WHERE EventType = 0 AND Status = 1 AND (CASE WHEN user_city IS NULL OR user_city = '' THEN
			concat(eventenddate,' ',eventendtime) >= date_timezone
			ELSE
			concat(eventenddate,' ',eventendtime) >= date_timezone AND EventCity = user_city END)	
	order by CategoryName,e.EventCategoryID,EventDate,EventTime;
    
ELSEIF(get_event_type = 'attending') THEN

    SELECT a.EventID,EventName,EventDate,EventTime,EventVenue,EventCode,EventType,EventPoster,e.UserID 
	FROM event e 
	RIGHT JOIN (select * from attendees where UserID = user_id AND Approved IN(1,2)) a on e.EventID = a.EventID 
	WHERE eventenddate >= date_sub(date_timezone, INTERVAL 7 DAY) AND e.Status = 1  
	ORDER BY EventDate, EventTime;
    
ELSEIF(get_event_type = 'posted') THEN

    SELECT EventID,EventName,EventCode,EventVenue,EventType,EventDate,EventTime,Status,EventPoster
	FROM `event` 
	WHERE  UserID = user_id AND Status = 1
	ORDER BY EventDate , EventTime;
    

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllEventsAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getAllEventsAdmin`(IN from_date VARCHAR(15),IN to_date VARCHAR(15),IN cat_name VARCHAR(45),IN eve_type INT(1),IN eve_creator VARCHAR(100),In eve_status Boolean)
BEGIN

SET @query = 'SELECT distinct e.EventID,e.EventName,e.EventDate,e.EventTime,e.eventenddate,e.eventendtime,e.EventType,e.Status,e.TimeStamp,ec.CategoryName,e.UserID,CONCAT(u.FirstName,\' \',u.LastName) as EventCreater, e.VisitCounter,(SELECT count(*) FROM attendees where EventID = e.EventID) AS AttendeesCount
			  FROM event e LEFT JOIN attendees a on a.EventID = e.EventID inner join eventcategory ec on e.EventCategoryID = ec.EventCategoryID inner join user u on e.UserID = u.UserID WHERE 1 ';

IF (from_date IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND EventDate >= STR_TO_DATE(\'', from_date ,'\'\,\'%d/%m/%Y\') '); 
END IF;

IF (to_date IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND EventDate <= STR_TO_DATE(\'', to_date ,'\'\,\'%d/%m/%Y\') '); 
END IF;

IF (cat_name IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND CategoryName like \'%', cat_name ,'%\' '); 
END IF;

IF (eve_type IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND EventType = ', eve_type); 
END IF;

IF (eve_status IS NOT NULL)THEN
	IF(eve_status IS TRUE) THEN
		SET @query = CONCAT(@query,' AND e.Status = 1 '); 
    ELSE 
		SET @query = CONCAT(@query,' AND e.Status = 0 '); 
	END IF;
END IF;

IF (eve_creator IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND CONCAT(u.FirstName,\' \',u.LastName) like \'%', eve_creator ,'%\' '); 
END IF;

SET @query = CONCAT(@query,' ORDER BY TimeStamp DESC');

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllPublicEvents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getAllPublicEvents`(IN user_id INT(10),IN user_city VARCHAR(255))
BEGIN

declare date_timezone datetime;
#according to arizona timezone 12 hours 30 minutes added
set date_timezone = (select date_add(now(),INTERVAL 750 minute) from dual);

SELECT 
    e.EventID,
    EventCode,
    EventName,
    EventType,
    e.EventCategoryID,
    EventVenue,
    EventDate,
    eventenddate,
    EventTime,
    eventendtime,
    EventPoster,
    e.UserID,
    ec.CategoryName,
    att.Approved
FROM
    `event` e
        INNER JOIN
    `eventcategory` ec ON e.EventCategoryID = ec.EventCategoryID
        LEFT JOIN
    (SELECT 
        *
    FROM
        attendees
    WHERE
        UserID = user_id) att ON e.EventID = att.EventID
WHERE
    (CASE
        WHEN
            user_city IS NULL
                OR STRCMP(user_city, '') = 0
        THEN
            EventType = 0 AND Status = 1
                AND CONCAT(eventenddate, ' ', eventendtime) >= date_timezone
        ELSE EventType = 0 AND Status = 1
            AND CONCAT(eventenddate, ' ', eventendtime) >= date_timezone
            AND EventCity = user_city
    END)
ORDER BY CategoryName , EventCategoryID , EventDate , EventTime;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAllUsers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getAllUsers`(In first_name VARCHAR(45),In last_name VARCHAR(45),In email_id VARCHAR(45), In mobile_no VARCHAR(15),In user_status Boolean)
BEGIN

DECLARE user_type_id INT(10);

SET user_type_id = (SELECT UserTypeID FROM usertype WHERE UserType = 'User');

SET @query = concat('SELECT distinct u.UserID,FirstName,LastName,Email,MobileNo,u.Status,u.TimeStamp,(SELECT count(*) FROM event where UserID = u.UserID) AS EventsPosted FROM `user` u
LEFT JOIN event e ON u.UserID = e.UserID
WHERE UserTypeID = ',user_type_id);
#AND FirstName like (CASE WHEN (first_name IS NOT NULL OR first_name <> '') THEN concat('%',first_name,'%') ELSE '%' END)
#AND LastName like (CASE WHEN (last_name IS NOT NULL OR last_name <> '') THEN concat('%',last_name,'%') ELSE '%' END)
#AND Email like (CASE WHEN (email_id IS NOT NULL OR email_id <> '') THEN concat('%',email_id,'%') ELSE '%' END);

IF (first_name IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND FirstName like \'%', first_name ,'%\' '); 
END IF;

IF (last_name IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND LastName like \'%', last_name ,'%\' '); 
END IF;

IF (email_id IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND Email like \'%', email_id ,'%\' '); 
END IF;

IF (mobile_no IS NOT NULL)THEN
    SET @query = CONCAT(@query,' AND MobileNo like \'%', mobile_no ,'%\' '); 
END IF;

IF (user_status IS NOT NULL)THEN
	IF(user_status IS TRUE) THEN
		SET @query = CONCAT(@query,' AND u.Status = 1 '); 
    ELSE 
		SET @query = CONCAT(@query,' AND u.Status = 0 '); 
	END IF;
END IF;

SET @query = CONCAT(@query,' ORDER BY u.TimeStamp');

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEventComponents` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getEventComponents`(IN event_id INT(10),In user_id Int(10),IN `get_mode` VARCHAR(30))
BEGIN

IF(get_mode = 'getAllAttendees') THEN

	SELECT u.UserID, FirstName, LastName, Approved, UserPhoto 
	FROM user u 
	INNER JOIN attendees a ON u.UserID = a.UserID 
	WHERE EventID = event_id AND u.Status = 1;
    
ELSEIF(get_mode = 'getAllCategories') THEN
	SELECT EventCategoryID,CategoryName,CategoryDescription,CategoryPoster FROM eventcategory order by CategoryName ASC;
    
ELSEIF(get_mode = 'getAllEventPhotos') THEN
    SELECT PhotoID,Photo,UserID FROM `photos` where EventID = event_id;
    
ELSEIF(get_mode = 'getWholeWishList') THEN
	SELECT WishID,WishName,w.UserID,CONCAT(u.FirstName, ' ', u.LastName) AS UserName,UserPhoto
	FROM wishlist w
	LEFT OUTER JOIN user u ON w.UserID = u.UserID
	WHERE EventID = event_id;
    
ELSEIF(get_mode = 'getUpdatedWishList') THEN
	SELECT WishID,WishName,UserID FROM wishlist
	WHERE EventID = event_id AND (UserID IS NULL OR UserID = user_id);
    
ELSEIF(get_mode = 'getUserDetails') THEN
	SELECT FirstName, LastName, MobileNo, Email, UserPhoto, loginType
	FROM `user` WHERE UserID = user_id;
    
ELSEIF(get_mode = 'getUserCatNotificationStatus') THEN
	SELECT un.EventCategoryID,un.Status,CategoryName,u.NotiStatus
	FROM `usernotification` un INNER JOIN `eventcategory` ect on un.EventCategoryID = ect.EventCategoryID INNER JOIN `user` u on un.UserId = u.UserID
    WHERE un.UserID = user_id;	
    
END IF;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `geteventdetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `geteventdetails`(in event_id INT(10))
BEGIN

SELECT EventName,ec.CategoryName,e.EventPoster,EventType,EventDescription,EventVenue,EventCity,EventDate,EventTime,eventenddate,eventendtime,e.EventCode,
	(CASE WHEN CreatedBy IS NOT NULL 
        THEN CreatedBy 
    ELSE  CONCAT(u.FirstName, ' ', u.LastName)
    END) AS EventCreater,     
    e.UserID, (SELECT COUNT(*) FROM wishlist WHERE EventID = event_id) AS wishCount,
	(SELECT COUNT(*) FROM attendees WHERE EventID = event_id) AS AttendeesCount
FROM event e
INNER JOIN eventcategory ec ON e.EventCategoryID = ec.EventCategoryID
INNER JOIN user u ON e.UserID = u.UserID
WHERE EventID = event_id;
   
SELECT a.UserID AS AtendeeId,CONCAT(u.FirstName, ' ', u.LastName) AS AttendeeName,u.MobileNo
FROM attendees a
INNER JOIN user u ON a.UserID = u.UserID
WHERE EventID = event_id;
    
UPDATE event 
SET VisitCounter = VisitCounter + 1
WHERE EventID = event_id;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getPropertyValue` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `getPropertyValue`(IN prop_name varchar(255),OUT prop_value VARCHAR(255))
BEGIN

set prop_value = (select PropertiesValue from properties where PropertiesName=prop_name);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `joinLeaveEvent` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `joinLeaveEvent`(IN event_id INT(10),IN user_id INT(10),IN approved_flag INT(1),IN time_stamp DATETIME,IN `get_mode` VARCHAR(10),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

DECLARE count INT; 

IF(get_mode = 'join') THEN

	SELECT COUNT(1) INTO count FROM `attendees` WHERE EventID = event_id and UserID = user_id;

	IF(count > 0) THEN
		SET success = true;
		SET message = 'Event Already Joined';    
	ELSE
		INSERT INTO `attendees` (`EventID`,`UserID`,`Approved`,`TimeStamp`) 
		VALUES (event_id,user_id,approved_flag,time_stamp);
		
		IF(ROW_COUNT() > 0) THEN 		
			SET success = true;
			SET message = 'Event Joined Successfully';
		ELSE
			SET success = false;
			SET message = 'Error while joining event. Please try again';
		END IF;
	END IF;
    
ELSEIF(get_mode = 'status') THEN
	SELECT COUNT(1) INTO count FROM `attendees` WHERE EventID = event_id and UserID = user_id;

	IF(count > 0) THEN
		SET success = true;
		SET message = 'Event Already Joined';    
	ELSE
		SET success = false;
		SET message = 'Event Not joined';
	END IF;
    
ELSEIF(get_mode = 'leave') THEN
	DELETE FROM `attendees` WHERE EventID = event_id AND UserID = user_id;

	IF(ROW_COUNT() > 0) THEN 		
			SET success = true;
			SET message = 'You have left this event';
		ELSE
			SET success = false;
			SET message = 'Error while leaving event. Please try again';
		END IF;
        
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `login`(IN email_in VARCHAR(45), IN pass_in VARCHAR(30),IN user_type VARCHAR(10),OUT user_id INT(10),OUT first_name VARCHAR(45), OUT last_name VARCHAR(45), OUT email_id VARCHAR(45), OUT user_city VARCHAR(255),OUT user_status INT(1),OUT noti_status INT(1), OUT message VARCHAR(255), OUT success Boolean)
BEGIN

SELECT UserID,FirstName,LastName,Email,UserCity,Status,NotiStatus INTO user_id,first_name,last_name,email_id,user_city,user_status,noti_status 
FROM `user`
WHERE UserTypeID = (SELECT UserTypeID FROM usertype WHERE UserType = user_type) 
	AND Email = email_in AND binary(Password) = pass_in;

IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
        IF(user_status = 1) THEN
			SET message = 'Login successfully';
		ELSE 
			SET message = 'Your account is not activated';
		END IF;
	ELSE
		SET success = false;
		SET message = 'Invalid email or password';
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sendNotificationRequest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `sendNotificationRequest`(IN event_id INT(10),IN eve_creator_id INT(10),IN list_user_id TEXT,OUT noti_title VARCHAR(100),OUT noti_body TEXT,OUT message VARCHAR(255), OUT success Boolean)
BEGIN
DECLARE event_name VARCHAR(255);
DECLARE user_name VARCHAR(100);

SELECT 
    EventName
INTO event_name FROM
    event
WHERE
    EventID = event_id;

SELECT 
    CONCAT(u.FirstName, ' ', u.LastName)
INTO user_name FROM
    `user` u
WHERE
    UserID = eve_creator_id;

SET @query = CONCAT('SELECT Fcmtoken FROM user WHERE  UserId in (',list_user_id,') and NotiStatus = 1;') ;

PREPARE stmt FROM @query;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

SET noti_title = 'Event Request';
SET noti_body = CONCAT(user_name,' requested you to join for ',event_name,' event');

#INSERT INTO `notifications_history` (`NotificationTitle`, `NotificationBody`, `UserId`, `EventId`) VALUES (noti_title,noti_body,eve_creator_id,event_id);

SET success = true;
SET message = 'Request sent successfully';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sendNotificationToAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `sendNotificationToAdmin`(IN id INT(10),IN get_mode VARCHAR(25),IN sign_up_type VARCHAR(10),OUT noti_title VARCHAR(100),OUT noti_body TEXT)
BEGIN

DECLARE event_name,user_name VARCHAR(255);
DECLARE email_id VARCHAR(45);
DECLARE event_date DATE;
DECLARE event_time TIME;

IF(get_mode = 'createEvent') THEN
	SELECT Fcmtoken FROM user WHERE IsAdminNotify = 1;
    
    SELECT EventName,EventDate,EventTime INTO event_name,event_date,event_time FROM event WHERE EventID = id;
    SET noti_title = 'New Event Posted';
    SET noti_body = CONCAT('New ',event_name,' event is scheduled on ',DATE_FORMAT(event_date,'%M %e, %Y'),'\, ',DATE_FORMAT(event_time,'%h:%i %p'));

ELSEIF(get_mode = 'userSignUp') THEN
	SELECT Fcmtoken FROM user WHERE IsAdminNotify = 1;
    
    SELECT CONCAT(FirstName,' ',LastName) AS UserName, Email INTO user_name,email_id FROM user WHERE UserID = id;
	SET noti_title = 'New User Created';
    
    IF(sign_up_type = 'normal') THEN
    SET noti_body = CONCAT('New user ',user_name,' with email ',email_id,' is created.');
    
    ELSEIF(sign_up_type = 'facebook') THEN
    SET noti_body = CONCAT('New user ',user_name,' with email ',email_id,' is created with facebook account.');
    
    ELSEIF(sign_up_type = 'google') THEN
    SET noti_body = CONCAT('New user ',user_name,' with email ',email_id,' is created with google account.');
    
    END IF;
    
END	IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sendreminder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `sendreminder`(IN event_date DATE)
BEGIN

SELECT e.EventId,EventName,e.EventType,EventVenue,EventCity,EventDate,EventTime,eventenddate,eventendtime,EventPoster,EventCode,e.UserID as EventCreatorId,Email,Fcmtoken,CONCAT(u.FirstName, ' ', u.LastName) AS EventCreator,notistatus
FROM event e
	INNER JOIN  attendees a on e.EventID = a.eventid
	INNER JOIN user u ON a.UserID = u.UserID
	WHERE (CASE WHEN e.EventType = 0 THEN a.Approved != 0 ELSE a.Approved = 1 END)
and EventDate = event_date  order by EventId;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setAttendeeStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `setAttendeeStatus`(In approve_flag INT(1), In event_id INT(10),In user_id Int(10),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

UPDATE attendees 
SET Approved = approve_flag
WHERE EventID = event_id AND UserID = user_id;

IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Status is updated successfully';
	ELSE
		SET success = false;
		SET message = 'Some error while updating status';
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `setCatNotificationStatus` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `setCatNotificationStatus`(IN cat_id INT(10),IN user_id INT(10),IN updated_status INT(1),OUT message VARCHAR(255), OUT success Boolean,OUT noti_status INT(1))
BEGIN

DECLARE status_count INT(10);
DECLARE curr_noti_status INT(1);

SET SQL_SAFE_UPDATES = 0;

UPDATE `usernotification`
SET `Status` = updated_status
WHERE `EventCategoryID` = cat_id AND `UserId` = user_id;

SELECT u.NotiStatus,COUNT(un.Status) INTO curr_noti_status,status_count 
FROM `usernotification` un INNER JOIN `user` u on un.UserId = u.UserID  
WHERE un.UserId = user_id AND un.Status = 1;

IF(curr_noti_status = 2 AND status_count > 0) THEN
	UPDATE `user` SET NotiStatus = 1 WHERE UserID = user_id;
END IF;

SELECT NotiStatus INTO noti_status from `user` WHERE UserID = user_id;

IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Notification for selected Category updated successfully';
	ELSE
		SET success = false;
		SET message = 'Error while updating notification for selected category';
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `signUp` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `signUp`(In first_name VARCHAR(45),In last_name VARCHAR(45),In pass VARCHAR(30), In email_id VARCHAR(45), In mobile_no VARCHAR(15), In status_flag INT(1),In time_stamp DATETIME,IN user_type VARCHAR(10),OUT inserted_id INT(50), OUT message VARCHAR(255), OUT success Boolean)
BEGIN

DECLARE user_type_id,email_count INT(10);

SET user_type_id = (SELECT UserTypeID FROM usertype WHERE UserType = user_type);

SET email_count = (SELECT count(Email) FROM user WHERE Email = email_id AND UserTypeID = user_type_id);
            
IF(email_count > 0) THEN
	SET success = false;
	SET message = 'Email already exists';    
ELSE 	
	INSERT INTO user (FirstName, LastName, Password , Email , MobileNo , UserTypeID, Status, TimeStamp ) 
	VALUES (first_name,last_name,pass,email_id,mobile_no,user_type_id,status_flag,time_stamp);

	IF(user_type = 'USER') THEN
		IF(ROW_COUNT() > 0) THEN 
			SET inserted_id = LAST_INSERT_ID();
			SET success = true;
			SET message = 'SignUp successfully. You can now login to your account';
            
            INSERT INTO `allevents`.`usernotification` (`UserId`,`EventCategoryId`,`Status`)
			SELECT inserted_id,EventCategoryID,1 from eventcategory;
		ELSE
			SET success = false;
			SET message = 'Error while signing up. Please try after some time';
		END IF;
		
	ELSE
		IF(ROW_COUNT() > 0) THEN 		
			SET success = true;
			SET message = 'Admin account is created successfully';
		ELSE
			SET success = false;
			SET message = 'Error while creating admin account. Please try after some time';
		END IF;
	END IF;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateAdminAndUserProfile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `updateAdminAndUserProfile`(In first_name VARCHAR(45),In last_name VARCHAR(45), In mobile_no VARCHAR(15), In email_id VARCHAR(45), In user_id INT(10),IN admin_notify TINYINT(4),IN get_mode VARCHAR(25),OUT message VARCHAR(255), OUT success Boolean)
BEGIN
	
IF(get_mode = 'updateUserDetails') THEN
	UPDATE `user` 
    SET `FirstName` = first_name,
    `LastName` = last_name,
    `Email` = email_id,
	`MobileNo` = mobile_no,
    `IsAdminNotify` = admin_notify 
    WHERE `UserID` = user_id;
    
    IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'User details are updated successfully';
	ELSE
		SET success = false;
		SET message = 'Error while updating user details';
	END IF;
    
ELSEIF(get_mode = 'updateAdminProfile') THEN
	UPDATE `user` 
    SET `FirstName` = first_name,
    `LastName` = last_name,
    `Email` = email_id,
	`MobileNo` = mobile_no
    WHERE `UserID` = user_id;
    
    IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Admin details are updated successfully';
	ELSE
		SET success = false;
		SET message = 'Error while updating admin details';
	END IF;

END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateEventDetailsAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `updateEventDetailsAdmin`(IN event_id INT(10),IN eve_name VARCHAR(255),IN eve_type INT(1), IN eve_cat_id INT(10),IN eve_des TEXT,IN eve_date DATE,IN eve_time TIME,IN eve_end_date DATE,IN eve_end_time TIME,OUT message VARCHAR(255),OUT success Boolean)
BEGIN
	UPDATE `event` 
	SET `EventName` = eve_name,
		`EventType` = eve_type,
		`EventCategoryID` = eve_cat_id,
		`EventDescription` = eve_des,
		`EventDate` = eve_date,
		`EventTime` = eve_time,
		`EventEndDate` = eve_end_date,
		`EventEndTime` = eve_end_time
	WHERE `EventID` = event_id;
  
	IF(ROW_COUNT() > 0) THEN 		
			SET success = true;
			SET message = 'Event details are updated successfully';
		ELSE
			SET success = false;
			SET message = 'Error while updating event details';
		END IF;
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateUserData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `updateUserData`(In first_name VARCHAR(45),In last_name VARCHAR(45), In mobile_no VARCHAR(15), In email_id VARCHAR(45), In user_id INT(10),In fcm_token VARCHAR(300),In noti_status INT(1),In user_city VARCHAR(255),IN get_mode VARCHAR(25),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

DECLARE curr_noti_status INT(1);
SET SQL_SAFE_UPDATES = 0;

IF(get_mode = 'updateUserDetails') THEN
	UPDATE `user` 
	SET `FirstName` = first_name,`LastName` = last_name,`MobileNo` = mobile_no,`Email` = email_id
	WHERE `UserID` = user_id;

	IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'User details are updated successfully';
	ELSE
		SET success = false;
		SET message = 'Error while updating user details';
	END IF;
    
ELSEIF(get_mode = 'updateFcmToken') THEN
	UPDATE `user` 
	SET Fcmtoken = fcm_token,NotiStatus = noti_status
	WHERE UserId = user_id;

	IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Token updated successfully';
	ELSE
		SET success = false;
		SET message = 'Error while updating token. Please try again';
	END IF;
ELSEIF(get_mode = 'updateUserCity') THEN
	UPDATE `user` 
	SET `UserCity` = user_city
	WHERE `UserID` = user_id;

	IF(ROW_COUNT() > 0) THEN 		
		SET success = true;		
        SET message = '';
	ELSE
		SET success = false;
		SET message = '';
	END IF;
    
ELSEIF(get_mode = 'updateTokenNotiBase') THEN
	UPDATE `user` 
	SET Fcmtoken = fcm_token,NotiStatus = noti_status
	WHERE UserId = user_id;

	IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Token updated successfully';
        
        #set all category notifications on/off according to Notification Status
        IF(noti_status = 2) THEN
			UPDATE usernotification SET Status = 0 WHERE UserId = user_id AND Status = 1;
        ELSEIF(noti_status = 1) THEN
			UPDATE usernotification SET Status = 1 WHERE UserId = user_id AND Status = 0;
		END IF;
	ELSE
		SET success = false;
		SET message = 'Error while updating token. Please try again';
	END IF;
    
ELSEIF(get_mode = 'updateTokenLogout') THEN	
	
	SELECT NotiStatus INTO curr_noti_status from `user` WHERE UserId = user_id;
    
    IF(curr_noti_status = 2) THEN
		SET success = true;
		SET message = 'Token updated successfully';
	ELSE
		UPDATE `user` 
		SET NotiStatus = noti_status
		WHERE UserId = user_id;

		IF(ROW_COUNT() > 0) THEN 		
			SET success = true;
			SET message = 'Token updated successfully';
		ELSE
			SET success = false;
			SET message = 'Error while updating token. Please try again';
		END IF;
	
	END IF;
    
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uploadAbuseReport` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `uploadAbuseReport`(IN event_id INT(10),IN user_id INT(10),IN report_des TEXT,IN time_stamp DATETIME,OUT inserted_id INT(50),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

INSERT INTO `reportabuse` (`EventID`,`UserID`,`ReportDescription`,`TimeStamp`)
VALUES(event_id,user_id,report_des,time_stamp);

IF(ROW_COUNT() > 0) THEN 	
		SET inserted_id = LAST_INSERT_ID();	
		SET success = true;
		SET message = 'Report is posted successfully';
	ELSE
		SET success = false;
		SET message = 'Error while submitting abuse report';
	END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `uploadPhoto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `uploadPhoto`(IN path TEXT,IN event_id INT(10), IN user_id INT(10),OUT message VARCHAR(255), OUT success Boolean)
BEGIN

IF(event_id > 0) THEN
	UPDATE `event` SET `EventPoster`= path where EventID = event_id;
	IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Event Poster is updated successfully';
	ELSE
		SET success = false;
		SET message = 'Some Error in updating event poster';
	END IF;

ELSEIF(user_id > 0) THEN
	UPDATE `user` SET `UserPhoto`= path where UserID = user_id;
    IF(ROW_COUNT() > 0) THEN 		
		SET success = true;
		SET message = 'Your profile picture is updated successfully';
	ELSE
		SET success = false;
		SET message = 'Some Error in uploading profile picture';
	END IF;
    
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `userSignUpLoginWithSocialMedia` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`All_Events`@`%` PROCEDURE `userSignUpLoginWithSocialMedia`(
	IN `first_name` VARCHAR(45),
	IN `last_name` VARCHAR(45),
	IN `email_id` VARCHAR(45),
	IN `time_stamp` DATETIME,
	IN `login_type` VARCHAR(5),
	OUT `inserted_id` INT(50),
	OUT `user_id` INT(10),
	OUT `user_city` VARCHAR(255),
	OUT `noti_status` INT(1),
	OUT `message` VARCHAR(255),
	OUT `success` Boolean
)
BEGIN
DECLARE user_type_id,userstatus INT(1);
SET user_type_id = (SELECT UserTypeID FROM usertype WHERE UserType = 'User');
IF (email_id IS NULL OR email_id = '') THEN
	SET success = false;
	SET message = 'To continue login with facebook, please allow permission to access email';  
ELSE
IF EXISTS (SELECT 1 FROM user WHERE Email = email_id AND UserTypeID = user_type_id AND LoginType != login_type) THEN
	SET success = false;
	SET message = 'User with this email already registered. Please use another email';  
ELSE
	IF EXISTS (SELECT 1 FROM user WHERE Email = email_id AND UserTypeID = user_type_id AND LoginType = login_type) THEN
	BEGIN  
	SELECT UserId,UserCity,NotiStatus,Status INTO user_id,user_city,noti_status,userstatus FROM user WHERE Email = email_id AND UserTypeID = user_type_id AND LoginType = login_type;        
		IF(userstatus = 1) THEN
			SET inserted_id = 0;
			SET success = true;
			SET message = 'Login successfully';
		ELSE
			SET success = false;
			SET message = 'Your account is not activated';
		END IF;
	END;
    ELSE
    BEGIN
		INSERT INTO user (FirstName,LastName,Email, UserTypeID, Status, TimeStamp,LoginType) 
        VALUES (first_name,last_name,email_id,user_type_id,1,time_stamp,login_type);
        IF(ROW_COUNT() > 0) THEN 
			SET inserted_id = LAST_INSERT_ID();
			SET success = true;
			SET message = 'SignUp successfully. You can now login to your account';
		ELSE
			SET success = false;
			SET message = 'Error while signing up. Please try after some time';
		END IF;
	END;
	END IF;
END IF;
end if;
END ;;
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

-- Dump completed on 2017-11-21 11:04:28
