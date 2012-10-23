-- MySQL dump 10.13  Distrib 5.5.24, for debian-linux-gnu (i686)
--
-- Host: asapdb01.cqezga1cxvxz.us-east-1.rds.amazonaws.com    Database: ASAPDB01
-- ------------------------------------------------------
-- Server version	5.5.12-log

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
-- Table structure for table `sec_types`
--

DROP TABLE IF EXISTS `sec_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `act` tinyint(1) NOT NULL,
  `crd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `oid` int(11) DEFAULT NULL,
  `sec_type` int(11) NOT NULL,
  `sec_type_name` varchar(50) NOT NULL,
  `bond` tinyint(1) DEFAULT NULL,
  `deriv` tinyint(1) DEFAULT NULL,
  `exchrate` tinyint(1) DEFAULT NULL,
  `cfd` tinyint(1) DEFAULT NULL,
  `equity` tinyint(1) DEFAULT NULL,
  `fx` tinyint(1) DEFAULT NULL,
  `otc` tinyint(1) DEFAULT NULL,
  `yellow_key` varchar(50) DEFAULT NULL,
  `supported` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_types`
--

LOCK TABLES `sec_types` WRITE;
/*!40000 ALTER TABLE `sec_types` DISABLE KEYS */;
INSERT INTO `sec_types` VALUES (2,1,'2011-12-01 10:51:50',NULL,1,'Exchrate',0,0,1,0,0,1,1,'Curncy',1),(3,1,'2011-12-01 10:51:50',NULL,10,'Exchrate Future',0,1,0,1,0,1,0,'Curncy',1),(4,0,'2011-12-01 10:51:50',NULL,15,'Exchrate FutureCall',0,1,0,0,0,1,0,'Curncy',0),(5,0,'2011-12-01 10:51:50',NULL,16,'Exchrate FuturePut',0,1,0,0,0,1,0,'Curncy',0),(6,0,'2011-12-01 10:51:50',NULL,17,'Exchrate Call Option',0,1,0,0,0,1,0,'Comdty',0),(7,0,'2011-12-01 10:51:50',NULL,18,'Exchrate Put Option',0,1,0,0,0,1,0,'Comdty',0),(8,0,'2011-12-01 10:51:50',NULL,44,'FRA',1,1,0,1,0,0,1,'',0),(9,0,'2011-12-01 10:51:50',NULL,46,'Equity Investment Trust',0,0,0,0,1,0,0,'Equity',1),(10,0,'2011-12-01 10:51:50',NULL,47,'Equity Risp Non Convertible',0,0,0,0,1,0,0,'Equity',0),(11,0,'2011-12-01 10:51:50',NULL,48,'Equity Ordinary Registered',0,0,0,0,1,0,0,'Equity',1),(12,0,'2011-12-01 10:51:50',NULL,49,'Equity Ordinary Bearer',0,0,0,0,1,0,0,'Equity',0),(13,1,'2011-12-01 10:51:50',NULL,50,'Equity',0,0,0,0,1,0,0,'Equity',1),(14,0,'2011-12-01 10:51:50',NULL,51,'Equity Unit Trust',0,0,0,0,1,0,0,'Equity',1),(15,0,'2011-12-01 10:51:50',NULL,52,'Equity ADR',0,1,0,0,1,0,0,'Equity',1),(16,0,'2011-12-01 10:51:50',NULL,53,'Equity Risp Convertible',0,0,0,0,1,0,0,'Equity',0),(17,0,'2011-12-01 10:51:50',NULL,54,'Equity Preference',0,0,0,0,1,0,0,'Pfd',1),(18,0,'2011-12-01 10:51:50',NULL,55,'Equity Rights',0,1,0,0,1,0,0,'Equity',1),(19,0,'2011-12-01 10:51:50',NULL,56,'Equity Local',0,0,0,0,1,0,0,'Equity',1),(20,0,'2011-12-01 10:51:50',NULL,57,'Equity Foreign',0,0,0,0,1,0,0,'Equity',1),(21,0,'2011-12-01 10:51:50',NULL,58,'Equity Priv',0,0,0,0,1,0,0,'Equity',1),(22,0,'2011-12-01 10:51:50',NULL,59,'Equity Index',0,0,0,0,1,0,0,'Index',1),(23,1,'2011-12-01 10:51:50',NULL,60,'Warrant',0,1,0,0,1,0,0,'Equity',0),(24,0,'2011-12-01 10:51:50',NULL,61,'Warrant 50 Block',0,1,0,0,1,0,0,'Equity',0),(25,1,'2011-12-01 10:51:50',NULL,62,'Equity Call',0,1,0,0,1,0,0,'Equity',0),(26,1,'2011-12-01 10:51:50',NULL,63,'Equity Put',0,1,0,0,1,0,0,'Equity',0),(27,0,'2011-12-01 10:51:50',NULL,64,'Warrant 10000 block',0,1,0,0,1,0,0,'Equity',0),(28,0,'2011-12-01 10:51:50',NULL,65,'Warrant  5000 Block',0,1,0,0,1,0,0,'Equity',0),(29,0,'2011-12-01 10:51:50',NULL,66,'Equity Call 50 block',0,1,0,0,1,0,0,'Equity',0),(30,0,'2011-12-01 10:51:50',NULL,67,'Equity Put 50 block',0,1,0,0,1,0,0,'Equity',0),(31,0,'2011-12-01 10:51:50',NULL,68,'Warrant Risp ',0,1,0,0,1,0,0,'Equity',0),(32,0,'2011-12-01 10:51:50',NULL,69,'Equity Preference Cumulative',0,0,0,0,1,0,0,'Pfd',0),(33,0,'2011-12-01 10:51:50',NULL,70,'Convertible Bond',1,1,0,0,1,0,0,'Corp',0),(34,1,'2011-12-01 10:51:50',NULL,72,'Equity HedgeFund',0,0,0,0,1,0,0,'Equity',1),(35,0,'2011-12-01 10:51:50',NULL,73,'MutualFund',0,0,0,0,1,0,0,'Equity',1),(36,0,'2011-12-01 10:51:50',NULL,74,'Convertible Bond',1,1,0,0,1,0,0,'Corp',0),(37,0,'2011-12-01 10:51:50',NULL,80,'Convertible Preferred',1,1,0,0,1,0,0,'Corp',0),(38,0,'2011-12-01 10:51:50',NULL,83,'Equity Call 1000 Block',0,1,0,0,1,0,0,'Equity',0),(39,0,'2011-12-01 10:51:50',NULL,84,'Equity Put 1000 Block',0,1,0,0,1,0,0,'Equity',0),(40,0,'2011-12-01 10:51:50',NULL,86,'Convertible Right',1,1,0,0,1,0,0,'Equity',0),(41,0,'2011-12-01 10:51:50',NULL,87,'Inflation',0,0,0,0,0,0,0,'',0),(42,1,'2011-12-01 10:51:50',NULL,90,'Equity Future',0,1,0,1,1,0,0,'Index',1),(43,0,'2011-12-01 10:51:50',NULL,92,'Equity FutureCall',0,1,0,0,1,0,0,'Equity',0),(44,0,'2011-12-01 10:51:50',NULL,93,'Equity FuturePut',0,1,0,0,1,0,0,'Equity',0),(45,0,'2011-12-01 10:51:50',NULL,97,'Equity P Note',0,1,0,0,1,0,0,'Equity',0),(46,1,'2011-12-01 10:51:50',NULL,100,'Government Bond',1,0,0,0,0,0,0,'Govt',0),(47,1,'2011-12-01 10:51:50',NULL,101,'Corporate Bond',1,0,0,0,0,0,0,'Corp',0),(48,0,'2011-12-01 10:51:50',NULL,102,'Euro Bond',1,0,0,0,0,0,0,'Corp',0),(49,0,'2011-12-01 10:51:50',NULL,103,'BankDebt',1,0,0,0,0,0,0,'Corp',0),(50,0,'2011-12-01 10:51:50',NULL,104,'TradePaper',1,0,0,0,0,0,0,'Corp',0),(51,0,'2011-12-01 10:51:50',NULL,105,'IndexLinked Bond Capitalising',1,0,0,0,0,0,0,'Govt',0),(52,0,'2011-12-01 10:51:50',NULL,106,'IndexLinked Gilt Capitalising',1,0,0,0,0,0,0,'Govt',0),(53,1,'2011-12-01 10:51:50',NULL,110,'Bond Future',1,1,0,1,0,0,0,'Comdty',0),(54,0,'2011-12-01 10:51:50',NULL,111,'Bond FutureCall',1,1,0,0,0,0,0,'Comdty',0),(55,0,'2011-12-01 10:51:50',NULL,112,'Bond FuturePut',1,1,0,0,0,0,0,'Comdty',0),(56,0,'2011-12-01 10:51:50',NULL,113,'Bond Call',1,1,0,0,0,0,1,'Corp',0),(57,0,'2011-12-01 10:51:50',NULL,114,'Bond Put',1,1,0,0,0,0,1,'Corp',0),(58,0,'2011-12-01 10:51:50',NULL,120,'TBill  Simple Discount',1,0,0,0,0,0,0,'Govt',0),(59,0,'2011-12-01 10:51:50',NULL,121,'Interest Future ',1,1,0,1,0,0,0,'Comdty',1),(60,0,'2011-12-01 10:51:50',NULL,122,'Deposit FutureCall',1,1,0,0,0,0,0,'Comdty',0),(61,0,'2011-12-01 10:51:50',NULL,123,'Deposit FuturePut',1,1,0,0,0,0,0,'Comdty',0),(62,0,'2011-12-01 10:51:50',NULL,169,'Warrant Put',0,1,0,0,1,0,0,'Equity',0),(63,0,'2011-12-01 10:51:50',NULL,180,'Commodity Physical',0,0,0,0,0,0,0,'Comdty',0),(64,0,'2011-12-01 10:51:50',NULL,184,'Commodity Put',0,1,0,0,0,0,0,'Comdty',0),(65,0,'2011-12-01 10:51:50',NULL,185,'Commodity Call',0,1,0,0,0,0,0,'Comdty',0),(66,1,'2011-12-01 10:51:50',NULL,186,'Commodity Future',0,1,0,1,0,0,0,'Comdty',1),(67,0,'2011-12-01 10:51:50',NULL,187,'Commodity FutureCall',0,1,0,0,0,0,0,'Comdty',0),(68,0,'2011-12-01 10:51:50',NULL,188,'Commodity FuturePut',0,1,0,0,0,0,0,'Comdty',0),(69,0,'2011-12-01 10:51:50',NULL,190,'Asset Real Estate',0,0,0,0,0,0,1,'Comdty',0),(70,0,'2011-12-01 10:51:50',NULL,200,'Equity OrdPartCert',0,0,0,0,1,0,0,'Equity',0),(71,0,'2011-12-01 10:51:50',NULL,400,'Grain Future',0,1,0,1,0,0,0,'Comdty',0),(72,0,'2011-12-01 10:51:50',NULL,401,'Equity CFD',0,1,0,1,1,0,1,'Equity',1),(73,0,'2011-12-01 10:51:50',NULL,402,'Livestock Future',0,1,0,1,0,0,0,'Comdty',0),(74,0,'2011-12-01 10:51:50',NULL,403,'FoodStuffs Future',0,1,0,1,0,0,0,'Comdty',0),(75,1,'2011-12-01 10:51:50',NULL,404,'Index Future',0,1,0,1,0,0,0,'Index',1),(76,0,'2011-12-01 10:51:50',NULL,405,'Metal Future',0,1,0,1,0,0,0,'Comdty',1),(77,0,'2011-12-01 10:51:50',NULL,406,'Energy Future',0,1,0,1,0,0,0,'Comdty',1),(78,0,'2011-12-01 10:51:50',NULL,407,'Industrials Future',0,1,0,1,0,0,0,'Comdty',1),(79,0,'2011-12-01 10:51:50',NULL,501,'Bond CFD',1,1,0,1,0,0,1,'',1),(80,0,'2011-12-01 10:51:50',NULL,502,'Equity CFD Teddy',0,1,0,1,1,0,1,'Equity',0),(81,0,'2011-12-01 10:51:50',NULL,504,'Swap Int Rate',1,1,0,0,0,0,1,'Corp',0),(82,0,'2011-12-01 10:51:50',NULL,507,'Swap Asset Bond',1,1,0,0,0,0,1,'',0),(83,0,'2011-12-01 10:51:50',NULL,508,'Swap Asset Equity',1,1,0,0,1,0,1,'',0),(84,0,'2011-12-01 10:51:50',NULL,600,'CMO Bond',1,0,0,0,0,0,0,'Mtge',0),(85,0,'2011-12-01 10:51:50',NULL,602,'Index Commodity',0,0,0,0,0,0,0,'Index',0),(86,0,'2011-12-01 10:51:50',NULL,610,'ABS Bond',1,0,0,0,0,0,0,'Mtge',0),(87,0,'2011-12-01 10:51:50',NULL,611,'CLO/CBO Bond',1,0,0,0,0,0,0,'Mtge',0),(88,0,'2011-12-01 10:51:50',NULL,612,'ABS Bond Capitalising',1,0,0,0,0,0,0,'Mtge',0),(89,0,'2011-12-01 10:51:50',NULL,620,'Loan Portfolio',1,0,0,0,0,0,0,'',0),(90,0,'2011-12-01 10:51:50',NULL,621,'CapFloor Int Rate',1,1,0,0,0,0,1,'',0),(91,0,'2011-12-01 10:51:50',NULL,622,'MTN Index Linked',1,1,0,0,0,0,0,'Corp',0),(92,0,'2011-12-01 10:51:50',NULL,623,'Metal Spot',0,0,0,0,0,0,0,'Comdty',0),(93,0,'2011-12-01 10:51:50',NULL,624,'MTN Bond',1,0,0,0,0,0,0,'Corp',0),(94,0,'2011-12-01 10:51:50',NULL,625,'Warrant Bond',1,1,0,0,1,0,0,'Corp',0),(95,0,'2011-12-01 10:51:50',NULL,626,'Municipal Bond',1,0,0,0,0,0,0,'Muni',0),(96,0,'2011-12-01 10:51:50',NULL,627,'Ex Warrant Bond',1,0,0,0,0,0,0,'Corp',0),(97,0,'2011-12-01 10:51:50',NULL,628,'IO Bond',1,0,0,0,0,0,0,'Mtge',0),(98,0,'2011-12-01 10:51:50',NULL,629,'PO Bond',1,0,0,0,0,0,0,'Mtge',0),(99,0,'2011-12-01 10:51:50',NULL,630,'Commercial Paper',1,0,0,0,0,0,0,'Mmkt',0),(100,0,'2011-12-01 10:51:50',NULL,631,'CD',1,0,0,0,0,0,0,'Mmkt',0),(101,0,'2011-12-01 10:51:50',NULL,632,'Brady Bond',1,0,0,0,0,0,0,'Corp',0),(102,0,'2011-12-01 10:51:50',NULL,633,'Bond',1,0,0,0,0,0,0,'Corp',0),(103,0,'2011-12-01 10:51:50',NULL,634,'Swaption Call',1,1,0,0,0,0,1,'Corp',0),(104,0,'2011-12-01 10:51:50',NULL,635,'Swaption Put',1,1,0,0,0,0,1,'Corp',0),(105,0,'2011-12-01 10:51:50',NULL,636,'Yield Benchmark',1,0,0,0,0,0,0,'Index',0),(106,0,'2011-12-01 10:51:50',NULL,637,'MBS',1,0,0,0,0,0,0,'Mtge',0),(107,0,'2011-12-01 10:51:50',NULL,638,'GNMA',1,0,0,0,0,0,0,'Mtge',0),(108,0,'2011-12-01 10:51:50',NULL,639,'FNMA',1,0,0,0,0,0,0,'Mtge',0),(109,0,'2011-12-01 10:51:50',NULL,640,'FHLMC',1,0,0,0,0,0,0,'Mtge',0),(110,0,'2011-12-01 10:51:50',NULL,641,'Equity GDR',0,1,0,0,1,0,0,'Equity',0),(111,0,'2011-12-01 10:51:50',NULL,642,'Equity EDR',0,1,0,0,1,0,0,'Equity',0),(112,0,'2011-12-01 10:51:50',NULL,643,'Equity Closed End Fund',0,0,0,0,1,0,0,'Equity',0),(113,0,'2011-12-01 10:51:50',NULL,644,'Equity German Cert',0,0,0,0,1,0,0,'Equity',0),(114,0,'2011-12-01 10:51:50',NULL,645,'Equity Misc.',0,0,0,0,1,0,0,'Equity',0),(115,0,'2011-12-01 10:51:50',NULL,646,'Equity Mutual Fund/Load',0,0,0,0,1,0,0,'Equity',0),(116,0,'2011-12-01 10:51:50',NULL,647,'Equity NY Reg Shares',0,0,0,0,1,0,0,'Equity',0),(117,0,'2011-12-01 10:51:50',NULL,648,'REIT',0,0,0,0,0,0,0,'Equity',0),(118,0,'2011-12-01 10:51:50',NULL,649,'Brady Bond Capitalising',1,0,0,0,0,0,0,'Corp',0),(119,0,'2011-12-01 10:51:50',NULL,650,'Basis Swap',1,1,0,1,0,0,1,'',0),(120,0,'2011-12-01 10:51:50',NULL,660,'Bond Index',0,0,0,0,0,0,0,'',0),(121,0,'2011-12-01 10:51:50',NULL,661,'Bond Total Return Swap',1,1,0,0,0,0,1,'',0),(122,0,'2011-12-01 10:51:50',NULL,662,'Exchrate CFD',0,1,0,1,0,1,1,'',1),(123,0,'2011-12-01 10:51:50',NULL,663,'Equity Put 500 Block',0,1,0,0,1,0,0,'Equity',0),(124,0,'2011-12-01 10:51:50',NULL,664,'Equity Put 25 Block',0,1,0,0,1,0,0,'Equity',0),(125,0,'2011-12-01 10:51:50',NULL,671,'Equity OTC FutureCall',0,1,0,0,1,0,1,'',0),(126,0,'2011-12-01 10:51:50',NULL,672,'Equity OTC FuturePut',0,1,0,0,1,0,1,'',0),(127,0,'2011-12-01 10:51:50',NULL,673,'Swap MUNI BMA/Libor',1,1,0,1,0,0,1,'',0),(128,0,'2011-12-01 10:51:50',NULL,674,'Swap CFD BMA/Libor',1,1,0,1,0,0,1,'Equity',0),(129,0,'2011-12-01 10:51:50',NULL,675,'Swap Foreign Volatility',0,1,0,0,0,0,1,'',0),(130,0,'2011-12-01 10:51:50',NULL,676,'Equity Preference ',0,0,0,0,1,0,0,'Pfd',0),(131,0,'2011-12-01 10:51:50',NULL,677,'Index Bond',1,0,0,0,0,0,0,'Index',0),(132,0,'2011-12-01 10:51:50',NULL,678,'Equity BDR',0,1,0,0,1,0,0,'Equity',0),(133,0,'2011-12-01 10:51:50',NULL,830,'Credit Linked Note',1,1,0,0,0,0,0,'',0),(134,0,'2011-12-01 10:51:50',NULL,831,'Default Swap',1,1,0,0,0,0,1,'',0),(135,0,'2011-12-01 10:51:50',NULL,832,'Exchrate Exotic Call Option',0,1,0,0,0,1,0,'Comdty',0),(136,0,'2011-12-01 10:51:50',NULL,833,'TIP Bond Capitalising',1,0,0,0,0,0,0,'Corp',0),(137,0,'2011-12-01 10:51:50',NULL,834,'Bond FuturePut Non Premiumable',1,1,0,1,0,0,0,'Comdty',0),(138,0,'2011-12-01 10:51:50',NULL,835,'Equity FuturePut Non Premiumable',0,1,0,1,1,0,0,'Equity',0),(139,0,'2011-12-01 10:51:50',NULL,836,'Deposit FuturePut Non Premiumable',1,1,0,1,0,0,0,'Comdty',0),(140,0,'2011-12-01 10:51:50',NULL,837,'Equity FutureCall Non Premiumable',0,1,0,1,1,0,0,'Equity',0),(141,0,'2011-12-01 10:51:50',NULL,838,'Deposit FutureCall Non Premiumable',1,1,0,1,0,0,0,'Comdty',0),(142,0,'2011-12-01 10:51:50',NULL,841,'Default Swap Index',1,1,0,0,0,0,1,'',0),(143,0,'2011-12-01 10:51:50',NULL,842,'Default Swap Index Tranche',1,1,0,0,0,0,1,'',0),(144,0,'2011-12-01 10:51:50',NULL,901,'SSB CFD',0,1,0,0,1,0,1,'Equity',0),(145,0,'2011-12-01 10:51:50',NULL,903,'Exchrate NonDelivFWD',0,1,0,1,0,1,1,'Comdty',0),(146,0,'2011-12-01 10:51:50',NULL,906,'Mezzanine Debt',1,0,0,0,0,0,0,'Corp',0),(147,0,'2011-12-01 10:51:50',NULL,909,'Private Subordinated Debt',1,0,0,0,0,0,0,'Corp',0),(148,0,'2011-12-01 10:51:50',NULL,912,'Collateral Debt',1,0,0,0,0,0,0,'Corp',0),(149,0,'2011-12-01 10:51:50',NULL,915,'Bond FutureCall Non Premiumable',1,1,0,1,0,0,0,'Comdty',0),(150,0,'2011-12-01 10:51:50',NULL,916,'Index Call',0,1,0,0,0,0,0,'Index',0),(151,0,'2011-12-01 10:51:50',NULL,917,'Index Put',0,1,0,0,0,0,0,'Index',0),(152,0,'2011-12-01 10:51:50',NULL,948,'REIT CFD',0,1,0,1,1,0,1,'Equity',0),(153,0,'2011-12-01 10:51:50',NULL,949,'Index CFD',0,1,0,1,1,0,1,'Index',1),(154,0,'2011-12-01 10:51:50',NULL,950,'Fully Funded CFD',0,1,0,0,1,0,0,'Equity',0),(155,0,'2011-12-01 10:51:50',NULL,951,'TBA',1,1,0,1,0,0,0,'Mtge',0),(156,0,'2011-12-01 10:51:50',NULL,978,'Equity Variance Swap',0,1,0,1,1,0,1,'Comdty',0),(157,0,'2011-12-01 10:51:50',NULL,999,'Deal Structure',0,0,0,0,1,0,1,'',0),(158,0,'2011-12-01 10:51:50',NULL,9050,'Cash Settled Swap',0,1,0,1,1,0,1,'Equity',0),(9999,1,'2011-12-01 10:51:50',NULL,9999,'Unclassified',0,0,0,0,0,0,0,'',0),(10000,1,'2012-05-31 07:50:36',NULL,10000,'Fund',0,0,0,0,0,0,0,'',NULL);
/*!40000 ALTER TABLE `sec_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-23 17:11:57
