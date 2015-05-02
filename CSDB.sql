-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.41 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for citystars
CREATE DATABASE IF NOT EXISTS `citystars` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `citystars`;


-- Dumping structure for table citystars.campaign
CREATE TABLE IF NOT EXISTS `campaign` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `BusinessType` varchar(255) NOT NULL,
  `CampaignDescription` varchar(255) DEFAULT NULL,
  `CampaignObjectives` varchar(255) DEFAULT NULL,
  `Channels` varchar(255) DEFAULT NULL,
  `DBFileSent` varchar(255) DEFAULT NULL,
  `Languages` varchar(255) DEFAULT NULL,
  `MarketEndDate` date DEFAULT NULL,
  `MarketLaunchDate` date DEFAULT NULL,
  `OfferType` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `ProjectName` varchar(255) DEFAULT NULL,
  `RequesterName` varchar(255) NOT NULL,
  `SenderEmail` varchar(255) NOT NULL,
  `TargetAudience` varchar(255) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `approved` bit(1) DEFAULT b'0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.campaign: ~17 rows (approximately)
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` (`ID`, `BusinessType`, `CampaignDescription`, `CampaignObjectives`, `Channels`, `DBFileSent`, `Languages`, `MarketEndDate`, `MarketLaunchDate`, `OfferType`, `PhoneNumber`, `ProjectName`, `RequesterName`, `SenderEmail`, `TargetAudience`, `budget`, `approved`) VALUES
	(4, 'TrainingOrganization', 'Description', 'Objectives', NULL, NULL, NULL, '2015-04-11', '2015-04-08', 'Buy1Get1FREE', '3214565', 'Project Name', 'محمد مفتاح', 'test@liferay.com', 'Target Audience', NULL, b'0'),
	(5, 'Agriculture', 'Description', 'Objectives', NULL, NULL, NULL, '2015-04-17', '2015-04-07', 'Discount', '3214565', 'Project Name', 'محمد مفتاح', 'test@liferay.com', 'Target Audience', NULL, NULL),
	(6, 'Agriculture', 'Description', 'Objectives', NULL, NULL, NULL, '2015-04-17', '2015-04-07', 'Discount', '3214565', 'Project Name', 'محمد مفتاح', 'test@liferay.com', 'Target Audience', NULL, NULL),
	(8, 'Construction', 'Description', 'Objectives', 'DigitalMarketing;MediaMarketing;', NULL, NULL, '2015-04-11', '2015-04-08', 'Buy1Get1FREE', '01148763392', 'Project Name', 'محمد مفتاح', 'test@liferay.com', '', NULL, b'0'),
	(9, 'Construction', 'Description', 'Objectives', 'DigitalMarketing;MediaMarketing;', NULL, NULL, '2015-04-11', '2015-04-08', 'Buy1Get1FREE', '01148763392', 'Project Name', 'محمد مفتاح', 'test@liferay.com', '', NULL, b'0'),
	(10, 'Education', 'asd', 'asdasd', 'MediaMarketing;E-Magazine;StarsMagazine;', NULL, NULL, '2015-04-01', '2015-04-01', 'DemosSampling', 'asdasd', 'Test', 'Mohamed Bakry', 'm.bakry@masrurgroup.com', 'asdasd', NULL, b'0'),
	(11, 'Education', 'asd', 'asdasd', 'MediaMarketing;E-Magazine;StarsMagazine;', NULL, NULL, '2015-04-01', '2015-04-01', 'DemosSampling', 'asdasd', 'Test', 'Mohamed Bakry', 'm.bakry@masrurgroup.com', 'asdasd', NULL, b'1'),
	(12, 'Construction', 'Description', 'Objectives', 'DigitalMarketing;MediaMarketing;E-Magazine;', NULL, NULL, '2015-04-09', '2015-04-08', 'Buy1Get1FREE', '01148763392', 'Project Name', 'محمد حسين', 'm.moftah@masrurgroup.com', 'Target Audience', NULL, b'1'),
	(13, 'Agriculture', 'الوصف', '', 'DigitalMarketing;MediaMarketing;E-Magazine;StarsMagazine;', NULL, NULL, '2015-04-11', '2015-04-07', 'Discount', '01148763392', 'Project Name', 'محمد مفتاح', 'm.moftah@masrurgroup.com', 'Target Audience', NULL, b'0'),
	(15, 'Agriculture', 'Description', 'Objectives', 'DigitalMarketing;MediaMarketing;E-Magazine;', NULL, NULL, '2015-04-17', NULL, 'DemosSampling', '01148763392', 'اسم المشروع', 'محمد مفتاح', 'm.moftah@masrurgroup.com', 'Target Audience55', NULL, b'0'),
	(16, 'Agriculture', 'Description', '', 'DigitalMarketing;MediaMarketing;', NULL, NULL, NULL, '2015-04-07', 'Points', '', 'Project Name', 'محمد مفتاح', 'm.moftah@masrurgroup.com', '', NULL, b'0'),
	(17, 'Agriculture', 'Description', '', 'DigitalMarketing;MediaMarketing;', NULL, NULL, '2015-04-11', NULL, 'Buy1Get1FREE', '', 'Project Name', 'محمد مفتاح', 'm.moftah@masrurgroup.com', '', NULL, b'0'),
	(18, 'TrainingOrganization', 'fadffafafadfd', 'afaf', 'EMAIL;FACEBOOK;SMS;', NULL, NULL, '2015-04-02', '2015-04-08', 'Discount', '01148763392', 'اسم المشروع', 'محمد مفتاح', 'm.moftah@masrurgroup.com', 'Target Audience', 220, b'0'),
	(19, 'Pharmaceuticals', 'asd', 'asd', 'EMAIL;EMAGAZINE;SMS;', NULL, NULL, '2015-04-02', '2015-04-07', 'Discount', '123', 'asd', 'mohamed ali', 'm.bakry@masrurgroup.com', 'asd', 320, b'1'),
	(20, 'Businesss type 2', 'campaignDescription', 'campaignObjectives', 'campaignObjectives', NULL, NULL, NULL, NULL, 'offer type', NULL, NULL, 'Mohamed moftah', 'mhd1@yahoo.com', NULL, NULL, b'0'),
	(21, 'Businesss type 2', 'campaignDescription', 'campaignObjectives', 'campaignObjectives', NULL, NULL, NULL, NULL, 'offer type', NULL, NULL, 'Mohamed moftah', 'mhd1@yahoo.com', NULL, NULL, b'0'),
	(22, 'Business', 'No description ', 'TEst My product value', 'EMAIL;FACEBOOK;SMS;', NULL, NULL, '2015-06-01', '2015-05-01', 'Buy1Get1FREE', '01225662677', 'Tester for mohamed', 'mohamed Said', 'mr@yahoo.com', 'Test', 680, b'1');
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;


-- Dumping structure for table citystars.channel
CREATE TABLE IF NOT EXISTS `channel` (
  `channel_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0',
  `expirydate` datetime DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `icon` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`channel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.channel: ~9 rows (approximately)
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` (`channel_id`, `name`, `value`, `expirydate`, `timestamp`, `validfrom`, `icon`) VALUES
	(1, 'EMAIL', 10, '2015-04-20 16:55:54', '2015-04-20 16:55:56', '2015-04-20 16:56:07', '../resources/img/icons/EMAIL.png'),
	(2, 'FACEBOOK', 20, '2015-04-20 16:55:52', '2015-04-20 16:55:57', '2015-04-20 16:56:09', '../resources/img/icons/facebook.png'),
	(3, 'WHATSAPP', 10, '2015-04-20 16:55:51', '2015-04-23 02:00:00', '2015-04-20 16:56:10', '../resources/img/icons/Social-Whatsapp.png'),
	(4, 'SMS', 20, '2015-04-20 17:57:59', '2015-04-20 16:55:59', '2015-04-20 16:56:10', '../resources/img/icons/sms.png'),
	(5, 'EMAGAZINE', 10, '2015-04-20 16:55:50', '2015-04-20 16:56:00', '2015-04-22 02:00:00', '../resources/img/icons/emagazine.png'),
	(6, 'TWITTER', 10, '2015-04-20 16:55:49', '2015-04-20 16:56:01', '2015-04-20 16:56:13', '../resources/img/icons/twitter.png'),
	(7, 'MOBILE APP', 10, '2015-04-20 16:55:48', '2015-04-20 16:56:04', '2015-04-20 16:56:15', '../resources/img/icons/MobileApp.jpg'),
	(8, 'WEBSITE', 10, '2015-04-20 15:09:09', '2015-04-20 16:56:02', '2015-04-20 16:56:16', '../resources/img/icons/website.png'),
	(9, 'ALL CHANNELS', 10, '2015-04-20 16:56:06', '2015-04-20 16:56:03', '2015-04-20 16:56:17', '../resources/img/icons/All-channels.png');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;


-- Dumping structure for table citystars.offer
CREATE TABLE IF NOT EXISTS `offer` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Channels` varchar(255) DEFAULT NULL,
  `DBfileSent` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Languages` varchar(255) DEFAULT NULL,
  `MarketEndDate` date DEFAULT NULL,
  `MarketLaunchDate` date DEFAULT NULL,
  `OfferDescription` longtext,
  `ProjectName` varchar(255) DEFAULT NULL,
  `RequesterName` varchar(255) DEFAULT NULL,
  `SenderEmail` varchar(255) DEFAULT NULL,
  `PartnerID` int(11) DEFAULT NULL,
  `approved` bit(1) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_avw27xbby117448w60opc4da1` (`PartnerID`),
  CONSTRAINT `FK_avw27xbby117448w60opc4da1` FOREIGN KEY (`PartnerID`) REFERENCES `partner` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.offer: ~3 rows (approximately)
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` (`ID`, `Channels`, `DBfileSent`, `Department`, `Languages`, `MarketEndDate`, `MarketLaunchDate`, `OfferDescription`, `ProjectName`, `RequesterName`, `SenderEmail`, `PartnerID`, `approved`, `budget`, `description`) VALUES
	(2, 'DigitalMarketing;MediaMarketing;E-Magazine;', NULL, 'Marketing', NULL, NULL, NULL, 'vzcv', 'qwer', 'محمد مفتاح', 'info@perfect-technology.com', 10, b'1', NULL, 'qwe'),
	(3, '123', NULL, 'asd', 'asd', '2015-04-19', '2015-04-19', 'qwee', 'asd', 'Mohamed Bakry', 'asd@yahoo.com', 9, b'1', NULL, 'ads'),
	(4, 'EMAIL;FACEBOOK;WHATSAPP;', NULL, 'Marketing', NULL, '2015-04-01', '2015-04-14', NULL, NULL, 'Ayman Masrur', 'ayman@masrurgroup.com', NULL, b'1', 410, 'TEst');
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;


-- Dumping structure for table citystars.partner
CREATE TABLE IF NOT EXISTS `partner` (
  `password` varchar(150) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` longtext NOT NULL,
  `businesstype` longtext NOT NULL,
  `companyEmail` longtext NOT NULL,
  `companyName` longtext NOT NULL,
  `companyRegistrationNumber` varchar(255) NOT NULL,
  `dataFileUploded` bit(1) NOT NULL,
  `numberofEmployees` int(11) NOT NULL,
  `numberofcustomers` int(11) NOT NULL,
  `officername` longtext NOT NULL,
  `position` longtext NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `yearofCompanyFormation` int(11) NOT NULL,
  `interest` longtext NOT NULL,
  `partnertype` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.partner: ~3 rows (approximately)
/*!40000 ALTER TABLE `partner` DISABLE KEYS */;
INSERT INTO `partner` (`password`, `id`, `address`, `businesstype`, `companyEmail`, `companyName`, `companyRegistrationNumber`, `dataFileUploded`, `numberofEmployees`, `numberofcustomers`, `officername`, `position`, `telephone`, `yearofCompanyFormation`, `interest`, `partnertype`) VALUES
	('123', 9, '2', '2', 'test@liferay.com', 'sdD', '22', b'0', 2, 2, '22', '22', '2', 2, '', ''),
	('123', 10, '4', '4', 'm.moftah@masrurgroup.com', 'bbb', '4', b'0', 4, 4, '4', '4', '4', 4, '', ''),
	('asd', 11, 'asdsd', 'asd', 'Moha@yahoo.com', 'asd', '200', b'0', 20, 20, 'asdd', 'asadasdas', '0221321231', 2015, '', '');
/*!40000 ALTER TABLE `partner` ENABLE KEYS */;


-- Dumping structure for table citystars.question
CREATE TABLE IF NOT EXISTS `question` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.question: ~0 rows (approximately)
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;


-- Dumping structure for table citystars.role
CREATE TABLE IF NOT EXISTS `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `description` longtext,
  `role_name` varchar(255) NOT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.role: ~0 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;


-- Dumping structure for table citystars.user
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `authority` varchar(255) DEFAULT NULL,
  `birthdate` datetime DEFAULT NULL,
  `disabled` bit(1) DEFAULT NULL,
  `email_id` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `friendEmail` varchar(255) DEFAULT NULL,
  `friendName` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `martialStatus` varchar(255) DEFAULT NULL,
  `nationalId` varchar(255) DEFAULT NULL,
  `numberOfChildren` smallint(6) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `partnerId` int(11) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postalCode` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email_id` (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.user: ~23 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `address`, `authority`, `birthdate`, `disabled`, `email_id`, `facebook`, `firstName`, `friendEmail`, `friendName`, `gender`, `lastName`, `martialStatus`, `nationalId`, `numberOfChildren`, `password`, `phone`, `profession`, `partnerId`, `whatsapp`, `area`, `city`, `postalCode`, `street`) VALUES
	(65, 'Cairo', 'BUSINESS_USER', '1970-08-02 00:00:00', NULL, 'qwe@gmail.com', 'facebook id', 'Mohamed', NULL, NULL, 'male', 'Moftah', 'married', '1.23654789987E11', 2, '123', '1148763392', 'Engineer', 8, NULL, NULL, NULL, NULL, NULL),
	(66, 'Giza', 'CUSTOMER', '1960-08-02 00:00:00', NULL, 'dd@ff.gg', NULL, 'Ahmed', NULL, NULL, 'male', 'Hussein', 'married', '2.23654784569E11', 5, '123', '1.224040969E9', 'Accountant', 8, NULL, NULL, NULL, NULL, NULL),
	(67, 'Maadi', 'CUSTOMER', '1980-12-19 00:00:00', NULL, 'mmm@hhh.com', 'facebook id', 'Mohamed', NULL, NULL, 'mnale', 'Bakry', 'married', '1.2345671234567E13', 2, '123', '1.045698712E9', 'Project manager', 8, NULL, NULL, NULL, NULL, NULL),
	(68, 'Cairo', 'CUSTOMER', NULL, NULL, 'mohamed.moftah@eeemail.com', NULL, 'Mohamed', NULL, NULL, NULL, 'Moftah', NULL, NULL, NULL, '123', 'married', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(69, 'Giza', 'CUSTOMER', NULL, NULL, 'ahmed.moftah@mail.com', NULL, 'Ahmed', NULL, NULL, NULL, 'Hussein', NULL, NULL, NULL, '123', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(70, 'Maadi', 'CUSTOMER', NULL, NULL, 'm.bakry@group.com', NULL, 'Mohamed', NULL, NULL, NULL, 'Bakry', NULL, NULL, NULL, '123', '', NULL, 1, NULL, NULL, NULL, NULL, NULL),
	(71, NULL, 'CUSTOMER', NULL, NULL, 'moh3292@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
	(72, NULL, 'CUSTOMER_SERVICE', NULL, NULL, 'test@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '123', NULL, NULL, 0, NULL, 'New Cairo', 'Cairo', NULL, '99 Al Gehad Street'),
	(73, NULL, 'CUSTOMER', NULL, NULL, 'info@perfect-technology.com', 'admin', 'Mohamed', '', '', '', 'Hussein', '', NULL, 0, '123', '', '', 0, NULL, '', '', '', ''),
	(74, NULL, 'SUPER_USER', '2015-04-01 00:00:00', NULL, 'm.bakry@masrurgroup.com', 'asdasd', 'asd', 'asd@yahoo.com', 'asdasd', 'asdasdasd', 'asd', 'asdasdsa', '123', 2, 'asdasd', '123123', 'asdasdasd', 0, NULL, NULL, NULL, NULL, NULL),
	(75, NULL, 'ADMIN', '2015-04-07 00:00:00', NULL, 'asd@yahoo.com', 'asd', 'asd', '', '', 'Male', 'asd', 'asd', '123', 2, 'asd', '123', 'Maadi', 0, '123', NULL, 'Imam', NULL, NULL),
	(76, NULL, 'IT_SUPPORT', '2015-04-14 00:00:00', NULL, 'omali@yahoo.com', 'asd', 'asd', 'asdasdf@yahoo.com', 'asd', 'Male', 'asdasd', 'asd', '123123', 2, 'asd', '123123', 'Trainer', 0, '123123', NULL, 'Heliopolis', NULL, NULL),
	(77, NULL, 'CUSTOMER', '2015-04-14 00:00:00', NULL, 'asdfff@yahoo.com', 'asd', 'asd', '', '', 'Male', 'asd', 'asd', '123', 2, 'asd', '123', 'Midwives', 0, '123', NULL, 'USA', NULL, NULL),
	(78, 'asd', 'CUSTOMER', '2015-04-02 00:00:00', NULL, 'f@yahoo.com', 'asd', 'asd', 'asd@YAHOO.COM', 'asd', 'Male', 'asd', 'Married', '123123123', 2, 'asd', '123123', 'asdasd', 0, '123123', NULL, '5th District', NULL, NULL),
	(79, 'asd', NULL, '2015-04-02 00:00:00', NULL, 'a20sd@yahoo.com', 'asd', 'asd', '', '', 'Male', 'asd', 'Single', '11111111111111', 2, 'asd', '123123', 'asd', 0, '123123', NULL, NULL, NULL, NULL),
	(80, 'dollli', 'CUSTOMER', '2015-04-01 00:00:00', NULL, 'a2020sd@yahoo.com', '', 'Mona', '', '', 'Male', 'Ali', 'Single', '22222222222222', 0, '123', '123456', '20', 0, '123456', NULL, 'Heliopolis', NULL, NULL),
	(81, 'asd', NULL, '2015-04-01 00:00:00', NULL, 'aaa@yahoo.com', 'asd', 'asd', 'asdasd@yahoo.com', 'asd', 'Male', 'asd', 'Single', '22222222222222', 2, 'asd', '123123123', 'asdasd', 0, '12313', NULL, NULL, NULL, NULL),
	(82, NULL, 'CUSTOMER', NULL, NULL, 'mohamed.moftah@gmail.com', NULL, 'Mohamed', NULL, NULL, NULL, 'Hussein', NULL, 'Egypt', NULL, '123', NULL, NULL, 0, NULL, 'Cairo', NULL, NULL, NULL),
	(83, 'asd', 'CUSTOMER', '2015-04-01 00:00:00', NULL, 'asddd@yahoo.com', 'admin', 'mohamed', 'asdasd@yahoo.com', 'asd', 'Male', 'asd', 'Married', '22222222222222', 2, 'asd', '1225662677', 'asd', 0, '1090834888', NULL, NULL, NULL, NULL),
	(84, 'asd', 'CUSTOMER', '1986-01-04 00:00:00', NULL, 'mohamed_bakry@yahoo.com', 'asd', 'mohamed', '', '', 'Male', 'bakry', 'Single', '12345678912345', 2, 'asd', '1225662677', 'teset', 0, '12316546', NULL, NULL, NULL, NULL),
	(85, NULL, 'CUSTOMER', '1970-08-02 00:00:00', NULL, 'qwe120@gmail.com', 'facebook id', 'Mohamed', NULL, NULL, 'male', 'Moftah', 'married', '1.23654789987E11', 2, '123', '1148763392', 'Engineer', 1, NULL, NULL, NULL, NULL, 'Cairo'),
	(86, NULL, 'CUSTOMER', '1960-08-02 00:00:00', NULL, 'dd99@ff.gg', 'facebook id', 'Ahmed', NULL, NULL, 'male', 'Hussein', 'married', '2.23654784569E11', 5, '123', '1.224040969E9', 'Accountant', 1, NULL, NULL, NULL, NULL, 'Giza'),
	(87, NULL, 'CUSTOMER', '1980-12-19 00:00:00', NULL, 'mm2015@ee.nn', 'facebook.bakry', 'Mohamed', NULL, NULL, 'mnale', 'Bakry', 'married', '1.2345671234567E13', 2, '123', '1.045698712E9', 'Project manager', 1, NULL, NULL, NULL, NULL, 'Maadi');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


-- Dumping structure for table citystars.user_roles
CREATE TABLE IF NOT EXISTS `user_roles` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `FK_g1uebn6mqk9qiaw45vnacmyo2` (`user_id`),
  KEY `FK_5q4rc4fh1on6567qk69uesvyf` (`role_id`),
  CONSTRAINT `FK_5q4rc4fh1on6567qk69uesvyf` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `FK_g1uebn6mqk9qiaw45vnacmyo2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table citystars.user_roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
