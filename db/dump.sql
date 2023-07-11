-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: medicube
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
-- Table structure for table `campaign_list`
--

DROP TABLE IF EXISTS `campaign_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_list` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `campaign_name` varchar(45) DEFAULT NULL,
  `start_date` varchar(45) DEFAULT NULL,
  `stop_date` varchar(20) DEFAULT NULL,
  `max_referral_level` varchar(45) DEFAULT NULL,
  `no_of_seeds` varchar(45) DEFAULT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `product_link` varchar(100) DEFAULT NULL,
  `product_description` varchar(500) DEFAULT NULL,
  `enable/disable` varchar(45) DEFAULT NULL,
  `coupon_use_limit` int DEFAULT NULL,
  `total_commision` varchar(45) DEFAULT NULL,
  `imarket_comission` varchar(45) DEFAULT NULL,
  `success_comission` varchar(45) DEFAULT NULL,
  `referal_comission` varchar(45) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `minimum_value` varchar(45) DEFAULT NULL,
  `history` json DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=499429 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_list`
--

LOCK TABLES `campaign_list` WRITE;
/*!40000 ALTER TABLE `campaign_list` DISABLE KEYS */;
INSERT INTO `campaign_list` VALUES (0,'dunmmy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12145,'campaign1','2021-12-28 10:03:00','2021-12-28 10:07:00','10','100','45,89',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(94696,'campsign3','2022-02-02 17:15:00','2022-02-10 17:15:00','20','100','45',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(100905,'campaign_18/4/2022','2022-04-19T15:59','2022-04-30T15:59','5','2','4774','pending',NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(123987,'campaign4','2022-03-31 00:00:00','2022-04-31 00:00:00','25','50','4766','pending','Amrith Noni D Plus (For Diabetics – 1000 ml)','\"https://medicube.in/product/amrith-noni-d-plus-for-diabetics-1000-ml/\"','\'instantly controlls sugar level\'',NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(311103,'campaign2_19/4/2022','2022-04-20T12:30','2022-04-30T12:30','5','3','5003','open','Digital thermometer flexi','\"https://medicube.in/product/digital-thermometer-flexi/\"',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(456987,'campaign2','2021-12-27 10:29:00','2021-12-27 10:35:00','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499412,'campaign_19/4/2022','2022-04-20T11:45','2022-04-30T11:45','5','10','5004','open','Clinical thermometer','\"https://medicube.in/product/clinical-thermometer/\"',NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499413,'test_campaign',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(499414,'test_29/04/2022:2','2022-04-29T21:38','2022-05-08T21:38','5','10','4766','enable','Amrith Noni D Plus (For Diabetics – 1000 ml)','\"https://medicube.in/product/amrith-noni-d-plus-for-diabetics-1000-ml/\"','instantly controlls sugar level',NULL,NULL,'10','5','1,1,1,1,1','4,3,2,1','5','100',NULL),(499415,'test_30/04/2022','2022-05-02T05:23','2022-05-20T05:23','4','10','4766','enable','Amrith Noni D Plus (For Diabetics – 1000 ml)','\"https://medicube.in/product/amrith-noni-d-plus-for-diabetics-1000-ml/\"','instantly controlls sugar level',NULL,1,'10','','4','6','5','100',NULL),(499416,'test2_30/04/2022','2022-05-08T05:28','2022-05-15T05:29','5','10','4766','enable','Amrith Noni D Plus (For Diabetics – 1000 ml)','\"https://medicube.in/product/amrith-noni-d-plus-for-diabetics-1000-ml/\"','instantly controlls sugar level',NULL,2,'10','','4','6','5','100',NULL),(499417,'test_12/05/2022','2022-05-14T06:32','2022-05-22T06:32','5','10','5070','enable','Drip stand with wheel ( ss )','\"https://medicube.in/product/drip-stand-with-wheel-ss/\"',NULL,NULL,2,'10','','4','6','5','100',NULL),(499418,'test_16/05/2022','2022-05-16T00:01','2022-05-31T00:01','5','10','4901','open','Nebulizer ( easy care )','\"https://medicube.in/product/nebulizer-easy-care/\"',NULL,NULL,2,'10','','3','7','10','100',NULL),(499419,'test2_16/05/2022','2022-05-16T00:16','2022-05-30T00:15','5','10','5001','open','Finger pulse oximeter','\"https://medicube.in/product/finger-pulse-oximeter/\"',NULL,NULL,2,'10','','4','6','10','300',NULL),(499420,'test_camp_23/05/2022','2022-05-23T11:30','2022-05-31T11:30','5','10','4827','open','Lightweight walking frame','\"https://medicube.in/product/lightweight-walking-frame/\"',NULL,NULL,2,'10','','4','6','10','500',NULL),(499421,'test campaign15032023','2023-03-17T00:16','2023-03-18T00:16','10','5','4806','enable','Commode Wheelchair','\"https://medicube.in/product/commode-wheelchair/\"',NULL,NULL,1,'10','5','1','9','10','100',NULL),(499422,'qweasd','2023-03-17T20:54','2023-03-18T20:54','5','5','4888','enable','ZANDU BALM 8 ML','\"https://medicube.in/product/zandu-balm-8-ml/\"',NULL,NULL,1,'10','3','1','9','10','100',NULL),(499423,'qwedsazxcrfv','2023-03-16T20:59','2023-03-19T20:59','10','5','4888','enable','ZANDU BALM 8 ML','\"https://medicube.in/product/zandu-balm-8-ml/\"',NULL,NULL,1,'10','3','1','9','10','100',NULL),(499424,'test_asdzxxc','2023-03-17T21:02','2023-03-18T21:02','11','5','4888','Enabled','ZANDU BALM 8 ML','\"https://medicube.in/product/zandu-balm-8-ml/\"',NULL,NULL,1,'10','3','1','9','10','100',NULL),(499425,'test_a1','2023-03-17T21:05','2023-03-18T21:05','5','5','4888','Enabled','ZANDU BALM 8 ML','\"https://medicube.in/product/zandu-balm-8-ml/\"',NULL,NULL,1,'10','3','1','9','10','100',NULL),(499426,'test_a2','2023-03-17T21:07','2023-03-18T21:08','5','5','4888','Enabled','ZANDU BALM 8 ML','\"https://medicube.in/product/zandu-balm-8-ml/\"',NULL,NULL,1,'10','3','1','9','10','100',NULL),(499427,'test_a3','2023-03-17T21:15','2023-03-18T21:15','11','5','4888','enabled','ZANDU BALM 8 ML','\"https://medicube.in/product/zandu-balm-8-ml/\"',NULL,NULL,1,'10','3','1','9','10','100',NULL),(499428,'test_a6','2023-03-18T21:28','2023-03-19T21:28','10','6','4888','Enabled','ZANDU BALM 8 ML','\"https://medicube.in/product/zandu-balm-8-ml/\"',NULL,NULL,1,'10','3','1','9','10','100',NULL);
/*!40000 ALTER TABLE `campaign_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_product_info`
--

DROP TABLE IF EXISTS `campaign_product_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_product_info` (
  `product_id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `imarket_commission_rupees` varchar(45) DEFAULT NULL,
  `term&conditions` varchar(45) DEFAULT NULL,
  `link` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_product_info`
--

LOCK TABLES `campaign_product_info` WRITE;
/*!40000 ALTER TABLE `campaign_product_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `campaign_product_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `campaign_referrals`
--

DROP TABLE IF EXISTS `campaign_referrals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign_referrals` (
  `referral_id` bigint NOT NULL AUTO_INCREMENT,
  `campaign_id` varchar(10) NOT NULL,
  `referral_level` varchar(45) DEFAULT NULL,
  `seed_id` bigint DEFAULT NULL,
  `refered_by` varchar(45) DEFAULT NULL,
  `refered_to` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `coupon_code` varchar(100) DEFAULT NULL,
  `coupon_id` varchar(45) DEFAULT NULL,
  `down_counter` int NOT NULL,
  `path` varchar(500) DEFAULT NULL,
  `success_fee_history` json DEFAULT NULL,
  `referal_fee_history` json DEFAULT NULL,
  PRIMARY KEY (`referral_id`),
  UNIQUE KEY `referral_id_UNIQUE` (`referral_id`),
  UNIQUE KEY `seed_id_UNIQUE` (`seed_id`)
) ENGINE=InnoDB AUTO_INCREMENT=983417 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign_referrals`
--

LOCK TABLES `campaign_referrals` WRITE;
/*!40000 ALTER TABLE `campaign_referrals` DISABLE KEYS */;
INSERT INTO `campaign_referrals` VALUES (6787,'499419','0',263552,'0','151','open','',NULL,5,NULL,NULL,NULL),(48514,'311103','0',870643,'0','114','open','',NULL,5,NULL,NULL,NULL),(74561,'499419','0',481691,'0','119','open','',NULL,5,NULL,NULL,NULL),(88541,'499419','0',761402,'0','153','open','',NULL,5,NULL,NULL,NULL),(88879,'499418','0',226418,'0','114','open','',NULL,5,NULL,NULL,NULL),(94516,'499412','0',120603,'0','91','open','',NULL,5,NULL,NULL,NULL),(95761,'499412','0',684062,'0','142','open','',NULL,5,NULL,NULL,NULL),(123546,'12145','1',NULL,'imarket','imarket_mohammed_sahique123','open',NULL,NULL,30,NULL,NULL,NULL),(191624,'499419','2',100626,'imarket_amit5_rao5','amit5_rao_refer_person2','open','499419amit5_rao_refer_person22022-05-20 20:20:55.844753','6274',3,'None-amit5_rao_refer_person1-amit5_rao_refer_person2',NULL,NULL),(227230,'499412','0',529341,'0','115','open','',NULL,5,NULL,NULL,NULL),(236168,'311103','311104',912991,'imarket_mohammed_sahique123','test_sahil_2','imarket_mohammed_sahique123','','6195',28,'None/imarket_mohammed_sahique123-test_sahil_2',NULL,NULL),(242486,'499412','0',370181,'0','113','open','',NULL,5,NULL,NULL,NULL),(246145,'499420','0',47060,'0','4152636596','open','',NULL,5,NULL,NULL,NULL),(271304,'499419','0',8163,'0','141','open','',NULL,5,NULL,NULL,NULL),(277589,'499420','0',787323,'0','imarket_ray_jhon','open','',NULL,5,NULL,NULL,NULL),(281020,'499419','0',479593,'0','143','open','',NULL,5,NULL,NULL,NULL),(325090,'499412','0',350222,'0','119','open','',NULL,5,NULL,NULL,NULL),(368110,'499419','0',489980,'0','155','open','',NULL,5,NULL,NULL,NULL),(371170,'499420','0',481721,'0','imarket_amit5_rao5','open','',NULL,5,NULL,NULL,NULL),(374506,'311103','0',97666,'0','0','open','',NULL,5,NULL,NULL,NULL),(379208,'499420','0',358204,'0','9991766741','open','',NULL,5,NULL,NULL,NULL),(381868,'499418','0',940839,'0','152','open','',NULL,5,NULL,NULL,NULL),(440464,'499420','0',177013,'0','9974724546','open','',NULL,5,NULL,NULL,NULL),(444565,'499412','0',813871,'0','143','open','',NULL,5,NULL,NULL,NULL),(446963,'499418','0',515922,'0','141','open','',NULL,5,NULL,NULL,NULL),(456321,'499415','1',NULL,'imarket','imarket_ramkumar','closed',NULL,NULL,20,NULL,NULL,NULL),(456325,'311103','1',NULL,'imarket','imarket_mohammed_sahique123','open',NULL,NULL,30,NULL,NULL,NULL),(456789,'94696','1',NULL,'imarket','imarket_mohammed_sahique123','open',NULL,NULL,20,NULL,NULL,NULL),(508063,'499419','0',293123,'0','92','open','',NULL,5,NULL,NULL,NULL),(535762,'499420','0',798601,'0','imarket_test17_test','open','',NULL,5,NULL,NULL,NULL),(541545,'311103','311104',576714,'imarket_mohammed_sahique123','Sandeep','imarket_mohammed_sahique123','','6196',27,'None/imarket_mohammed_sahique123-test_sahil_2/imarket_mohammed_sahique123-Sandeep',NULL,NULL),(549369,'499419','0',327235,'0','114','open','',NULL,5,NULL,NULL,NULL),(617685,'499418','0',663233,'0','143','open','',NULL,5,NULL,NULL,NULL),(618161,'499419','1',765433,'imarket_amit5_rao5','amit5_rao_refer_person1','open','499419amit5_rao_refer_person12022-05-20 20:20:32.072144','6273',4,'None-amit5_rao_refer_person1',NULL,NULL),(623577,'499420','0',170800,'0','0000000000','open','',NULL,5,NULL,NULL,NULL),(665028,'499412','0',879784,'0','141','open','',NULL,5,NULL,NULL,NULL),(666507,'499418','0',104718,'0','115','open','',NULL,5,NULL,NULL,NULL),(667928,'311103','0',910954,'0','92','open','',NULL,5,NULL,NULL,NULL),(691321,'499418','0',66143,'0','92','open','',NULL,5,NULL,NULL,NULL),(694005,'499420','0',242727,'0','imarket_mohammed_sahique123','open','',NULL,5,NULL,NULL,NULL),(697993,'499412','0',131592,'0','111','open','',NULL,5,NULL,NULL,NULL),(740178,'499412','0',320758,'0','0','open','',NULL,5,NULL,NULL,NULL),(741852,'94696','2',NULL,'imarket_mohammed_sahique123','imarket_ramkumar','open',NULL,NULL,19,NULL,NULL,NULL),(745652,'94696','3',NULL,'imarket_mohammed_sahique123','imarket_ramkumar','open',NULL,NULL,18,NULL,NULL,NULL),(756852,'499418','0',315977,'0','113','open','',NULL,5,NULL,NULL,NULL),(762440,'12145','2',NULL,'imarket_mohammed_sahique123','Panshul','open','',NULL,29,NULL,NULL,NULL),(767125,'499412','0',668485,'0','92','open','',NULL,5,NULL,NULL,NULL),(785126,'499420','0',66376,'0','imarket_amit6_rao6','open','',NULL,5,NULL,NULL,NULL),(796935,'499418','0',988837,'0','91','open','',NULL,5,NULL,NULL,NULL),(808234,'499418','0',260222,'0','151','open','',NULL,5,NULL,NULL,NULL),(838989,'499418','0',130674,'0','142','open','',NULL,5,NULL,NULL,NULL),(846096,'499419','0',871864,'0','142','open','',NULL,5,NULL,NULL,NULL),(881185,'499420','0',230079,'0','8975524680','open','',NULL,5,NULL,NULL,NULL),(935532,'311103','2',NULL,'imarket_mohammed_sahique123','Panshul','open','',NULL,29,NULL,NULL,NULL);
/*!40000 ALTER TABLE `campaign_referrals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commission_agreements`
--

DROP TABLE IF EXISTS `commission_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commission_agreements` (
  `agreement_id` int NOT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  `imarket_commission_percent_of_order_value` varchar(45) DEFAULT NULL,
  `validity_start_date` varchar(45) DEFAULT NULL,
  `validity_end_date` varchar(45) DEFAULT NULL,
  `commission_agreements` varchar(45) DEFAULT NULL,
  `referral_commission_allocation_percent_of_imarket_commission` varchar(45) DEFAULT NULL,
  `package_quantity` varchar(45) DEFAULT NULL,
  `units` varchar(45) DEFAULT NULL,
  `imarket_commission_rupees` varchar(45) DEFAULT NULL,
  `referral_commission_allocation_rupees` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commission_agreements`
--

LOCK TABLES `commission_agreements` WRITE;
/*!40000 ALTER TABLE `commission_agreements` DISABLE KEYS */;
INSERT INTO `commission_agreements` VALUES (1,'25','5','28-12-21','30-12-21','abcd',NULL,'qwerty','5',NULL,'50');
/*!40000 ALTER TABLE `commission_agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_reg`
--

DROP TABLE IF EXISTS `customer_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_reg` (
  `Serial_no` bigint NOT NULL AUTO_INCREMENT,
  `id` varchar(10) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(70) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `address1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  UNIQUE KEY `Serial_no_UNIQUE` (`Serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_reg`
--

LOCK TABLES `customer_reg` WRITE;
/*!40000 ALTER TABLE `customer_reg` DISABLE KEYS */;
INSERT INTO `customer_reg` VALUES (1,'111','mohammed','sahique123','imarket_mohammed_sahique123','msahique123@apcogsys.net','8880655639','Enabled',NULL,NULL,'Bangalore','Karnataka','560011','India','123456'),(3,'113','mohammed','sahi','imarket_mohammed_sahi','msahiq@apcogsys.net','7898529634','Enabled','#22/1,5thcross,1stmain,1stblock','byrasandra Jayanagar East','Bangalore','Karnataka','560011','India',NULL),(4,'114','ray12','jhon12','imarket_ray_jhon','rj@gmaol.com','5556699123','Enabled','','','Bangalore','Karnataka','560011','India',NULL),(5,'115','qwerty01','asdzxc','imarket_qwerty_asdfg','qwertyasdf@gmail.com','','enable','','','Bangalore','Karnataka','560011','India','pass@123'),(6,'119','captain','mark','imarket_captain_mark','cmark123@apcogsys.net','9990455527',NULL,'','','','','','','456123'),(7,'91','test17','testlast','imarket_test17_test','test17@gmail.com','123456780','Enabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'92','sahiq','hs','imarket_sahiq_hs','sahiq@gmail.com','888065562','Enabled',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'0','imarket','imarket','0000000000','psramkumar@apcogsys.net','0000000000','Enabled',NULL,NULL,NULL,NULL,NULL,NULL,'imarket'),(10,'141','amit5','rao5','imarket_amit5_rao5','amit5@gmail.com','1234569872','enable','#22/1,5thcross,1stmain,1stblock','byrasandra Jayanagar East','Bangalore','Karnataka','560011','India','amit5'),(11,'142','amit6','rao6','imarket_amit6_rao6','amit6@gmail.com','8523697415','enable','#22/1,5thcross,1stmain,1stblock','byrasandra Jayanagar East','Bangalore','Karnataka','560011','India',NULL),(12,'143','amit7','rao7','imarket_amit7_rao7','amit7@gmail.com','1478521236','enable','#22/1,5thcross,1stmain,1stblock','byrasandra Jayanagar East','Bangalore','Karnataka','560011','India','amit7'),(13,'151','sahil','','4152632312','dummysahil@imarket.com','4152632312','Enabled','','','','','','','sahil'),(14,'152','test_sahil','','4152636596','dummytest_sahil@imarket.com','4152636596','Enabled','','','','','','','test_sahil'),(15,'153','test_sahil_2','','9966552211','dummytest_sahil_2@imarket.com','9966552211','Enabled','','','','','','','test_sahil_2'),(16,'155','virat','kholi','9991766741','virat@gmail.com','9991766741','enable','add1','add2','udupi','karnataka','576227','india','v12345'),(17,'158','amit5_rao_refer_person1','','9879663310','dummyamit5_rao_refer_person1@imarket.com','9879663310','Enabled','','','','','','','amit5_rao_refer_person1'),(18,'159','amit5_rao_refer_person2','','8975524680','dummyamit5_rao_refer_person2@imarket.com','8975524680','Enabled','','','','','','','amit5_rao_refer_person2'),(19,'160','amit5_rao_refer_person3','','9974724546','dummyamit5_rao_refer_person3@imarket.com','9974724546','Enabled','','','','','','','amit5_rao_refer_person3'),(20,'161','amit5_rao_refer_person4','','4567899632','dummyamit5_rao_refer_person4@imarket.com','4567899632','Enabled','','','','','','','amit5_rao_refer_person4'),(21,'241','Sandeep','Patil','9916824091','sandeephg@apcogsys.net','9916824091','enable','east end main road','jayanagar 9th block','bangalore','karnataka','560041','india','sandeep@123'),(22,'445','test18','testlast','test17','test17@gmail.com','','enable','','','','','','',''),(23,'446','mohammed','sahique123','msahique789','msahique789@apcogsys.net','','enable','','','Bangalore','Karnataka','560011','India','123456'),(24,'447','mohammed','sahique123','msahique2023','msahique2023@apcogsys.net','','enable','','','Bangalore','Karnataka','560011','India','123456'),(25,'490','','','dummy','dummy@imarket.com','','Enabled','','','','','','',''),(26,'491','Sahil2','','9988456415','dummySahil2@imarket.com','9988456415','Enabled','','','','','','','Sahil2');
/*!40000 ALTER TABLE `customer_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_config`
--

DROP TABLE IF EXISTS `event_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_config` (
  `event_id` int NOT NULL,
  `event_name` varchar(256) DEFAULT NULL,
  `description` varchar(512) DEFAULT NULL,
  `config_JSON` json DEFAULT NULL,
  `process` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_config`
--

LOCK TABLES `event_config` WRITE;
/*!40000 ALTER TABLE `event_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `event_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imarket_commisions`
--

DROP TABLE IF EXISTS `imarket_commisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imarket_commisions` (
  `order_id` int NOT NULL,
  `order_value` varchar(45) DEFAULT NULL,
  `commission_details` varchar(45) DEFAULT NULL,
  `settlement_status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imarket_commisions`
--

LOCK TABLES `imarket_commisions` WRITE;
/*!40000 ALTER TABLE `imarket_commisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `imarket_commisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_list`
--

DROP TABLE IF EXISTS `orders_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_list` (
  `customer_id` varchar(45) DEFAULT NULL,
  `order_id` int NOT NULL,
  `order_value` varchar(45) DEFAULT NULL,
  `product_id` varchar(45) DEFAULT NULL,
  `order_date_time` varchar(45) DEFAULT NULL,
  `coupon_code` varchar(80) DEFAULT NULL,
  `orders_details` mediumtext,
  `accounted` tinyint DEFAULT '0',
  `wait_untill` date DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `order_id_UNIQUE` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_list`
--

LOCK TABLES `orders_list` WRITE;
/*!40000 ALTER TABLE `orders_list` DISABLE KEYS */;
INSERT INTO `orders_list` VALUES ('74',123,'2000','456',NULL,'ordertestcoupon',NULL,NULL,NULL),('119',6119,'1350.60','','2022-02-03T11:16:55','',NULL,NULL,NULL),('131',6146,'830.51','634','2022-03-11T14:53:58','',NULL,NULL,NULL),('132',6147,'572.03','642','2022-03-15T10:22:06','',NULL,NULL,NULL),('133',6157,'830.51','666','2022-03-24T00:15:35','',NULL,NULL,NULL),('0',6159,'572.03','670','2022-03-29T13:03:51','',NULL,NULL,NULL),('0',6160,'830.51','674','2022-03-30T14:25:09','',NULL,NULL,NULL),('0',6161,'830.51','678','2022-04-01T15:59:14','',NULL,NULL,NULL),('0',6162,'1661.02','686','2022-04-03T07:52:18','',NULL,NULL,NULL),('0',6163,'572.03','690','2022-04-03T14:54:40','',NULL,NULL,NULL),('122',6167,'1133.90','693','2022-04-09T12:20:55','697',NULL,NULL,NULL),('141',6169,'1699.00','698','2022-04-09T17:45:19','',NULL,NULL,NULL),('141',6170,'40.18','699','2022-04-11T13:17:11','',NULL,NULL,NULL),('141',6171,'489.00','700','2022-04-11T13:27:03','',NULL,NULL,NULL),('141',6172,'1350.60','701','2022-04-11T15:11:54','',NULL,NULL,NULL),('141',6173,'330.00','702','2022-04-11T15:45:41','',NULL,NULL,NULL),('144',6178,'572.03','711','2022-04-18T00:10:49','',NULL,NULL,NULL),('145',6179,'489.00','715','2022-04-18T22:06:35','',NULL,0,NULL),('0',6180,'830.51','717','2022-04-18T22:10:25','',NULL,0,NULL),('0',6183,'572.03','733','2022-04-20T09:52:55','',NULL,0,NULL),('0',6184,'2491.53','737','2022-04-20T15:31:59','',NULL,0,NULL),('0',6191,'830.51','752','2022-04-26T14:06:06','',NULL,0,NULL),('0',6254,'572.03','788','2022-05-12T19:28:34','',NULL,0,NULL),('0',6258,'830.51','804','2022-05-15T20:18:22','',NULL,0,NULL),('141',6261,'4500','809','2022-05-17T16:19:50','6260',NULL,0,NULL),('0',6262,'680.00','810','2022-05-17T16:19:50','',NULL,0,NULL),('159',6272,'4050.00','816','2022-05-19T00:03:09','499419amit5_rao_refer_person22022-05-18 23:55:29.177768',NULL,0,NULL),('0',6469,'830.51','1450','2022-12-24T15:00:30','',NULL,0,NULL),('0',6470,'830.51','1454','2022-12-24T21:42:35','',NULL,0,NULL),('0',6471,'572.03','1458','2022-12-26T10:46:33','',NULL,0,NULL),('224',6472,'680.00','1462','2022-12-26T19:59:29','',NULL,0,NULL),('0',6475,'830.51','1472','2022-12-30T16:55:51','',NULL,0,NULL),('0',6476,'830.51','1476','2022-12-30T18:37:30','',NULL,0,NULL),('0',6477,'572.03','1480','2023-01-04T14:55:55','',NULL,0,NULL),('0',6478,'830.51','1484','2023-01-05T11:39:06','',NULL,0,NULL),('0',6479,'1661.02','1488','2023-01-05T17:00:43','',NULL,0,NULL),('0',6481,'572.03','1500','2023-01-10T07:55:06','',NULL,0,NULL),('188',6493,'572.03','1532','2023-01-29T02:40:58','',NULL,0,NULL),('0',6495,'830.51','1536','2023-01-30T11:41:11','',NULL,0,NULL),('230',6496,'830.51','1539','2023-02-01T21:13:52','',NULL,0,NULL),('0',6497,'572.03','1551','2023-02-02T12:00:07','',NULL,0,NULL),('0',6498,'572.03','1559','2023-02-02T13:21:46','',NULL,0,NULL),('0',6499,'830.51','1563','2023-02-03T22:11:43','',NULL,0,NULL),('0',6500,'572.03','1567','2023-02-07T09:08:10','',NULL,0,NULL),('232',6501,'1144.07','1570','2023-02-07T13:40:48','',NULL,0,NULL),('232',6502,'572.03','1574','2023-02-07T13:42:07','',NULL,0,NULL),('0',6505,'830.51','1578','2023-02-08T11:43:54','',NULL,0,NULL),('0',6506,'1144.07','1583','2023-02-09T22:28:46','',NULL,0,NULL),('235',6507,'572.03','1586','2023-02-12T11:33:04','',NULL,0,NULL),('238',6508,'572.03','1589','2023-02-15T17:34:21','',NULL,0,NULL),('0',6510,'572.03','1594','2023-02-18T19:48:55','',NULL,0,NULL),('0',6511,'572.03','1598','2023-02-18T20:32:02','',NULL,0,NULL),('0',6512,'572.03','1610','2023-02-22T10:00:29','',NULL,0,NULL),('0',6513,'572.03','1618','2023-02-22T19:12:39','',NULL,0,NULL),('0',6514,'572.03','1622','2023-02-26T18:22:10','',NULL,0,NULL),('0',6515,'423.73','1625','2023-02-27T10:09:12','',NULL,0,NULL),('0',6516,'1144.07','1628','2023-02-27T11:07:19','',NULL,0,NULL),('0',6525,'572.03','1655','2023-03-05T19:13:30','',NULL,0,NULL),('248',6526,'572.03','1659','2023-03-05T21:42:15','',NULL,0,NULL),('0',6528,'572.03','1663','2023-03-07T12:59:45','',NULL,0,NULL),('282',6529,'572.03','1667','2023-03-07T20:36:20','',NULL,0,NULL),('345',6530,'1144.07','1671','2023-03-09T14:56:36','',NULL,0,NULL),('0',6531,'572.03','1675','2023-03-10T13:41:39','',NULL,0,NULL),('0',6532,'572.03','1679','2023-03-11T14:22:36','',NULL,0,NULL),('0',6533,'830.51','1691','2023-03-11T17:37:16','',NULL,0,NULL),('0',6534,'1661.02','1695','2023-03-12T07:41:11','',NULL,0,NULL),('430',6535,'572.03','1699','2023-03-12T13:53:02','',NULL,0,NULL),('0',6536,'572.03','1706','2023-03-14T23:12:45','',NULL,0,NULL),('0',6557,'572.03','1785','2023-04-03T10:55:29','',NULL,0,NULL),('0',6559,'572.03','1789','2023-04-11T06:24:59','',NULL,0,NULL),('0',6562,'572.03','1797','2023-04-17T19:09:32','',NULL,0,NULL),('0',6564,'572.03','1801','2023-04-19T20:08:47','',NULL,0,NULL),('0',6565,'830.51','1805','2023-04-19T21:09:59','',NULL,0,NULL),('0',6566,'572.03','1809','2023-04-21T10:54:59','',NULL,0,NULL),('0',6567,'572.03','1813','2023-04-25T10:39:26','',NULL,0,NULL),('0',6570,'830.51','1821','2023-05-01T21:15:04','',NULL,0,NULL),('0',6571,'1144.07','1825','2023-05-07T18:51:11','',NULL,0,NULL),('0',6574,'1144.07','1829','2023-05-11T11:54:14','',NULL,0,NULL),('0',6575,'3432.20','1832','2023-05-17T09:15:42','',NULL,0,NULL),('0',6577,'4152.54','1836','2023-05-21T09:00:12','',NULL,0,NULL),('0',6578,'350.00','1840','2023-05-21T15:35:47','',NULL,0,NULL),('2116',6579,'830.51','1842','2023-05-25T14:25:45','',NULL,0,NULL),('0',6588,'450.00','1858','2023-06-19T23:05:48','',NULL,0,NULL),('0',6591,'830.51','1860','2023-07-01T08:52:10','',NULL,0,NULL);
/*!40000 ALTER TABLE `orders_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_list`
--

DROP TABLE IF EXISTS `product_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_list` (
  `product_id` varchar(50) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` varchar(10) DEFAULT NULL,
  `product_commission` varchar(45) DEFAULT NULL,
  `terms&conditions` varchar(200) DEFAULT NULL,
  `product_link` varchar(100) DEFAULT NULL,
  `product_discription` varchar(500) DEFAULT NULL,
  UNIQUE KEY `product_id_UNIQUE` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_list`
--

LOCK TABLES `product_list` WRITE;
/*!40000 ALTER TABLE `product_list` DISABLE KEYS */;
INSERT INTO `product_list` VALUES ('4761','Amrith Noni Power Plus (1000 ml)','1299',NULL,NULL,'https://medicube.in/product/amrith-noni-power-plus-1000-ml/',''),('4766','Amrith Noni D Plus (For Diabetics – 1000 ml)','1299',NULL,NULL,'https://medicube.in/product/amrith-noni-d-plus-for-diabetics-1000-ml/','instantly controlls sugar level'),('4767','Amrith Noni Artho Plus (750ML)','1699',NULL,NULL,'https://medicube.in/product/amrith-noni-artho-plus-750ml/',NULL),('4768','Amrith Noni Sthree Sanjeevini (750ml)','1650',NULL,NULL,'https://medicube.in/?post_type=product&p=4768',NULL),('4774','Saferub Hand Sanitizer 100ml (Pack of 5)','210',NULL,NULL,'https://medicube.in/product/saferub-hand-sanitizer-100ml-pack-of-5/','removes 99.9% germs.'),('4775','Saferub Hand Sanitizer 100ml (Pack of 10)','410',NULL,NULL,'https://medicube.in/product/saferub-hand-sanitizer-100ml-pack-of-10/',NULL),('4776','Saferub Hand Sanitizer 500ml (Pack of 10)','2000',NULL,NULL,'https://medicube.in/product/saferub-hand-sanitizer-500ml-pack-of-10/',NULL),('4790','Saferub Spray Hand Sanitizer 500ml','250',NULL,NULL,'https://medicube.in/product/saferub-spray-hand-sanitizer-500ml/',NULL),('4795','Saferub Spray Hand Sanitizer 500ml (Set of 10)','1399',NULL,NULL,'https://medicube.in/product/saferub-spray-hand-sanitizer-500ml-set-of-10/',NULL),('4796','Saferub Spray Hand Sanitizer 500ml (Set of 2)','299',NULL,NULL,'https://medicube.in/product/saferub-spray-hand-sanitizer-500ml-set-of-5/',NULL),('4804','Recliner Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/recliner-wheelchair/',NULL),('4805','Fold-able Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/fold-able-wheelchair/',NULL),('4806','Commode Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/commode-wheelchair/',NULL),('4807','Hard Seat Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/hard-seat-wheelchair/',NULL),('4808','Heavy Duty Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/heavy-duty-wheelchair/',NULL),('4809','Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/wheelchair/',NULL),('4810','Wheelchair_2','1350.60',NULL,NULL,'https://medicube.in/product/wheelchair_2/',NULL),('4811','Aluminium Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/aluminium-wheelchair/',NULL),('4812','Pediatric Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/pediatric-wheelchair/',NULL),('4813','Transit Wheelchair','1350.60',NULL,NULL,'https://medicube.in/product/transit-wheelchair/',NULL),('4814','Aluminium Wheelchair_2','1350.60',NULL,NULL,'https://medicube.in/product/aluminium-wheelchair_2/',NULL),('4815','Commode Wheelchair_2','1350.60',NULL,NULL,'https://medicube.in/product/commode-wheelchair_2/',NULL),('4817','Commode Chair','1323.59',NULL,NULL,'https://medicube.in/product/commode-chair/',NULL),('4818','Commode Chair_2','1350.60',NULL,NULL,'https://medicube.in/product/commode-chair_2/',NULL),('4819','Commode Stool','1350.60',NULL,NULL,'https://medicube.in/product/commode-stool/',NULL),('4820','Commode Chair_3','1350.60',NULL,NULL,'https://medicube.in/product/commode-chair_3/',NULL),('4821','Shower Chair','1350.60',NULL,NULL,'https://medicube.in/product/shower-chair/',NULL),('4822','Shower Chair_2','1323.59',NULL,NULL,'https://medicube.in/product/shower-chair_2/',NULL),('4823','Shower Chair_3','1323.59',NULL,NULL,'https://medicube.in/product/shower-chair_3/',NULL),('4824','Shower Stool','1350.60',NULL,NULL,'https://medicube.in/product/shower-stool/',NULL),('4825','FOLDABLE WALKER','1350.60',NULL,NULL,'https://medicube.in/product/foldable-walker/',NULL),('4826','FOLDING WALKING AID','1350.60',NULL,NULL,'https://medicube.in/product/folding-walking-aid/',NULL),('4827','Lightweight walking frame','1350.60',NULL,NULL,'https://medicube.in/product/lightweight-walking-frame/',NULL),('4828','Lightweight Aluminum Walker','1350.60',NULL,NULL,'https://medicube.in/product/lightweight-aluminum-walker/',NULL),('4829','Walking Stick_1','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_1/',NULL),('4830','Walking Stick_2','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_2/',NULL),('4831','Walking Stick_3','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_3/',NULL),('4832','Walking Stick_4','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_4/',NULL),('4833','Walking Stick_5','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_5/',NULL),('4875','Walking Stick_6','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_6/',NULL),('4876','Walking Stick_7','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_7/',NULL),('4877','Walking Stick_8','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_8/',NULL),('4878','Walking Stick_9','1350.60',NULL,NULL,'https://medicube.in/product/walking-stick_9/',NULL),('4879','B-TEX OINTMENT 14 GM','19',NULL,NULL,'https://medicube.in/product/b-tex-ointment-14-gm/',NULL),('4880','BOROLINE 20 GM','36.10',NULL,NULL,'https://medicube.in/product/boroline-20-gm/',NULL),('4881','BURNOL CREAN 20 GM','82',NULL,NULL,'https://medicube.in/product/burnol-crean-20-gm/',NULL),('4882','ITCH GUARD PLUS 12 GM','66.50',NULL,NULL,'https://medicube.in/product/itch-guard-plus-12-gm/',NULL),('4883','IODEX 16 GM','76',NULL,NULL,'https://medicube.in/product/iodex-16-gm/',NULL),('4884','Krack Heel Repair Cream','85.50',NULL,NULL,'https://medicube.in/product/krack-heel-repair-cream/',NULL),('4885','MOOV SPRAY 15GM','61.75',NULL,NULL,'https://medicube.in/product/moov-cream-50-gm/',NULL),('4886','RINGGUARD 12 GM','1350.60',NULL,NULL,'https://medicube.in/?post_type=product&p=4886',NULL),('4887','VICCO TURMERIC 30 GM CREAM','1350.60',NULL,NULL,'https://medicube.in/?post_type=product&p=4887',NULL),('4888','ZANDU BALM 8 ML','28.5',NULL,NULL,'https://medicube.in/product/zandu-balm-8-ml/',NULL),('4889','AMRUTA RATHNA OIL 10 ML','360',NULL,NULL,'https://medicube.in/product/amruta-rathna-oil-10-ml/',NULL),('4890','DR.ORTHO OIL 120 ML','1350.60',NULL,NULL,'https://medicube.in/product/dr-ortho-oil-120-ml/',NULL),('4891','KESH KING OIL 120 ML','1350.60',NULL,NULL,'https://medicube.in/product/kesh-king-oil-120-ml/',NULL),('4892','DETTOL SOAP 75 GM','1350.60',NULL,NULL,'https://medicube.in/product/dettol-soap-75-gm/',NULL),('4893','TETMOSOL SOAP 100 GM','1350.60',NULL,NULL,'https://medicube.in/product/tetmosol-soap-100-gm/',NULL),('4894','MOOV SPRAY 35 GM','1350.60',NULL,NULL,'https://medicube.in/product/moov-spray-35-gm/',NULL),('4895','NOMARKS NORMAL PINK CREAM','71.25',NULL,NULL,'https://medicube.in/?post_type=product&p=4895',NULL),('4896','Hospital Furniture 1','7000',NULL,NULL,'https://medicube.in/product/hospital-furniture-1/',NULL),('4897','Digital BP monitor (omron) 7120','1900',NULL,NULL,'https://medicube.in/product/digital-bp-monitor-omron-7120/',NULL),('4898','BP apparatus (diamond deluxe)','2640',NULL,NULL,'https://medicube.in/product/bp-apparatus-diamond-deluxe/',NULL),('4899','Stethoscope (microtone)','',NULL,NULL,'https://medicube.in/product/stethoscope-microtone/',NULL),('4900','Glucometer (one touch select simple)','1290',NULL,NULL,'https://medicube.in/product/glucometer-one-touch-select-simple/',NULL),('4901','Nebulizer ( easy care )','',NULL,NULL,'https://medicube.in/product/nebulizer-easy-care/',NULL),('4902','Air bed (ishnee)','2300',NULL,NULL,'https://medicube.in/product/air-bed-ishnee/',NULL),('4903','Wheel chair (basic FS809)','10140',NULL,NULL,'https://medicube.in/product/wheel-chair-basic-fs809/',NULL),('4904','Wheel chair with commode (FS609)','9937.2',NULL,NULL,'https://medicube.in/product/wheel-chair-with-commode-fs609/',NULL),('4952','Backrest cot with railings and bed','10000',NULL,NULL,'https://medicube.in/product/backrest-cot-with-railings-and-bed/',NULL),('4953','Backrest cot with railings,wheel,and bed','12000',NULL,NULL,'https://medicube.in/product/backrest-cot-with-railingswheeland-bed/',NULL),('4954','Fowler cot with railings and bed','11500',NULL,NULL,'https://medicube.in/product/fowler-cot-with-railings-and-bed/',NULL),('4955','Fowler cot with railings,wheel, and bed','12500',NULL,NULL,'https://medicube.in/product/fowler-cot-with-railingswheel-and-bed/',NULL),('4956','Walker with folding','750',NULL,NULL,'https://medicube.in/product/walker-with-folding/',NULL),('4957','Walker with folding (imported)','1300',NULL,NULL,'https://medicube.in/product/walker-with-folding-imported/',NULL),('4958','Artery forceps ( 6 inch )','350',NULL,NULL,'https://medicube.in/product/artery-forceps-6-inch/',NULL),('4959','Dressing scissor ( 6 inch )','350',NULL,NULL,'https://medicube.in/product/dressing-scissor-6-inch/',NULL),('4960','Dissecting forceps ( 6 inch toothed,nontoothed & sharp )','60',NULL,NULL,'https://medicube.in/product/dissecting-forceps-6-inch-toothednontoothed-sharp/',NULL),('4961','Epostomy scissor','300',NULL,NULL,'https://medicube.in/product/epostomy-scissor/',NULL),('4962','Needle holder (6 inch)','350',NULL,NULL,'https://medicube.in/product/needle-holder-6-inch/',NULL),('4963','Sponge holder (10 inch)','450',NULL,NULL,'https://medicube.in/product/sponge-holder-10-inch/',NULL),('4964','Suturing scissor (6 inch)','350',NULL,NULL,'https://medicube.in/product/suturing-scissor-6-inch/',NULL),('4965','Mosquito forceps','350',NULL,NULL,'https://medicube.in/product/mosquito-forceps/',NULL),('4966','Suction machine ( electrical portable )','10588',NULL,NULL,'https://medicube.in/product/suction-machine-electrical-portable/',NULL),('4967','Suction machine ( electrical ¼ HP )','8500',NULL,NULL,'https://medicube.in/product/suction-machine-electrical-%c2%bc-hp/',NULL),('4968','Suction machine ( electrical ½ HP )','11000',NULL,NULL,'https://medicube.in/product/suction-machine-electrical-%c2%bd-hp/',NULL),('4969','Foot suction machine','4500',NULL,NULL,'https://medicube.in/product/foot-suction-machine/',NULL),('5000','Fetal doppler ( colour monitor )','9900',NULL,NULL,'https://medicube.in/product/fetal-doppler-colour-monitor/',NULL),('5001','Finger pulse oximeter','4500',NULL,NULL,'https://medicube.in/product/finger-pulse-oximeter/',NULL),('5002','Infrared thermometer','2499',NULL,NULL,'https://medicube.in/product/infrared-thermometer/',NULL),('5003','Digital thermometer flexi','295',NULL,NULL,'https://medicube.in/product/digital-thermometer-flexi/',NULL),('5004','Clinical thermometer','115',NULL,NULL,'https://medicube.in/product/clinical-thermometer/',NULL),('5005','Elbow crutches','645',NULL,NULL,'https://medicube.in/product/elbow-crutches/',NULL),('5006','Under arm Crutches','1150',NULL,NULL,'https://medicube.in/product/under-arm-crutches/',NULL),('5007','Walking stick single leg','300',NULL,NULL,'https://medicube.in/product/walking-stick-single-leg/',NULL),('5008','Walking stick tripod','500',NULL,NULL,'https://medicube.in/product/walking-stick-tripod/',NULL),('5009','Heating pad','840',NULL,NULL,'https://medicube.in/product/heating-pad/',NULL),('5010','Adult diaper medium','400',NULL,NULL,'https://medicube.in/product/adult-diaper-medium/',NULL),('5011','Adult diaper large','450',NULL,NULL,'https://medicube.in/product/adult-diaper-large/',NULL),('5012','Adult diaper x-large','500',NULL,NULL,'https://medicube.in/product/adult-diaper-x-large/',NULL),('5013','Hand rub ( stericare )','424',NULL,NULL,'https://medicube.in/?post_type=product&p=5013',NULL),('5014','Hot water bag ( coronation )','349',NULL,NULL,'https://medicube.in/product/hot-water-bag-coronation/',NULL),('5015','LS belt','690',NULL,NULL,'https://medicube.in/product/ls-belt/',NULL),('5016','Abdominal belt','450',NULL,NULL,'https://medicube.in/product/abdominal-belt/',NULL),('5017','Knee cap','220',NULL,NULL,'https://medicube.in/product/knee-cap/',NULL),('5018','Steam inhaler','330',NULL,NULL,'https://medicube.in/product/steam-inhaler/',NULL),('5019','Cervical pillow','650',NULL,NULL,'https://medicube.in/product/cervical-pillow/',NULL),('5020','Cervical pillow ( soft )','1750',NULL,NULL,'https://medicube.in/product/cervical-pillow-soft/',NULL),('5021','Round ring cushion','1243',NULL,NULL,'https://medicube.in/product/round-ring-cushion/',NULL),('5022','Orthopedic backsupport cushion','1932',NULL,NULL,'https://medicube.in/product/orthopedic-backsupport-cushion/',NULL),('5023','Cocodinal pillow','1290',NULL,NULL,'https://medicube.in/product/cocodinal-pillow/',NULL),('5024','Air cushion with pump','950',NULL,NULL,'https://medicube.in/product/air-cushion-with-pump/',NULL),('5025','Cotton role ( 500g )','225',NULL,NULL,'https://medicube.in/product/cotton-role-500g/',NULL),('5026','bipsodine( 500ml )','185',NULL,NULL,'https://medicube.in/product/bipsodine-500ml/',NULL),('5027','Infra red lamp','850',NULL,NULL,'https://medicube.in/product/infra-red-lamp/',NULL),('5028','Hot and cold pack','450',NULL,NULL,'https://medicube.in/product/hot-and-cold-pack/',NULL),('5029','Ice bag','180',NULL,NULL,'https://medicube.in/product/ice-bag/',NULL),('5062','Weighing scale ( round )','1590',NULL,NULL,'https://medicube.in/product/weighing-scale-round/',NULL),('5063','Stature meter','970',NULL,NULL,'https://medicube.in/product/stature-meter/',NULL),('5064','Structher folding','2000',NULL,NULL,'https://medicube.in/product/structher-folding/',NULL),('5065','Structher with trolley','5500',NULL,NULL,'https://medicube.in/product/structher-with-trolley/',NULL),('5066','Instrument trolley ( powder coating )','2500',NULL,NULL,'https://medicube.in/product/instrument-trolley-powder-coating/',NULL),('5067','Instrument trolley ( ss )','6000',NULL,NULL,'https://medicube.in/product/instrument-trolley-ss/',NULL),('5068','Drip stand','700',NULL,NULL,'https://medicube.in/product/drip-stand/',NULL),('5069','Drip stand with wheel','750',NULL,NULL,'https://medicube.in/product/drip-stand-with-wheel/',NULL),('5070','Drip stand with wheel ( ss )','2500',NULL,NULL,'https://medicube.in/product/drip-stand-with-wheel-ss/',NULL),('5071','Instrument tray ( 9*6 )','300',NULL,NULL,'https://medicube.in/product/instrument-tray-96/',NULL),('5072','Instrument tray ( 12*8 )','450',NULL,NULL,'https://medicube.in/product/instrument-tray-128/',NULL),('5073','Oxygen cylinder full set 10.2 Ltr','9500',NULL,NULL,'https://medicube.in/product/oxygen-cylinder-full-set-10-2-ltr/',NULL),('5074','Oxygen cylinder portable ( aluminium ) 1.8 ltr','7500',NULL,NULL,'https://medicube.in/product/oxygen-cylinder-portable-aluminium-1-8-ltr/',NULL),('5075','Oxygen flowmeter','1750',NULL,NULL,'https://medicube.in/product/oxygen-flowmeter/',NULL),('5076','Oxygen cylinder spanner','120',NULL,NULL,'https://medicube.in/product/oxygen-cylinder-spanner/',NULL),('5077','Bed pan plastic','90',NULL,NULL,'https://medicube.in/product/bed-pan-plastic/',NULL),('5078','Urine can','85',NULL,NULL,'https://medicube.in/product/urine-can/',NULL),('5079','Hammer','140',NULL,NULL,'https://medicube.in/product/hammer/',NULL),('5080','Tuning fork (128,256,512,1024)','250',NULL,NULL,'https://medicube.in/product/tuning-fork-1282565121024/',NULL),('5081','Rope and pully','100',NULL,NULL,'https://medicube.in/product/rope-and-pully/',NULL),('5082','Morning walker','6000',NULL,NULL,'https://medicube.in/product/morning-walker/',NULL),('5083','First aid box','2415',NULL,NULL,'https://medicube.in/product/first-aid-box/',NULL),('5084','Pedle exiceser','2500',NULL,NULL,'https://medicube.in/product/pedle-exiceser/',NULL),('5085','Oxygen concentrator ( Philips )','49000',NULL,NULL,'https://medicube.in/product/oxygen-concentrator-philips/',NULL),('5086','Sauna belt (flamingo)','1499',NULL,NULL,'https://medicube.in/product/sauna-belt-flamingo/',NULL),('5087','Needle destroyer ( electrical )','1600',NULL,NULL,'https://medicube.in/product/needle-destroyer-electrical/',NULL),('5088','Needle destroyer ( manual )','560',NULL,NULL,'https://medicube.in/product/needle-destroyer-manual/',NULL),('5089','Test tube','20',NULL,NULL,'https://medicube.in/product/test-tube/',NULL),('5120','Stethoscope (littmann) classic III','9500',NULL,NULL,'https://medicube.in/product/stethoscope-littmann-classic-iii/',NULL),('5121','Sterilizer ( 12*6*4 )','1650',NULL,NULL,'https://medicube.in/product/sterilizer-1264/',NULL),('5122','Autoclave ( 12*12 ) S.S GOLEY','5000',NULL,NULL,'https://medicube.in/product/autoclave-1212-s-s-goley/',NULL),('5123','Kidney tray (ss 10 inch)','120',NULL,NULL,'https://medicube.in/product/kidney-tray-ss-10-inch/',NULL),('5124','Kidney tray (plastic)','40',NULL,NULL,'https://medicube.in/product/kidney-tray-plastic/',NULL),('5125','Wash basin stand','900',NULL,NULL,'https://medicube.in/product/wash-basin-stand/',NULL),('5126','Over bed table','3800',NULL,NULL,'https://medicube.in/product/over-bed-table/',NULL),('5127','Body massager','900',NULL,NULL,'https://medicube.in/product/body-massager/',NULL),('5128','Rubber gloves','75',NULL,NULL,'https://medicube.in/product/rubber-gloves/',NULL),('5129','Dressing bin seamless (11*9)','1400',NULL,NULL,'https://medicube.in/product/dressing-bin-seamless-119/',NULL),('5130','Dressing bin seamless (9*9 )','1100',NULL,NULL,'https://medicube.in/product/dressing-bin-seamless-99/',NULL),('5131','Dressing bin seamless (6*6 )','650',NULL,NULL,'https://medicube.in/product/dressing-bin-seamless-66/',NULL),('5132','Dressing bin (11*9)','950',NULL,NULL,'https://medicube.in/product/dressing-bin-119/',NULL),('5133','Dressing bin (9*9)','800',NULL,NULL,'https://medicube.in/product/dressing-bin-99/',NULL),('5134','Dressing bin (6*6)','500',NULL,NULL,'https://medicube.in/product/dressing-bin-66/',NULL),('5135','Stethoscope (littmann ped)','8900',NULL,NULL,'https://medicube.in/product/stethoscope-littmann-ped/',NULL),('5136','Stethoscope (cardiology III) LITTMANN','17750',NULL,NULL,'https://medicube.in/product/stethoscope-cardiology-iii-littmann/',NULL),('5137','Stethoscope (master cardiology) littmann','19450',NULL,NULL,'https://medicube.in/product/stethoscope-master-cardiology-littmann/',NULL),('5140','B.p monitor wrist type (HEM-6121)','2980',NULL,NULL,'https://medicube.in/product/b-p-monitor-wrist-type-hem-6121/',NULL),('5141','Infrared thermometer (dr.morepen)','2999',NULL,NULL,'https://medicube.in/product/infrared-thermometer-dr-morepen/',NULL),('5143','Finger pulse oximeter ( mycare)','3000',NULL,NULL,'https://medicube.in/product/finger-pulse-oximeter-mycare/',NULL),('5144','Nebulixer ( omron nec-25s )','2350',NULL,NULL,'https://medicube.in/product/nebulixer-omron-nec-25s/',NULL),('5145','Nebulizer ( infi )','2750',NULL,NULL,'https://medicube.in/product/nebulizer-infi/',NULL),('5146','Nebulizer ( mycare )','2400',NULL,NULL,'https://medicube.in/product/nebulizer-mycare/',NULL),('5147','Nebulizer pulmoneb ( devilbiss )','5500',NULL,NULL,'https://medicube.in/product/nebulizer-pulmoneb-devilbiss/',NULL),('5148','Bp apparatus dail type (diamond)','930',NULL,NULL,'https://medicube.in/product/bp-apparatus-dail-type-diamond/',NULL),('5149','Airbed ( easycare )','5200',NULL,NULL,'https://medicube.in/product/airbed-easycare/',NULL),('5180','Airbed ( home medix )','5200',NULL,NULL,'https://medicube.in/product/airbed-home-medix/',NULL),('5181','Airbed ( infi )','6000',NULL,NULL,'https://medicube.in/product/airbed-infi/',NULL),('5182','Airbed tubular ( ishnee )','15850',NULL,NULL,'https://medicube.in/product/airbed-tubular-ishnee/',NULL),('5183','Steripad ( 7*5 )','16',NULL,NULL,'https://medicube.in/product/steripad-75/',NULL),('5184','Peak flow meter','975',NULL,NULL,'https://medicube.in/product/peak-flow-meter/',NULL),('5185','Wheel chair with mag wheel (fs809b)','11180',NULL,NULL,'https://medicube.in/product/wheel-chair-with-mag-wheel-fs809b/',NULL),('5186','Wheel chair with cushion (fs809y)','11140',NULL,NULL,'https://medicube.in/product/wheel-chair-with-cushion-fs809y/',NULL),('5187','Wheel chair (fs904b)','11440',NULL,NULL,'https://medicube.in/product/wheel-chair-fs904b/',NULL),('5188','Accu check 50 strips','1100',NULL,NULL,'https://medicube.in/product/accu-check-50-strips/',NULL),('5189','Accu check 100 strips','1600',NULL,NULL,'https://medicube.in/product/accu-check-100-strips/',NULL),('5190','Disposable mask (100’S PACK)','300',NULL,NULL,'https://medicube.in/product/disposable-mask-100s-pack/',NULL),('5191','Disposable cap (100’S PACK)','300',NULL,NULL,'https://medicube.in/product/disposable-cap-100s-pack/',NULL),('5192','Breast pump ( electrical )','3600',NULL,NULL,'https://medicube.in/product/breast-pump-electrical/',NULL),('5193','Breast pump ( manual )','1575',NULL,NULL,'https://medicube.in/product/breast-pump-manual/',NULL),('5194','Varicose vain stockings (vissco) 0707','665',NULL,NULL,'https://medicube.in/product/varicose-vain-stockings-vissco-0707/',NULL),('5195','Hinged knee brace (vissco)1404','1610',NULL,NULL,'https://medicube.in/product/hinged-knee-brace-vissco1404/',NULL),('5196','Knee cap (2022) oppo','425',NULL,NULL,'https://medicube.in/product/knee-cap-2022-oppo/',NULL),('5197','Waist belt (1060) oppo','995',NULL,NULL,'https://medicube.in/product/waist-belt-1060-oppo/',NULL),('5198','Hot & cold (with gel type) renewa','490',NULL,NULL,'https://medicube.in/product/hot-cold-with-gel-type-renewa/',NULL),('5199','Silicon heal cushion (5454) oppo','945',NULL,NULL,'https://medicube.in/product/silicon-heal-cushion-5454-oppo/',NULL),('5200','ACTIVE (anti ambiolisum stocking)','1250',NULL,NULL,'https://medicube.in/product/active-anti-ambiolisum-stocking/',NULL),('5201','Commode chair fs894','4800',NULL,NULL,'https://medicube.in/product/commode-chair-fs894/',NULL),('5202','Commode chair fs696','5720',NULL,NULL,'https://medicube.in/product/commode-chair-fs696/',NULL),('5203','Commode stool fs897','850',NULL,NULL,'https://medicube.in/product/commode-stool-fs897/',NULL),('5204','Commode stool fs898','750',NULL,NULL,'https://medicube.in/product/commode-stool-fs898/',NULL),('5205','Commode chair fs899','1600',NULL,NULL,'https://medicube.in/product/commode-chair-fs899/',NULL),('5206','Commode chair metal','550',NULL,NULL,'https://medicube.in/product/commode-chair-metal/',NULL),('5207','Commode stool aaram type','900',NULL,NULL,'https://medicube.in/product/commode-stool-aaram-type/',NULL),('5208','Bed pan plastic','90',NULL,NULL,'https://medicube.in/product/bed-pan-plastic-2/',NULL),('5209','Bed pan fibre','350',NULL,NULL,'https://medicube.in/product/bed-pan-fibre/',NULL),('5239','Gauze swab ( 5*5cm )','30.5',NULL,NULL,'https://medicube.in/product/gauze-swab-55cm/',NULL),('5240','Gauze than','250',NULL,NULL,'https://medicube.in/product/gauze-than/',NULL),('5241','Weighting scale ( body fat analyser ) karada scan omron','10000',NULL,NULL,'https://medicube.in/product/weighting-scale-body-fat-analyser-karada-scan-omron/',NULL),('5242','Measuring jar','80',NULL,NULL,'https://medicube.in/product/measuring-jar/',NULL),('5243','Dissection set','350',NULL,NULL,'https://medicube.in/product/dissection-set/',NULL),('5244','Eye wash cup','18',NULL,NULL,'https://medicube.in/product/eye-wash-cup/',NULL),('5245','Crape bandage','180',NULL,NULL,'https://medicube.in/product/crape-bandage/',NULL),('5246','Dyna plast','585',NULL,NULL,'https://medicube.in/product/dyna-plast/',NULL),('5247','Blind stick','450',NULL,NULL,'https://medicube.in/product/blind-stick/',NULL),('5248','Fowleys catheter ( rubeer )','108',NULL,NULL,'https://medicube.in/product/fowleys-catheter-rubeer/',NULL),('5249','Nel catheter','41',NULL,NULL,'https://medicube.in/product/nel-catheter/',NULL),('5250','d.syringe 2ml','4',NULL,NULL,'https://medicube.in/product/d-syringe-2ml/',NULL),('5251','Glyzrine syringe 100ml','140',NULL,NULL,'https://medicube.in/product/glyzrine-syringe-100ml/',NULL),('5252','Ascepto pump','212',NULL,NULL,'https://medicube.in/product/ascepto-pump/',NULL),('5253','Feeding bag','390',NULL,NULL,'https://medicube.in/product/feeding-bag/',NULL),('5254','Urometer','252',NULL,NULL,'https://medicube.in/product/urometer/',NULL),('5255','Oxygen connector tube','96',NULL,NULL,'https://medicube.in/product/oxygen-connector-tube/',NULL),('5256','Flexi mask ( oxygen mask )','108',NULL,NULL,'https://medicube.in/product/flexi-mask-oxygen-mask/',NULL),('5258','Leg bag set','108',NULL,NULL,'https://medicube.in/product/leg-bag-set/',NULL),('5259','Wax ( 1 KG )','200',NULL,NULL,'https://medicube.in/product/wax-1-kg/',NULL),('5260','Bed side locker (POWDER COATED)','1900',NULL,NULL,'https://medicube.in/product/bed-side-locker-powder-coated/',NULL),('5261','Tongue dippressor (steel)','60',NULL,NULL,'https://medicube.in/product/tongue-dippressor-steel/',NULL),('5262','Tongue dippressor (wooden)','270',NULL,NULL,'https://medicube.in/product/tongue-dippressor-wooden/',NULL),('5263','X ray view box (LED)','2500',NULL,NULL,'https://medicube.in/product/x-ray-view-box-led/',NULL),('5264','Antiseptic liquid wolon ( 1 LTR )','191.84',NULL,NULL,'https://medicube.in/product/antiseptic-liquid-wolon-1-ltr/',NULL),('5265','Ultra sond jel ( 5 LTR )','600',NULL,NULL,'https://medicube.in/product/ultra-sond-jel-5-ltr/',NULL),('5266','Wheel chair aluminium fs804labj','11140',NULL,NULL,'https://medicube.in/product/wheel-chair-aluminium-fs804labj/',NULL),('5267','Wheel chair with non folding (fs691)','5500',NULL,NULL,'https://medicube.in/product/wheel-chair-with-non-folding-fs691/',NULL),('5268','Wheel chair with arm detachable (fs681)','6860',NULL,NULL,'https://medicube.in/product/wheel-chair-with-arm-detachable-fs681/',NULL),('5299','Wheel chair (vissco) 0938','15600',NULL,NULL,'https://medicube.in/product/wheel-chair-vissco-0938/',NULL),('5300','Knee brace long type','695',NULL,NULL,'https://medicube.in/product/knee-brace-long-type/',NULL),('5301','Cast shoes','360',NULL,NULL,'https://medicube.in/product/cast-shoes/',NULL),('5302','Philadelphia collar with opening','1095',NULL,NULL,'https://medicube.in/product/philadelphia-collar-with-opening/',NULL),('5303','Foot drop splint','1385',NULL,NULL,'https://medicube.in/product/foot-drop-splint/',NULL),('5304','Food skin traction kit (0211) vissco23522','280',NULL,NULL,'https://medicube.in/product/food-skin-traction-kit-0211-vissco23522/',NULL),('5305','Cervical traction kit (0402) vissco','1115',NULL,NULL,'https://medicube.in/product/cervical-traction-kit-0402-vissco/',NULL),('5306','Dorso lumber spinal brace ( k.t brace )','1555',NULL,NULL,'https://medicube.in/product/dorso-lumber-spinal-brace-k-t-brace/',NULL),('5307','Universal knee brace (0711) vissco','2475',NULL,NULL,'https://medicube.in/product/universal-knee-brace-0711-vissco/',NULL),('5308','Hyper extention barace (0810) vissco','1200',NULL,NULL,'https://medicube.in/product/hyper-extention-barace-0810-vissco/',NULL),('5309','Infanto meter','2800',NULL,NULL,'https://medicube.in/product/infanto-meter/',NULL),('5310','Spooten cup (plastic)','30',NULL,NULL,'https://medicube.in/product/spooten-cup-plastic/',NULL),('5311','Spooten cuff (steel)','120',NULL,NULL,'https://medicube.in/product/spooten-cuff-steel/',NULL),('5312','APRON SUPER DELUXE','315',NULL,NULL,'https://medicube.in/product/apron-super-deluxe/',NULL),('5313','Morton and pistal','70',NULL,NULL,'https://medicube.in/product/morton-and-pistal/',NULL),('5314','Retina scope','2000',NULL,NULL,'https://medicube.in/product/retina-scope/',NULL),('5315','Microscope','6000',NULL,NULL,'https://medicube.in/product/microscope/',NULL),('5316','Bunion splint','',NULL,NULL,'https://medicube.in/product/bunion-splint/',NULL),('5317','Otoscope ( HEINS )','6000',NULL,NULL,'https://medicube.in/product/otoscope-heins/',NULL),('5318','Opthalmoscope ( HEINS )','9800',NULL,NULL,'https://medicube.in/product/opthalmoscope-heins/',NULL),('5319','Castor walker (fs965lh)','6500',NULL,NULL,'https://medicube.in/product/castor-walker-fs965lh/',NULL),('5320','Metatarsal support (vissco)','240',NULL,NULL,'https://medicube.in/product/metatarsal-support-vissco/',NULL),('5321','Silicon arch support (vissco)','285',NULL,NULL,'https://medicube.in/product/silicon-arch-support-vissco/',NULL),('5322','Finger cot splint','110',NULL,NULL,'https://medicube.in/product/finger-cot-splint/',NULL),('5323','Dynamic cock up splint','1064',NULL,NULL,'https://medicube.in/product/dynamic-cock-up-splint/',NULL),('5324','Accu check active kit','1580',NULL,NULL,'https://medicube.in/product/accu-check-active-kit/',NULL),('5325','Accu check active 25 strips','790',NULL,NULL,'https://medicube.in/product/accu-check-active-25-strips/',NULL),('5326','Respimed stocking above knee class II','3200',NULL,NULL,'https://medicube.in/product/respimed-stocking-above-knee-class-ii/',NULL),('5327','Accu check performa strips (100’s)','2400',NULL,NULL,'https://medicube.in/product/accu-check-performa-strips-100s/',NULL),('5328','One touch select simple 50 strips','1095',NULL,NULL,'https://medicube.in/product/one-touch-select-simple-50-strips/',NULL),('5359','Humorous fracture splint (vissc)','610',NULL,NULL,'https://medicube.in/product/humorous-fracture-splint-vissc/',NULL),('5360','Accusure body massager','2799',NULL,NULL,'https://medicube.in/product/accusure-body-massager/',NULL),('5361','Nebulizer ( Philips )','3500',NULL,NULL,'https://medicube.in/product/nebulizer-philips/',NULL),('5362','Nebulizer ( mesh ultra sonic )','11280',NULL,NULL,'https://medicube.in/product/nebulizer-mesh-ultra-sonic/',NULL),('5363','Cast & bandage protector (leg)','580',NULL,NULL,'https://medicube.in/product/cast-bandage-protector-leg/',NULL),('5364','Examination table with mattress','4500',NULL,NULL,'https://medicube.in/product/examination-table-with-mattress/',NULL),('5365','Walker vissco','2150',NULL,NULL,'https://medicube.in/product/walker-vissco/',NULL),('5366','Bedside screen ( powder coated )','2600',NULL,NULL,'https://medicube.in/product/bedside-screen-powder-coated/',NULL),('5367','Step stool','750',NULL,NULL,'https://medicube.in/product/step-stool/',NULL),('5368','Revolving stool','750',NULL,NULL,'https://medicube.in/product/revolving-stool/',NULL),('5369','Examination table with mattress deluxe model','19000',NULL,NULL,'https://medicube.in/product/examination-table-with-mattress-deluxe-model/',NULL),('5370','Active cool eye','160',NULL,NULL,'https://medicube.in/product/active-cool-eye/',NULL),('5371','Air cushion dolphin','680',NULL,NULL,'https://medicube.in/product/air-cushion-dolphin/',NULL),('5372','Leg pillow renewa','1290',NULL,NULL,'https://medicube.in/product/leg-pillow-renewa/',NULL),('5373','Safe touch rubber sheet','490',NULL,NULL,'https://medicube.in/product/safe-touch-rubber-sheet/',NULL),('5374','Vellur knee hammer','450',NULL,NULL,'https://medicube.in/product/vellur-knee-hammer/',NULL),('5375','Pen torch','300',NULL,NULL,'https://medicube.in/product/pen-torch/',NULL),('5376','Travel pillow renewa','160',NULL,NULL,'https://medicube.in/product/travel-pillow-renewa/',NULL),('5377','Theraband vissco ( all colour available )','',NULL,NULL,'https://medicube.in/product/theraband-vissco-all-colour-available/',NULL),('5378','Cervical collar hard','297',NULL,NULL,'https://medicube.in/product/cervical-collar-hard/',NULL),('5379','Twist and slim','450',NULL,NULL,'https://medicube.in/product/twist-and-slim/',NULL),('5380','Thumb spica splint (vissco)','205',NULL,NULL,'https://medicube.in/product/thumb-spica-splint-vissco/',NULL),('5381','Power matt','240',NULL,NULL,'https://medicube.in/product/power-matt/',NULL),('5382','Arm sling pouch (aromac)','248',NULL,NULL,'https://medicube.in/product/arm-sling-pouch-aromac/',NULL),('5383','Breath analyzer','5750',NULL,NULL,'https://medicube.in/product/breath-analyzer/',NULL),('5384','Baby weighing scale (child) digital smart care','7130',NULL,NULL,'https://medicube.in/product/baby-weighing-scale-child-digital-smart-care/',NULL),('5385','Orthopedic insole ( vissco )','980',NULL,NULL,'https://medicube.in/product/orthopedic-insole-vissco/',NULL),('5386','Elbow stick three leg','700',NULL,NULL,'https://medicube.in/product/elbow-stick-three-leg/',NULL),('5387','Cervical pillow (Renewa)','1750',NULL,NULL,'https://medicube.in/product/cervical-pillow-renewa/',NULL),('5388','Hand exersizer','175',NULL,NULL,'https://medicube.in/product/hand-exersizer/',NULL),('5419','Gel ball (nisco)','275',NULL,NULL,'https://medicube.in/product/gel-ball-nisco/',NULL),('5420','Tablet organizer','140',NULL,NULL,'https://medicube.in/product/tablet-organizer/',NULL),('5639','Adorapeel - The Natural Emollient','489',NULL,NULL,'https://medicube.in/product/adorapeel/',NULL),('5663','CEEPLUS- Immunity Booster','230',NULL,NULL,'https://medicube.in/?post_type=product&p=5663',NULL),('5685','Saferub Hand Sanitizer 500ml Pump','200',NULL,NULL,'https://medicube.in/product/saferub-hand-sanitizer-200ml-pump/',NULL),('5729','OMRON Automatic Blood Pressure Monitor HEM 8712 AAP','2890',NULL,NULL,'https://medicube.in/product/omron-hem8712/',NULL),('5734','Sebamune Immune Booster Tablets','350',NULL,NULL,'https://medicube.in/product/sebamune/',NULL),('5769','COVID-19 Kit Pack 1','200',NULL,NULL,'https://medicube.in/product/covid-19-kit-pack-1/',NULL),('5771','COVID-19 Kit Pack 2','200',NULL,NULL,'https://medicube.in/?post_type=product&p=5771',NULL),('5779','Cuppo Capsules','',NULL,NULL,'https://medicube.in/?post_type=product&p=5779',NULL),('5781','CEEPLUS-Vitamin C Tablets','',NULL,NULL,'https://medicube.in/?post_type=product&p=5781',NULL),('5821','COVID-19 KIT (SMALL)','200',NULL,NULL,'https://medicube.in/product/covid-19-kit-small/',NULL),('5834','Saferub Advanced Hand Sanitizer 500ml Pump','500',NULL,NULL,'https://medicube.in/product/saferub-advanced-hand-sanitizer-500ml-pump/',NULL),('5841','Covid-19 Kit @ Rs. 499 + Free Shipping','600',NULL,NULL,'https://medicube.in/product/499kit/',NULL),('5935','UV-Jour by Swinnzea','675',NULL,NULL,'https://medicube.in/product/uv-jour-by-swinnzea/',NULL),('5939','MelaJour by Swinnzea','980',NULL,NULL,'https://medicube.in/product/melajour/',NULL),('5987','OXYGEN CONCENTRATOR','',NULL,NULL,'https://medicube.in/product/oxygen-concentrator/',NULL),('5999','ENERQUIK','297',NULL,NULL,'https://medicube.in/product/enerquik/',NULL),('6006','Non-Contact Infrared Thermometer','',NULL,NULL,'https://medicube.in/?post_type=product&p=6006',NULL),('6011','Digital Thermometer','',NULL,NULL,'https://medicube.in/?post_type=product&p=6011',NULL),('6018','FINGERTIP PULSE OXIMETER','1016',NULL,NULL,'https://medicube.in/product/fingertip-pulse-oximeter/',NULL),('6022','BLOOD PRESSURE MONITOR','',NULL,NULL,'https://medicube.in/?post_type=product&p=6022',NULL),('6031','COFSIL COUGH DRP SINGLE','',NULL,NULL,'https://medicube.in/?post_type=product&p=6031',NULL),('6034','BOROLINE ULTRA SMOOTH 40 GM','76',NULL,NULL,'https://medicube.in/product/boroline-ultra-smooth-40-gm/',NULL),('90','Saferub Hand Sanitizer 100ml','45',NULL,NULL,'https://medicube.in/product/saferub-hand-sanitizer-100ml/',NULL),('99','N95 Anti Pollution Face Mask (Pack of 10)','1700',NULL,NULL,'https://medicube.in/product/n95-anti-pollution-face-mask/',NULL);
/*!40000 ALTER TABLE `product_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referal_contacts`
--

DROP TABLE IF EXISTS `referal_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referal_contacts` (
  `serial_no` int NOT NULL AUTO_INCREMENT,
  `my_id` varchar(45) DEFAULT NULL,
  `my_contact_person_name` varchar(45) DEFAULT NULL,
  `my_contact_person_phoneno` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referal_contacts`
--

LOCK TABLES `referal_contacts` WRITE;
/*!40000 ALTER TABLE `referal_contacts` DISABLE KEYS */;
INSERT INTO `referal_contacts` VALUES (1,'111','Ramkumar','9845810272'),(2,'111','Sandeep','7019635357'),(3,'111','Panshul','7829890730'),(4,'111','test_sahil_2','9966552211'),(5,'141','amit5_rao_refer_person1','9879663310'),(6,'141','amit5_rao_refer_person2','8975524680'),(7,'141','amit5_rao_refer_person3','9974724546'),(8,'141','amit5_rao_refer_person4','4567899632'),(9,'1','',''),(10,'1','Sahil2','9988456415');
/*!40000 ALTER TABLE `referal_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_commissions`
--

DROP TABLE IF EXISTS `referral_commissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referral_commissions` (
  `transcation_id` varchar(45) DEFAULT NULL,
  `order_id` int NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `wait_until` datetime DEFAULT NULL,
  `referral_id` varchar(45) DEFAULT NULL,
  `commission_rupees` varchar(45) DEFAULT NULL,
  `settlement_status` varchar(45) DEFAULT NULL,
  `payee` varchar(45) DEFAULT NULL,
  `referral_commissionscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  UNIQUE KEY `settlement_id_UNIQUE` (`transcation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_commissions`
--

LOCK TABLES `referral_commissions` WRITE;
/*!40000 ALTER TABLE `referral_commissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `referral_commissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `referral_settlements`
--

DROP TABLE IF EXISTS `referral_settlements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `referral_settlements` (
  `settlement_id` int NOT NULL,
  `customer_id` varchar(45) DEFAULT NULL,
  `accured_amount` int DEFAULT '0',
  `status` varchar(45) DEFAULT 'pending',
  `history` json DEFAULT NULL,
  `points` int DEFAULT NULL,
  PRIMARY KEY (`settlement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `referral_settlements`
--

LOCK TABLES `referral_settlements` WRITE;
/*!40000 ALTER TABLE `referral_settlements` DISABLE KEYS */;
INSERT INTO `referral_settlements` VALUES (452,'111',45,'pending',NULL,NULL),(155818,'145',9,'ready',NULL,NULL),(526332,'1',12,'pending',NULL,NULL);
/*!40000 ALTER TABLE `referral_settlements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `session` (
  `session_id` int NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `user_role` varchar(45) DEFAULT NULL,
  `session_status` varchar(45) DEFAULT NULL,
  `start_date_time` varchar(45) DEFAULT NULL,
  `user_machine_macid` varchar(45) DEFAULT NULL,
  `user_ip_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`session_id`),
  UNIQUE KEY `session_id_UNIQUE` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES (498,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(650,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(1493,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(2931,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(14639,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(18335,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(19140,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(22324,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(23136,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(25792,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(27977,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(31728,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(32043,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(44462,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(44569,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(49800,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(55123,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(69323,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(73779,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(78836,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(82135,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(85820,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(86754,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(86853,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(88154,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(90423,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(92217,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(92934,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(93316,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(94383,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(97713,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(101683,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(103135,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(103875,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(107123,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(107936,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(108523,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(112495,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(113107,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(115988,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(118719,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(123303,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(126373,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(126598,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(130900,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(132414,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(133159,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(137359,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(138008,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(141659,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(141982,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(143336,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(143972,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(145163,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(145855,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(147497,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(149677,'Berry','berry_a','Campaign_admin','loggedin',NULL,NULL,NULL),(151312,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(152159,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(153405,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(154861,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(155259,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(155319,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(155474,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(157795,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(162182,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(165169,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(169577,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(174591,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(179033,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(179984,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(181343,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(182047,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(186736,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(189935,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(190094,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(196647,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(197692,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(198794,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(208691,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(214772,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(215292,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(216482,'241','9916824091','User','loggedin',NULL,NULL,NULL),(218548,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(219241,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(221579,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(222771,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(223218,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(226210,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(230310,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(232062,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(233449,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(234159,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(235166,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(235633,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(237619,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(238945,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(240481,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(242903,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(244174,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(244812,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(250090,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(251632,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(252565,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(255670,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(256151,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(257412,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(257666,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(258473,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(260451,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(260961,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(262301,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(267471,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(269254,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(269366,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(270534,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(272304,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(273739,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(276834,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(283486,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(283560,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(284392,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(286971,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(293826,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(296322,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(301178,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(305883,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(306698,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(307374,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(312938,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(312988,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(315225,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(319850,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(320111,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(320588,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(323002,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(323273,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(323642,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(323904,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(326480,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(326710,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(327114,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(327415,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(329216,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(336448,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(336528,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(338259,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(339853,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(342062,'143','imarket_amit7_rao7','User','loggedin',NULL,NULL,NULL),(348671,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(350185,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(350899,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(351421,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(362845,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(364051,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(364652,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(367984,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(368298,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(368470,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(370779,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(370802,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(373070,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(373826,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(374598,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(379133,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(379921,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(380631,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(383734,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(384172,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(386595,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(388136,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(388631,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(389467,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(390617,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(391089,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(393637,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(396293,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(397127,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(398276,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(405633,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(408384,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(408609,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(413459,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(418970,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(421753,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(422190,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(424091,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(424705,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(425828,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(430818,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(433291,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(434027,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(434235,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(435600,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(436578,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(438444,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(439421,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(442593,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(442670,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(444746,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(444949,'1','123456','Admin','loggedin',NULL,NULL,NULL),(447831,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(453799,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(459107,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(459751,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(460608,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(460908,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(463625,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(464445,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(467118,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(467832,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(471199,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(472207,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(473838,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(477408,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(478137,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(479922,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(482505,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(483141,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(484185,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(485194,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(485410,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(491353,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(501208,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(501334,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(515647,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(523337,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(530502,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(532082,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(533170,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(538204,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(541114,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(543891,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(544815,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(545091,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(548819,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(553248,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(553762,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(553797,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(554359,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(556406,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(571110,'Berry','berry_a','Campaign_admin','loggedin',NULL,NULL,NULL),(571591,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(577683,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(581446,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(587125,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(587247,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(590148,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(592044,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(595831,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(597220,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(599449,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(601865,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(613409,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(613760,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(625046,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(628866,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(630755,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(634458,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(637732,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(645586,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(648773,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(656580,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(666186,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(666735,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(667864,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(673662,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(674376,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(679210,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(682680,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(685653,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(687019,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(687629,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(692200,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(711165,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(711775,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(716101,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(725361,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(739076,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(743806,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(744986,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(746561,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(753665,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(754595,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(755511,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(758087,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(758433,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(758942,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(765489,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(766757,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(770342,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(770668,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(776135,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(778958,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(779885,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(780234,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(781171,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(785965,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(787015,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(795290,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(807708,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(809214,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(814328,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(814705,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(818443,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(819325,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(821871,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(824683,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(829620,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(829762,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(835773,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(837851,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(841136,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(858840,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(879217,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(884398,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(886070,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(892082,'Berry','berry_a','Campaign_admin','loggedin',NULL,NULL,NULL),(907101,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(908235,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(914484,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(914602,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(917630,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(922364,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(924026,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(924914,'141','imarket_amit5_rao5','User','loggedin',NULL,NULL,NULL),(934497,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(940167,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(945558,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(945804,'1','123456','Admin','loggedin',NULL,NULL,NULL),(946464,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(949839,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(951785,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(956199,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(958284,'111','imarket_mohammed_sahique123','User','loggedin',NULL,NULL,NULL),(960670,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(964743,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(970557,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(978690,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(978704,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(980142,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(980403,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(990292,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL),(998888,'1','m_sahique','Admin','loggedin',NULL,NULL,NULL);
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_reg`
--

DROP TABLE IF EXISTS `staff_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_reg` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `entity_name` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `roles` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `adress1` varchar(45) DEFAULT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_reg`
--

LOCK TABLES `staff_reg` WRITE;
/*!40000 ALTER TABLE `staff_reg` DISABLE KEYS */;
INSERT INTO `staff_reg` VALUES (1,'abcde','xyzlast','entity_asd',NULL,NULL,'superadmin','admin@gmail.com','4563217892','qwer','asdfg','bangalore','karnataka','45625','India',NULL),(2,'Berry','Allen','entity_1','berry_a','123456','Campaign_admin','berry990@gmail.com','9992569874','add1','add2','banglore','karnataka','57596','india',NULL),(3,'dummy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'','','','','','','','','','','','','','enable',NULL),(5,'','','','','','','','','','','','','','enable',NULL);
/*!40000 ALTER TABLE `staff_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_role_master`
--

DROP TABLE IF EXISTS `staff_role_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff_role_master` (
  `role_id` int NOT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_role_master`
--

LOCK TABLES `staff_role_master` WRITE;
/*!40000 ALTER TABLE `staff_role_master` DISABLE KEYS */;
INSERT INTO `staff_role_master` VALUES (0,'system','internal system as a user'),(1,'superadmin','controls imarket configuration'),(2,'campaignmanager','manages campaigns'),(3,'accountsmanager','manages recevieables and payouts'),(4,'dealershipmanager','configure commision');
/*!40000 ALTER TABLE `staff_role_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `super_admin`
--

DROP TABLE IF EXISTS `super_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_admin` (
  `serial_no` int NOT NULL AUTO_INCREMENT,
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `clue_qry` varchar(45) DEFAULT NULL,
  `answer` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `serial_no_UNIQUE` (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `super_admin`
--

LOCK TABLES `super_admin` WRITE;
/*!40000 ALTER TABLE `super_admin` DISABLE KEYS */;
INSERT INTO `super_admin` VALUES (1,1,'sahique','8880655639','123456','m_sahique','dad,s birthday?','25-11-1981');
/*!40000 ALTER TABLE `super_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableops_log`
--

DROP TABLE IF EXISTS `tableops_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tableops_log` (
  `Transaction_id` bigint NOT NULL,
  `table_name` varchar(45) DEFAULT NULL,
  `entry_no` bigint DEFAULT NULL,
  `date_time` varchar(45) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `entity` bigint DEFAULT NULL,
  `from_ip_address` varchar(45) DEFAULT NULL,
  `action` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`Transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableops_log`
--

LOCK TABLES `tableops_log` WRITE;
/*!40000 ALTER TABLE `tableops_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `tableops_log` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-11 21:14:49
