-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pd7
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user',1,'add_user'),(2,'Can change user',1,'change_user'),(3,'Can delete user',1,'delete_user'),(4,'Can view user',1,'view_user'),(5,'Can add login',2,'add_login'),(6,'Can change login',2,'change_login'),(7,'Can delete login',2,'delete_login'),(8,'Can view login',2,'view_login'),(9,'Can add portal',3,'add_portal'),(10,'Can change portal',3,'change_portal'),(11,'Can delete portal',3,'delete_portal'),(12,'Can view portal',3,'view_portal'),(13,'Can add log entry',4,'add_logentry'),(14,'Can change log entry',4,'change_logentry'),(15,'Can delete log entry',4,'delete_logentry'),(16,'Can view log entry',4,'view_logentry'),(17,'Can add permission',5,'add_permission'),(18,'Can change permission',5,'change_permission'),(19,'Can delete permission',5,'delete_permission'),(20,'Can view permission',5,'view_permission'),(21,'Can add group',6,'add_group'),(22,'Can change group',6,'change_group'),(23,'Can delete group',6,'delete_group'),(24,'Can view group',6,'view_group'),(25,'Can add user',7,'add_user'),(26,'Can change user',7,'change_user'),(27,'Can delete user',7,'delete_user'),(28,'Can view user',7,'view_user'),(29,'Can add content type',8,'add_contenttype'),(30,'Can change content type',8,'change_contenttype'),(31,'Can delete content type',8,'delete_contenttype'),(32,'Can view content type',8,'view_contenttype'),(33,'Can add session',9,'add_session'),(34,'Can change session',9,'change_session'),(35,'Can delete session',9,'delete_session'),(36,'Can view session',9,'view_session'),(37,'Can add office',10,'add_office'),(38,'Can change office',10,'change_office'),(39,'Can delete office',10,'delete_office'),(40,'Can view office',10,'view_office'),(41,'Can add organization',11,'add_organization'),(42,'Can change organization',11,'change_organization'),(43,'Can delete organization',11,'delete_organization'),(44,'Can view organization',11,'view_organization'),(45,'Can add service',12,'add_service'),(46,'Can change service',12,'change_service'),(47,'Can delete service',12,'delete_service'),(48,'Can view service',12,'view_service'),(49,'Can add subscription type',13,'add_subscriptiontype'),(50,'Can change subscription type',13,'change_subscriptiontype'),(51,'Can delete subscription type',13,'delete_subscriptiontype'),(52,'Can view subscription type',13,'view_subscriptiontype'),(53,'Can add user info',14,'add_userinfo'),(54,'Can change user info',14,'change_userinfo'),(55,'Can delete user info',14,'delete_userinfo'),(56,'Can view user info',14,'view_userinfo'),(57,'Can add transferred subscription',15,'add_transferredsubscription'),(58,'Can change transferred subscription',15,'change_transferredsubscription'),(59,'Can delete transferred subscription',15,'delete_transferredsubscription'),(60,'Can view transferred subscription',15,'view_transferredsubscription'),(61,'Can add subscriber',16,'add_subscriber'),(62,'Can change subscriber',16,'change_subscriber'),(63,'Can delete subscriber',16,'delete_subscriber'),(64,'Can view subscriber',16,'view_subscriber'),(65,'Can add organization member',17,'add_organizationmember'),(66,'Can change organization member',17,'change_organizationmember'),(67,'Can delete organization member',17,'delete_organizationmember'),(68,'Can view organization member',17,'view_organizationmember'),(69,'Can add officer',18,'add_officer'),(70,'Can change officer',18,'change_officer'),(71,'Can delete officer',18,'delete_officer'),(72,'Can view officer',18,'view_officer');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_office`
--

DROP TABLE IF EXISTS `backend_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_office` (
  `officecode` int NOT NULL AUTO_INCREMENT,
  `officename` varchar(20) NOT NULL,
  `attribution` varchar(20) NOT NULL,
  PRIMARY KEY (`officecode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_office`
--

LOCK TABLES `backend_office` WRITE;
/*!40000 ALTER TABLE `backend_office` DISABLE KEYS */;
INSERT INTO `backend_office` VALUES (1,'Some Office','Yes'),(2,'Another office','perhaps');
/*!40000 ALTER TABLE `backend_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_officer`
--

DROP TABLE IF EXISTS `backend_officer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_officer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `officecode_id` int NOT NULL,
  `subscriberID_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_officer_officecode_id_1c6e582e_fk_backend_o` (`officecode_id`),
  KEY `backend_officer_subscriberID_id_7377db5c_fk_backend_s` (`subscriberID_id`),
  CONSTRAINT `backend_officer_officecode_id_1c6e582e_fk_backend_o` FOREIGN KEY (`officecode_id`) REFERENCES `backend_office` (`officecode`),
  CONSTRAINT `backend_officer_subscriberID_id_7377db5c_fk_backend_s` FOREIGN KEY (`subscriberID_id`) REFERENCES `backend_subscriber` (`subscriberID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_officer`
--

LOCK TABLES `backend_officer` WRITE;
/*!40000 ALTER TABLE `backend_officer` DISABLE KEYS */;
INSERT INTO `backend_officer` VALUES (1,'2020-01-01','2020-03-15',1,2),(2,'2019-12-15','2020-03-30',2,1);
/*!40000 ALTER TABLE `backend_officer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_organization`
--

DROP TABLE IF EXISTS `backend_organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_organization` (
  `organizationCode` int NOT NULL AUTO_INCREMENT,
  `organizationname` varchar(20) NOT NULL,
  `description` longtext NOT NULL,
  `datejoined` date NOT NULL,
  `address1` varchar(20) NOT NULL,
  `address2` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `phonenumber` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  PRIMARY KEY (`organizationCode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_organization`
--

LOCK TABLES `backend_organization` WRITE;
/*!40000 ALTER TABLE `backend_organization` DISABLE KEYS */;
INSERT INTO `backend_organization` VALUES (1,'Fake Organization','Fake','1992-05-03','1313 Mockingbird Ln','','Mockingbird Heights','90701','','CA'),(2,'Real Organization','Real','2010-06-12','789 Fake St','Apt 2','Los Angeles','90708','555-555-5555','CA');
/*!40000 ALTER TABLE `backend_organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_organizationmember`
--

DROP TABLE IF EXISTS `backend_organizationmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_organizationmember` (
  `id` int NOT NULL AUTO_INCREMENT,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `nativecountry` varchar(20) NOT NULL,
  `citizenship` varchar(20) NOT NULL,
  `isdelegate` tinyint(1) NOT NULL,
  `organizationCode_id` int NOT NULL,
  `subscriberID_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `backend_organization_organizationCode_id_7a3ab7f9_fk_backend_o` (`organizationCode_id`),
  KEY `backend_organization_subscriberID_id_6815e1fb_fk_backend_s` (`subscriberID_id`),
  CONSTRAINT `backend_organization_organizationCode_id_7a3ab7f9_fk_backend_o` FOREIGN KEY (`organizationCode_id`) REFERENCES `backend_organization` (`organizationCode`),
  CONSTRAINT `backend_organization_subscriberID_id_6815e1fb_fk_backend_s` FOREIGN KEY (`subscriberID_id`) REFERENCES `backend_subscriber` (`subscriberID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_organizationmember`
--

LOCK TABLES `backend_organizationmember` WRITE;
/*!40000 ALTER TABLE `backend_organizationmember` DISABLE KEYS */;
INSERT INTO `backend_organizationmember` VALUES (1,'2005-01-03','2017-08-13','USA','Native',1,1,2),(2,'2011-07-15','2020-12-05','Mexico','Permanent Resident',0,2,1);
/*!40000 ALTER TABLE `backend_organizationmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_service`
--

DROP TABLE IF EXISTS `backend_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_service` (
  `servicecode` int NOT NULL AUTO_INCREMENT,
  `servicesname` varchar(20) NOT NULL,
  `description` varchar(20) NOT NULL,
  `premium` varchar(20) NOT NULL,
  `allocation` varchar(20) NOT NULL,
  PRIMARY KEY (`servicecode`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_service`
--

LOCK TABLES `backend_service` WRITE;
/*!40000 ALTER TABLE `backend_service` DISABLE KEYS */;
INSERT INTO `backend_service` VALUES (1,'Some Service','services for folks','yes','perhaps?'),(2,'Another Service','services for people','no','why not');
/*!40000 ALTER TABLE `backend_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_subscriber`
--

DROP TABLE IF EXISTS `backend_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_subscriber` (
  `subscriberID` int NOT NULL AUTO_INCREMENT,
  `servicecode_id` int NOT NULL,
  `requestdate` date NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `motifofcancellation` varchar(20) NOT NULL,
  `subscriptiontypecode_id` int NOT NULL,
  `username_id` varchar(20) NOT NULL,
  PRIMARY KEY (`subscriberID`),
  KEY `backend_subscriber_subscriptiontypecode_f967f3b7_fk_backend_s` (`subscriptiontypecode_id`),
  KEY `backend_subscriber_username_id_aa3a1136_fk_backend_u` (`username_id`),
  KEY `backend_subscriber_servicecode_id_6494af48` (`servicecode_id`),
  CONSTRAINT `backend_subscriber_servicecode_id_6494af48_fk_backend_s` FOREIGN KEY (`servicecode_id`) REFERENCES `backend_service` (`servicecode`),
  CONSTRAINT `backend_subscriber_subscriptiontypecode_f967f3b7_fk_backend_s` FOREIGN KEY (`subscriptiontypecode_id`) REFERENCES `backend_subscriptiontype` (`subscriptiontypecode`),
  CONSTRAINT `backend_subscriber_username_id_aa3a1136_fk_backend_u` FOREIGN KEY (`username_id`) REFERENCES `backend_userinfo` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_subscriber`
--

LOCK TABLES `backend_subscriber` WRITE;
/*!40000 ALTER TABLE `backend_subscriber` DISABLE KEYS */;
INSERT INTO `backend_subscriber` VALUES (1,2,'2020-01-04','2020-02-01','2020-02-21','smooth',4,'user2'),(2,1,'2020-01-05','2020-02-03','2020-04-05','none',3,'user1');
/*!40000 ALTER TABLE `backend_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_subscriptiontype`
--

DROP TABLE IF EXISTS `backend_subscriptiontype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_subscriptiontype` (
  `subscriptiontypecode` int NOT NULL AUTO_INCREMENT,
  `subscriptiontypename` varchar(20) NOT NULL,
  PRIMARY KEY (`subscriptiontypecode`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_subscriptiontype`
--

LOCK TABLES `backend_subscriptiontype` WRITE;
/*!40000 ALTER TABLE `backend_subscriptiontype` DISABLE KEYS */;
INSERT INTO `backend_subscriptiontype` VALUES (1,'monthly'),(2,'annual'),(3,'monthly'),(4,'annual');
/*!40000 ALTER TABLE `backend_subscriptiontype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_transferredsubscription`
--

DROP TABLE IF EXISTS `backend_transferredsubscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_transferredsubscription` (
  `transferID` int NOT NULL AUTO_INCREMENT,
  `transferFrom` varchar(20) NOT NULL,
  `transferTo` varchar(20) NOT NULL,
  `requestDate` date NOT NULL,
  `transferDate` date NOT NULL,
  `subscriberID_id` varchar(20) NOT NULL,
  PRIMARY KEY (`transferID`),
  KEY `backend_transferreds_subscriberID_id_1b4b4b5a_fk_backend_u` (`subscriberID_id`),
  CONSTRAINT `backend_transferreds_subscriberID_id_1b4b4b5a_fk_backend_u` FOREIGN KEY (`subscriberID_id`) REFERENCES `backend_userinfo` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_transferredsubscription`
--

LOCK TABLES `backend_transferredsubscription` WRITE;
/*!40000 ALTER TABLE `backend_transferredsubscription` DISABLE KEYS */;
INSERT INTO `backend_transferredsubscription` VALUES (1,'Bob','Testy','2012-05-05','2013-04-02','user1'),(2,'Anita','Amanda','2020-01-01','2020-02-05','user2');
/*!40000 ALTER TABLE `backend_transferredsubscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `backend_userinfo`
--

DROP TABLE IF EXISTS `backend_userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `backend_userinfo` (
  `username` varchar(20) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `mName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backend_userinfo`
--

LOCK TABLES `backend_userinfo` WRITE;
/*!40000 ALTER TABLE `backend_userinfo` DISABLE KEYS */;
INSERT INTO `backend_userinfo` VALUES ('user1','Testy','','McTesterson','fake@fake.com','male','123 Fake Street','Fakesville','CA','555-555-5555','USA','1980-01-01'),('user2','Amanda','','Hugnkiss','LegitEmail@fake.com','Female','456 Real Street','Realsville','NY','555-555-5555','USA','1980-04-01');
/*!40000 ALTER TABLE `backend_userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (4,'admin','logentry'),(6,'auth','group'),(5,'auth','permission'),(7,'auth','user'),(10,'backend','office'),(18,'backend','officer'),(11,'backend','organization'),(17,'backend','organizationmember'),(12,'backend','service'),(16,'backend','subscriber'),(13,'backend','subscriptiontype'),(15,'backend','transferredsubscription'),(14,'backend','userinfo'),(8,'contenttypes','contenttype'),(2,'registration','login'),(3,'registration','portal'),(1,'registration','user'),(9,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-04-02 04:18:50.679959'),(2,'auth','0001_initial','2020-04-02 04:18:50.890960'),(3,'admin','0001_initial','2020-04-02 04:18:51.545957'),(4,'admin','0002_logentry_remove_auto_add','2020-04-02 04:18:51.716957'),(5,'admin','0003_logentry_add_action_flag_choices','2020-04-02 04:18:51.728045'),(6,'contenttypes','0002_remove_content_type_name','2020-04-02 04:18:51.865958'),(7,'auth','0002_alter_permission_name_max_length','2020-04-02 04:18:51.949958'),(8,'auth','0003_alter_user_email_max_length','2020-04-02 04:18:52.040956'),(9,'auth','0004_alter_user_username_opts','2020-04-02 04:18:52.052956'),(10,'auth','0005_alter_user_last_login_null','2020-04-02 04:18:52.113955'),(11,'auth','0006_require_contenttypes_0002','2020-04-02 04:18:52.117956'),(12,'auth','0007_alter_validators_add_error_messages','2020-04-02 04:18:52.128956'),(13,'auth','0008_alter_user_username_max_length','2020-04-02 04:18:52.207956'),(14,'auth','0009_alter_user_last_name_max_length','2020-04-02 04:18:52.309957'),(15,'auth','0010_alter_group_name_max_length','2020-04-02 04:18:52.337957'),(16,'auth','0011_update_proxy_permissions','2020-04-02 04:18:52.351956'),(17,'registration','0001_initial','2020-04-02 04:18:52.399035'),(18,'registration','0002_test','2020-04-02 04:18:52.432958'),(19,'registration','0003_auto_20200322_2118','2020-04-02 04:18:52.563001'),(20,'sessions','0001_initial','2020-04-02 04:18:52.595972'),(21,'backend','0001_initial','2020-04-03 05:15:22.326445'),(22,'backend','0002_auto_20200401_2349','2020-04-03 05:15:23.194518'),(23,'backend','0003_auto_20200402_2140','2020-04-03 05:15:23.310514');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_login`
--

DROP TABLE IF EXISTS `registration_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_login` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_login`
--

LOCK TABLES `registration_login` WRITE;
/*!40000 ALTER TABLE `registration_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_portal`
--

DROP TABLE IF EXISTS `registration_portal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_portal` (
  `id` int NOT NULL AUTO_INCREMENT,
  `office` varchar(20) NOT NULL,
  `officer` varchar(20) NOT NULL,
  `org` varchar(20) NOT NULL,
  `orgMember` varchar(20) NOT NULL,
  `subscriber` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_portal`
--

LOCK TABLES `registration_portal` WRITE;
/*!40000 ALTER TABLE `registration_portal` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_portal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration_user`
--

DROP TABLE IF EXISTS `registration_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registration_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `fName` varchar(20) NOT NULL,
  `mName` varchar(20) NOT NULL,
  `lName` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `city` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_user`
--

LOCK TABLES `registration_user` WRITE;
/*!40000 ALTER TABLE `registration_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-05 20:55:01
