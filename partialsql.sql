-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: polixia_db
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `ccomplianceruledef`
--

DROP TABLE IF EXISTS `ccomplianceruledef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccomplianceruledef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `ComplianceRuleId` int(11) DEFAULT NULL,
  `RuleName` char(20) DEFAULT NULL,
  `Rule` int(2) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardId` char(20) DEFAULT NULL,
  `Set_Id` int(11) DEFAULT NULL,
  `SetId` char(20) DEFAULT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SectionID` char(20) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageID` char(20) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Sign` char(2) DEFAULT NULL,
  `Value` char(100) DEFAULT NULL,
  `Operator` char(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_settings_complianceruledef_idx` (`VersionId`),
  KEY `fk_storeserver_complianceruledef_idx` (`StoreServerId`),
  KEY `fk_questionairetype_idx` (`QuestionaireTypeId`),
  KEY `fk_card_complianceruledef_idx` (`Card_Id`),
  KEY `fk_set_complianceruledef_idx` (`Set_Id`),
  KEY `fk_page_complianceruledef_idx` (`Page_Id`),
  KEY `fk_fielddef_complianceruledef_idx` (`FieldDefId`),
  KEY `fk_compliancerule_complianceruledef_idx` (`ComplianceRuleId`),
  KEY `fk_section_complianceruledef_idx` (`Section_Id`),
  CONSTRAINT `fk_card_complianceruledef` FOREIGN KEY (`Card_Id`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compliancerule_complianceruledef` FOREIGN KEY (`ComplianceRuleId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fielddef_complianceruledef` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_page_complianceruledef` FOREIGN KEY (`Page_Id`) REFERENCES `cquestionairepage` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_complianceruledef` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_complianceruledef` FOREIGN KEY (`Section_Id`) REFERENCES `cquestionairsections` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_complianceruledef` FOREIGN KEY (`Set_Id`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_complianceruledef` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_complianceruledef` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccomplianceruledef`
--

LOCK TABLES `ccomplianceruledef` WRITE;
/*!40000 ALTER TABLE `ccomplianceruledef` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccomplianceruledef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ccomplinacerules`
--

DROP TABLE IF EXISTS `ccomplinacerules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccomplinacerules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(20) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `ComplainceRule` char(20) DEFAULT NULL,
  `Description` char(20) DEFAULT NULL,
  `ComplianceResource` varchar(50) DEFAULT NULL,
  `ConsentGroup` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_settings_compliancerules_idx` (`VersionId`),
  KEY `fk_storeserver_compliancerules_idx` (`StoreServerId`),
  CONSTRAINT `fk_settings_compliancerules` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_compliancerules` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccomplinacerules`
--

LOCK TABLES `ccomplinacerules` WRITE;
/*!40000 ALTER TABLE `ccomplinacerules` DISABLE KEYS */;
/*!40000 ALTER TABLE `ccomplinacerules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cevent`
--

DROP TABLE IF EXISTS `cevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cevent` (
  `Policy_Id` int(11) DEFAULT NULL,
  `PolicyId` char(50) DEFAULT NULL,
  `EventId` char(50) NOT NULL,
  `EventTypeId` int(11) DEFAULT NULL,
  `EventType` char(20) DEFAULT NULL,
  `TriggerEventId` char(50) DEFAULT NULL,
  `QuestionaireType_Id` int(11) DEFAULT NULL,
  `ContentDef` char(50) DEFAULT NULL,
  `ServerSync` int(14) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Submitted` timestamp(6) NULL DEFAULT NULL,
  `Effective` timestamp(6) NULL DEFAULT NULL,
  `Compliance` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`EventId`),
  KEY `fk_policy_event_idx` (`Policy_Id`),
  KEY `fk_questionairetype_event_idx` (`QuestionaireType_Id`),
  KEY `fk_event_event_idx` (`TriggerEventId`),
  KEY `fk_eventtype_event_idx` (`EventTypeId`),
  CONSTRAINT `fk_event_event` FOREIGN KEY (`TriggerEventId`) REFERENCES `cevent` (`EventId`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_eventttype_event` FOREIGN KEY (`EventTypeId`) REFERENCES `ceventtypedef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_policy_event` FOREIGN KEY (`Policy_Id`) REFERENCES `upolicy` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_event` FOREIGN KEY (`QuestionaireType_Id`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cevent`
--

LOCK TABLES `cevent` WRITE;
/*!40000 ALTER TABLE `cevent` DISABLE KEYS */;
INSERT INTO `cevent` VALUES (NULL,'1111','1111',NULL,'APPLICATION',NULL,NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL),(NULL,'1111','2222',NULL,'APPLICATIO',NULL,NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL),(NULL,'2222','3333',NULL,'APPLICATION',NULL,NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL),(NULL,'2222','4444',NULL,'APPLICATION',NULL,NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL),(NULL,'1111','5555',NULL,'APPLICATION',NULL,NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL),(NULL,'1111','6666',NULL,'APPLICATION',NULL,NULL,'Q_AUTO_QUESTIONAIRE',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceventcomplainceconsent`
--

DROP TABLE IF EXISTS `ceventcomplainceconsent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceventcomplainceconsent` (
  `cEvent` int(11) NOT NULL AUTO_INCREMENT,
  `Policy_Id` int(11) DEFAULT NULL,
  `PolicyId` char(50) DEFAULT NULL,
  `EventId` char(50) DEFAULT NULL,
  `ComplianceRuleId` int(11) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `ConsentedOn` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`cEvent`),
  KEY `fk_policy_eveentCompliance_idx` (`Policy_Id`),
  KEY `fk_complianceRule_eventCompliance_idx` (`ComplianceRuleId`),
  CONSTRAINT `fk_complianceRule_eventCompliance` FOREIGN KEY (`ComplianceRuleId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_policy_eveentCompliance` FOREIGN KEY (`Policy_Id`) REFERENCES `upolicy` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='this might be changed to u event complaiance as sarindu has added cevent as uevent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceventcomplainceconsent`
--

LOCK TABLES `ceventcomplainceconsent` WRITE;
/*!40000 ALTER TABLE `ceventcomplainceconsent` DISABLE KEYS */;
/*!40000 ALTER TABLE `ceventcomplainceconsent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ceventcompliance`
--

DROP TABLE IF EXISTS `ceventcompliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ceventcompliance` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoBId` int(11) DEFAULT NULL,
  `LoB` char(50) DEFAULT NULL,
  `EventTypeId` int(11) DEFAULT NULL,
  `EventType` char(20) DEFAULT NULL,
  `ComplianceRuleId` int(11) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `ConsentType` char(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_settings_eventcompliance_idx` (`VersionId`),
  KEY `fk_storeserver_eventcompliance_idx` (`StoreServerId`),
  KEY `fk_storebrand_eventcompliance_idx` (`StoreBrandId`),
  KEY `fk_lob_eventcompliance_idx` (`LoBId`),
  KEY `fk_compliancerule_eventcompliance_idx` (`ComplianceRuleId`),
  CONSTRAINT `fk_compliancerules_eventcompliance` FOREIGN KEY (`ComplianceRuleId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lob_eventcompliance` FOREIGN KEY (`LoBId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_eventcompliance` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_eventcompliance` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_eventcompliance` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Id` int(10) NOT NULL,
  `Policy_Id` int(11) DEFAULT NULL,
  `PolicyId` char(50) DEFAULT NULL,
  `EventId` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardID` char(20) DEFAULT NULL,
  `Set_Id` int(11) DEFAULT NULL,
  `SetID` char(20) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SectionID` char(20) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageID` char(20) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` blob,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_uevent_ueventdata_idx` (`EventId`),
  KEY `fk_questionairetype_eventdata_idx` (`QuestionaireTypeId`),
  KEY `fk_card_event_idx` (`Card_Id`),
  KEY `fk_set_eventdata_idx` (`Set_Id`),
  KEY `fk_page_eventdata_idx` (`Page_Id`),
  KEY `fk_fielddef_eventdata_idx` (`FieldDefId`),
  KEY `fk_section_ceventdata_idx` (`Section_Id`),
  KEY `fk_policy_eventdata_idx` (`Policy_Id`),
  CONSTRAINT `fk_card_event` FOREIGN KEY (`Card_Id`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fielddef_eventdata` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_page_eventdata` FOREIGN KEY (`Page_Id`) REFERENCES `cquestionairepage` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_policy_eventdata` FOREIGN KEY (`Policy_Id`) REFERENCES `upolicy` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_eventdata` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_ceventdata` FOREIGN KEY (`Section_Id`) REFERENCES `cquestionairsections` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_eventdata` FOREIGN KEY (`Set_Id`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uevent_ueventdata` FOREIGN KEY (`EventId`) REFERENCES `cevent` (`EventId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sarindu has ignored uPolicy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ceventdata`
--

LOCK TABLES `ceventdata` WRITE;
/*!40000 ALTER TABLE `ceventdata` DISABLE KEYS */;
INSERT INTO `ceventdata` VALUES (9,NULL,NULL,'1111',1,'UPID_PERSUS',2,'QPAYMENT',3,'ECHK','BD_NICKNAME',5,'blank',NULL,4,'SAMPLEPAGE2',1,'SAMPLEFIELD3','sampletext3',NULL),(10,NULL,NULL,'1111',1,'UPID_PERSUS',2,'QPAYMENT',2,'CCARD','CC_NICKNAME',4,'SAMPLE',NULL,3,'SAMPLEPAGE1',4,'SAMPLEFIELD2','sampletxt2',NULL),(11,NULL,NULL,'1111',1,'UPID_PERSUS',1,'QPERSONAL',1,'SAMPLESET',NULL,6,'blank',NULL,5,'blank',5,'SAMPLEFIELD1','sampletxt1',''),(12,NULL,NULL,'1111',1,'UPID_PERSUS',1,'QPERSONAL',4,'blank',NULL,1,'NAMEADR',NULL,1,'PNAMEADR',2,'NAME','Bob',NULL),(13,NULL,NULL,'1111',1,'UPID_PERSUS',1,'QPERSONAL',4,'blank',NULL,2,'EMPLOYEESTAT',NULL,2,'PEMPLOYEESTAT',3,'EMPLOYEESTATUS','Student',NULL),(14,NULL,NULL,'1111',1,'UPID_PERSUS',3,'blank',6,'blank',NULL,3,'Beneficiary',NULL,6,'blank',6,'BENEFIT','NoBenefit',NULL);
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
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoBId` int(11) DEFAULT NULL,
  `LoB` char(50) DEFAULT NULL,
  `EventType` char(20) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `ContentDef` char(50) DEFAULT NULL,
  `Notification` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_settings_eventsubsciption_idx` (`VersionId`),
  KEY `fk_storeserver_eventsubscription_idx` (`StoreServerId`),
  KEY `fk_storebrand_id_idx` (`StoreBrandId`),
  KEY `fk_lob_eventsubscription_idx` (`LoBId`),
  KEY `fk_questionaire_eventsub_idx` (`QuestionaireTypeId`),
  CONSTRAINT `fk_lob_eventsubscription` FOREIGN KEY (`LoBId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionaire_eventsub` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_eventsubsciption` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_eventsubscription` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_eventsubscription` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `SoreServerId` int(11) DEFAULT NULL,
  `FieldOwner` char(50) DEFAULT NULL,
  `EventType` char(20) DEFAULT NULL,
  `QuestionaireID` int(11) DEFAULT NULL,
  `ContentDef` char(50) DEFAULT NULL,
  `WalletTile` char(20) DEFAULT NULL,
  `StoreTile` char(20) DEFAULT NULL,
  `Originator` char(20) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  `Hidden` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_settings_eventtypedef_idx` (`VersionId`),
  KEY `fk_storeserver_eventtypedef_idx` (`SoreServerId`),
  KEY `fk_questionaire_eventtypedef_idx` (`QuestionaireID`),
  CONSTRAINT `fk_questionaire_eventtypedef` FOREIGN KEY (`QuestionaireID`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_eventtypedef` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_eventtypedef` FOREIGN KEY (`SoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `FieldOwner` char(50) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `FieldTypeDefId` int(11) DEFAULT NULL,
  `FieldType` char(10) DEFAULT NULL,
  `FieldLength` char(10) DEFAULT NULL,
  `FieldDescription` char(100) DEFAULT NULL,
  `CheckTable` char(50) DEFAULT NULL,
  `Lower` char(50) DEFAULT NULL,
  `Upper` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_storeserver_fielddef_idx` (`StoreServerId`),
  KEY `fk_fieldtypedef_fielddef_idx` (`FieldTypeDefId`),
  CONSTRAINT `fk_fieldtypedef_fielddef` FOREIGN KEY (`FieldTypeDefId`) REFERENCES `cfieldtypedef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_fielddef` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfielddef`
--

LOCK TABLES `cfielddef` WRITE;
/*!40000 ALTER TABLE `cfielddef` DISABLE KEYS */;
INSERT INTO `cfielddef` VALUES (1,1,'v1.0',1,'POLIXIA','NAME',1,'CHAR','50','NODIS','',NULL,NULL),(2,1,'V1.0',1,'POLIXIA','SAMPLEFIELD1',1,'CHAR','50','NODIS',NULL,NULL,NULL),(3,1,'V1.0',1,'POLIXIA','EMPLOYEESTATUS',1,'CHAR','50','NODIS',NULL,NULL,NULL),(4,1,'V1.0',1,'POLIXIA','SAMPLEFIELD2',1,'CHAR','50','nODIS',NULL,NULL,NULL),(5,1,'V1.0',1,'POLIXIA','SAMPLEFIELD3',1,'CHAR','50','NODIS',NULL,NULL,NULL),(6,1,'V1.0',1,'POLIXIA','BENEFIT',1,'CHAR','50','NODIS',NULL,NULL,NULL);
/*!40000 ALTER TABLE `cfielddef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cfieldquestiondef`
--

DROP TABLE IF EXISTS `cfieldquestiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cfieldquestiondef` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `FieldOwner` char(50) DEFAULT NULL,
  `FieldDef_Id` int(11) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `OrderNumber` int(4) DEFAULT NULL,
  `Question` char(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_cfieldsquestiondef_fieldname_idx` (`FieldName`),
  KEY `fk_settings_questiontype_idx` (`VersionId`),
  KEY `fk_storeserver_questiontype_idx` (`StoreServerId`),
  KEY `fk_fielddef_questiontype_idx` (`FieldDef_Id`),
  CONSTRAINT `fk_fielddef_questiontype` FOREIGN KEY (`FieldDef_Id`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_questiontype` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_questiontype` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `versionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `FieldType` char(10) DEFAULT NULL,
  `FieldDescription` char(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_cfieldtypedef` (`Version`),
  KEY `fk_settings_fieldtype_idx` (`versionId`),
  CONSTRAINT `fk_settings_fieldtype` FOREIGN KEY (`versionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Defines Field Type definitions that will be hardcoded in App';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cfieldtypedef`
--

LOCK TABLES `cfieldtypedef` WRITE;
/*!40000 ALTER TABLE `cfieldtypedef` DISABLE KEYS */;
INSERT INTO `cfieldtypedef` VALUES (1,1,'v1.0','char','letters');
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
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `ResourceTypeId` char(50) DEFAULT NULL,
  `Owner` char(10) DEFAULT NULL,
  `ResourceName` char(10) DEFAULT NULL,
  `Platform` char(10) DEFAULT NULL,
  `Resolution` char(10) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `GraphicalResource` blob,
  PRIMARY KEY (`id`),
  KEY `fk_settings_gdef_idx` (`VersionId`),
  CONSTRAINT `fk_settings_gdef` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `versionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `ResourceType` char(50) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `Normalized_resolution` char(20) DEFAULT NULL,
  `SampleResource` blob,
  PRIMARY KEY (`id`),
  KEY `fk_settings_graphicalresourcedef_idx` (`versionId`),
  CONSTRAINT `fk_settings_graphicalresourcedef` FOREIGN KEY (`versionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `LoB` char(20) DEFAULT NULL,
  `ApplicationQuestionaire` char(50) DEFAULT NULL,
  `StoreLoBLogo` blob,
  `Text1` char(50) DEFAULT NULL,
  `DisplayOrder` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_settings_lobdef_idx` (`VersionId`),
  CONSTRAINT `fk_settings_lobdef` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `CardName` char(20) DEFAULT NULL,
  `OrderNumber` int(4) DEFAULT NULL,
  `Title` char(100) DEFAULT NULL,
  `PageLogo` blob,
  `NoSet` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_settings_cards_idx` (`VersionId`),
  KEY `fk_storeserver_cards_idx` (`StoreServerId`),
  KEY `fk_questionairetype_cards_idx` (`QuestionaireTypeId`),
  CONSTRAINT `fk_questionairetype_cards` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_cards` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_cards` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairecards`
--

LOCK TABLES `cquestionairecards` WRITE;
/*!40000 ALTER TABLE `cquestionairecards` DISABLE KEYS */;
INSERT INTO `cquestionairecards` VALUES (1,1,'v1.0',1,'polixia',1,'UPID_PERSUS','QPERSONAL',1,'PERSONAL','?',NULL),(2,1,'v1.0',1,'polixia',1,'UPID_PERSUS','QPAYMENT',2,'PAYMENT','?',NULL),(3,1,'v1.0',1,'polixia',1,'UPID_PERSUS','blank',3,'blank','blank',NULL);
/*!40000 ALTER TABLE `cquestionairecards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairepage`
--

DROP TABLE IF EXISTS `cquestionairepage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairepage` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireType_Id` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `CardId` int(11) DEFAULT NULL,
  `CardName` char(20) DEFAULT NULL,
  `SetId` int(11) DEFAULT NULL,
  `SetName` char(20) DEFAULT NULL,
  `SectionId` int(11) DEFAULT NULL,
  `SecID` char(20) DEFAULT NULL,
  `PageName` char(20) DEFAULT NULL,
  `OrderNumber` int(4) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  `ComplianceRuleId` int(11) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `PageBehavior` char(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_questionairetype_page_idx` (`QuestionaireType`),
  KEY `fk_setting_page_idx` (`Id`,`VersionId`),
  KEY `fk_storeserver_page_idx` (`StoreServerId`),
  KEY `fk_questionairetype_page_idx1` (`QuestionaireType_Id`),
  KEY `fk_card_page_idx` (`CardId`),
  KEY `fk_set_page_idx` (`SetId`),
  KEY `fk_setting_page_idx1` (`VersionId`),
  KEY `fk_section_cquestionairepage_idx` (`SectionId`),
  KEY `fk_comrule_page_idx` (`ComplianceRuleId`),
  CONSTRAINT `fk_card_page` FOREIGN KEY (`CardId`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comrule_page` FOREIGN KEY (`ComplianceRuleId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_page` FOREIGN KEY (`QuestionaireType_Id`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_cquestionairepage` FOREIGN KEY (`SectionId`) REFERENCES `cquestionairsections` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_page` FOREIGN KEY (`SetId`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setting_page` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_page` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairepage`
--

LOCK TABLES `cquestionairepage` WRITE;
/*!40000 ALTER TABLE `cquestionairepage` DISABLE KEYS */;
INSERT INTO `cquestionairepage` VALUES (1,1,'v1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',4,'blank',1,'NAMEADR','PNAMEADR',1,'NODIS',NULL,NULL,NULL),(2,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',4,'blank',2,'EMPLOYEESTAT','PEMPLOYEESTAT',2,'NODIS',NULL,NULL,NULL),(3,1,'v1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT',2,'CCARD',4,'SAMPLE','SAMPLEPAGE1',1,'NODIS',NULL,NULL,NULL),(4,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT',3,'ECHK',5,'blank','SAMPLEPAGE2',2,'NODIS',NULL,NULL,NULL),(5,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',1,'SAMPLESET',6,'blank','blank',1,'NODIS',NULL,NULL,NULL),(6,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',3,'blank',6,'blank',3,'BENEFICIARY','blank',1,'NODIS',NULL,NULL,NULL);
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
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerID` int(11) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `Questionaire_Id` int(11) DEFAULT NULL,
  `QuestionaireTypeId` char(20) DEFAULT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardId` char(20) DEFAULT NULL,
  `Set_Id` int(11) DEFAULT NULL,
  `SetID` char(20) DEFAULT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SecID` char(20) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageID` char(20) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `FieldName` char(20) DEFAULT NULL,
  `Order_Number` int(4) DEFAULT NULL,
  `UserInput` tinyint(4) DEFAULT NULL,
  `ServerInput` tinyint(4) DEFAULT NULL,
  `MandatoryField` tinyint(4) DEFAULT NULL,
  `HiddenField` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_questionaireset_idx` (`SetID`),
  KEY `fk_settings_field_idx` (`VersionId`),
  KEY `fk_storeserver_field_idx` (`StoreServerID`),
  KEY `fk_questionairetype_field_idx` (`Questionaire_Id`),
  KEY `fk_card_field_idx` (`Card_Id`),
  KEY `fk_set_field_idx` (`Set_Id`),
  KEY `fk_fielddef_field_idx` (`FieldDefId`),
  KEY `fk_page_field_idx` (`Page_Id`),
  KEY `fk_section_field_idx` (`Section_Id`),
  CONSTRAINT `fk_fielddef_field` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_field` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairepagefields`
--

LOCK TABLES `cquestionairepagefields` WRITE;
/*!40000 ALTER TABLE `cquestionairepagefields` DISABLE KEYS */;
INSERT INTO `cquestionairepagefields` VALUES (1,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',1,'SAMPLESET',6,'blank',5,'blank',1,'SAMPLEFIELD1',1,1,1,1,1),(2,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',4,'blank',1,'NAMEADR',1,'PNAMEADR',2,'NAME',1,1,1,1,1),(3,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',4,'blank',2,'EMPLOYEESTAT',2,'PEMPLOYEESTAT',3,'EMPLOYEESTATUS',1,1,1,1,1),(4,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT',2,'CCARD',4,'SAMPLE',3,'SAMPLEPAGE1',4,'SAMPLEFIELD2',1,1,1,1,1),(5,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT',3,'ECHK',5,'blank',4,'SAMPLEPAGE2',5,'SAMPLEFIELD3',1,1,1,1,1),(6,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',3,'blank',6,'blank',3,'BENEFICIARY',6,'blank',6,'BENEFIT',1,1,1,1,1);
/*!40000 ALTER TABLE `cquestionairepagefields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairepagefldcompliance`
--

DROP TABLE IF EXISTS `cquestionairepagefldcompliance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairepagefldcompliance` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) NOT NULL,
  `StoreServerID` int(11) DEFAULT NULL,
  `QuestionaireOwner` char(50) NOT NULL,
  `Questionairetype_Id` int(11) DEFAULT NULL,
  `QuestionaireType` char(10) NOT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardName` char(20) NOT NULL,
  `Set_Id` int(11) DEFAULT NULL,
  `SetID` char(20) NOT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SecID` char(20) NOT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageID` char(20) NOT NULL,
  `Field_Id` int(11) DEFAULT NULL,
  `FieldName` char(20) NOT NULL,
  `ComplainceId` int(11) DEFAULT NULL,
  `ComplianceRule` char(20) NOT NULL,
  `FieldBehavior` char(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_setting_fieldComplaince_idx` (`VersionId`),
  KEY `fk_storeserver_fieldComplaince_idx` (`StoreServerID`),
  KEY `fk_questionairetype_fieldComplaince_idx` (`Questionairetype_Id`),
  KEY `fk_card_fieldComplaince_idx` (`Card_Id`),
  KEY `fk_set_fieldComplaince_idx` (`Set_Id`),
  KEY `fk_page_fieldComplaince_idx` (`Page_Id`),
  KEY `fk_field_fieldComplaince_idx` (`Field_Id`),
  KEY `fk_compliance_fieldComplaince_idx` (`ComplainceId`),
  KEY `fk_section_fieldCompliance_idx` (`Section_Id`),
  CONSTRAINT `fk_card_fieldComplaince` FOREIGN KEY (`Card_Id`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compliance_fieldComplaince` FOREIGN KEY (`ComplainceId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_field_fieldComplaince` FOREIGN KEY (`Field_Id`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_page_fieldComplaince` FOREIGN KEY (`Page_Id`) REFERENCES `cquestionairepage` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_fieldComplaince` FOREIGN KEY (`Questionairetype_Id`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_fieldCompliance` FOREIGN KEY (`Section_Id`) REFERENCES `cquestionairsections` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_fieldComplaince` FOREIGN KEY (`Set_Id`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setting_fieldComplaince` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_fieldComplaince` FOREIGN KEY (`StoreServerID`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
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
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(20) DEFAULT NULL,
  `CardId` int(11) DEFAULT NULL,
  `CardName` char(20) DEFAULT NULL,
  `SetId` char(20) DEFAULT NULL,
  `SetMax` int(2) DEFAULT NULL,
  `Text` char(50) DEFAULT NULL,
  `OrderNumber` int(4) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `SetNickNameField` char(50) DEFAULT NULL,
  `NoSection` tinyint(4) DEFAULT NULL,
  `ComplianceRuleId` int(11) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `SetBehaviour` char(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_settings_set_idx` (`VersionId`),
  KEY `fk_storeserver_set_idx` (`StoreServerId`),
  KEY `fk_questionairetype_set_idx` (`QuestionaireTypeId`),
  KEY `fk_fielddef_set_idx` (`FieldDefId`),
  KEY `fk_card_set_idx` (`CardId`),
  KEY `fk_comrules_set_idx` (`ComplianceRuleId`),
  CONSTRAINT `fk_card_set` FOREIGN KEY (`CardId`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comrules_set` FOREIGN KEY (`ComplianceRuleId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fielddef_set` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_set` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_set` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_set` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionaireset`
--

LOCK TABLES `cquestionaireset` WRITE;
/*!40000 ALTER TABLE `cquestionaireset` DISABLE KEYS */;
INSERT INTO `cquestionaireset` VALUES (1,1,'v1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL','SAMPLESET',0,NULL,1,1,NULL,0,NULL,NULL,NULL),(2,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT','CCARD',3,'Add Credit Card',1,1,'CC_NICKNAME',0,NULL,NULL,NULL),(3,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT','ECHK',3,'Add Bank Details',2,1,'BD_NICKNAME',0,NULL,NULL,NULL),(4,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL','blank',3,NULL,2,1,NULL,0,NULL,NULL,NULL),(5,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL','blank',3,NULL,1,1,NULL,0,NULL,NULL,NULL),(6,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',3,'blank','blank',3,NULL,1,1,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cquestionaireset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairetype`
--

DROP TABLE IF EXISTS `cquestionairetype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairetype` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Description` char(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_settings_questionaire_idx` (`VersionId`),
  KEY `fk_storeserver_questionairetype_idx` (`StoreServerId`),
  CONSTRAINT `fk_settings_questionairetype` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_questionairetype` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairetype`
--

LOCK TABLES `cquestionairetype` WRITE;
/*!40000 ALTER TABLE `cquestionairetype` DISABLE KEYS */;
INSERT INTO `cquestionairetype` VALUES (1,1,'v1.0',1,'polixia','UPID_PERSUS','Sample questionaire');
/*!40000 ALTER TABLE `cquestionairetype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cquestionairsections`
--

DROP TABLE IF EXISTS `cquestionairsections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cquestionairsections` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `QuestionaireOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(20) DEFAULT NULL,
  `CardId` int(11) DEFAULT NULL,
  `CardName` char(20) DEFAULT NULL,
  `SetId` int(11) DEFAULT NULL,
  `SetName` char(20) DEFAULT NULL,
  `SecName` char(20) DEFAULT NULL,
  `SectionLogo` blob,
  `SectionText` char(50) DEFAULT NULL,
  `OrderNumber` int(4) DEFAULT NULL,
  `SectionSet` tinyint(4) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `SectionNickNameField` char(50) DEFAULT NULL,
  `NoPage` tinyint(4) DEFAULT NULL,
  `ComplianceRuleId` int(11) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `SectionBehavior` char(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_settings_section_idx` (`VersionId`),
  KEY `fk_storeserver_section_idx` (`StoreServerId`),
  KEY `fk_questionairetype_section_idx` (`QuestionaireTypeId`),
  KEY `fk_card_section_idx` (`CardId`),
  KEY `fk_set_section_idx` (`SetId`),
  KEY `fk_fielddef_section_idx` (`FieldDefId`),
  KEY `fk_compliancerules_section_idx` (`ComplianceRuleId`),
  CONSTRAINT `fk_card_section` FOREIGN KEY (`CardId`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_compliancerules_section` FOREIGN KEY (`ComplianceRuleId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fielddef_section` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_section` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_section` FOREIGN KEY (`SetId`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_section` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_section` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cquestionairsections`
--

LOCK TABLES `cquestionairsections` WRITE;
/*!40000 ALTER TABLE `cquestionairsections` DISABLE KEYS */;
INSERT INTO `cquestionairsections` VALUES (1,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',4,'blank','NAMEADR',NULL,'Name and Address',1,0,1,NULL,0,NULL,NULL,NULL),(2,1,'v1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',5,'blank','EMPLOYEESTAT',NULL,'Employee Status',2,0,1,'CC_NICKNAMKE',0,NULL,NULL,NULL),(3,1,'V1.0',1,'POLIXIA',1,'UPID_PERSUS',3,'blank',6,'blank','BENEFICIARY',NULL,'Beneficiary',3,1,1,'BD_Nickname',0,NULL,NULL,NULL),(4,1,'v1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT',2,'CCARD','SAMPLE',NULL,'Samplesection',1,0,1,NULL,0,NULL,NULL,NULL),(5,1,'v1.0',1,'POLIXIA',1,'UPID_PERSUS',2,'QPAYMENT',3,'ECHK','blank',NULL,'blank',1,3,1,NULL,0,NULL,NULL,NULL),(6,1,'v1.0',1,'POLIXIA',1,'UPID_PERSUS',1,'QPERSONAL',1,'SAMPLESET','blank',NULL,'blank',1,3,1,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `cquestionairsections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `csettings`
--

DROP TABLE IF EXISTS `csettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `csettings` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Version` char(10) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Released` tinyint(4) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `StoreSeverId` int(11) DEFAULT NULL,
  `Location` char(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_storeserver_settings_idx` (`StoreSeverId`),
  CONSTRAINT `fk_storeserver_settings` FOREIGN KEY (`StoreSeverId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `csettings`
--

LOCK TABLES `csettings` WRITE;
/*!40000 ALTER TABLE `csettings` DISABLE KEYS */;
INSERT INTO `csettings` VALUES (1,'v1.0','go live release',NULL,1,1,1,NULL);
/*!40000 ALTER TABLE `csettings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctiledef`
--

DROP TABLE IF EXISTS `ctiledef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctiledef` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `VesrionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `Tile` char(20) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_settings_tiledef_idx` (`VesrionId`),
  CONSTRAINT `fk_settings_tiledef` FOREIGN KEY (`VesrionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctiledef`
--

LOCK TABLES `ctiledef` WRITE;
/*!40000 ALTER TABLE `ctiledef` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctiledef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papplication`
--

DROP TABLE IF EXISTS `papplication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papplication` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicationId` char(50) NOT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `Wallet_Id` int(11) DEFAULT NULL,
  `WalletId` char(50) DEFAULT NULL,
  `UIDId` int(11) DEFAULT NULL,
  `UID` char(50) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `Broker_Id` int(11) DEFAULT NULL,
  `BrokerId` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_version_application_idx` (`VersionId`),
  KEY `fk_wallet_application_idx` (`Wallet_Id`),
  KEY `fk_broker_application_idx` (`Broker_Id`),
  KEY `fk_uid_application_idx` (`UIDId`),
  CONSTRAINT `fk_broker_application` FOREIGN KEY (`Broker_Id`) REFERENCES `pbroker` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uid_application` FOREIGN KEY (`UIDId`) REFERENCES `puid` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_version_application` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wallet_application` FOREIGN KEY (`Wallet_Id`) REFERENCES `uwallet` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papplication`
--

LOCK TABLES `papplication` WRITE;
/*!40000 ALTER TABLE `papplication` DISABLE KEYS */;
/*!40000 ALTER TABLE `papplication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papplicationcomplianceconsent`
--

DROP TABLE IF EXISTS `papplicationcomplianceconsent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papplicationcomplianceconsent` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicationId` char(50) DEFAULT NULL,
  `StoreServerID` int(11) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreSever` char(50) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LobId` int(11) DEFAULT NULL,
  `Lob` char(50) DEFAULT NULL,
  `ComplianceRuleId` int(11) DEFAULT NULL,
  `ComplianceRule` char(20) DEFAULT NULL,
  `ConsentedOn` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_storeserver_applicationcomplianceconsent_idx` (`StoreServerID`),
  KEY `fk_storebrand_applicationcomplianceconsent_idx` (`StoreBrandId`),
  KEY `fk_lob_applicationcomplianceconsent_idx` (`LobId`),
  KEY `fk_compliancerules_applicationcomplianceconsent_idx` (`ComplianceRuleId`),
  CONSTRAINT `fk_compliancerules_applicationcomplianceconsent` FOREIGN KEY (`ComplianceRuleId`) REFERENCES `ccomplinacerules` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lob_applicationcomplianceconsent` FOREIGN KEY (`LobId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_applicationcomplianceconsent` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_applicationcomplianceconsent` FOREIGN KEY (`StoreServerID`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papplicationcomplianceconsent`
--

LOCK TABLES `papplicationcomplianceconsent` WRITE;
/*!40000 ALTER TABLE `papplicationcomplianceconsent` DISABLE KEYS */;
/*!40000 ALTER TABLE `papplicationcomplianceconsent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papplicationdata`
--

DROP TABLE IF EXISTS `papplicationdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papplicationdata` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicationId` char(50) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(20) DEFAULT NULL,
  `LoBId` int(11) DEFAULT NULL,
  `LoB` char(20) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardId` char(20) DEFAULT NULL,
  `Set_Id` int(11) DEFAULT NULL,
  `SetId` char(20) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SectionId` char(20) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageId` char(20) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Content` blob,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_storeserver_applicationdata_idx` (`StoreServerId`),
  KEY `fk_storebrand_application_idx` (`StoreBrandId`),
  KEY `fk_lob_applicationdata_idx` (`LoBId`),
  KEY `fk_questionairetype_applicationdata_idx` (`QuestionaireTypeId`),
  KEY `fk_card_application_idx` (`Card_Id`),
  KEY `fk_field_applicationdata_idx` (`FieldDefId`),
  KEY `fk_set_appilicationdata_idx` (`Set_Id`),
  KEY `fk_page_applicationdata_idx` (`Page_Id`),
  KEY `fk_section_papplicationdata_idx` (`Section_Id`),
  CONSTRAINT `fk_card_application` FOREIGN KEY (`Card_Id`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_field_applicationdata` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lob_applicationdata` FOREIGN KEY (`LoBId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_page_applicationdata` FOREIGN KEY (`Page_Id`) REFERENCES `cquestionairepage` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_applicationdata` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_papplicationdata` FOREIGN KEY (`Section_Id`) REFERENCES `cquestionairsections` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_appilicationdata` FOREIGN KEY (`Set_Id`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_application` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_applicationdata` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papplicationdata`
--

LOCK TABLES `papplicationdata` WRITE;
/*!40000 ALTER TABLE `papplicationdata` DISABLE KEYS */;
/*!40000 ALTER TABLE `papplicationdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papplicationresult`
--

DROP TABLE IF EXISTS `papplicationresult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papplicationresult` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicationId` char(50) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LobId` int(11) DEFAULT NULL,
  `Lob` char(50) DEFAULT NULL,
  `Policy_Id` int(11) DEFAULT NULL,
  `PolicyId` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_storeserevr_applicationresult_idx` (`StoreServerId`),
  KEY `fk_storebrand_applicationresult_idx` (`StoreBrandId`),
  KEY `fk_lob_applicationresult_idx` (`LobId`),
  KEY `fk_policy_applicationresult_idx` (`Policy_Id`),
  CONSTRAINT `fk_lob_applicationresult` FOREIGN KEY (`LobId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_policy_applicationresult` FOREIGN KEY (`Policy_Id`) REFERENCES `upolicy` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_applicationresult` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserevr_applicationresult` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papplicationresult`
--

LOCK TABLES `papplicationresult` WRITE;
/*!40000 ALTER TABLE `papplicationresult` DISABLE KEYS */;
/*!40000 ALTER TABLE `papplicationresult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `papplicationstore`
--

DROP TABLE IF EXISTS `papplicationstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `papplicationstore` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ApplicationId` char(50) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StroreBrand` char(50) DEFAULT NULL,
  `LobId` int(11) DEFAULT NULL,
  `Lob` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Status` char(10) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Submitted` timestamp(6) NULL DEFAULT NULL,
  `FullFilled` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_storeserver_applicationstore_idx` (`StoreServerId`),
  KEY `fk_storebrand_applicationstore_idx` (`StoreBrandId`),
  KEY `fk_lob_applicationstore_idx` (`LobId`),
  KEY `fk_questionairetype_applicationstore_idx` (`QuestionaireTypeId`),
  CONSTRAINT `fk_lob_applicationstore` FOREIGN KEY (`LobId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_applicationstore` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_applicationstore` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_applicationstore` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `papplicationstore`
--

LOCK TABLES `papplicationstore` WRITE;
/*!40000 ALTER TABLE `papplicationstore` DISABLE KEYS */;
/*!40000 ALTER TABLE `papplicationstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbroker`
--

DROP TABLE IF EXISTS `pbroker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbroker` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `BrokerId` char(50) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  `BrokerStoreLogo` blob,
  `ShielGrey` blob,
  `ShieldProcessing` blob,
  `BrokerBanner` blob,
  `BrokerFileTypeLogo` blob,
  `BrokerMiniLogo` blob,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `User` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_setting_broker_idx` (`VersionId`),
  CONSTRAINT `fk_setting_broker` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbroker`
--

LOCK TABLES `pbroker` WRITE;
/*!40000 ALTER TABLE `pbroker` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbroker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbrokerlob`
--

DROP TABLE IF EXISTS `pbrokerlob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbrokerlob` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Broker_Id` int(11) DEFAULT NULL,
  `BrokerId` char(50) DEFAULT NULL,
  `BrokerLoB` char(20) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `LoBLogo` blob,
  `Text1` char(50) DEFAULT NULL,
  `Text2` char(50) DEFAULT NULL,
  `DisplayOrder` int(4) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_broker_brokerlob_idx` (`Broker_Id`),
  CONSTRAINT `fk_broker_brokerlob` FOREIGN KEY (`Broker_Id`) REFERENCES `pbroker` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbrokerlob`
--

LOCK TABLES `pbrokerlob` WRITE;
/*!40000 ALTER TABLE `pbrokerlob` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbrokerlob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbrokersubscription`
--

DROP TABLE IF EXISTS `pbrokersubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbrokersubscription` (
  `sLoB` int(11) NOT NULL AUTO_INCREMENT,
  `Broker_Id` int(11) DEFAULT NULL,
  `BrokerId` char(50) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoBSubscriptionId` int(11) DEFAULT NULL,
  `LoB` char(20) DEFAULT NULL,
  `BrokerQuestionaire` char(50) DEFAULT NULL,
  `BrokerLoBId` int(11) DEFAULT NULL,
  `BrokerLoB` char(50) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Submitted` timestamp(6) NULL DEFAULT NULL,
  `Status` char(20) DEFAULT NULL,
  `Approved` timestamp(6) NULL DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`sLoB`),
  KEY `fk_broker_brokersubscription_idx` (`Broker_Id`),
  KEY `fk_storeserevr_brokersubscription_idx` (`StoreServerId`),
  KEY `fk_storebrand_brokersubscription_idx` (`StoreBrandId`),
  KEY `fk_lobsubscription_brokersubcription_idx` (`LoBSubscriptionId`),
  KEY `fk_brokerlob_brokersub_idx` (`BrokerLoBId`),
  CONSTRAINT `fk_broker_brokersubscription` FOREIGN KEY (`Broker_Id`) REFERENCES `pbroker` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_brokerlob_brokersub` FOREIGN KEY (`BrokerLoBId`) REFERENCES `pbrokerlob` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lobsubscription_brokersubcription` FOREIGN KEY (`LoBSubscriptionId`) REFERENCES `slobsubscription` (`sLoB`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_brokersubscription` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_brokersubscription` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbrokersubscription`
--

LOCK TABLES `pbrokersubscription` WRITE;
/*!40000 ALTER TABLE `pbrokersubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbrokersubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pbrokersubscriptiondata`
--

DROP TABLE IF EXISTS `pbrokersubscriptiondata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pbrokersubscriptiondata` (
  `sBrokerStoreBrandSubscription` int(11) NOT NULL AUTO_INCREMENT,
  `Broker_Id` int(11) DEFAULT NULL,
  `BrokerId` char(50) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(20) DEFAULT NULL,
  `LobId` int(11) DEFAULT NULL,
  `Lob` char(20) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardId` char(20) DEFAULT NULL,
  `pbrokersubscriptiondatacol` varchar(45) DEFAULT NULL,
  `Set_ID` int(11) DEFAULT NULL,
  `SetId` char(20) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SectionId` char(20) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageId` char(20) DEFAULT NULL,
  `FieldDef` char(50) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`sBrokerStoreBrandSubscription`),
  KEY `fk_broker_brokersubscriptiondata_idx` (`Broker_Id`),
  KEY `fk_storeserevr_brokersubscriptiondata_idx` (`StoreServerId`),
  KEY `fk_lob_brokersubscriptiondata_idx` (`LobId`),
  KEY `fk_questionairetype_brokersubscriptiondata_idx` (`QuestionaireTypeId`),
  KEY `fk_card_brokersubscriptiondata_idx` (`Card_Id`),
  KEY `fk_set_brokersubscriptiondata_idx` (`Set_ID`),
  KEY `fk_page_brokersubscriptiondata_idx` (`Page_Id`),
  KEY `fk_storebrand_brokersubsriptiondata_idx` (`StoreBrandId`),
  KEY `fk_section_brokersubdata_idx` (`Section_Id`),
  CONSTRAINT `fk_broker_brokersubscriptiondata` FOREIGN KEY (`Broker_Id`) REFERENCES `pbroker` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_card_brokersubscriptiondata` FOREIGN KEY (`Card_Id`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lob_brokersubscriptiondata` FOREIGN KEY (`LobId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_page_brokersubscriptiondata` FOREIGN KEY (`Page_Id`) REFERENCES `cquestionairepage` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_brokersubscriptiondata` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_brokersubdata` FOREIGN KEY (`Section_Id`) REFERENCES `cquestionairsections` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_brokersubscriptiondata` FOREIGN KEY (`Set_ID`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_brokersubsriptiondata` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserevr_brokersubscriptiondata` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pbrokersubscriptiondata`
--

LOCK TABLES `pbrokersubscriptiondata` WRITE;
/*!40000 ALTER TABLE `pbrokersubscriptiondata` DISABLE KEYS */;
/*!40000 ALTER TABLE `pbrokersubscriptiondata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcontent`
--

DROP TABLE IF EXISTS `pcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcontent` (
  `pContent` int(11) NOT NULL AUTO_INCREMENT,
  `Wallet_Id` int(11) DEFAULT NULL,
  `WalletId` char(50) DEFAULT NULL,
  `Policy_Id` int(11) DEFAULT NULL,
  `PolicyId` char(50) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`pContent`),
  KEY `fk_policy_content_idx` (`Policy_Id`),
  KEY `fk_wallet_content_idx` (`Wallet_Id`),
  CONSTRAINT `fk_policy_content` FOREIGN KEY (`Policy_Id`) REFERENCES `upolicy` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wallet_content` FOREIGN KEY (`Wallet_Id`) REFERENCES `pwallet` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcontent`
--

LOCK TABLES `pcontent` WRITE;
/*!40000 ALTER TABLE `pcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puid`
--

DROP TABLE IF EXISTS `puid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puid` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UID` char(50) NOT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `puidcol` varchar(45) DEFAULT NULL,
  `QuestionaireType` char(10) DEFAULT NULL,
  `Wallet_Id` int(11) DEFAULT NULL,
  `WalletId` char(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_setting_upid_idx` (`VersionId`),
  KEY `fk_questionairetype_upid_idx` (`QuestionaireTypeId`),
  KEY `fk_wallet_upid_idx` (`Wallet_Id`),
  CONSTRAINT `fk_questionairetype_upid` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setting_upid` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_wallet_upid` FOREIGN KEY (`Wallet_Id`) REFERENCES `uwallet` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puid`
--

LOCK TABLES `puid` WRITE;
/*!40000 ALTER TABLE `puid` DISABLE KEYS */;
/*!40000 ALTER TABLE `puid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puiddata`
--

DROP TABLE IF EXISTS `puiddata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puiddata` (
  `pApplicaitonData` int(11) NOT NULL AUTO_INCREMENT,
  `UidId` int(11) DEFAULT NULL,
  `UID` char(50) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `FieldOwner` char(50) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardID` char(20) DEFAULT NULL,
  `Set_Id` int(11) DEFAULT NULL,
  `SetID` char(20) DEFAULT NULL,
  `SetNickName` char(50) DEFAULT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SectionID` char(20) DEFAULT NULL,
  `SectionNickName` char(50) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageID` char(20) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Multi` char(2) DEFAULT NULL,
  `FieldContent` text,
  `FieldCode` char(50) DEFAULT NULL,
  PRIMARY KEY (`pApplicaitonData`),
  KEY `fk_uid_uiddata_idx` (`UidId`),
  KEY `fk_storeserver_uiddata_idx` (`StoreServerId`),
  KEY `fk_questionairetype_uiddata_idx` (`QuestionaireTypeId`),
  KEY `fk_card_uiddata_idx` (`Card_Id`),
  KEY `fk_set_uiddata_idx` (`Set_Id`),
  KEY `fk_page_uiddata_idx` (`Page_Id`),
  KEY `fk_fielddef_uiddata_idx` (`FieldDefId`),
  CONSTRAINT `fk_card_uiddata` FOREIGN KEY (`Card_Id`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fielddef_uiddata` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_page_uiddata` FOREIGN KEY (`Page_Id`) REFERENCES `cquestionairepage` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_uiddata` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_uiddata` FOREIGN KEY (`Set_Id`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_uiddata` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uid_uiddata` FOREIGN KEY (`UidId`) REFERENCES `puid` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puiddata`
--

LOCK TABLES `puiddata` WRITE;
/*!40000 ALTER TABLE `puiddata` DISABLE KEYS */;
/*!40000 ALTER TABLE `puiddata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pwallet`
--

DROP TABLE IF EXISTS `pwallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pwallet` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `WalletId` char(50) NOT NULL,
  `UidId` int(11) DEFAULT NULL,
  `UID` char(50) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Password` char(20) DEFAULT NULL,
  `RecoveryKey` char(50) DEFAULT NULL,
  `VersionID` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `ProductionType` char(10) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_uid_wallet_idx` (`UidId`),
  KEY `fk_setting_wallet_idx` (`VersionID`),
  CONSTRAINT `fk_setting_wallet` FOREIGN KEY (`VersionID`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_uid_wallet` FOREIGN KEY (`UidId`) REFERENCES `puid` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pwallet`
--

LOCK TABLES `pwallet` WRITE;
/*!40000 ALTER TABLE `pwallet` DISABLE KEYS */;
/*!40000 ALTER TABLE `pwallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schannelsubscription`
--

DROP TABLE IF EXISTS `schannelsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schannelsubscription` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(20) DEFAULT NULL,
  `LoBId` int(11) DEFAULT NULL,
  `LoB` char(20) DEFAULT NULL,
  `Channel` char(20) DEFAULT NULL,
  `Description` char(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_setting_channelsub_idx` (`VersionId`),
  KEY `fk_storeserver_channelsub_idx` (`StoreServerId`),
  KEY `fk_storebrand_channelsub_idx` (`StoreBrandId`),
  KEY `fk_lobdef_channelsub_idx` (`LoBId`),
  CONSTRAINT `fk_lobdef_channelsub` FOREIGN KEY (`LoBId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_setting_channelsub` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_channelsub` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_channelsub` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schannelsubscription`
--

LOCK TABLES `schannelsubscription` WRITE;
/*!40000 ALTER TABLE `schannelsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `schannelsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schannelsubscriptiondef`
--

DROP TABLE IF EXISTS `schannelsubscriptiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schannelsubscriptiondef` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(20) DEFAULT NULL,
  `LoBId` int(11) DEFAULT NULL,
  `LoB` char(20) DEFAULT NULL,
  `ChannelSubscriptionId` int(11) DEFAULT NULL,
  `Channel` char(20) DEFAULT NULL,
  `Rule` int(2) DEFAULT NULL,
  `QuestionaireTypeId` int(11) DEFAULT NULL,
  `QuestionaireType` char(50) DEFAULT NULL,
  `Card_Id` int(11) DEFAULT NULL,
  `CardId` char(20) DEFAULT NULL,
  `Set_Id` int(11) DEFAULT NULL,
  `SetId` char(20) DEFAULT NULL,
  `Section_Id` int(11) DEFAULT NULL,
  `SectionId` char(20) DEFAULT NULL,
  `Page_Id` int(11) DEFAULT NULL,
  `PageId` char(20) DEFAULT NULL,
  `FieldDefId` int(11) DEFAULT NULL,
  `FieldName` char(50) DEFAULT NULL,
  `Sign` char(2) DEFAULT NULL,
  `Value` char(100) DEFAULT NULL,
  `Operator` char(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_settings_channelsubdef_idx` (`VersionId`),
  KEY `fk_storeserver_channelsubdef_idx` (`StoreServerId`),
  KEY `fk_storebrand_channelsubdef_idx` (`StoreBrandId`),
  KEY `fk_lobdef_channelsubdef_idx` (`LoBId`),
  KEY `fk_questionairetype_channelsubdef_idx` (`QuestionaireTypeId`),
  KEY `fk_card_channelsubdef_idx` (`Card_Id`),
  KEY `fk_set_channelsubdef_idx` (`Set_Id`),
  KEY `fk_page_channelsubdef_idx` (`Page_Id`),
  KEY `fk_fielddef_channelsubdef_idx` (`FieldDefId`),
  KEY `fk_channelsubscription_channelsubscriptiondef_idx` (`ChannelSubscriptionId`),
  KEY `fk_section_channelsub_idx` (`Section_Id`),
  CONSTRAINT `fk_card_channelsubdef` FOREIGN KEY (`Card_Id`) REFERENCES `cquestionairecards` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_channelsubscription_channelsubscriptiondef` FOREIGN KEY (`ChannelSubscriptionId`) REFERENCES `schannelsubscription` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fielddef_channelsubdef` FOREIGN KEY (`FieldDefId`) REFERENCES `cfielddef` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lobdef_channelsubdef` FOREIGN KEY (`LoBId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_page_channelsubdef` FOREIGN KEY (`Page_Id`) REFERENCES `cquestionairepage` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_channelsubdef` FOREIGN KEY (`QuestionaireTypeId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_section_channelsub` FOREIGN KEY (`Section_Id`) REFERENCES `cquestionairsections` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_set_channelsubdef` FOREIGN KEY (`Set_Id`) REFERENCES `cquestionaireset` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_channelsubdef` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_channelsubdef` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_channelsubdef` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schannelsubscriptiondef`
--

LOCK TABLES `schannelsubscriptiondef` WRITE;
/*!40000 ALTER TABLE `schannelsubscriptiondef` DISABLE KEYS */;
/*!40000 ALTER TABLE `schannelsubscriptiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slobsubscription`
--

DROP TABLE IF EXISTS `slobsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slobsubscription` (
  `sLoB` int(11) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(20) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(20) DEFAULT NULL,
  `LoB` char(20) DEFAULT NULL,
  `LobDefId` int(11) DEFAULT NULL,
  `LoBCategory` char(20) DEFAULT NULL,
  `SalesType` char(20) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `LoBLogo` blob,
  `Text1` char(50) DEFAULT NULL,
  `Text2` char(50) DEFAULT NULL,
  `DisplayOrder` int(4) DEFAULT NULL,
  `Bundle` tinyint(4) DEFAULT NULL,
  `Expiration` int(11) DEFAULT NULL,
  `ShieldGrey` blob,
  `ShieldProcessing` blob,
  `ShieldQuote` blob,
  `ShieldWallet` blob,
  `FileTypeLogo` blob,
  `ApplePay` tinyint(4) DEFAULT NULL,
  `ACH` tinyint(4) DEFAULT NULL,
  `CreditCard` tinyint(4) DEFAULT NULL,
  `QuestionaireId` int(11) DEFAULT NULL,
  `BrokerQuestionaire` char(50) DEFAULT NULL,
  PRIMARY KEY (`sLoB`),
  KEY `fk_settings_lobsub_idx` (`VersionId`),
  KEY `fk_storeserver_lobsub_idx` (`StoreServerId`),
  KEY `fk_storebrand_lobsub_idx` (`StoreBrandId`),
  KEY `fk_lobdef_lobsub_idx` (`LobDefId`),
  KEY `fk_questionairetype_lobsub_idx` (`QuestionaireId`),
  CONSTRAINT `fk_lobdef_lobsub` FOREIGN KEY (`LobDefId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_questionairetype_lobsub` FOREIGN KEY (`QuestionaireId`) REFERENCES `cquestionairetype` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_settings_lobsub` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_lobsub` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_lobsub` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slobsubscription`
--

LOCK TABLES `slobsubscription` WRITE;
/*!40000 ALTER TABLE `slobsubscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `slobsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sstorebrand`
--

DROP TABLE IF EXISTS `sstorebrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sstorebrand` (
  `sStoreBrand` int(11) NOT NULL AUTO_INCREMENT,
  `VesrionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreSever` char(50) DEFAULT NULL,
  `StoreBrand` char(20) DEFAULT NULL,
  `Active` tinyint(4) DEFAULT NULL,
  `SalesType` char(20) DEFAULT NULL,
  `StoreLogo` blob,
  `StoreBanner` blob,
  PRIMARY KEY (`sStoreBrand`),
  KEY `fk_settings_storebrand_idx` (`VesrionId`),
  KEY `fk_storeserver_storebrand_idx` (`StoreServerId`),
  CONSTRAINT `fk_settings_storebrand` FOREIGN KEY (`VesrionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_storebrand` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sstorebrand`
--

LOCK TABLES `sstorebrand` WRITE;
/*!40000 ALTER TABLE `sstorebrand` DISABLE KEYS */;
/*!40000 ALTER TABLE `sstorebrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sstoreserver`
--

DROP TABLE IF EXISTS `sstoreserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sstoreserver` (
  `sStoreServer` int(11) NOT NULL AUTO_INCREMENT,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `Location` varchar(20) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sStoreServer`),
  KEY `fk_setting_storeserver_idx` (`VersionId`),
  CONSTRAINT `fk_setting_storeserver` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sstoreserver`
--

LOCK TABLES `sstoreserver` WRITE;
/*!40000 ALTER TABLE `sstoreserver` DISABLE KEYS */;
INSERT INTO `sstoreserver` VALUES (1,1,'v1,0','polixia',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sstoreserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrauthactivity`
--

DROP TABLE IF EXISTS `svrauthactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrauthactivity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthProfileId` int(11) DEFAULT NULL,
  `AuthProfile` char(50) DEFAULT NULL,
  `AuthObjectTypeId` int(11) DEFAULT NULL,
  `AuthObjectType` char(50) DEFAULT NULL,
  `AuthProfileActivityTypeId` int(11) DEFAULT NULL,
  `AuthActivitytype` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_authprofile_authactivity_idx` (`AuthProfileId`),
  KEY `fk_authobjecttype_authactivity_idx` (`AuthObjectTypeId`),
  KEY `fk_authactivitytype_authactivity_idx` (`AuthProfileActivityTypeId`),
  CONSTRAINT `fk_authactivitytype_authactivity` FOREIGN KEY (`AuthProfileActivityTypeId`) REFERENCES `svrauthactivitytype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_authobjecttype_authactivity` FOREIGN KEY (`AuthObjectTypeId`) REFERENCES `svrauthobjecttype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_authprofile_authactivity` FOREIGN KEY (`AuthProfileId`) REFERENCES `svrauthprofile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrauthactivity`
--

LOCK TABLES `svrauthactivity` WRITE;
/*!40000 ALTER TABLE `svrauthactivity` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrauthactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrauthactivitytype`
--

DROP TABLE IF EXISTS `svrauthactivitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrauthactivitytype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthObjectTypeId` int(11) DEFAULT NULL,
  `AuthObjectType` char(50) DEFAULT NULL,
  `AuthActivityType` char(50) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_authobjecttype_authactivitytype_idx` (`AuthObjectTypeId`),
  CONSTRAINT `fk_authobjecttype_authactivitytype` FOREIGN KEY (`AuthObjectTypeId`) REFERENCES `svrauthobjecttype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrauthactivitytype`
--

LOCK TABLES `svrauthactivitytype` WRITE;
/*!40000 ALTER TABLE `svrauthactivitytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrauthactivitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrauthobject`
--

DROP TABLE IF EXISTS `svrauthobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrauthobject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthProfileId` int(11) DEFAULT NULL,
  `AuthProfile` char(50) DEFAULT NULL,
  `AuthObjectTypeId` int(11) DEFAULT NULL,
  `AuthObjectType` char(50) DEFAULT NULL,
  `AllowPLXEdit` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_authprofile_authobject_idx` (`AuthProfileId`),
  KEY `fk_authobjecttype_authobject_idx` (`AuthObjectTypeId`),
  CONSTRAINT `fk_authobjecttype_authobject` FOREIGN KEY (`AuthObjectTypeId`) REFERENCES `svrauthobjecttype` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_authprofile_authobject` FOREIGN KEY (`AuthProfileId`) REFERENCES `svrauthprofile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrauthobject`
--

LOCK TABLES `svrauthobject` WRITE;
/*!40000 ALTER TABLE `svrauthobject` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrauthobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrauthobjecttype`
--

DROP TABLE IF EXISTS `svrauthobjecttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrauthobjecttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthObjectType` char(50) DEFAULT NULL,
  `Description` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrauthobjecttype`
--

LOCK TABLES `svrauthobjecttype` WRITE;
/*!40000 ALTER TABLE `svrauthobjecttype` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrauthobjecttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrauthprofile`
--

DROP TABLE IF EXISTS `svrauthprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrauthprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AuthProfile` char(50) DEFAULT NULL,
  `Description` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrauthprofile`
--

LOCK TABLES `svrauthprofile` WRITE;
/*!40000 ALTER TABLE `svrauthprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrauthprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `svrusers`
--

DROP TABLE IF EXISTS `svrusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `svrusers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` char(20) DEFAULT NULL,
  `AuthProfileId` int(11) DEFAULT NULL,
  `AuthProfile` char(50) DEFAULT NULL,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Password` char(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_authprofile_svruser_idx` (`AuthProfileId`),
  CONSTRAINT `fk_authprofile_svruser` FOREIGN KEY (`AuthProfileId`) REFERENCES `svrauthprofile` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `svrusers`
--

LOCK TABLES `svrusers` WRITE;
/*!40000 ALTER TABLE `svrusers` DISABLE KEYS */;
/*!40000 ALTER TABLE `svrusers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `upolicy`
--

DROP TABLE IF EXISTS `upolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upolicy` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `PolicyID` char(50) NOT NULL,
  `VersionId` int(11) DEFAULT NULL,
  `Version` char(10) DEFAULT NULL,
  `Location` char(10) DEFAULT NULL,
  `Type` char(10) DEFAULT NULL,
  `StoreServerId` int(11) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrandId` int(11) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `LoBId` int(11) DEFAULT NULL,
  `Lob` char(50) DEFAULT NULL,
  `WalletId` char(50) DEFAULT NULL,
  `RecoveryKey` char(50) DEFAULT NULL,
  `Application_ID` int(11) DEFAULT NULL,
  `ApplicationId` char(50) DEFAULT NULL,
  `Broker_Id` int(11) DEFAULT NULL,
  `BrokerId` char(50) DEFAULT NULL,
  `ShieldWallet` blob,
  `FileTypeLogo` blob,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Expires` timestamp(6) NULL DEFAULT NULL,
  `Accepted` timestamp(6) NULL DEFAULT NULL,
  `Rejected` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`,`PolicyID`),
  KEY `fk_version_policy_idx` (`VersionId`),
  KEY `fk_storeserver_policy_idx` (`StoreServerId`),
  KEY `fk_storebrand_policy_idx` (`StoreBrandId`),
  KEY `fk_lob_policy_idx` (`LoBId`),
  KEY `fk_application_policy_idx` (`Application_ID`),
  KEY `fk_broker_policy_idx` (`Broker_Id`),
  CONSTRAINT `fk_application_policy` FOREIGN KEY (`Application_ID`) REFERENCES `papplication` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_broker_policy` FOREIGN KEY (`Broker_Id`) REFERENCES `pbroker` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_lob_policy` FOREIGN KEY (`LoBId`) REFERENCES `clobdef` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storebrand_policy` FOREIGN KEY (`StoreBrandId`) REFERENCES `sstorebrand` (`sStoreBrand`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_storeserver_policy` FOREIGN KEY (`StoreServerId`) REFERENCES `sstoreserver` (`sStoreServer`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_version_policy` FOREIGN KEY (`VersionId`) REFERENCES `csettings` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upolicy`
--

LOCK TABLES `upolicy` WRITE;
/*!40000 ALTER TABLE `upolicy` DISABLE KEYS */;
INSERT INTO `upolicy` VALUES (1,'1111',NULL,'v1.0','WALLET','PROD',NULL,'StateFarmServer',NULL,'StateFarm',NULL,'AUTO','1111','bcca162a-aa6f-4c68-b4ad-a09bccb7dcbd',NULL,'1111',NULL,'1234',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000'),(2,'194',NULL,'1.0','colombo','UPERUS',NULL,'storefarmserver',NULL,'polixia',NULL,'LINE','1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00.000000',NULL,NULL,NULL),(3,'1944',NULL,'1.0','colombo','UPERUS',NULL,'storefarmserver',NULL,'polixia',NULL,'LINE','1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00.000000',NULL,NULL,NULL),(4,'1964',NULL,'1.0','colombo','UPERUS',NULL,'storefarmserver',NULL,'polixia',NULL,'LINE','1111',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0000-00-00 00:00:00.000000',NULL,NULL,NULL),(5,'2222',NULL,'v1.0','WALLET','PROD',NULL,'StateFarmServer',NULL,'StateFarm',NULL,'LIFE','2228','bcca162a-aa6f-4c68-b4ad-a09bccb7dcbd',NULL,'2252',NULL,'154',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000'),(6,'3333',NULL,'v2.0','WALLET','PROD',NULL,'InsurenceServer',NULL,'Insurence',NULL,'AUTO','1235','bcca162a-aa6f-4c68-b4ad-a09bccb7dcbd',NULL,'145',NULL,'1558',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000'),(7,'4444',NULL,'v1.0','WALLET','PROD',NULL,'AmericanInsuranceServer',NULL,'AmericanInsurance',NULL,'AUTO','1233','bcca162a-aa6f-4c68-b4ad-a09bccb7dcbd',NULL,'541',NULL,'45',NULL,NULL,'0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000','0000-00-00 00:00:00.000000');
/*!40000 ALTER TABLE `upolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'peter@example.com','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6z5XdOqnTrAK84ri',1),(2,'john@example.com','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6z5XdOqnTrAK84ri',1),(3,'katie@example.com','$2a$10$D4OLKI6yy68crm.3imC9X.P2xqKHs5TloWUcr6z5XdOqnTrAK84ri',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uwallet`
--

DROP TABLE IF EXISTS `uwallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uwallet` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `WalletId` char(50) NOT NULL,
  `RecoveryId` char(50) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `WalletId_UNIQUE` (`WalletId`),
  UNIQUE KEY `RecoveryId_UNIQUE` (`RecoveryId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uwallet`
--

LOCK TABLES `uwallet` WRITE;
/*!40000 ALTER TABLE `uwallet` DISABLE KEYS */;
INSERT INTO `uwallet` VALUES (1,'1111','1111-111'),(2,'2222','2222-222'),(3,'3333','8b1ac48c-f291-42a0-93eb-bdd50e8103c1'),(4,'3456','391ccdf9-3fcb-401a-8f45-2238acbf566c'),(5,'8888','5e41d198-e631-4376-b19e-c19a0c485ff0'),(6,'9999','bcca162a-aa6f-4c68-b4ad-a09bccb7dcbd');
/*!40000 ALTER TABLE `uwallet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-04 18:13:27
