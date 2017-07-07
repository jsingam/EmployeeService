-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: polixia_ci_db
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `cevent`
--

DROP TABLE IF EXISTS `cevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cevent` (
  `PolicyId` char(50) DEFAULT NULL,
  `EventId` char(50) NOT NULL,
  `EventType` char(20) DEFAULT NULL,
  `TriggerEventId` char(50) DEFAULT NULL,
  `ContentDef` char(50) DEFAULT NULL,
  `ServerSync` int(14) DEFAULT NULL,
  `Created` int(14) DEFAULT NULL,
  `Submitted` int(14) DEFAULT NULL,
  `Effective` int(14) DEFAULT NULL,
  `Compliance` int(14) DEFAULT NULL,
  PRIMARY KEY (`EventId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cevent`
--

LOCK TABLES `cevent` WRITE;
/*!40000 ALTER TABLE `cevent` DISABLE KEYS */;
INSERT INTO `cevent` VALUES ('1234','1111','APPLICATION','<blank>','Q_AUTO_QUESTIONAIRE',1234,1234,1234,1234,1234),('1234','2222','APPLICATION','<blank>','Q_AUTO_QUESTIONAIRE',1234,1234,1234,1234,1234);
/*!40000 ALTER TABLE `cevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceventcompliance`
--

DROP TABLE IF EXISTS `ceventcompliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceventcompliance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoB` char(50) DEFAULT NULL,
  `EventType` char(20) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `ConsentType` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceventcompliance`
--

LOCK TABLES `ceventcompliance` WRITE;
/*!40000 ALTER TABLE `ceventcompliance` DISABLE KEYS */;
/*!40000 ALTER TABLE `ceventcompliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceventdata`
--

DROP TABLE IF EXISTS `ceventdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceventdata` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `EventId` char(50) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `CardID` char(20) DEFAULT NULL,
  `SetID` char(20) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `SectionID` char(20) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `PageID` char(20) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` char(100) DEFAULT NULL,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_uevent_ueventdata_idx` (`EventId`),
  CONSTRAINT `fk_uevent_ueventdata` FOREIGN KEY (`EventId`) REFERENCES `cevent` (`EventId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceventdata`
--

LOCK TABLES `ceventdata` WRITE;
/*!40000 ALTER TABLE `ceventdata` DISABLE KEYS */;
INSERT INTO `ceventdata` VALUES (1,'1111','Q_AUTO_APPLICATION','<blank>','<blank>','<blank>','<blank>','<blank>','<blank>','FIRSTNAME','John','1111'),(2,'1111','Q_AUTO_APPLICATION','<blank>','<blank>','<blank>','<blank>','<blank>','<blank>','LASTNAME','Steve','1111'),(3,'2222','Q_AUTO_APPLICATION','<blank>','<blank>','<blank>','<blank>','<blank>','<blank>','FIRSTNAME','John','1111'),(4,'2222','Q_AUTO_APPLICATION','<blank>','<blank>','<blank>','<blank>','<blank>','<blank>','LASTNAME','Steve','1111');
/*!40000 ALTER TABLE `ceventdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceventsubscription`
--

DROP TABLE IF EXISTS `ceventsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceventsubscription` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoB` char(50) DEFAULT NULL,
  `EventType` char(20) DEFAULT NULL,
  `Notification` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceventsubscription`
--

LOCK TABLES `ceventsubscription` WRITE;
/*!40000 ALTER TABLE `ceventsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `ceventsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceventtypedef`
--

DROP TABLE IF EXISTS `ceventtypedef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceventtypedef` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `FieldOwner` char(50) DEFAULT NULL,
  `EventType` char(20) DEFAULT NULL,
  `ContentDef` char(50) DEFAULT NULL,
  `WalletTile` char(20) DEFAULT NULL,
  `StoreTile` char(20) DEFAULT NULL,
  `Originator` char(20) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  `Hidden` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceventtypedef`
--

LOCK TABLES `ceventtypedef` WRITE;
/*!40000 ALTER TABLE `ceventtypedef` DISABLE KEYS */;
/*!40000 ALTER TABLE `ceventtypedef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfielddef`
--

DROP TABLE IF EXISTS `cfielddef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfielddef` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `FieldOwner` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `FieldTypeId` int(10) DEFAULT NULL,
  `FieldLength` int(4) DEFAULT NULL,
  `FieldDescription` char(100) DEFAULT NULL,
  `CheckTable` char(50) DEFAULT NULL,
  `Lower` char(50) DEFAULT NULL,
  `Upper` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cfieldtype_idx` (`FieldTypeId`),
  CONSTRAINT `fk_cfieldtype` FOREIGN KEY (`FieldTypeId`) REFERENCES `ceventtypedef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfielddef`
--

LOCK TABLES `cfielddef` WRITE;
/*!40000 ALTER TABLE `cfielddef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfielddef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfieldquestiondef`
--

DROP TABLE IF EXISTS `cfieldquestiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfieldquestiondef` (
  `Version` char(10) DEFAULT NULL,
  `FieldOwner` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `FieldDefId` int(10) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `Question` char(100) DEFAULT NULL,
  `id` int(10) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `fk_cfieldsquestiondef_fieldname_idx` (`FieldName`),
  KEY `fk_cfielddef_idx` (`FieldDefId`),
  CONSTRAINT `fk_cfielddef` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfieldquestiondef`
--

LOCK TABLES `cfieldquestiondef` WRITE;
/*!40000 ALTER TABLE `cfieldquestiondef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfieldquestiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfieldtypedef`
--

DROP TABLE IF EXISTS `cfieldtypedef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfieldtypedef` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `FieldType` char(10) DEFAULT NULL,
  `FieldDescription` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cfieldtypedef` (`Version`),
  CONSTRAINT `fk_cfieldtypedef` FOREIGN KEY (`Version`) REFERENCES `csettings` (`Version`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines Field Type definitions that will be hardcoded in App';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfieldtypedef`
--

LOCK TABLES `cfieldtypedef` WRITE;
/*!40000 ALTER TABLE `cfieldtypedef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cfieldtypedef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgraphicalresourcedef`
--

DROP TABLE IF EXISTS `cgraphicalresourcedef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgraphicalresourcedef` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `ResourceTypeId` int(10) DEFAULT NULL,
  `Owner` char(10) DEFAULT NULL,
  `ResourceName` char(10) DEFAULT NULL,
  `Platform` char(10) DEFAULT NULL,
  `Resolution` char(10) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_resourcetype_idx` (`ResourceTypeId`),
  CONSTRAINT `fk_resourcetype` FOREIGN KEY (`ResourceTypeId`) REFERENCES `cgraphicalresourcestype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgraphicalresourcedef`
--

LOCK TABLES `cgraphicalresourcedef` WRITE;
/*!40000 ALTER TABLE `cgraphicalresourcedef` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgraphicalresourcedef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cgraphicalresourcestype`
--

DROP TABLE IF EXISTS `cgraphicalresourcestype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cgraphicalresourcestype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `ResourceType` char(50) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `Normalized resolution` char(20) DEFAULT NULL,
  `SampleResource` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cgraphicalresourcestype`
--

LOCK TABLES `cgraphicalresourcestype` WRITE;
/*!40000 ALTER TABLE `cgraphicalresourcestype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cgraphicalresourcestype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clobdef`
--

DROP TABLE IF EXISTS `clobdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clobdef` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `LoB` char(20) DEFAULT NULL,
  `ApplicationQuestionaire` char(50) DEFAULT NULL,
  `StoreLoBLogo` blob,
  `Text1` char(50) DEFAULT NULL,
  `DisplayOrder` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clobdef`
--

LOCK TABLES `clobdef` WRITE;
/*!40000 ALTER TABLE `clobdef` DISABLE KEYS */;
/*!40000 ALTER TABLE `clobdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairecards`
--

DROP TABLE IF EXISTS `cquestionairecards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairecards` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(10) DEFAULT NULL,
  `CardName` char(20) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `Title` char(100) DEFAULT NULL,
  `PageLogo` blob,
  PRIMARY KEY (`id`),
  KEY `fk_cquestionairetype_idx` (`QuestionaireTypeId`),
  CONSTRAINT `fk_cquestionairetype` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairecards`
--

LOCK TABLES `cquestionairecards` WRITE;
/*!40000 ALTER TABLE `cquestionairecards` DISABLE KEYS */;
/*!40000 ALTER TABLE `cquestionairecards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairepage`
--

DROP TABLE IF EXISTS `cquestionairepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairepage` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(10) DEFAULT NULL,
  `CardId` int(10) DEFAULT NULL,
  `SetID` int(10) DEFAULT NULL,
  `SecID` int(10) DEFAULT NULL,
  `PageName` char(20) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionairetype_page_idx` (`QuestionaireTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairepage`
--

LOCK TABLES `cquestionairepage` WRITE;
/*!40000 ALTER TABLE `cquestionairepage` DISABLE KEYS */;
/*!40000 ALTER TABLE `cquestionairepage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairepagefields`
--

DROP TABLE IF EXISTS `cquestionairepagefields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairepagefields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(10) DEFAULT NULL,
  `CardId` int(10) DEFAULT NULL,
  `SetID` int(10) DEFAULT NULL,
  `SecID` int(10) DEFAULT NULL,
  `PageID` int(10) DEFAULT NULL,
  `FieldName` char(20) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `UserInput` tinyint(4) DEFAULT NULL,
  `ServerInput` tinyint(4) DEFAULT NULL,
  `MandatoryField` tinyint(4) DEFAULT NULL,
  `HiddenField` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionairepage_idx` (`PageID`),
  KEY `fk_questionairesections_idx` (`SecID`),
  KEY `fk_questionaireset_idx` (`SetID`),
  CONSTRAINT `fk_questionairepage` FOREIGN KEY (`PageID`) REFERENCES `cquestionairepage` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairesections` FOREIGN KEY (`SecID`) REFERENCES `cquestionairsections` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairepagefields`
--

LOCK TABLES `cquestionairepagefields` WRITE;
/*!40000 ALTER TABLE `cquestionairepagefields` DISABLE KEYS */;
/*!40000 ALTER TABLE `cquestionairepagefields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairepagefldcompliance`
--

DROP TABLE IF EXISTS `cquestionairepagefldcompliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairepagefldcompliance` (
  `Version` char(10) NOT NULL,
  `QuestionaireOwner` char(50) NOT NULL,
  `QuestionaireType` char(10) NOT NULL,
  `CardName` char(20) NOT NULL,
  `SetID` char(20) NOT NULL,
  `SecID` char(20) NOT NULL,
  `PageID` char(20) NOT NULL,
  `FieldName` char(20) NOT NULL,
  `ComplianceRule` char(20) NOT NULL,
  `FieldBehavior` char(20) DEFAULT NULL,
  PRIMARY KEY (`Version`,`QuestionaireOwner`,`QuestionaireType`,`CardName`,`SetID`,`SecID`,`PageID`,`FieldName`,`ComplianceRule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairepagefldcompliance`
--

LOCK TABLES `cquestionairepagefldcompliance` WRITE;
/*!40000 ALTER TABLE `cquestionairepagefldcompliance` DISABLE KEYS */;
/*!40000 ALTER TABLE `cquestionairepagefldcompliance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionaireset`
--

DROP TABLE IF EXISTS `cquestionaireset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionaireset` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(10) DEFAULT NULL,
  `CardId` int(10) DEFAULT NULL,
  `SetId` char(20) DEFAULT NULL,
  `SetMax` int(2) DEFAULT NULL,
  `Text` char(50) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `SetNickNameField` char(50) DEFAULT NULL,
  `NoSection` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cquestionairetype_idx` (`QuestionaireTypeId`),
  KEY `fk_cquestionairecard_idx` (`CardId`),
  CONSTRAINT `fk_questionairecards` FOREIGN KEY (`CardId`) REFERENCES `cquestionairecards` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionaireset`
--

LOCK TABLES `cquestionaireset` WRITE;
/*!40000 ALTER TABLE `cquestionaireset` DISABLE KEYS */;
/*!40000 ALTER TABLE `cquestionaireset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairetype`
--

DROP TABLE IF EXISTS `cquestionairetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairetype` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairetype`
--

LOCK TABLES `cquestionairetype` WRITE;
/*!40000 ALTER TABLE `cquestionairetype` DISABLE KEYS */;
/*!40000 ALTER TABLE `cquestionairetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairsections`
--

DROP TABLE IF EXISTS `cquestionairsections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairsections` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(10) DEFAULT NULL,
  `CardId` int(10) DEFAULT NULL,
  `SetID` int(10) DEFAULT NULL,
  `SecID` char(20) DEFAULT NULL,
  `SectionLogo` blob,
  `SectionText` char(50) DEFAULT NULL,
  `Order` int(4) DEFAULT NULL,
  `SectionSet` tinyint(4) DEFAULT NULL,
  `SectionNickNameField` char(50) DEFAULT NULL,
  `NoPage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionairetype_idx` (`QuestionaireTypeId`),
  KEY `fk_questionairecard_idx` (`CardId`),
  KEY `fk_questionaireset_idx` (`SetID`),
  CONSTRAINT `fk_questionairecard` FOREIGN KEY (`CardId`) REFERENCES `cquestionairecards` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionaireset` FOREIGN KEY (`SetID`) REFERENCES `cquestionaireset` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype1` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairsections`
--

LOCK TABLES `cquestionairsections` WRITE;
/*!40000 ALTER TABLE `cquestionairsections` DISABLE KEYS */;
/*!40000 ALTER TABLE `cquestionairsections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csettings`
--

DROP TABLE IF EXISTS `csettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csettings` (
  `Version` char(10) NOT NULL,
  `Description` char(100) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Released` tinyint(4) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csettings`
--

LOCK TABLES `csettings` WRITE;
/*!40000 ALTER TABLE `csettings` DISABLE KEYS */;
/*!40000 ALTER TABLE `csettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctiledef`
--

DROP TABLE IF EXISTS `ctiledef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctiledef` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `Tile` char(20) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctiledef`
--

LOCK TABLES `ctiledef` WRITE;
/*!40000 ALTER TABLE `ctiledef` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctiledef` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-05 11:35:55
