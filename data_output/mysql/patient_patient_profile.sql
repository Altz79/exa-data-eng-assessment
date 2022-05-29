CREATE DATABASE  IF NOT EXISTS `patient` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `patient`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: database-1.c3bvuxsvbamz.us-east-1.rds.amazonaws.com    Database: patient
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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `patient_profile`
--

DROP TABLE IF EXISTS `patient_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_profile` (
  `index` bigint DEFAULT NULL,
  `resource_type` text,
  `id` text,
  `gender` text,
  `date_of_birth` text,
  `race` text,
  `street` text,
  `city` text,
  `state` text,
  `country` text,
  `postalCode` text,
  KEY `ix_patient_profile_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_profile`
--

LOCK TABLES `patient_profile` WRITE;
/*!40000 ALTER TABLE `patient_profile` DISABLE KEYS */;
INSERT INTO `patient_profile` VALUES (0,'Patient','8c95253e-8ee8-9ae8-6d40-021d702dc78e','male','1944-08-28','White','859 Altenwerth Run Unit 88','Charlton','MA','US',''),(1,'Patient','6fa23508-960e-ff22-c3d0-0519a036543b','male','2001-06-28','White','736 Dare Mission','Boston','MA','US','02129'),(2,'Patient','83524678-9bff-93b7-ef89-d7f5390072ff','female','1980-06-10','Black or African American','210 Nitzsche Vale Apt 73','Springfield','MA','US',''),(3,'Patient','4e343b0a-8698-b6dd-64c6-c2d2d0959e6e','female','1946-05-21','White','606 Reichert Camp','Fall River','MA','US',''),(4,'Patient','6e4ac285-2a8d-a30d-5ecb-e32cb595a876','female','1968-07-07','White','502 Langosh Neck Unit 20','Dracut','MA','US',''),(5,'Patient','1029f880-d3db-f477-9da3-f59c14ed22c6','male','1998-04-30','White','1029 Johnson Manor','Devens','MA','US','01434'),(6,'Patient','a18edb30-e93c-8e9b-8e6a-95a651a24a36','female','1943-04-23','White','654 Metz Path','Sandwich','MA','US',''),(7,'Patient','f406a4e8-821b-0c9a-c8ec-09ad0f1fe9c6','male','1990-10-27','White','531 Dare Tunnel','Arlington','MA','US','02476'),(8,'Patient','b8c71fe0-e911-205e-19c3-b92e88e5b5a6','female','1941-09-27','White','151 Crist Vista','Tewksbury','MA','US',''),(9,'Patient','e5b7d947-da2b-9cf4-12a0-9eb2cf735330','male','1977-05-12','White','818 Will Village','Franklin','MA','US',''),(10,'Patient','b0478b4f-16f2-af38-d199-44db19304df2','male','1976-09-23','White','592 Ferry Knoll','Fairhaven','MA','US',''),(11,'Patient','0f978b87-8054-e6d3-aa03-20e101ea37c0','female','1985-10-31','White','610 Skiles Corner','Concord','MA','US',''),(12,'Patient','64cdd7b0-d5a5-ca8a-4b03-3db12d7534be','female','2014-09-29','White','1009 O\'Connell Avenue Unit 34','Sandwich','MA','US','02563'),(13,'Patient','cced3031-d98c-d870-5dce-f0086d8c7a34','female','1967-04-28','Asian','601 Stehr Extension','Saugus','MA','US','01906'),(14,'Patient','7c4e1f8e-29e4-f88f-095a-aa6a9f55e6de','female','1937-10-21','White','1073 Mertz Track','Fall River','MA','US','02790'),(15,'Patient','91cf58f9-191c-3a49-a979-2ca64e52c369','male','1975-02-20','White','103 Monahan Heights Unit 48','Stoughton','MA','US',''),(16,'Patient','cf3ce382-cceb-1557-89ac-b751a9e0e65d','female','1951-05-04','White','421 Rau Path Unit 37','Carver','MA','US',''),(17,'Patient','1ba50d39-8105-69de-09de-c6d5358b3cb6','female','1974-03-12','White','979 Bednar Village','Arlington','MA','US','02476'),(18,'Patient','b0f40536-9dc8-2ea0-0bbf-467a69f5e3ad','female','1956-11-05','White','232 Cremin Passage','Waltham','MA','US',''),(19,'Patient','6a15a792-ed41-e1f3-b942-3c2bd4a01ad6','male','2010-01-09','White','122 Mueller Lodge Unit 62','West Yarmouth','MA','US','02673'),(20,'Patient','bdb76eef-1faf-1ed7-d1ff-553d7df26fb3','female','1960-07-07','White','918 Murray Corner Suite 5','Lancaster','MA','US',''),(21,'Patient','8a3247d3-a54c-43f2-2c5d-a8f5e28ff588','male','1974-10-12','White','304 Okuneva Alley Apt 39','Lawrence','MA','US','01843'),(22,'Patient','7b3071eb-aacb-0596-d7b5-4abcb83ac2f0','male','1978-01-07','White','282 Balistreri Light','Needham','MA','US',''),(23,'Patient','ac00ac90-9af7-5b4f-aca4-8b1b9990fc1a','female','2000-10-29','White','947 Howe Annex Apt 40','Pocasset','MA','US','02559'),(24,'Patient','6dcdc387-88f9-758d-260c-4235ac7c269f','female','1947-10-01','White','714 Heaney Vale Suite 19','Grafton','MA','US',''),(25,'Patient','839e7cf9-b7d6-da6c-70bb-c151bf5c1c61','female','1985-05-02','White','817 Larkin Annex Unit 50','Forestdale','MA','US','02644'),(26,'Patient','d8cb2b2b-fee1-36de-2e1e-0fda2ed1d991','male','1913-10-05','White','483 Lubowitz Bridge','Medford','MA','US','02155'),(27,'Patient','e94401de-18ad-e190-9113-ee5ff31b1439','female','1956-07-06','White','211 Wolf Promenade','Lexington','MA','US','02420'),(28,'Patient','e9200276-eb25-ac87-e3bf-31de7e8d0b1e','female','2019-12-28','White','592 Bailey Green','Falmouth','MA','US',''),(29,'Patient','0d55a582-07fe-a897-776c-3ab5e48cd457','female','1960-07-10','White','308 Greenfelder Parade Suite 94','Chicopee','MA','US','01022'),(30,'Patient','0d7ad451-ac1b-dc0e-48bd-e0a8e1de4f15','male','1912-05-06','Black or African American','222 Watsica Fork','Springfield','MA','US','01109'),(31,'Patient','3d496c42-21f9-8e42-aa2b-d021a1b79d46','male','1974-04-05','White','642 Mann Estate','Chicopee','MA','US',''),(32,'Patient','720d476c-6392-bc86-3640-bf2ee18d071a','male','1929-10-21','White','741 Wisoky Route Unit 21','Boston','MA','US','02116'),(33,'Patient','09e292d4-f186-331c-ed95-c503acabc54e','male','1913-02-23','White','925 Buckridge Run Apt 15','Gardner','MA','US','01440'),(34,'Patient','35b42dc6-fcb1-4a74-1d90-4213afe5b285','male','2015-03-28','White','885 Grant Mews','Walpole','MA','US','02081'),(35,'Patient','3635f0e6-d517-43f9-c4b2-61ea16a60fa3','male','1967-08-16','White','199 Kling Course','Mattapoisett','MA','US',''),(36,'Patient','9ce2b3c9-0f19-e01b-d789-5cb0609583e6','male','2004-10-07','Black or African American','539 Rau Divide Suite 36','New Bedford','MA','US','02746'),(37,'Patient','e7ffd26a-48e5-f10e-5565-2f4e8b09ee45','male','1965-07-07','White','549 Rippin Avenue Unit 24','Fall River','MA','US','02721'),(38,'Patient','a57f2290-27ed-6117-2989-f42ef6d291ab','male','1941-03-08','White','573 Rohan Neck Unit 39','Boston','MA','US','02203'),(39,'Patient','2d6c10cf-fade-6e45-0064-674792ff5ef1','male','1961-12-19','Asian','321 Bartell Port Unit 34','Worcester','MA','US','01606'),(40,'Patient','4cef483d-6b1b-a284-b8fd-1de7f5aba0a4','female','1936-07-09','White','907 Windler Meadow','Fiskdale','MA','US','01518'),(41,'Patient','9c02362b-0a48-be5e-7296-e332e383ebd2','male','1983-06-24','White','907 Wilkinson Heights Apt 92','Newton','MA','US',''),(42,'Patient','2a0033b8-bd24-be26-eb24-8d6d9616b74f','female','1984-12-04','Asian','477 Runolfsdottir Rest Suite 72','Beverly','MA','US','01915'),(43,'Patient','fae4f7e3-622f-290c-068f-6d03e71dd5c9','male','1997-11-17','White','796 Kuhn Parade Suite 72','Lawrence','MA','US','01843'),(44,'Patient','9ebde11e-7248-e63c-25f9-4b793c3a5065','female','1997-08-27','White','583 Haley Gardens','Medford','MA','US','02155'),(45,'Patient','46b22d89-fe1a-3cf7-7ecb-b16c7390103f','female','1998-09-25','Asian','669 Kilback Rapid Apt 75','Stoneham','MA','US','02180'),(46,'Patient','37905eb6-a01d-0e34-a274-27ada76d3ccc','female','1929-11-14','Black or African American','404 Howell Crossroad','Sharon','MA','US','02067'),(47,'Patient','b0bccf43-3bf5-217c-7315-9e44d106bb6b','female','1989-03-10','White','292 Kub Neck','Tewksbury','MA','US',''),(48,'Patient','f8e9efe2-62db-29a2-46be-c72bad056ca8','female','1964-12-22','White','792 Daniel Quay Suite 81','Bellingham','MA','US',''),(49,'Patient','5310622a-3368-34f0-c14a-b992c71e7d59','female','1970-02-05','White','859 Raynor Passage','Harwich','MA','US',''),(50,'Patient','67ae02d5-002b-6bba-1854-642eba13aa0f','female','1989-05-30','White','633 Turcotte Grove Unit 29','Wellesley','MA','US','02457'),(51,'Patient','10bf6da8-ffa1-6913-a119-726634be754c','male','1946-12-13','White','848 Miller Ville','Taunton','MA','US',''),(52,'Patient','718f37a0-cb8f-fb74-03d3-c242033e7a81','female','2020-08-23','White','799 Macejkovic Boulevard','Waltham','MA','US','02472'),(53,'Patient','aad9d04b-bb30-2f47-d5dd-888b3b7bd831','male','1967-09-22','White','838 Feil Gardens','Tyngsborough','MA','US',''),(54,'Patient','6f1df156-8793-56a0-6df1-570bca4dcc07','male','2020-12-16','White','176 D\'Amore Glen Apt 83','Pepperell','MA','US',''),(55,'Patient','1d2875d4-f60d-df84-d3e1-12dbafa29bd4','female','1950-01-26','White','176 Feest Junction','Attleboro','MA','US','02861'),(56,'Patient','126a7e7a-958b-428b-907d-f2aa4fd7236b','female','1919-01-18','White','421 Schinner Arcade Suite 28','Needham','MA','US','02492'),(57,'Patient','a8e9746e-f807-bbb1-bdc1-83ade842694d','female','1961-12-21','White','565 Weimann Knoll','Chatham','MA','US','02633'),(58,'Patient','98ff843c-4be7-b0aa-cc4f-0462d049ecb8','male','2002-04-02','White','646 Wiegand Divide','Falmouth','MA','US','02540'),(59,'Patient','0ae2b985-af6e-485e-f0c5-fe0006c366e3','male','1939-06-01','White','917 Morissette Mission','Chelmsford','MA','US',''),(60,'Patient','0ae69ba4-c609-45cc-f172-d55bac5df41e','male','2010-07-10','White','716 Bechtelar Skyway Unit 14','Sterling','MA','US',''),(61,'Patient','eb3007ac-5147-73e0-b6ad-20bbe8578a08','female','2006-06-18','Unknown','951 Bednar Plaza','Weston','MA','US',''),(62,'Patient','d3406315-0e5e-e5e3-da71-b3c9802bd004','female','1981-06-16','Asian','1006 Fahey Esplanade Apt 47','Whitinsville','MA','US','01588'),(63,'Patient','4f0dc4bc-9ada-c8dd-31dc-ffcfbe80e186','male','1941-12-21','White','639 Walker Extension','Boston','MA','US','02131'),(64,'Patient','a5ad8c5e-69af-ffe9-4de1-6e099852ff7d','male','2002-07-31','White','255 Hamill Run Apt 52','Marblehead','MA','US','01945'),(65,'Patient','c7eef66d-c5b9-f4da-bf58-550a8077ded6','female','1985-06-30','White','456 Cronin Landing','Hingham','MA','US','02043'),(66,'Patient','f8c09661-fcd1-eeea-d61e-478109235532','female','1988-02-07','White','320 Prohaska Crossing','Newton','MA','US','02460'),(67,'Patient','4878889a-9b4f-22fc-7060-ed9f5c05940c','male','2007-05-31','White','385 Bosco Mews Unit 82','Fall River','MA','US',''),(68,'Patient','aa4eae2c-733a-35f9-8869-d33a6015db23','female','1944-08-23','White','379 Langworth Divide','Worcester','MA','US','01545'),(69,'Patient','da6120a6-4557-7db3-b44c-43c38568c119','female','1974-06-13','White','481 Durgan Fort Suite 15','Concord','MA','US',''),(70,'Patient','ac56a3df-7399-e895-2a6e-6ae757f3f4a5','male','1996-08-22','Black or African American','493 Nader Loaf','Marblehead','MA','US',''),(71,'Patient','4a627a30-b963-bd1c-58be-0499f24d9670','male','1959-03-26','White','1038 Crist Annex','Salem','MA','US','01907'),(72,'Patient','c8c2969a-32d7-9694-ce15-378ae4d66413','female','1976-01-01','White','522 Greenholt Rapid','Hudson','MA','US',''),(73,'Patient','89ba9a77-7aed-6cb8-6795-fb21f0ec237c','female','1954-06-17','Black or African American','616 Leffler Gardens','Randolph','MA','US',''),(74,'Patient','15201e77-7e36-0667-73bc-013783e57649','female','1946-02-17','Asian','350 Frami Trafficway','Sharon','MA','US','02067'),(75,'Patient','f38fe4a9-1634-144c-0147-53c0300c1561','male','1969-04-01','White','511 Grant Heights','Lincoln','MA','US',''),(76,'Patient','686e4b2e-1f8d-7018-c335-1604a300121b','male','1976-10-22','White','703 Armstrong Estate','Medway','MA','US',''),(77,'Patient','37d57af4-d27f-fb97-9b5c-a1090f5a57b7','male','1970-01-04','White','461 Wiza Corner Apt 50','Danvers','MA','US','01923'),(78,'Patient','4995ca99-2ab9-3b18-a56e-c33d29e53af0','male','1950-08-27','White','563 Bechtelar Wall Suite 1','Barnstable','MA','US','02672');
/*!40000 ALTER TABLE `patient_profile` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-29 17:22:36
