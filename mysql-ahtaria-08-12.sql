-- MySQL dump 10.13  Distrib 5.7.37, for Linux (x86_64)
--
-- Host: localhost    Database: ahtaria
-- ------------------------------------------------------
-- Server version	5.7.37

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
-- Table structure for table `JEMET`
--

DROP TABLE IF EXISTS `JEMET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JEMET` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) NOT NULL,
  `isim` varchar(45) DEFAULT NULL,
  `bash` char(1) DEFAULT NULL,
  `hayati` longtext,
  `pikir` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`kodi`),
  UNIQUE KEY `kodi` (`kodi`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JEMET`
--

LOCK TABLES `JEMET` WRITE;
/*!40000 ALTER TABLE `JEMET` DISABLE KEYS */;
INSERT INTO `JEMET` VALUES (1,'KOLDO','كولدو','K',NULL,'P_KOLDO'),(2,'NUR','نۇر','N',NULL,'P_NUR'),(3,'YUNUS','يۇنۇس','Y',NULL,'P_YUNUS');
/*!40000 ALTER TABLE `JEMET` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `KOLDO`
--

DROP TABLE IF EXISTS `KOLDO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `KOLDO` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) CHARACTER SET utf8 NOT NULL,
  `isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `hayat` bit(1) DEFAULT NULL,
  `jinsi` bit(1) DEFAULT NULL,
  `mewlut` datetime DEFAULT NULL,
  `wapati` datetime DEFAULT NULL,
  `jupti_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `jupti` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ata_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ata` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ana_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ana` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `yurti` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `adrisi` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `hayati` longtext CHARACTER SET utf8,
  `resim` text CHARACTER SET utf8,
  `yeshi` int(11) DEFAULT NULL,
  `ataJemedKodi` varchar(25) DEFAULT NULL,
  `anaJemedKodi` varchar(25) DEFAULT NULL,
  `jemedKodi` varchar(25) DEFAULT NULL,
  `ejdadKodi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kodi`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KOLDO`
--

LOCK TABLES `KOLDO` WRITE;
/*!40000 ALTER TABLE `KOLDO` DISABLE KEYS */;
INSERT INTO `KOLDO` VALUES (1,'K','زۇنۇن',_binary '',_binary '','1890-00-00 00:00:00','0000-00-00 00:00:00','','باغجالخان','','موللا پولات','','','يوپۇرغا كولدو مەھەللىسى','','','زۇنۇن دادىدسى موللا ئىسىملىك كىشى، زۇنۇن موللا ئوتۇنچىلىق بىلەن تۇرمۇش كەچۈرگەن، يوپۇرغىدىكى ئاخۇنلۇغۇم دىگەن جايدىكى قۇملۇقتىن كۆتەك قېزىپ كالا ھارۋىسىدا بازارغا توشۇغان. دادىسى موللا پولات دىگەن كىشى ھازىرقى كولدۇر مەھەللىسىدە ، دىھقانچىلىق قىلغان، ئاق سۈزۈك قوناق پىشقاندا قۇچقاچ يامراپ كىتىپ، ياغاچ ئاچا ئارىسىغا قاپاقتىن تۆشۈك ئېچىپ باغلاپ، قاپاقنى كولدۇرلاتقاچ «ھۇ...يت، ئېقىنى ئالساڭ كۆكىنى قوي!»دەپ تەكرار تەكرار توۋلايدىكەن. يولدا ئۆتۈپ كېتىۋاتقان يۇرت چوڭى خان غوجام ئىسمىنى سوراپ، « سەن موللا پولات ، قاپاقنى ئ‍ېسىپ كولدۇرلات، كولدۇر كولدۇرر» دىگەن ۋە شۇنىڭدىن باشلاپ يەر نامى كولدۇر مەھەللىسى بولغان.ئوۋغا چىققان بۇ خان غوجامنىڭ قولىدىكى قارچۇغا ئۇچۇپ جاڭگالدىكى بىر تال يالغۇز دەرەخكە قونغان، ئۇكىشى يېنىدىكى كىشىلىرىدىن «قارچۇغا قەيەرگە قوندى» دەپ سورىسا، «ئاۋۇ يالغۇز تالغا قوندى» دەپ جاۋاپ بەرگەن شۇندىن باشلاپ ئۇجاي يالغۇز تال دەپ ئاتالغان.دىھقان','',0,NULL,NULL,NULL,NULL),(2,'K01E','مۇسا',_binary '',_binary '\0','1910-03-15 00:00:00','1973-03-15 00:00:00',NULL,'ئاينىسا','',NULL,NULL,NULL,NULL,NULL,NULL,'دىھقان',NULL,63,NULL,NULL,NULL,NULL),(3,'K01E01A','تاجىگۈل',_binary '',NULL,NULL,NULL,NULL,'ئابدۇلراخمان ناسىر',NULL,NULL,NULL,NULL,'',NULL,NULL,'قۇشتانجىم - تەقۋادار ئايال',NULL,NULL,NULL,NULL,NULL,NULL),(4,'K01E02E','مەخسۇم',_binary '\0',_binary '','1958-00-00 00:00:00','0000-00-00 00:00:00','','','','','','','','','','دىھقان، چوڭ كەنت سېكرىتارلىق ۋەزىپىسىنى ئۆتىگەن. مەخسۇم مۇسا 1958-يىلى تۇغۇلغان، ئايالى گۆھەرخان، ئۇلارنىڭ بېقىۋالغان ئىككى پەرزەنتى بار، چوڭى خۇرشىدەم مەخسۇم(ئائىلە ئايالى)، كىچىكى ئىمىنجان مەخسۇم تامچىلىق ھۈنىرى بار، ھازىر كاۋچۇك سىرى زاۋۇتى ئىشچىسى.','',0,NULL,NULL,NULL,NULL),(27,'K01E02E01A','خۇرشىدەم',NULL,_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','','','','يوپۇرغا','','','','',0,NULL,NULL,NULL,NULL),(28,'K01E02E02E','ئىمىنجان',NULL,_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','','','','','','','',' تامچىلىق ھۈنىرى بار، ھازىر كاۋچۇك سىرى زاۋۇتى ئىشچىسى.','',0,NULL,NULL,NULL,NULL),(5,'K02E','رۇسۇل',_binary '',NULL,NULL,NULL,NULL,'ئالمىخان',NULL,'','','','','',NULL,'',NULL,0,NULL,NULL,NULL,NULL),(6,'K02E01A','ئايەمنىسا',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'K02E01A01A','پاتىگۈل',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'K02E01A02A','ئاتىكەم',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'K02E01A03A','بۇۋىھاجەر',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'K02E01A04A','مەريەم',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'K02E01A05E','ئابلىكىم',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'K02E01A06E','مۇھەممەتئېلى',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'K02E01A07E','مۇھەممەتئېلى',_binary '\0',_binary '\0',NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'K02E01A08A','خۇرشىدەم',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'مەخسۇم(K01E02E) بېقىۋالغان',NULL,0,NULL,NULL,NULL,NULL),(15,'K02E02E','ياقۇب',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'K02E03E','يۈسۈف',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'K02E03E01E','ئەھمەت',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL),(18,'K02E03E02E','ياسىن',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'K02E03E03E','ناسىر',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'K02E03E04E','ئوغۇل',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'K02E03E05A','زۇلفىيە',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'K03E','ئاباخان',_binary '',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'K04E','ئاباس',_binary '',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'K05A','زورىخان',_binary '',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'K06E','ھوشۇرقارى',_binary '',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'K07E','ياسىن',_binary '\0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'','ئاقسۇ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `KOLDO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NUR`
--

DROP TABLE IF EXISTS `NUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NUR` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) NOT NULL,
  `isim` varchar(45) DEFAULT NULL,
  `hayat` bit(1) DEFAULT NULL,
  `jinsi` bit(1) DEFAULT NULL,
  `mewlut` datetime DEFAULT NULL,
  `wapati` datetime DEFAULT NULL,
  `jupti_kodi` varchar(25) DEFAULT NULL,
  `jupti` varchar(45) DEFAULT NULL,
  `ataJemedKodi` varchar(25) DEFAULT NULL,
  `ata_kodi` varchar(25) DEFAULT NULL,
  `ata` varchar(45) DEFAULT NULL,
  `anaJemedKodi` varchar(25) DEFAULT NULL,
  `ana_kodi` varchar(25) DEFAULT NULL,
  `ana` varchar(45) DEFAULT NULL,
  `yurti` varchar(45) DEFAULT NULL,
  `adrisi` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `hayati` longtext,
  `resim` text,
  `yeshi` int(11) DEFAULT NULL,
  `jemedKodi` varchar(25) DEFAULT NULL,
  `ejdadKodi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kodi`),
  UNIQUE KEY `kodi` (`kodi`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NUR`
--

LOCK TABLES `NUR` WRITE;
/*!40000 ALTER TABLE `NUR` DISABLE KEYS */;
INSERT INTO `NUR` VALUES (1,'N','نۇر',_binary '',_binary '','0000-00-00 00:00:00','1953-01-01 00:00:00','','ھۆرنىساخان(يوپۇرغا); سۇپۇرىخان(يەكشەنبە بازار','0','','ئۇيغۇر ئە',NULL,'','ئۇيغۇر','يوپۇرغا','قەشقەرشەھەر يوپۇرغا ناھىيىسى','يوق','ئادالەت پەرۋەر، مۇلاھىم ئادەم.  1. ئات مىنىپ ھەج قىلىپ كەلگەن.  2.ھىكايە: بىر ئوغرى نۇرھاجىنىڭ مېلىنى ئوغرلاپ باشلىقىنىڭ ئالدىغا ئېلىپ كەلسە، باشلىقى سوراپتۇ. - قايسى نۇرھاجىنىن ئوغرىلىدىڭ؟ - قەدەمجايلىق  -چاتاق قىلىپسەن، ئۇنىڭكىنى ئالساڭ بولمايتتى.ئۇ چوقۇم پىيىڭگە چۈشۈپ بۇ يەرنى تېپىۋالىدۇ. شۇ ھامان تۇڭلىكتىن نۇر ھاجىنىڭ ئاۋازى ئاڭلىنىپتۇ.  - رەھمەت سىلىگە، چەكە ھاجىم.  3. ي1920-يىلى يىپەك يولىدا سودا قىلىپ سۇجۇۋ، بېيجىڭلارغا بارغان ۋە بېيجىڭدا 8 يىل تۇرۇپ قالغان.','',81,NULL,NULL),(2,'N01A','ھۆسنىخان',_binary '',_binary '\0',NULL,NULL,NULL,'ئەھمەت(قارىبەگ تۇققىنى خۇداقۇل ئەۋلادى)','0','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'N01A01E','نامەت',_binary '',_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','0','','ئەھمەت(قارىبەگ تۇققىنى خۇداقۇل ئەۋلادى)',NULL,'N01A','ھۆسنىخان','يەكەن','يەكەن','','دادىسى ئەھمەتخان خۇدا قۇلى ئەۋلادى قارى بەگنىڭ تۇققىنى.نامەت ئەھمەد ،  مۇلاھىم ، ئاق كۆڭۈل ، باشقىلارغا ياردەم بىرىشنى ياقتۇردىغان ، خۇشخۇي ، مىھرىبان مىھماندوسىت ئادەم','asd',75,NULL,NULL),(4,'N01A01E01O','مۇھەممەدئىمىن',_binary '\0',_binary '','0000-00-00 00:00:00','2016-09-01 00:00:00','','','0','','',NULL,'','','يەكەن','','18699835024','مۇھەممەدئىمىن نامەت ، پەرزەنىتلىرى : ئاينۇر مۇھەممەدئىمىن ، گۇلنۇر مۇھەممەدئىمىن (ۋاپات بولدى 2016-يىلى 9-ئاي ) بۇخەلچەم مۇھەممەدئىمىن ، بۇمەريەم مۇھەممەدئىمىن ،  مىھماندوسىت ، خۇشخۇي ئادەم ،كەم سۆز ئادەم','',0,NULL,NULL),(103,'N01A01E01O01A','ئاينۇر',NULL,_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','',NULL,'','',NULL,'','','يەكەن','','','','',0,NULL,NULL),(104,'N01A01E01O02A','گۇلنۇر',NULL,_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','',NULL,'','',NULL,'','','يەكەن','','','','',0,NULL,NULL),(5,'N01A01E02Q','پاتەمخان',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'يەكەن',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'N01A01E03A','گۈلھەسەلخان',_binary '\0',_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','دۈسەن غازى ( قازاق )','0','','',NULL,'','','يەكەن','چۆچەك','0901-6267110','مىھرىبان ئانا ، مىھماندوسىت ، كۈلگۇنچەك . ','',0,NULL,NULL),(7,'N01A01E03A01A','ئايگۇل',_binary '\0',_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','0','','',NULL,'','','چۆچەك','','','','',0,NULL,NULL),(8,'N01A01E03A02A','روشەنگۈل',_binary '\0',_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','0','','',NULL,'','','چۆچەك','','','','',0,NULL,NULL),(9,'N01A01E03A03A','سەنەم',_binary '\0',_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','0','','',NULL,'','','چۆچەك','','','','',0,NULL,NULL),(10,'N01A01E03A04A','مەريەم',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'چۆچەك','قازاقىستان',NULL,NULL,NULL,NULL,NULL,NULL),(11,'N01A01E04E','ئابدۇراخمان',_binary '\0',_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','0','','',NULL,'','','يەكەن','يەكەن','15809981207','مىجەزى ؛ خۇشخۇي ، خوشاللىقىنى باشقىلار بىلەن تەڭ بەھرىمان بولۇشقا ئامراق ، كۆلگۇنچەك ، ئىغىر بىسىق ، ','',0,NULL,NULL),(12,'N01A01E04E01A','گۈلجەننەت',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'N01A01E04E02E','مۇھەممەدتۇرسۇن',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'N01A01E04E03E','نۇرىدىن',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'N01A01E04E04E','تۇرسۇنجان',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'N01A01E04E05A','گۈلبەھرەم',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'N01A01E05E','ئابدۇلھىمىد',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,'يەكەن','يەكەن',NULL,NULL,NULL,NULL,NULL,NULL),(18,'N01A01E05E01A','گۈلبوستان',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'N01A01E05E02A','گۈلچىمەن',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'ئۈرۈمچى',NULL,NULL,NULL,NULL,NULL,NULL),(20,'N02A','رازىخان',_binary '',_binary '\0',NULL,NULL,NULL,NULL,'0','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'N02A01A','دۈشەن',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئوبۇل دادامغا تىگىپ تۈگەپ كەتتى(N03E01E).',NULL,NULL,NULL,NULL),(22,'N02A02E','يۈسۈف',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئاشپەز',NULL,NULL,NULL,NULL),(23,'N02A03E','ئابباس',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'N02A04A','گۈلخەلىچە',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'N02A05E','ئاۋۇدۇن',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'N02A06E','تۇرسۇن',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'N02A07A','جەننەت',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'N03E','ئىمىن',_binary '',_binary '','1899-12-31 00:00:00','1995-01-01 00:00:00',';Y03A;','گۈلھەسەلخان; ئەپرۇزىخان(Y03A); مەنىساخان','0','N','',NULL,'','','','','','دىھقان، تىجارەتچى، ئاشپەز، چاغاتاي يېزىقى ئۆگەنگەن.</dr>\r\n\r\n    ئەنۋەر ئوبۇلھاشىم دىن بايان: \r\nبوۋام ئىمىن قارىھاجىم ، ماڭا دەپ بېرىشىچە : كىچىگىدىن ئالىم ئۆلىمالارنىڭ سورۇنلىرىغا داخىل بولۇشنى ياخشى كۆرىدىكەن ، گەرچە ئالىي مەدرىسلەردىن ئېرشاتنامە ئالمىغان بولسىمۇ ، ئۈگەنگەن ئىلىمنى ئەستايىدىل ئىشلىتىدىكەن ئۆزىنى قايىل قىلغان ئىغار قاراشلارنى قۇبۇل قىلىدىكەن . ۋە ماڭا دائىم ئۈگەنگەننى ئۇنتىماسلىق ئۈچۈن تىرىشىپ تەكرارلاش توغرىسىدا ساۋاق بېرەتتى . كىشىلەردىن كېيىن قالماسلىق ئۈچۈن دىنىي ۋە پەننىي بىلىملەرنى ئۈگىنىشىمنى تەكىتلەيتتى . ئۇ ئىنقىلابىي قەھرىمانىمىز ئەخمەتجان قاسىمىنى <ھەققانىي ئادىل كىشى ، موسۇلمان قېرىندىشىمىز > دەپ ماختاپ سۆزلەيتتى . ئۇ تىجارەت قىلىپ بېيجىڭغا بارغان ۋە بېيجىڭدا بىر يىل تۇرۇپ قالغانىكەن ، <بېيجىڭنىڭ كوچىلىرىنى قەشقەرنىڭ كوچىسىنى بىلگەندەك بىلىمەن.> دەيتتى . ئۇ يەنە شاڭخەيگە بارغان ، ۋىنجۇدىن چىمەن دوپپىغا ئىشلىتىدىغان مارجان ئەكىلىپ قەشقەردە ساتقانىكەن . تۇرپاندىمۇ بىر مەزگىل تۇرغانىكەن .\r\n','',95,NULL,NULL),(29,'N03E01E','ئوبۇل',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,'گۈلھەسەلخان','ئەشمە يىمە','يوپۇرغا',NULL,NULL,NULL,NULL,NULL,NULL),(30,'N03E01E01A','خەيرىگۈل',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(31,'N03E01E02A','نۇرگۇل',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(32,'N03E01E03E','تۇرسۇنجان',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(33,'N03E01E04E','مۇھەممەدئەلى',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(34,'N03E01E05A','ھۆرىگۈل',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(35,'N03E02A','پاتىگۈل',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,'گۈلھەسەلخان','ئەشمە يىمە','يوپۇرغا',NULL,NULL,NULL,NULL,NULL,NULL),(36,'N03E02A01E','ئەزىزقارى',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(37,'N03E02A02A','ئامىنەگۈل',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(38,'N03E02A03E','ئاۋۇتجان',_binary '',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(39,'N03E02A04E','ئابدۇراخمان',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(40,'N03E02A05E','ئۆمەر',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(41,'N03E02A06E','ئابدىلھىمىد',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(42,'N03E03E','ئوبۇلھاشىم',_binary '\0',_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','','0','','ئىمىن قارى',NULL,'Y03A','ئەپرۇزىخان','يوپۇرغا','يوپۇرغا','','2019-09-19 10:43:49\r\nيازغۇچى ئىسىمى:\r\nئەنۋەر Anwar：\r\nدادام ئۈرۈمچى زۇمرەت سۇ گۈللۈكى دىكى ئۆيىدە 2018.10.05 (جۈممە) كۈنى چۈش ۋاقتى ، مۇنچىدىن چىقىپ يۇشۇرۇن يۈرەك كىسىلى بىلەن ئالەمدىن ئۆتكەن. ئۇ گۈزەل ئەخلاقلىق ، مىھرىبان ، تۇققانچى، ھەق ناھەق قارىشى ئېنىق ، ئىلىم مەرىپەتنى سۆيىدىغان، مۇھەببەت نەپرىتى ئېنىق ، كەسكىن، قورقۇمسىز ئادەم ئىدى. ئۆڭى قارا، تۇرقى سۈرلۈك، قەلبى گۈزەل ئادەم.','',65,NULL,NULL),(43,'N03E03E01E','ئەنۋەر',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(44,'N03E03E01E01A','ساھىبە',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'N03E03E01E02E','ئابدۇللاھ',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'N03E03E02E','ئابدۇلئەكبەر',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(102,'N03E03E02E01E','ئەردەم',NULL,_binary '','0000-00-00 00:00:00','0000-00-00 00:00:00','','',NULL,'','',NULL,'','','','','','','',0,NULL,NULL),(47,'N03E03E03A','دىلبەر',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(48,'N03E03E03A01A','دىلئۇز',_binary '\0',NULL,NULL,NULL,'','','0','','',NULL,'','','','','','','',NULL,NULL,NULL),(69,'N03E03E03A02E','ئوغۇز',NULL,NULL,NULL,NULL,'','',NULL,'','',NULL,'','','','','','','',NULL,NULL,NULL),(49,'N03E03E04E','ئەختەر',_binary '\0',NULL,'1986-04-28 00:00:00','0000-04-28 00:00:00','','راھىلەخالىدىن','0','','ئوبۇلھاشىم',NULL,'','ئاتىكەم','يوپۇرغا','جۇڭگو جېجىياڭ يىۋۇ','18868574477','ھاياتتا ياشاۋاتىدۇ','',32,NULL,NULL),(50,'N03E03E04E01E','ئىمران',_binary '\0',_binary '','2014-02-22 01:01:01','0000-00-00 00:00:00','','يوق','0','','ئەختەر',NULL,'','راھىلە','ئۈرۈمچى','جۇڭگو جېجياڭ','18868574477','شوخ بالا، ئىمران بالا، يۈگرۈك بالا، تىرشچان بالا. 4 يشىدا ۋېلسىپىت مىنىشنى ئۆگىنىۋالغان بالا. نوچى بالا،تېلۋىزور(كومپىيوتىردا)كۆرىدىغان بالا، تاپشۇرۇق ئىشلەيدىغان بالا، ئۆيگە كىرىدىغان بالا، تىلۋىزورنىڭ ئىچىگە كىرىدىغان بالا،لىفىتكە كىرگەن بالا ----بۇلار ئىمراننىڭ ئۆزىگە باھاسى.','',4,NULL,NULL),(68,'N03E03E04E02A','ئاسۇدە',_binary '\0',NULL,NULL,NULL,'','','0','','ئەختەر',NULL,'','','ئۈرۈمچى','','','خۇما كۆزلۈك شەھلا كۆزلۈك.','',2,NULL,NULL),(51,'N03E03E05A','مەرھابا',_binary '\0',_binary '','1987-05-27 00:00:00','0000-00-00 00:00:00','','ئابدۇكېرەمجان 1987-04-28','0','','',NULL,'','','','','','','',0,NULL,NULL),(52,'N03E03E05A01A','مۇنىسە',_binary '\0',_binary '','2013-05-20 00:00:00','0000-00-00 00:00:00','','','0','','',NULL,'','','','','',' جىڭيۆۋەن يەسلىسىدە ئوقۇيدۇ،中一班 ','',0,NULL,NULL),(106,'N03E03E05A02A','مۇھسىنە',NULL,_binary '','2015-07-06 00:00:00','0000-00-00 00:00:00','','',NULL,'','',NULL,'','','','','','','',0,NULL,NULL),(107,'N03E03E05A03E','زۇبەير',NULL,_binary '','2017-09-12 00:00:00','0000-00-00 00:00:00','','',NULL,'','',NULL,'','','','','','','',0,NULL,NULL),(53,'N03E04E','ئابدۇلقېيۇم',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'Y03A','ئەپرۇزىخان','يوپۇرغا','يوپۇرغا',NULL,NULL,NULL,NULL,NULL,NULL),(54,'N03E04E01A','دىلدار',_binary '',_binary '','1988-09-21 00:00:00','0000-00-00 00:00:00','','','0','','',NULL,'','','','','','','',0,NULL,NULL),(55,'N03E04E02E','فەرۇق',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'N03E04E03E','مىسران',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'N03E04E04A','سۇلبىيە',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'N03E05A','بۈۋىمەريەم',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,'Y03A','ئەپرۇزىخان','يوپۇرغا','يوپۇرغا',NULL,NULL,NULL,NULL,NULL,NULL),(59,'N03E05A01E','ئەھمەت',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'N04A','سائادەتخان',_binary '',_binary '\0',NULL,NULL,NULL,NULL,'0','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL),(61,'N04A01A','مېھىرنىساخان',_binary '',NULL,NULL,NULL,NULL,'ئەھمەت(قارىبەگ تۇققىنى خۇداقۇل ئەۋلادى)','0',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'N04A02E','ئابدۇلقېيۇم',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا',NULL,NULL,NULL,NULL,NULL,NULL),(63,'N04A03E','ئابدۇلكېرەم',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'سېرىقۇي',NULL,NULL,NULL,NULL,NULL,NULL),(64,'N04A04A','تاينىساخان',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'سېرىقۇي',NULL,NULL,NULL,NULL,NULL,NULL),(65,'N04A05A','خەيرىگۈل',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'سېرىقۇي',NULL,NULL,NULL,NULL,NULL,NULL),(66,'N04A06E','ئابدۇراخمان',_binary '\0',NULL,NULL,NULL,NULL,NULL,'0',NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `NUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `P_KOLDO`
--

DROP TABLE IF EXISTS `P_KOLDO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `P_KOLDO` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) CHARACTER SET utf8 NOT NULL,
  `isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `p_isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `waqit` datetime DEFAULT NULL,
  `pikir` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `adris` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `P_KOLDO`
--

LOCK TABLES `P_KOLDO` WRITE;
/*!40000 ALTER TABLE `P_KOLDO` DISABLE KEYS */;
INSERT INTO `P_KOLDO` VALUES (1,'K','زۇنۇن','ئەختەر','18868574477','ahtaria@hotmail.com',NULL,'بۇ پىكىر دەپتىرى. قېرىنداشلىرىمنىڭ مۇشۇ پىكىر دەپتىرى ئارقىلىق شەخىسلەر توغرۇلۇق ئۇچۇرلارنى تولۇقلىشىمغا ياردەم قىلىشىنى سورايمەن. كۆپچىلىكنىڭ تىرىشچانلىقى بولمىسا، بىرجەمەتنىڭ ئۇچۇرىنى يىغىش مەن بىر ئادەمنىڭ قولىدىن كەلمەيدۇ.','يىۋۇ');
/*!40000 ALTER TABLE `P_KOLDO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `P_NUR`
--

DROP TABLE IF EXISTS `P_NUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `P_NUR` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) CHARACTER SET utf8 NOT NULL,
  `isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `p_isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `waqit` datetime DEFAULT NULL COMMENT '	',
  `pikir` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `adris` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `P_NUR`
--

LOCK TABLES `P_NUR` WRITE;
/*!40000 ALTER TABLE `P_NUR` DISABLE KEYS */;
INSERT INTO `P_NUR` VALUES (29,'N03E03E04E','ئەختەر','ئەختەر','','',NULL,'لاھىيە پىلانى: 1.پىكىردەپتىرىنى كەڭەيتىش-- يازغۇچى ئۇچۇرىنى ئەسكەرتىش ۋە شەخىس ئۇچۇرىنىمۇ ئەسكەرتىش. 2.شەخىس ئۇچۇرۇنى قوشۇش، ئۆزگەرتىش، ئۆچۈرۈش',''),(30,'N03E03E','ئوبۇلھاشىم','ئەنۋەر Anwar','','','2019-09-19 10:43:49','دادام ئۈرۈمچى زۇمرەت سۇ گۈللۈكى دىكى ئۆيىدە 2018.10.05 (جۈممە) كۈنى چۈش ۋاقتى ، مۇنچىدىن چىقىپ يۇشۇرۇن يۈرەك كىسىلى بىلەن ئالەمدىن ئۆتكەن.\r\nئۇ گۈزەل ئەخلاقلىق ، مىھرىبان ، تۇققانچى، ھەق ناھەق قارىشى ئېنىق ، ئىلىم مەرىپەتنى سۆيىدىغان، مۇھەببەت نەپرىتى ئېنىق ، كەسكىن، قورقۇمسىز ئادەم ئىدى.\r\n   ئۆڭى قارا، تۇرقى سۈرلۈك، قەلبى گۈزەل ئادەم.',''),(31,'N03E03E04E','ئەختەر','ئەختەر','','','2019-11-06 13:53:41','بىزدەك ئەخلەت چاۋالار، ھەر يەردە.\r\nئېسىل ئېسىل سۆگەتلەر، قەپەزلەردە.','يىۋۇ');
/*!40000 ALTER TABLE `P_NUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `P_YUNUS`
--

DROP TABLE IF EXISTS `P_YUNUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `P_YUNUS` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) CHARACTER SET utf8 NOT NULL,
  `isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `p_isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `waqit` datetime DEFAULT NULL,
  `pikir` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `adris` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `P_YUNUS`
--

LOCK TABLES `P_YUNUS` WRITE;
/*!40000 ALTER TABLE `P_YUNUS` DISABLE KEYS */;
INSERT INTO `P_YUNUS` VALUES (1,'Y','يۇنۇس','ئەختەر','18868574477','ahtaria@hotmail.com',NULL,'بۇ پىكىر دەپتىرى. قېرىنداشلىرىمنىڭ مۇشۇ پىكىر دەپتىرى ئارقىلىق شەخىسلەر توغرۇلۇق ئۇچۇرلارنى تولۇقلىشىمغا ياردەم قىلىشىنى سورايمەن. كۆپچىلىكنىڭ تىرىشچانلىقى بولمىسا، بىرجەمەتنىڭ ئۇچۇرىنى يىغىش مەن بىر ئادەمنىڭ قولىدىن كەلمەيدۇ.','يىۋۇ'),(2,'Y03A','ئەپرۇزىخان','ئەنۋەر ئوبۇلھاشىم','','','2019-09-19 10:02:51','ئەۋلادى ئوبۇلھاشىم ئىمىن، بۇۋمەريەم ئىمىن ۋە ئابدۇقېييۇم ئىمىن','');
/*!40000 ALTER TABLE `P_YUNUS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TRASH`
--

DROP TABLE IF EXISTS `TRASH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRASH` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) CHARACTER SET utf8 NOT NULL,
  `isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `hayat` bit(1) DEFAULT NULL,
  `jinsi` bit(1) DEFAULT NULL,
  `mewlut` datetime DEFAULT NULL,
  `wapati` datetime DEFAULT NULL,
  `jupti_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `jupti` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ataJemedKodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ata_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ata` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `anaJemedKodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ana_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ana` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `yurti` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `adrisi` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `hayati` longtext CHARACTER SET utf8,
  `resim` text CHARACTER SET utf8,
  `yeshi` int(11) DEFAULT NULL,
  `jemedKodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ejdadKodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TRASH`
--

LOCK TABLES `TRASH` WRITE;
/*!40000 ALTER TABLE `TRASH` DISABLE KEYS */;
INSERT INTO `TRASH` VALUES (104,'N03E03E04E06A01E','بالا',NULL,_binary '\0',NULL,NULL,'','',NULL,'','ئەختەر',NULL,'','','ئۈرۈمچى','','','خۇما كۆزلۈك شەھلا كۆزلۈك.','',2,NULL,NULL);
/*!40000 ALTER TABLE `TRASH` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TSNUR`
--

DROP TABLE IF EXISTS `TSNUR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TSNUR` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) NOT NULL,
  `isim` varchar(45) DEFAULT NULL,
  `jinsi` bit(1) DEFAULT NULL,
  `mewlut` datetime DEFAULT NULL,
  `wapati` datetime DEFAULT NULL,
  `jupti_kodi` varchar(25) DEFAULT NULL,
  `jupti` varchar(45) DEFAULT NULL,
  `ata_kodi` varchar(25) DEFAULT NULL,
  `ata` varchar(45) DEFAULT NULL,
  `ana_kodi` varchar(25) DEFAULT NULL,
  `ana` varchar(45) DEFAULT NULL,
  `yurti` varchar(45) DEFAULT NULL,
  `adrisi` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `hayati` longtext,
  `resim` text,
  `yeshi` int(11) DEFAULT NULL,
  `hayat` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kodi` (`kodi`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TSNUR`
--

LOCK TABLES `TSNUR` WRITE;
/*!40000 ALTER TABLE `TSNUR` DISABLE KEYS */;
INSERT INTO `TSNUR` VALUES (1,'N','نۇر',_binary '','0000-00-00 00:00:00','1953-00-00 00:00:00',NULL,'ھۆرنىساخان(يوپۇرغا); سۇپۇرىخان(يەكشەنبە بازار',NULL,NULL,NULL,NULL,'يوپۇرغا',NULL,NULL,'ئادالەت پەرۋەر، مۇلاھىم ئادەم.  1. ئات مىنىپ ھەج قىلىپ كەلگەن.  2.ھىكايە: بىر ئوغرى نۇرھاجىنىڭ مېلىنى ئوغرلاپ باشلىقىنىڭ ئالدىغا ئېلىپ كەلسە، باشلىقى سورپتۇ. - قايسى نۇرھاجىنىن ئوغرىلىدىڭ؟ - قەدەمجايلىق  -چاتاق قىلىپسەن، ئۇنىڭكىنى ئالساڭ بولمايتتى.ئۇ چوقۇم پىيىڭگە چۈشۈپ بۇ يەرنى تېپىۋالىدۇ. شۇ ھامان تۇڭلىكتىن نۇر ھاجىنىڭ ئاۋازى ئاڭلىنىپتۇ.  - رەھمەت سىلىگە، چەكە ھاجىم.  3. ي1920-يىلى يىپەك يولىدا سودا قىلىپ سۇجۇۋ، بېيجىڭلارغا بارغان ۋە بېيجىڭدا 8 يىل تۇرۇپ قالغان.',NULL,NULL,_binary '\0'),(2,'N01A','ھۆسنىخان',_binary '\0',NULL,NULL,NULL,'ئەھمەت(قارىبەگ تۇققىنى خۇداقۇل ئەۋلادى)','N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(3,'N01A01E','نامەت',NULL,'0000-00-00 00:00:00','0000-00-00 00:00:00',NULL,NULL,NULL,'ئەھمەت(قارىبەگ تۇققىنى خۇداقۇل ئەۋلادى)','N01A','ھۆسنىخان','يەكەن','يەكەن',NULL,'دادىسى ئەھمەتخان خۇدا قۇلى ئەۋلادى قارى بەگنىڭ تۇققىنى',NULL,75,_binary '\0'),(4,'N01A01E01O','مۇھەممەدئىمىن',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يەكەن',NULL,NULL,NULL,NULL,NULL,_binary ''),(5,'N01A01E02Q','پاتەمخان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يەكەن',NULL,NULL,NULL,NULL,NULL,_binary ''),(6,'N01A01E03A','گۈلھەسەلخان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يەكەن','چۆچەك',NULL,NULL,NULL,NULL,_binary ''),(7,'N01A01E03A01A','روشەنگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'چۆچەك',NULL,NULL,NULL,NULL,NULL,_binary ''),(8,'N01A01E03A02A','ئايگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'چۆچەك',NULL,NULL,NULL,NULL,NULL,_binary ''),(9,'N01A01E03A03A','سانىيە',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'چۆچەك',NULL,NULL,NULL,NULL,NULL,_binary ''),(10,'N01A01E03A04A','مەريەم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'چۆچەك','قازاقىستان',NULL,NULL,NULL,NULL,_binary ''),(11,'N01A01E04E','ئابدۇراخمان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يەكەن','يەكەن',NULL,NULL,NULL,NULL,_binary ''),(12,'N01A01E04E01A','گۈلجەننەت',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'N01A01E04E02E','مۇھەممەدتۇرسۇن',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'N01A01E04E03E','نۇرىدىن',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'N01A01E04E04E','تۇرسۇنجان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'N01A01E04E05A','گۈلبەھرەم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'N01A01E05E','ئابدۇلھىمىد',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يەكەن','يەكەن',NULL,NULL,NULL,NULL,_binary ''),(18,'N01A01E05E01A','گۈلبوستان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'N01A01E05E02A','گۈلچىمەن',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئۈرۈمچى',NULL,NULL,NULL,NULL,NULL),(20,'N02A','رازىخان',_binary '\0',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(21,'N02A01A','دۈشەن',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئوبۇل دادامغا تىگىپ تۈگەپ كەتتى(N03E01E).',NULL,NULL,_binary '\0'),(22,'N02A02E','يۈسۈف',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئاشپەز',NULL,NULL,_binary '\0'),(23,'N02A03E','ئابباس',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(24,'N02A04A','گۈلخەلىچە',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(25,'N02A05E','ئاۋۇدۇن',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(26,'N02A06E','تۇرسۇن',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(27,'N02A07A','جەننەت',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(28,'N03E','ئىمىن',_binary '','1899-12-31 00:00:00','1995-01-01 00:00:00',';Y03A;','گۈلھەسەلخان; ئەپرۇزىخان(Y03A); مەنىساخان','N',NULL,NULL,NULL,NULL,NULL,NULL,'دىھقان، تىجارەتچى، ئاشپەز، چاغاتاي يېزىقى ئۆگەنگەن',NULL,95,_binary '\0'),(29,'N03E01E','ئوبۇل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'گۈلھەسەلخان','ئەشمە يىمە','يوپۇرغا',NULL,NULL,NULL,NULL,_binary '\0'),(30,'N03E01E01A','خەيرىگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(31,'N03E01E02A','نۇرگۇل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(32,'N03E01E03E','تۇرسۇنجان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(33,'N03E01E04E','مۇھەممەدئەلى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(34,'N03E01E05A','ھۆرىگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(35,'N03E02A','پاتىگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'گۈلھەسەلخان','ئەشمە يىمە','يوپۇرغا',NULL,NULL,NULL,NULL,_binary ''),(36,'N03E02A01E','ئەزىزقارى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(37,'N03E02A02A','ئامىنەگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(38,'N03E02A03E','ئاۋۇتجان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(39,'N03E02A04E','ئابدۇراخمان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(40,'N03E02A05E','ئۆمەر',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(41,'N03E02A06E','ئابدىلھىمىد',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(42,'N03E03E','ئوبۇلھاشىم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y03A','ئەپرۇزىخان','يوپۇرغا','يوپۇرغا',NULL,NULL,NULL,NULL,_binary ''),(43,'N03E03E01E','ئەنۋەر',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(44,'N03E03E01E01A','ساھىبە',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(45,'N03E03E01E02E','ئابدۇللاھ',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(46,'N03E03E02E','ئابدۇلئەكبەر',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(47,'N03E03E03A','دىلبەر',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(48,'N03E03E03A01A','دىلئۇز',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(49,'N03E03E04E','ئەختەر',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(50,'N03E03E04E01E','ئىمران',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'N03E03E05A','مەرھابا',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(52,'N03E03E05A01A','مۇنىسە',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'N03E04E','ئابدۇلقېيۇم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y03A','ئەپرۇزىخان','يوپۇرغا','يوپۇرغا',NULL,NULL,NULL,NULL,_binary ''),(54,'N03E04E01A','دىلدار',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(55,'N03E04E02E','فەرۇق',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(56,'N03E04E03E','مىسران',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(57,'N03E04E04A','سۇلبىيە',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(58,'N03E05A','بۈۋىمەريەم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Y03A','ئەپرۇزىخان','يوپۇرغا','يوپۇرغا',NULL,NULL,NULL,NULL,_binary ''),(59,'N03E05A01E','ئەھمەت',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary ''),(60,'N04A','سائادەتخان',_binary '\0',NULL,NULL,NULL,NULL,'N',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,_binary '\0'),(61,'N04A01A','مېھىرنىساخان',NULL,NULL,NULL,NULL,'ئەھمەت(قارىبەگ تۇققىنى خۇداقۇل ئەۋلادى)',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,_binary '\0'),(62,'N04A02E','ئابدۇلقېيۇم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا',NULL,NULL,NULL,NULL,_binary ''),(63,'N04A03E','ئابدۇلكېرەم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'سېرىقۇي',NULL,NULL,NULL,NULL,_binary ''),(64,'N04A04A','تاينىساخان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'سېرىقۇي',NULL,NULL,NULL,NULL,_binary ''),(65,'N04A05A','خەيرىگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'سېرىقۇي',NULL,NULL,NULL,NULL,_binary ''),(66,'N04A06E','ئابدۇراخمان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا',NULL,NULL,NULL,NULL,_binary ''),(67,'N01E02A','ahtar01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(69,'N05E','hamis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `TSNUR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `YUNUS`
--

DROP TABLE IF EXISTS `YUNUS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `YUNUS` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kodi` varchar(25) CHARACTER SET utf8 NOT NULL,
  `isim` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `hayat` bit(1) DEFAULT NULL,
  `jinsi` bit(1) DEFAULT NULL,
  `mewlut` datetime DEFAULT NULL,
  `wapati` datetime DEFAULT NULL,
  `jupti_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `jupti` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ata_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ata` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `ana_kodi` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `ana` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `yurti` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `adrisi` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `hayati` longtext CHARACTER SET utf8,
  `resim` text CHARACTER SET utf8,
  `yeshi` int(11) DEFAULT NULL,
  `ataJemedKodi` varchar(25) DEFAULT NULL,
  `anaJemedKodi` varchar(25) DEFAULT NULL,
  `jemedKodi` varchar(25) DEFAULT NULL,
  `ejdadKodi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`kodi`),
  UNIQUE KEY `kodi` (`kodi`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `YUNUS`
--

LOCK TABLES `YUNUS` WRITE;
/*!40000 ALTER TABLE `YUNUS` DISABLE KEYS */;
INSERT INTO `YUNUS` VALUES (1,'Y','يۇنۇس',_binary '',_binary '\0',NULL,NULL,NULL,'مەشۇخان',NULL,NULL,NULL,NULL,'يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','موللا، دېھقان','','موللا، دېھقان',NULL,NULL,NULL,NULL,NULL,NULL),(2,'Y01E','ئابدۇقادىر',_binary '',NULL,'1920-01-01 01:01:01','2010-01-01 01:01:01',NULL,NULL,NULL,NULL,NULL,'مەشۇخان','يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','يوپۇرغا',NULL,'دېھقان، باغۋەن',NULL,90,NULL,NULL,NULL,NULL),(3,'Y01E01E','يۇنۇسقارى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','ئالتاي',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Y01E01E01A','ئاينىسا',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'پاتىگۈل','يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Y01E01E02A','نۇرىمانگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'پاتىگۈل','يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Y01E01E03A','بۇۋىخەلىچەم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'پاتىگۈل','يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'Y01E01E04E','شىرئەلى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئالتاي',NULL,'ئانىسى كۇچالىق',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'Y01E01E05A','گۈلسۇم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئالتاي','ئالتاي','روشەنگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'Y01E01E06A','تاجىگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئالتاي','ئالتاي','روشەنگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'Y01E01E07A','نۇرئەلى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئالتاي','ئالتاي','روشەنگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'Y01E02E','ئابدۇلسەمەد',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','ئالتاي',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'Y01E02E01E','ئەزىزقارى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئالتاي',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'Y01E02E02E','ئابلەخەت',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ئالتاي',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'Y01E03E','ئۆمەرجان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Y01E03E01E','تەۋەككۈلقارى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'Y01E03E02E','مۇھەممەدئەلى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'Y01E03E03A','نامەلۇم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'Y02E','ئابلەخەت',_binary '',NULL,'1921-01-01 01:01:01','1979-01-01 01:01:01',NULL,NULL,NULL,NULL,NULL,'مەشۇخان','يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','يوپۇرغا',NULL,'قاسساپ،تىجارەتچى',NULL,58,NULL,NULL,NULL,NULL),(19,'Y02E01A','تۇرسۇنگۈل',NULL,NULL,NULL,NULL,NULL,'رۇسۇل',NULL,NULL,NULL,NULL,'يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','ئۈرۈمچى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'Y02E01A01A','نامەلۇم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'Y02E01A02A','نامەلۇم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'Y02E01A03A','نامەلۇم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,'Y02E01A04E','ئالىمجان',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,'Y02E02E','ئابدۇلھەكىم',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','ئۈرۈمچى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,'Y02E02E01A','خاسىيەت',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(26,'Y02E02E02E','ئابدۇلقاھار',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(27,'Y02E02E03E','مۇجاھىد',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(28,'Y02E02E04A','سۈمەييە',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(29,'Y02E03A','ئاسىيەگۈل',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','ئۈرۈمچى',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(30,'Y03A','ئەپرۇزىخان',_binary '',NULL,'1933-01-01 01:01:01','1975-01-01 01:01:01','N03E','ئىمىن',NULL,NULL,NULL,'مەشۇخان','يوپۇرغا ئەۋزەلقۇم بىھىش ئېرىق','يوپۇرغا',NULL,'ئۆي ئايالى چاغاتاي يېزىقى ئۆگەنگەن، راك كىسىلى بىلەن ئۆلگەن',NULL,42,NULL,NULL,NULL,NULL),(31,'Y03A01E','ئوبۇلھاشىم',_binary '\0',NULL,NULL,'2018-10-05 00:00:00','N03E','ئاتىگۈل','','','','','يوپۇرغا','يوپۇرغا','','','',66,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `YUNUS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-12 21:44:53
