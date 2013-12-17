/*
SQLyog Ultimate v10.42 
MySQL - 5.6.15 : Database - whc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`whc` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `whc`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(4) unsigned NOT NULL DEFAULT '0',
  `username` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `create_dt` int(4) DEFAULT '0',
  `last_login_dt` int(4) DEFAULT '0',
  `activity_code` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `account` */

/*Table structure for table `activity` */

DROP TABLE IF EXISTS `activity`;

CREATE TABLE `activity` (
  `activity_code` varchar(40) COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0:未使用, 1:已使用',
  PRIMARY KEY (`activity_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `activity` */

/*Table structure for table `check_record` */

DROP TABLE IF EXISTS `check_record`;

CREATE TABLE `check_record` (
  `id` varchar(20) COLLATE utf8_bin NOT NULL COMMENT 'account_[YEAR]_[MONTH]',
  `account_id` int(4) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `month` int(4) DEFAULT NULL,
  `check_record` text COLLATE utf8_bin COMMENT 'JSON格式',
  `company_id` int(4) DEFAULT NULL,
  `set_up_id` int(4) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `check_record` */

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `id` int(4) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0' COMMENT '0:审核中 1:完成(审核中只可以自己使用,别人看不到)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `company` */

/*Table structure for table `set_up` */

DROP TABLE IF EXISTS `set_up`;

CREATE TABLE `set_up` (
  `id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `closing_dt` text COLLATE utf8_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `set_up` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
