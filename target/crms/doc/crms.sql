CREATE DATABASE  IF NOT EXISTS `crms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `crms`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: crms
-- ------------------------------------------------------
-- Server version	5.6.17

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
-- Table structure for table `basic_data`
--

DROP TABLE IF EXISTS `basic_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_value` varchar(45) DEFAULT NULL,
  `name` varchar(4000) DEFAULT NULL,
  `parent_value` varchar(45) DEFAULT NULL,
  `parent_name` varchar(4000) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_data`
--

LOCK TABLES `basic_data` WRITE;
/*!40000 ALTER TABLE `basic_data` DISABLE KEYS */;
INSERT INTO `basic_data` VALUES (1,'100101','开发失败','客户销售状态','1001','2018-11-07 08:56:37'),(2,'100102','开发成功','客户销售状态','1001','2018-11-07 08:56:37'),(3,'100103','未分配','销售机会状态','1001','2018-11-07 08:56:37'),(4,'100104','已指派','销售机会状态','1001','2018-11-07 08:56:37'),(5,'100301','北京市','地区','1003','2018-11-07 08:56:37'),(6,'100302','天津市','地区','1003','2018-11-07 08:56:37'),(7,'100303','上海市','地区','1003','2018-11-07 08:56:37'),(8,'100304','重庆市','地区','1003','2018-11-07 08:56:37'),(9,'100305','河北省','地区','1003','2018-11-07 08:56:37'),(10,'100306','山西省','地区','1003','2018-11-07 08:56:37'),(11,'100307','辽宁省','地区','1003','2018-11-07 08:56:37'),(12,'100308','吉林省','地区','1003','2018-11-07 08:56:37'),(13,'100309','黑龙江省','地区','1003','2018-11-07 08:56:37'),(14,'100310','江苏省','地区','1003','2018-11-07 08:56:37'),(15,'100311','浙江省','地区','1003','2018-11-07 08:56:37'),(16,'100312','安徽省','地区','1003','2018-11-07 08:56:37'),(17,'100313','福建省','地区','1003','2018-11-07 08:56:37'),(18,'100314','江西省','地区','1003','2018-11-07 08:56:37'),(19,'100315','山东省','地区','1003','2018-11-07 08:56:37'),(20,'100316','河南省','地区','1003','2018-11-07 08:56:37'),(21,'100317','湖北省','地区','1003','2018-11-07 08:56:37'),(22,'100318','湖南省','地区','1003','2018-11-07 08:56:37'),(23,'100319','广东省','地区','1003','2018-11-07 08:56:37'),(24,'100320','海南省','地区','1003','2018-11-07 08:56:37'),(25,'100321','四川省','地区','1003','2018-11-07 08:56:37'),(26,'100322','贵州省','地区','1003','2018-11-07 08:56:37'),(27,'100323','云南省','地区','1003','2018-11-07 08:56:37'),(28,'100324','陕西省','地区','1003','2018-11-07 08:56:37'),(29,'100325','甘肃省','地区','1003','2018-11-07 08:56:37'),(30,'100326','青海省','地区','1003','2018-11-07 08:56:37'),(31,'100327','台湾省','地区','1003','2018-11-07 08:56:37'),(32,'100328','内蒙古自治区','地区','1003','2018-11-07 08:56:37'),(33,'100329','广西壮族自治区','地区','1003','2018-11-07 08:56:37'),(34,'100330','西藏自治区','地区','1003','2018-11-07 08:56:37'),(35,'100331','宁夏回族自治区','地区','1003','2018-11-07 08:56:37'),(36,'100332','新疆维吾尔自治区','地区','1003','2018-11-07 08:56:37'),(37,'100333','香港特别行政区','地区','1003','2018-11-07 08:56:37'),(38,'100334','澳门特别行政区','地区','1003','2018-11-07 08:56:37'),(39,'100401','关键客户（A类客户）','客户等级','1004','2018-11-07 08:56:37'),(40,'100402','主要客户（B类客户）','客户等级','1004','2018-11-07 08:56:37'),(41,'100403','普通客户（C类客户）','客户等级','1004','2018-11-07 08:56:37'),(42,'100501','★☆☆☆☆','客户满意度','1005','2018-11-07 08:56:37'),(43,'100502','★★☆☆☆','客户满意度','1005','2018-11-07 08:56:37'),(44,'100503','★★★☆☆','客户满意度','1005','2018-11-07 08:56:37'),(45,'100504','★★★★☆','客户满意度','1005','2018-11-07 08:56:37'),(46,'100505','★★★★★','客户满意度','1005','2018-11-07 08:56:37'),(47,'100506','☆☆☆☆☆','客户满意度','1005','2018-11-07 08:56:37'),(48,'100601','★☆☆☆☆','客户信用度','1006','2018-11-07 08:56:37'),(49,'100602','★★☆☆☆','客户信用度','1006','2018-11-07 08:56:37'),(50,'100603','★★★☆☆','客户信用度','1006','2018-11-07 08:56:37'),(51,'100604','★★★★☆','客户信用度','1006','2018-11-07 08:56:37'),(52,'100605','★★★★★','客户信用度','1006','2018-11-07 08:56:37'),(53,'100606','☆☆☆☆☆','客户信用度','1006','2018-11-07 08:56:37'),(54,'100701','未回款','订单状态','1007','2018-11-07 08:56:37'),(55,'100702','已回款','订单状态','1007','2018-11-07 08:56:37'),(56,'100801','暂缓流失','客户流失管理状态','1008','2018-11-07 08:56:37'),(57,'100802','确认流失','客户流失管理状态','1008','2018-11-07 08:56:37'),(58,'100901','咨询','服务类型','1009','2018-11-07 08:56:37'),(59,'100902','建议','服务类型','1009','2018-11-07 08:56:37'),(60,'100903','投诉','服务类型','1009','2018-11-07 08:56:37'),(61,'101001','新创建','服务状态','1010','2018-11-07 08:56:37'),(62,'101002','已处理','服务状态','1010','2018-11-07 08:56:37'),(63,'101003','已归档','服务状态','1010','2018-11-07 08:56:37'),(64,'101004','已分配','服务状态','1010','2018-11-07 08:56:37'),(65,'101101','按等级','报表方式','1011','2018-11-07 08:56:37'),(66,'101201','2000','年份','1012','2018-11-07 08:56:37'),(67,'101202','2001','年份','1012','2018-11-07 08:56:37'),(68,'101203','2002','年份','1012','2018-11-07 08:56:37'),(69,'101204','2003','年份','1012','2018-11-07 08:56:37'),(70,'101205','2004','年份','1012','2018-11-07 08:56:37'),(71,'101206','2005','年份','1012','2018-11-07 08:56:37'),(72,'101207','2006','年份','1012','2018-11-07 08:56:37'),(73,'101208','2007','年份','1012','2018-11-07 08:56:37'),(74,'101209','2008','年份','1012','2018-11-07 08:56:37'),(75,'101210','2009','年份','1012','2018-11-07 08:56:37'),(76,'101211','2010','年份','1012','2018-11-07 08:56:37'),(77,'101212','2011','年份','1012','2018-11-07 08:56:37'),(78,'101213','2012','年份','1012','2018-11-07 08:56:37'),(79,'101214','2013','年份','1012','2018-11-07 08:56:37'),(80,'101215','2014','年份','1012','2018-11-07 08:56:37'),(81,'101216','2015','年份','1012','2018-11-07 08:56:37'),(82,'101217','2016','年份','1012','2018-11-07 08:56:37'),(83,'101218','2017','年份','1012','2018-11-07 08:56:37'),(84,'101219','2018','年份','1012','2018-11-07 08:56:37'),(85,'101220','2019','年份','1012','2018-11-07 08:56:37'),(86,'101301','刘碧霞','指派人员（客户经理）','1013','2018-11-07 08:56:37'),(87,'101302','谢婉宜','指派人员（客户经理）','1013','2018-11-07 08:56:37'),(88,'101303','赵海燕','指派人员（客户经理）','1013','2018-11-07 08:56:37'),(89,'101304','梁思萍','指派人员（客户经理）','1013','2018-11-07 08:56:37'),(90,'101305','潘秀媚','指派人员（客户经理）','1013','2018-11-07 08:56:37'),(91,'101306','陈海格','指派人员（客户经理）','1013','2018-11-07 08:56:37'),(92,'101102','按数量','报表方式','1011','2018-11-29 18:36:55');
/*!40000 ALTER TABLE `basic_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_contact`
--

DROP TABLE IF EXISTS `customer_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `job` varchar(32) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `customer_id` int(64) DEFAULT NULL,
  `founder` varchar(100) DEFAULT NULL,
  `found_id` int(100) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_contact`
--

LOCK TABLES `customer_contact` WRITE;
/*!40000 ALTER TABLE `customer_contact` DISABLE KEYS */;
INSERT INTO `customer_contact` VALUES (1,'张本河','男','财务助理','696859','17158945258','8月上任',1,NULL,NULL,'2018-11-30 07:23:42'),(7,'李寒冰','女','董事秘书','698523','18789645369','',4,NULL,NULL,'2018-11-27 03:23:22'),(9,'林青霞','女','财务专员','695586','15968448789','12月离职',2,NULL,NULL,'2018-11-27 05:30:50'),(10,'包青海','男','客户经理','656668','18456789123','11月上任',3,NULL,NULL,'2018-11-27 05:42:55'),(16,'刘若英','女','项目总监','696699','15897776986','',3,NULL,NULL,'2018-11-28 00:52:27'),(18,'彭丽薇','女','客户经理','698896','13189777869','',5,NULL,NULL,'2018-11-28 00:59:01'),(40,'龙泉彩','女','客户助理','678892','13659997865','休假中',3,NULL,NULL,'2018-11-30 02:41:27'),(51,'秋微星','女','董事助理','696858','18124785698','去年5月上任',1,NULL,NULL,'2018-12-05 05:53:26'),(52,'邱浓','男','客户经理','696859','18124789658','',4,NULL,NULL,'2018-12-05 06:34:12'),(53,'张慧雯','女','客户经理','696859','18727777898','',1,NULL,NULL,'2018-12-06 01:11:16');
/*!40000 ALTER TABLE `customer_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_info`
--

DROP TABLE IF EXISTS `customer_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_info` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(25) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `customer_mgr` varchar(64) DEFAULT NULL,
  `customer_mgr_id` int(64) DEFAULT NULL,
  `customer_grade` varchar(64) DEFAULT NULL,
  `customer_satisfaction` varchar(64) DEFAULT NULL,
  `customer_credit` varchar(64) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `postal_code` int(10) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `fax` varchar(11) DEFAULT NULL,
  `ulr` varchar(32) DEFAULT NULL,
  `business_license` varchar(64) DEFAULT NULL,
  `juridical_person` varchar(64) DEFAULT NULL,
  `registered_capital` decimal(8,2) DEFAULT NULL,
  `annual_sales` decimal(8,2) DEFAULT NULL,
  `deposit_bank` varchar(64) DEFAULT NULL,
  `bank_account` varchar(32) DEFAULT NULL,
  `land_tax_code` varchar(32) DEFAULT NULL,
  `central_tax` varchar(32) DEFAULT NULL,
  `founder` varchar(100) DEFAULT NULL,
  `found_id` int(100) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_info`
--

LOCK TABLES `customer_info` WRITE;
/*!40000 ALTER TABLE `customer_info` DISABLE KEYS */;
INSERT INTO `customer_info` VALUES (1,'广州攀科技网络公司','江西省','刘碧霞',NULL,'关键客户（A类客户）','★★★★★','★★★★★','广州海珠区',123456,'18127355894','123456','123','5364463435','程飞虎',12.90,300.00,'工商银行','6951158122658946512','','147258',NULL,NULL,'2018-01-30 02:23:55'),(2,'秋浓网络科技公司','湖南省','赵海燕',NULL,'主要客户（B类客户）','★★★☆☆','★★★★★','广州白云区',654321,'18127355894','123456','123','5364789456','张雪丽',15.00,1500.00,'农业银行','15874296312345698533','789456','157985',NULL,NULL,'2018-01-30 02:23:12'),(3,'广东咫尺网络科技公司','香港特别行政区','谢婉宜',NULL,'主要客户（B类客户）','★★★☆☆','★★★★☆','深圳南山区',525001,'18745875858','65686955','http://www.gdpa.edu.cn/','','陈俊良',126.00,250.00,'建设银行','45879548745681226124556','','',NULL,NULL,'2018-12-05 07:54:56'),(4,'土巴兔平台','青海省','陈海格',NULL,'关键客户（A类客户）','★★★☆☆','★★★★☆','深圳南山区高新区',505100,'17854778748','686958','http://www.gdpa.edu.cn/','','王国兵',222.00,400.00,'农业银行','61225845612254956966','','',NULL,NULL,'2018-12-05 07:54:56'),(5,'迅策科技','广东省','梁思萍',NULL,'普通客户（C类客户）','★★★★☆','★★★☆☆','深圳龙华区',502000,'15877756981','686569','http://www.gdpa.edu.cn/','','刘志坚',150.00,NULL,'农业银行','6122645871225456866956','','',NULL,NULL,'2018-12-05 07:54:56'),(6,'链家网科技有限公司','北京市','梁思萍',NULL,'关键客户（A类客户）','★★★★☆','★★★★☆','北京海定区',500000,'17668955986','646695','http://www.gdpa.edu.cn/','','彭永东',NULL,NULL,'工商银行','6212260759255445890759','','',NULL,NULL,'2018-12-05 07:54:56'),(7,'优诺科技有限公司','陕西省','潘秀媚',NULL,'主要客户（B类客户）','★★★☆☆','★★★★☆','沈阳铁西区',585200,'18754986589','633956','http://www.gdpa.edu.cn/','','包信',15.00,60.00,'交通银行','658999685985589456','','',NULL,NULL,'2018-12-05 07:54:56'),(8,'东华科技公司',NULL,'张先生',NULL,NULL,NULL,NULL,NULL,NULL,'13803034966',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-06 06:56:04'),(9,'168科技有限公司',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-06 14:08:54'),(10,'北京医疗公司',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-06 14:08:54'),(11,'广州传智科技公司',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-06 14:08:54'),(12,'资源科技公司',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-12-06 14:08:54');
/*!40000 ALTER TABLE `customer_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_loss`
--

DROP TABLE IF EXISTS `customer_loss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_loss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(64) DEFAULT NULL,
  `customer_mgr` varchar(64) DEFAULT NULL,
  `customer_id` int(64) DEFAULT NULL,
  `last_order_time` timestamp NULL DEFAULT NULL,
  `pause_way` varchar(100) DEFAULT NULL,
  `add_pause_way` varchar(100) DEFAULT NULL,
  `loss_time` timestamp NULL DEFAULT NULL,
  `loss_reason` varchar(300) DEFAULT NULL,
  `statuss` int(2) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `FK_customer_oss_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_loss`
--

LOCK TABLES `customer_loss` WRITE;
/*!40000 ALTER TABLE `customer_loss` DISABLE KEYS */;
INSERT INTO `customer_loss` VALUES (51,'攀科技网络公司','刘碧霞',1,'2017-10-30 05:29:35',NULL,NULL,NULL,'',0),(52,'秋浓网络科技公司','赵海燕',2,'2018-05-30 05:29:35',NULL,NULL,'2018-12-06 07:08:41','操作失败',1),(53,'资源科技公司','赵海燕',12,'2018-05-30 05:29:35',NULL,NULL,NULL,'操作失败',1),(54,'广州传智科技公司','梁思萍',11,'2018-12-06 07:08:41',NULL,NULL,NULL,'操作失败',1),(55,'北京医疗公司','潘秀媚',10,'2017-10-30 05:29:35',NULL,NULL,NULL,'操作失败',1),(56,'168科技有限公司','刘碧霞',9,'2017-10-30 05:29:35',NULL,NULL,NULL,'操作失败',1);
/*!40000 ALTER TABLE `customer_loss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `draw_plan`
--

DROP TABLE IF EXISTS `draw_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draw_plan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opportunity_id` int(64) DEFAULT NULL,
  `plan_item` varchar(300) DEFAULT NULL,
  `result` varchar(4000) DEFAULT NULL,
  `founder` varchar(100) DEFAULT NULL,
  `found_id` int(100) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `FK_draw_plan_opportunity_id_idx` (`opportunity_id`),
  CONSTRAINT `FK_draw_plan_opportunity_id` FOREIGN KEY (`opportunity_id`) REFERENCES `sales_opportunity` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draw_plan`
--

LOCK TABLES `draw_plan` WRITE;
/*!40000 ALTER TABLE `draw_plan` DISABLE KEYS */;
INSERT INTO `draw_plan` VALUES (67,19,'介绍企业','介绍企业的历史及涉及领域等','陈海格',2,'2018-12-06 02:31:02'),(68,19,'介绍管理软件','介绍公司已研发出的一系列软件等','陈海格',2,'2018-12-06 02:31:20'),(69,19,'满足客户要求','根据客户公司要求提供需求','陈海格',2,'2018-12-06 02:31:50'),(70,30,'核实客户需求','根据需求推荐电脑','陈海格',2,'2018-12-06 06:20:20');
/*!40000 ALTER TABLE `draw_plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT NULL,
  `order_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deliver_goods` varchar(300) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `customer_id` int(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_history`
--

LOCK TABLES `order_history` WRITE;
/*!40000 ALTER TABLE `order_history` DISABLE KEYS */;
INSERT INTO `order_history` VALUES (1,1,'2017-10-30 05:29:35','广州','已回款',1),(2,2,'2014-11-30 05:29:35','深圳','已回款',1),(3,3,'2018-05-30 05:29:35','广州','未回款',2),(4,2,'2016-11-30 05:35:21','茂名','已回款',2),(5,1,'2018-01-30 05:35:21','湛江','已回款',2),(6,2,'2014-11-30 05:29:35','广州','已回款',3),(7,5,'2018-01-30 05:35:21','珠海','未回款',4),(8,1,'2017-10-30 05:29:35','茂名','已回款',5),(9,4,'2014-11-30 05:29:35','北京','已回款',6),(10,5,'2017-10-30 05:29:35','上海','未回款',7),(11,5,'2018-01-30 05:35:21','珠海','未回款',5);
/*!40000 ALTER TABLE `order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_info`
--

DROP TABLE IF EXISTS `order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(64) DEFAULT NULL,
  `product_name` varchar(200) DEFAULT NULL,
  `num` int(6) DEFAULT NULL,
  `units` varchar(6) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `money` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_info_order_id` (`order_id`),
  CONSTRAINT `FK_order_info_order_id` FOREIGN KEY (`order_id`) REFERENCES `order_history` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_info`
--

LOCK TABLES `order_info` WRITE;
/*!40000 ALTER TABLE `order_info` DISABLE KEYS */;
INSERT INTO `order_info` VALUES (1,1,'电脑',5,'台',656.00,3280.00),(2,1,'笔记本',5,'台',122.00,610.00),(3,2,'VR眼镜',4,'台',454.00,1816.00),(4,1,'苹果手机',2,'台',5655.00,11310.00),(5,3,'苹果电脑',5,'台',56456.00,282280.00),(11,4,'鼠标',2,'只',454.00,908.00),(12,5,'耳机',5,'只',554.00,2770.00),(13,6,'空调',4,'台',6569.00,26276.00),(14,7,'路由器',8,'台',545.00,4360.00),(15,8,'智能遥控',6,'台',551.00,3324.00),(16,9,'吹风机',5,'只',99.00,495.00),(17,10,'笔记本',4,'台',4548.00,18192.00),(18,11,'热水壶',9,'台',656.00,5904.00),(19,NULL,'手提电脑',10,'台',9894.00,98940.00);
/*!40000 ALTER TABLE `order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `record_info`
--

DROP TABLE IF EXISTS `record_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `record_info` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `place` varchar(100) DEFAULT NULL,
  `outline` varchar(200) DEFAULT NULL,
  `detailed_info` varchar(300) DEFAULT NULL,
  `remarks` varchar(300) DEFAULT NULL,
  `contact_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `customer_id` int(54) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FK_record_info_customer_id` (`customer_id`),
  CONSTRAINT `FK_record_info_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `record_info`
--

LOCK TABLES `record_info` WRITE;
/*!40000 ALTER TABLE `record_info` DISABLE KEYS */;
INSERT INTO `record_info` VALUES (1,'广州','概要1','详情16','无','2018-11-30 05:31:54',1),(2,'深圳','概要2','详情2','无','2018-11-30 05:31:54',1),(3,'广州','概要3','详情3','无','2018-11-30 05:33:43',2),(4,'云浮','概要4','详情4','无','2018-11-30 05:33:43',2),(5,'广州','概要5','详情5','无','2018-11-30 05:33:43',1),(6,'江门','概要6','详情6','无','2018-11-30 05:33:43',2),(7,'茂名','概要7','详情7','无','2018-11-30 05:33:43',1),(8,'湛江','概要8','详情8','无','2018-11-30 05:33:43',1),(9,'河南','概要9','详情9','无','2018-11-30 05:33:43',2),(10,'湖北','概要10','详情10','无','2018-11-30 05:33:43',2),(11,'广州海珠区','概要1','详细','备注','2018-12-06 01:02:17',3),(12,'广州黄埔区','概要2','详细3','备注2','2018-12-06 01:02:51',3),(13,'深圳南山区','概要1','详细1','备注1','2018-12-06 01:03:49',4),(14,'深圳罗岗区','概要1','详细','备注','2018-12-06 01:04:33',5);
/*!40000 ALTER TABLE `record_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_opportunity`
--

DROP TABLE IF EXISTS `sales_opportunity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_opportunity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opportunity_source` varchar(100) DEFAULT NULL,
  `name` varchar(25) DEFAULT NULL,
  `success_probability` varchar(10) DEFAULT NULL,
  `outline` varchar(500) DEFAULT NULL,
  `contacts` varchar(64) DEFAULT NULL,
  `contacts_id` int(65) DEFAULT NULL,
  `contacts_tel` varchar(40) DEFAULT NULL,
  `opportunity_desc` varchar(500) DEFAULT NULL,
  `assign_id` int(64) DEFAULT NULL,
  `assign_name` varchar(64) DEFAULT NULL,
  `found_id` int(100) DEFAULT NULL,
  `found_name` varchar(100) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(45) NOT NULL DEFAULT '未分配',
  `assign_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_opportunity`
--

LOCK TABLES `sales_opportunity` WRITE;
/*!40000 ALTER TABLE `sales_opportunity` DISABLE KEYS */;
INSERT INTO `sales_opportunity` VALUES (19,'网络','东华科技公司','80%','购买企业管理软件','张先生',NULL,'13803034966','有意向购买',NULL,'陈海格',NULL,'谢婉宜','2018-12-06 01:18:55','开发成功','2018-12-06 02:29:31'),(22,'网络','赛义科技有限公司','100%','购买企业管理系统','林先生',NULL,'16904940522','有意向购买',NULL,NULL,NULL,'陈海格','2018-12-06 01:26:19','未分配',NULL),(23,'网络','三七互娱公司','100%','购买电脑','陈先生',NULL,'16983737506','有意向购买',NULL,NULL,NULL,'陈海格','2018-12-06 01:27:32','未分配',NULL),(24,'网络','千牛科技公司','100%','购买笔记本电脑','赵先生',NULL,'14805850522','有意向购买，资金充足',NULL,NULL,NULL,'陈海格','2018-12-06 01:29:02','未分配',NULL),(25,'网络','阿里巴巴','100%','购买笔记本电脑','赵先生',NULL,'14843490522','有意向购买',NULL,NULL,NULL,'陈海格','2018-12-06 01:30:11','未分配',NULL),(26,'网络','阿里云科技','90%','购买台式电脑','梁先生',NULL,'13543480655','资金充足',NULL,NULL,NULL,'赵海燕','2018-12-06 01:32:06','未分配',NULL),(27,'网络','千游科技公司','90%','购买笔记本电脑','刘先生',NULL,'15915268506','有意向购买',NULL,NULL,NULL,'梁思萍','2018-12-06 01:39:15','未分配',NULL),(28,'线下','志华科技有限公司','100%','购买台式电脑','邓先生',NULL,'14793568506','有意向购买',NULL,NULL,NULL,'刘碧霞','2018-12-06 01:50:19','未分配',NULL),(29,'网络','腾讯科技','90%','购买企业管理系统软件','邝先生',NULL,'15873658506','资金充足',NULL,NULL,NULL,'刘碧霞','2018-12-06 01:52:03','未分配',NULL),(30,'网络','星源材质有限公司','100%','购买电脑','利先生',NULL,'15875498678','有意向购买并且资金充足',NULL,'陈海格',NULL,'谢婉宜','2018-12-06 01:54:18','已指派','2018-12-06 03:18:51'),(31,'网络','建设银行','100%','购买电脑','利小姐',NULL,'15915267594','有意向购买',NULL,NULL,NULL,'谢婉宜','2018-12-06 02:16:14','未分配',NULL),(32,'线下','荣达科技','100%','购买笔记本电脑','李小姐',NULL,'15816598607','有意向购买资金充足',NULL,NULL,NULL,'谢婉宜','2018-12-06 02:17:32','未分配',NULL);
/*!40000 ALTER TABLE `sales_opportunity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_management`
--

DROP TABLE IF EXISTS `service_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_no` int(4) DEFAULT NULL,
  `service_type` varchar(100) DEFAULT NULL,
  `outline` varchar(300) DEFAULT NULL,
  `customer_name` varchar(64) DEFAULT NULL,
  `customer_id` int(64) DEFAULT NULL,
  `statuss` varchar(32) DEFAULT NULL,
  `service_req` varchar(300) DEFAULT NULL,
  `creation_id` int(64) DEFAULT NULL,
  `creation_name` varchar(64) DEFAULT NULL,
  `creation_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `service_no_UNIQUE` (`service_no`),
  KEY `FK_service_ment_customer_id` (`customer_id`),
  CONSTRAINT `FK_service_ment_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer_info` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_management`
--

LOCK TABLES `service_management` WRITE;
/*!40000 ALTER TABLE `service_management` DISABLE KEYS */;
INSERT INTO `service_management` VALUES (4,101,'咨询','项目时长','李经理',1,'已归档','完成项目所需要的时间是多少？',3,'潘秀媚','2018-11-27 16:48:52'),(5,102,'建议','回复慢','张先生',3,'已归档','回复信息速度较慢，希望能提高效率',3,'潘秀媚','2018-11-27 16:59:39'),(6,103,'投诉','服务态度差','黄小姐',2,'已归档','服务人员态度冷淡',3,'潘秀媚','2018-11-27 17:06:03'),(7,104,'咨询','项目费用','李经理',1,'已归档','完成一个项目所需要的经费是多少？',3,'潘秀媚','2018-11-27 17:20:37'),(8,105,'咨询','项目负责人','李经理',1,'已分配','我们公司项目的主要负责人是谁？',3,'潘秀媚','2018-11-28 00:13:50'),(9,106,'建议','上门服务','黄小姐',2,'已处理','希望能提供上门服务',3,'潘秀媚','2018-11-28 17:53:00'),(12,109,'咨询','更改需求','张先生',3,'已分配','项目需要更改需求要找谁',3,'潘秀媚','2018-11-29 23:47:43'),(14,110,'投诉','态度差','张先生',3,'已处理','态度冷漠，回复慢',3,'潘秀媚','2018-12-02 17:09:49'),(18,114,'建议','希望能缩短项目时间','土巴兔平台',4,'新创建','希望能缩短项目时间',3,'潘秀媚','2018-12-03 18:01:06'),(19,115,'投诉','体验效果差','李经理',1,'已处理','服务态度不好，体验效果差',3,'潘秀媚','2018-12-03 18:02:10'),(20,116,'咨询','项目开始时间','李经理',1,'处理不及格','最快什么时候可以开始项目',3,'潘秀媚','2018-12-03 21:59:57'),(23,117,'投诉','服务回应时间长','广东咫尺网络科技公司',3,'新创建','服务回应时间太长，问题不能马上解决，系统崩溃。',2,'陈海格','2018-12-06 06:31:14'),(24,118,'建议','建议服务人员多点','优诺科技有限公司',7,'新创建','建议服务人员多点，回复太慢，联系不到\n',2,'陈海格','2018-12-06 06:34:08'),(25,119,'咨询','了解公司涉及软件','秋浓网络科技公司',2,'已分配','了解公司涉及软件，想加购',2,'陈海格','2018-12-06 06:35:56'),(26,120,'建议','建议改善软件外观','迅策科技',5,'已处理','建议改善软件外观，页面太丑了',2,'陈海格','2018-12-06 06:38:15');
/*!40000 ALTER TABLE `service_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_user_allot`
--

DROP TABLE IF EXISTS `service_user_allot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service_user_allot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `creation_id` int(11) DEFAULT NULL,
  `cllot_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `service_handle` varchar(4000) DEFAULT NULL,
  `handle_id` int(11) DEFAULT NULL,
  `handle_time` timestamp NULL DEFAULT NULL,
  `handle_result` varchar(4000) DEFAULT NULL,
  `satisfaction` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `service_id_idx` (`service_id`),
  CONSTRAINT `service_id` FOREIGN KEY (`service_id`) REFERENCES `service_management` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `system_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_user_allot`
--

LOCK TABLES `service_user_allot` WRITE;
/*!40000 ALTER TABLE `service_user_allot` DISABLE KEYS */;
INSERT INTO `service_user_allot` VALUES (4,9,3,3,'2018-11-29 17:40:40','已提供上门服务',87,'2018-12-03 18:24:38','客户不满意','☆☆☆☆☆'),(11,6,3,3,'2018-11-29 21:48:26','已警告该服务人员，保证改正态度',86,'2018-12-02 17:10:12','已处理','★★★★☆'),(14,7,3,3,'2018-11-29 23:54:40','项目的费用根据具体需求而定',87,'2018-11-29 23:55:55','已处理','★★★★★'),(17,8,3,3,'2018-12-02 17:58:51',NULL,88,NULL,NULL,NULL),(18,NULL,3,3,'2018-12-03 17:42:05',NULL,87,NULL,NULL,NULL),(19,NULL,3,3,'2018-12-03 17:42:46',NULL,87,NULL,NULL,NULL),(21,20,3,3,'2018-12-03 22:00:12','最迟下个星期',90,'2018-12-03 22:17:57','客户不满意','☆☆☆☆☆'),(22,19,3,3,'2018-12-03 22:03:19','已核实具体情况，保证改正态度',90,'2018-12-03 22:05:00',NULL,NULL),(23,14,2,3,'2018-12-04 22:21:09','已核实，保证下次不再这样',91,'2018-12-06 06:54:52','啊啊','☆☆☆☆☆'),(24,26,2,2,'2018-12-06 06:52:26','已核实，正在优化中',91,'2018-12-06 06:53:08',NULL,NULL),(25,25,2,2,'2018-12-06 14:14:20',NULL,91,NULL,NULL,NULL);
/*!40000 ALTER TABLE `service_user_allot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `system_user`
--

DROP TABLE IF EXISTS `system_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `system_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  `log_name` varchar(64) DEFAULT NULL,
  `log_pwd` varchar(64) DEFAULT NULL,
  `role_id` int(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `system_user`
--

LOCK TABLES `system_user` WRITE;
/*!40000 ALTER TABLE `system_user` DISABLE KEYS */;
INSERT INTO `system_user` VALUES (2,'陈海格','chg','96e79218965eb72c92a549dd5a330112',NULL),(3,'潘秀媚','pxm','e10adc3949ba59abbe56e057f20f883e',NULL),(4,'刘碧霞','lbx','e10adc3949ba59abbe56e057f20f883e',NULL),(5,'谢婉宜','xwy','e10adc3949ba59abbe56e057f20f883e',NULL),(6,'赵海燕','zhy','e10adc3949ba59abbe56e057f20f883e',NULL),(7,'梁思萍','lsp','e10adc3949ba59abbe56e057f20f883e',NULL),(8,'admin','admin','e10adc3949ba59abbe56e057f20f883e',NULL);
/*!40000 ALTER TABLE `system_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'crms'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-06 22:18:02
