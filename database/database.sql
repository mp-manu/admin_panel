/*
SQLyog  v13.1.1 (64 bit)
MySQL - 5.7.25 : Database - tech_arsenal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tech_arsenal` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `tech_arsenal`;

/*Table structure for table `backend_menu` */

DROP TABLE IF EXISTS `backend_menu`;

CREATE TABLE `backend_menu` (
  `nodeid` int(6) NOT NULL AUTO_INCREMENT,
  `parentnodeid` int(6) NOT NULL,
  `nodeshortname` varchar(50) NOT NULL,
  `nodename` varchar(100) NOT NULL,
  `nodeurl` varchar(255) NOT NULL,
  `userstatus` varchar(10) NOT NULL DEFAULT 'ALL',
  `nodeaccess` int(1) NOT NULL,
  `nodestatus` int(1) NOT NULL,
  `nodeorder` int(3) NOT NULL,
  `nodefile` varchar(255) DEFAULT NULL,
  `nodeicon` varchar(50) DEFAULT NULL,
  `ishasdivider` enum('no','yes') NOT NULL DEFAULT 'no',
  `hasnotify` enum('no','yes') NOT NULL DEFAULT 'no',
  `notifyscript` varchar(255) DEFAULT '',
  `isforguest` enum('no','yes') DEFAULT 'yes',
  `arrow_tag` varchar(255) DEFAULT NULL,
  `position` enum('left','right','top') DEFAULT NULL,
  PRIMARY KEY (`nodeid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `backend_menu` */

insert  into `backend_menu`(`nodeid`,`parentnodeid`,`nodeshortname`,`nodename`,`nodeurl`,`userstatus`,`nodeaccess`,`nodestatus`,`nodeorder`,`nodefile`,`nodeicon`,`ishasdivider`,`hasnotify`,`notifyscript`,`isforguest`,`arrow_tag`,`position`) values 
(1,0,'Dashboard','Dashboard','#','ALL',1,1,1,NULL,'dashboard','no','no','','no',NULL,'left'),
(2,1,'Dashboard 1','Dashboard 1','/site/index','ALL',1,1,1,NULL,NULL,'no','no','','no',NULL,'left'),
(3,1,'Dashboard 2','Dashboard 2','/site/index','ALL',1,1,1,NULL,NULL,'no','no','','no',NULL,'left'),
(4,1,'Dashboard 3','Dashboard 3','/site/index','ALL',1,1,1,NULL,NULL,'no','no','','no',NULL,'left');

/*Table structure for table `migration` */

DROP TABLE IF EXISTS `migration`;

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `migration` */

insert  into `migration`(`version`,`apply_time`) values 
('m000000_000000_base',1570435865),
('m130524_201442_init',1570435868),
('m190124_110200_add_verification_token_column_to_user_table',1570435869);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`auth_key`,`password_hash`,`password_reset_token`,`email`,`status`,`created_at`,`updated_at`,`verification_token`) values 
(1,'admin','guG2LPsZoUl5ntRtc5OWj_F-eBqh6doX','$2y$13$hw7DfhMGSY9O8K2d73So5eO40oWyWdEHsYKomQvH.pl9dsBkqKcA.',NULL,'admin@mail.ru',10,1570436181,1570436181,'BPAYfniQm8txU0T5ePpjT_AuvrOLJQ0Y_1570436181');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
