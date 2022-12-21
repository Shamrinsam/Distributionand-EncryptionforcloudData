/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.45-community-nt : Database - new
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`new` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `new`;

/*Table structure for table `file` */

DROP TABLE IF EXISTS `file`;

CREATE TABLE `file` (
  `uid` int(50) default NULL,
  `filename` varchar(250) default NULL,
  `file` blob,
  `date` varchar(50) default NULL,
  `filesize` varchar(300) default NULL,
  `sla` varchar(210) default NULL,
  `filekey` varchar(150) default NULL,
  `fid` int(140) NOT NULL auto_increment,
  `status` varchar(130) default NULL,
  PRIMARY KEY  (`fid`),
  UNIQUE KEY `fid` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `file` */

insert  into `file`(`uid`,`filename`,`file`,`date`,`filesize`,`sla`,`filekey`,`fid`,`status`) values (9840,'cpp','�����(/� �zW�/��:�Z ������9e&8&�ހ�̌��V�QMU�\\���I�_渟DC��L����.��P�\0�/��I�=�ϔ�7r!C\r�5Nf�Gѕlh�dE���D�­�\0�GEK�8��z�_́!����|A�.�h��g4�㭇;��F�5���Kd�\r�Rh�c]ZW���pt��&U�\"�ܪf���a�2J�\nr','17/07/2022','888.0','sla1',NULL,1,NULL),(7037,'qqq','���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br���rgJ�æ3_�	Br�SA� u{J����.','17/07/2022','905.0','sla1',NULL,2,NULL);

/*Table structure for table `file2` */

DROP TABLE IF EXISTS `file2`;

CREATE TABLE `file2` (
  `uid` int(50) default NULL,
  `filename` varchar(250) default NULL,
  `file` blob,
  `date` varchar(50) default NULL,
  `filesize` varchar(210) default NULL,
  `sla` varchar(180) default NULL,
  `filekey` varchar(50) default NULL,
  `fid` int(50) NOT NULL auto_increment,
  `status` varchar(250) default NULL,
  UNIQUE KEY `fid` (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `file2` */

insert  into `file2`(`uid`,`filename`,`file`,`date`,`filesize`,`sla`,`filekey`,`fid`,`status`) values (3876,'java','�\\i�;�b��\0�����3��%\"��:�-8i^z�|���~��Y���/���݈Z��@c8���.U��z���i�*u��,����l�S|�x��6�G:<ܭ:j׎�b&�f��Ðc�Io�gJ)�l-^-&p5����/2A�O����~|mݡ0?�������j��@@�}��	𾿑ބ\\���FBA�','17/07/2022','863.0','sla2',NULL,4,NULL);

/*Table structure for table `freq` */

DROP TABLE IF EXISTS `freq`;

CREATE TABLE `freq` (
  `fid` int(50) default NULL,
  `status` varchar(190) default NULL,
  `key12` int(120) default NULL,
  `uid` int(50) default NULL,
  `owner_uid` int(50) default NULL,
  `f_name` varchar(150) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `freq` */

insert  into `freq`(`fid`,`status`,`key12`,`uid`,`owner_uid`,`f_name`) values (4,'Accepted',6338,9840,NULL,'java'),(1,'Accepted',2250,3876,NULL,'cpp'),(1,'Accepted',2250,7037,9840,'cpp');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(250) default NULL,
  `name` varchar(250) default NULL,
  `password` varchar(250) default NULL,
  `dob` varchar(240) default NULL,
  `mobile` varchar(230) default NULL,
  `emailid` varchar(220) default NULL,
  `address` varchar(210) default NULL,
  `sla` varchar(200) default NULL,
  `request` varchar(190) default 'request'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`password`,`dob`,`mobile`,`emailid`,`address`,`sla`,`request`) values (3876,'naga','naga','1988-02-21','0987654321','naga@gmail.com','Nellore','0','complated'),(9840,'daya','daya','1992-11-22','8008925769','daya@gmail.com','Buchi','0','complated'),(7037,'depu','depu','1988-12-21','0987654321','depu@gmail.com','kavali','0','complated');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
