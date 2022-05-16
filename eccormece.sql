/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.21-MariaDB : Database - msandiecommercedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`msandiecommercedb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `msandiecommercedb`;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(30) DEFAULT NULL,
  `firstName` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `phoneNumber` int(10) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `customer` */

insert  into `customer`(`Id`,`lastName`,`firstName`,`email`,`address`,`username`,`phoneNumber`,`password`,`first_name`,`last_name`,`phone_number`) values 
(18,NULL,NULL,'san@gmail.com','tembisa','masandi',NULL,'msan1234','sandile','singwane',2789899),
(19,NULL,NULL,'san@gmail.com','tembisa','masandi',NULL,'msan1234','sandile','singwane',2789899),
(20,NULL,NULL,'sandilesingwane@gmail.com','witbank','sibusiso9',NULL,'msan1234','sbusiso','sibuyi',784567523),
(21,NULL,NULL,'singwane@gmail.com','jozi  cbd','alphajky',NULL,'m1234','alpha','zitha',897456),
(22,NULL,NULL,'zanele45@gmail.com','mangweni trust','mazet',NULL,'mazet34214','sibuyi','zanele',8754562),
(23,NULL,NULL,'s@gmail.com','tembisa winnie Mandela','gwazela87',NULL,'gwazelaa567','sandile','gwazela',78833);

/*Table structure for table `hibernate_sequence` */

DROP TABLE IF EXISTS `hibernate_sequence`;

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `hibernate_sequence` */

insert  into `hibernate_sequence`(`next_val`) values 
(24);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `image` mediumblob DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `product` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `lastName` varchar(30) NOT NULL DEFAULT '0',
  `firstName` varchar(50) NOT NULL DEFAULT 'name',
  `Email` varchar(30) NOT NULL DEFAULT 'surname',
  `address` varchar(100) NOT NULL DEFAULT 'address',
  `phoneNo` int(10) NOT NULL DEFAULT 0,
  `password` varchar(30) NOT NULL DEFAULT '***',
  `login` varchar(30) NOT NULL DEFAULT 'user',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_no` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`lastName`,`firstName`,`Email`,`address`,`phoneNo`,`password`,`login`,`first_name`,`last_name`,`phone_no`) values 
(3,'0','name','sandilesingwane@gmail.com','msandi',0,'tembisa','msandi',NULL,NULL,NULL),
(4,'0','name','candy@gmail.com','candy',0,'citylands','candy@gmail.com',NULL,NULL,NULL),
(5,'0','name','floydMaluleke@gmail.com','maluleke5',0,'johannesburg CBD','floyd','maluleka','floyd',791710877),
(6,'0','name','sibusiso@gmail.com','sibusiso',0,'ivorypark','sibusiso','Matsaung','sibusiso',147854789),
(7,'0','name','sanBe@gmail.com','bheki',0,'54bbhjjs','musawer@gmail.com','zwane','sandile',14785428),
(8,'0','name','thamimanana07@gamail.com','Thami@000615',0,'58 Kanana','Thamie','Manana','Thamsanqa',768461918),
(9,'0','name','comfort@gmail.com','comfort',0,'24 kwalugedlane 1341','Comfort','Ndlovu','comfort',723941828),
(10,'0','name','lerato@gmail.com','leratoL',0,'23 soshanguve south','ladyL','mokwea','lerato',865432156),
(13,'0','name','sand@gmail.com','sand1995',0,'34 hurlihurm estate','sandy','sibuyi','sandiso',798435678),
(14,'0','name','sa@gmail.com','wrtrtywyuui',0,'msandi','MMMM','sssss','ssss',789564321),
(15,'0','name','ss@gmail','ffgghgh',0,'aaaaaaaa','derw','aaaaaa','aa',878654321),
(16,'0','name','ceejay@gmail.com','23 flatcone flat \r\ncone streets',0,'ceejay','ceejay','sibiya','comfort',875643676),
(17,'0','name','zanele45@gmail.com','tembisa winnie mandela ext 5',0,'mazet34214','mazet','khumalo','zanele',785432567);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
