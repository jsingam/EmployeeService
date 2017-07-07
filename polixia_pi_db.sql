-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: polixia_pi_db
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
-- Table structure for table `upolicy`
--

DROP TABLE IF EXISTS `upolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `upolicy` (
  `PolicyID` char(50) NOT NULL,
  `Version` char(10) DEFAULT NULL,
  `Location` char(10) DEFAULT NULL,
  `Type` char(10) DEFAULT NULL,
  `StoreServer` char(50) DEFAULT NULL,
  `StoreBrand` char(50) DEFAULT NULL,
  `Lob` char(50) DEFAULT NULL,
  `WalletId` char(50) DEFAULT NULL,
  `RecoveryKey` char(50) DEFAULT NULL,
  `ApplicationId` char(50) DEFAULT NULL,
  `BrokerId` char(50) DEFAULT NULL,
  `ShieldWallet` blob,
  `FileTypeLogo` blob,
  `Created` timestamp(6) NULL DEFAULT NULL,
  `Expires` timestamp(6) NULL DEFAULT NULL,
  `Accepted` timestamp(6) NULL DEFAULT NULL,
  `Rejected` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`PolicyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `upolicy`
--

LOCK TABLES `upolicy` WRITE;
/*!40000 ALTER TABLE `upolicy` DISABLE KEYS */;
INSERT INTO `upolicy` VALUES ('1111','1.0',NULL,NULL,'StateFarm','StateFarm','Auto',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `upolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uwallet`
--

DROP TABLE IF EXISTS `uwallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uwallet` (
  `WalletId` char(50) NOT NULL,
  `RecoveryId` char(50) NOT NULL,
  PRIMARY KEY (`WalletId`),
  UNIQUE KEY `WalletId_UNIQUE` (`WalletId`),
  UNIQUE KEY `RecoveryId_UNIQUE` (`RecoveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uwallet`
--

LOCK TABLES `uwallet` WRITE;
/*!40000 ALTER TABLE `uwallet` DISABLE KEYS */;
INSERT INTO `uwallet` VALUES ('1111','1111-111'),('2222','2222-222'),('3456','391ccdf9-3fcb-401a-8f45-2238acbf566c'),('3333','8b1ac48c-f291-42a0-93eb-bdd50e8103c1');
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

-- Dump completed on 2017-07-05 16:23:19
