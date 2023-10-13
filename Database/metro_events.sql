/*
SQLyog Ultimate v9.62 
MySQL - 5.5.9 : Database - bisublar_metroevents
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bisublar_metroevents` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bisublar_metroevents`;

/*Table structure for table `administrator` */

DROP TABLE IF EXISTS `administrator`;

CREATE TABLE `administrator` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `admin_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `administrator` */

LOCK TABLES `administrator` WRITE;

insert  into `administrator`(`id`,`admin_id`) values (4,2);

UNLOCK TABLES;

/*Table structure for table `administrator_event` */

DROP TABLE IF EXISTS `administrator_event`;

CREATE TABLE `administrator_event` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `administrator_id` int(12) DEFAULT NULL,
  `event_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `administrator_event` */

LOCK TABLES `administrator_event` WRITE;

insert  into `administrator_event`(`id`,`administrator_id`,`event_id`) values (1,2,1);

UNLOCK TABLES;

/*Table structure for table `auth_group` */

DROP TABLE IF EXISTS `auth_group`;

CREATE TABLE `auth_group` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group` */

LOCK TABLES `auth_group` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_group_permissions` */

DROP TABLE IF EXISTS `auth_group_permissions`;

CREATE TABLE `auth_group_permissions` (
  `id` int(12) NOT NULL,
  `permission_id` int(12) DEFAULT NULL,
  `group_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_group_permissions` */

LOCK TABLES `auth_group_permissions` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_permission` */

DROP TABLE IF EXISTS `auth_permission`;

CREATE TABLE `auth_permission` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `codename` varchar(255) DEFAULT NULL,
  `content_type_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_permission` */

LOCK TABLES `auth_permission` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_user` */

DROP TABLE IF EXISTS `auth_user`;

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` tinyint(1) DEFAULT '1',
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_staff` tinyint(1) DEFAULT '1',
  `is_active` tinyint(1) DEFAULT '1',
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `auth_user` */

LOCK TABLES `auth_user` WRITE;

insert  into `auth_user`(`id`,`username`,`password`,`last_login`,`is_superuser`,`first_name`,`last_name`,`email`,`is_staff`,`is_active`,`date_joined`) values (1,'maxangelo987','pbkdf2_sha256$216000$HlNcgsr7otl1$2K6DZ6P23tcCls4vnCf0wb3WIrDeN/o0dFlPRHPRyGQ=','2023-10-12 09:18:18',0,'Max Angelo','Perin','perinmaxangelo@hotmail.com',1,1,'2023-10-12 03:56:18'),(2,'admin','pbkdf2_sha256$216000$jBjEPufANtLl$CMXXCyYAh4Ha5rybEBSx9nNkiMy1IhBxBvmEsTIbwgs=','2023-10-12 09:13:28',1,'Max Admin','Admin','maxangelo.perin@cit.edu',1,1,'2023-10-12 06:05:08');

UNLOCK TABLES;

/*Table structure for table `auth_user_groups` */

DROP TABLE IF EXISTS `auth_user_groups`;

CREATE TABLE `auth_user_groups` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) DEFAULT NULL,
  `group_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_groups` */

LOCK TABLES `auth_user_groups` WRITE;

UNLOCK TABLES;

/*Table structure for table `auth_user_user_permissions` */

DROP TABLE IF EXISTS `auth_user_user_permissions`;

CREATE TABLE `auth_user_user_permissions` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) DEFAULT NULL,
  `permission_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `auth_user_user_permissions` */

LOCK TABLES `auth_user_user_permissions` WRITE;

UNLOCK TABLES;

/*Table structure for table `django_admin_log` */

DROP TABLE IF EXISTS `django_admin_log`;

CREATE TABLE `django_admin_log` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `action_time` datetime DEFAULT NULL,
  `user_id` int(12) DEFAULT NULL,
  `content_type_id` int(12) DEFAULT NULL,
  `object_id` int(12) DEFAULT NULL,
  `object_repr` varchar(255) DEFAULT NULL,
  `action_flag` varchar(255) DEFAULT NULL,
  `change_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `django_admin_log` */

LOCK TABLES `django_admin_log` WRITE;

insert  into `django_admin_log`(`id`,`action_time`,`user_id`,`content_type_id`,`object_id`,`object_repr`,`action_flag`,`change_message`) values (1,'2023-10-12 06:10:36',2,2,1,'Event object (1)','2','[{\"changed\": {\"fields\": [\"Is cancelled\"]}}]'),(2,'2023-10-12 06:11:40',2,2,2,'Event object (2)','1','[{\"added\": {}}]'),(3,'2023-10-12 06:14:46',2,1,1,'Request object (1)','2','[]'),(4,'2023-10-12 06:15:08',2,1,1,'Request object (1)','2','[{\"changed\": {\"fields\": [\"Event\"]}}]'),(5,'2023-10-12 06:15:26',2,1,3,'Request object (3)','2','[]'),(6,'2023-10-12 06:15:45',2,2,1,'Event object (1)','2','[{\"changed\": {\"fields\": [\"Is cancelled\"]}}]'),(7,'2023-10-12 06:15:52',2,2,2,'Event object (2)','2','[]'),(8,'2023-10-12 06:19:37',2,4,2,'Administrator object (2)','1','[{\"added\": {}}]'),(9,'2023-10-12 06:19:43',2,4,2,'Administrator object (2)','2','[]');

UNLOCK TABLES;

/*Table structure for table `django_content_type` */

DROP TABLE IF EXISTS `django_content_type`;

CREATE TABLE `django_content_type` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(255) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `django_content_type` */

LOCK TABLES `django_content_type` WRITE;

insert  into `django_content_type`(`id`,`app_label`,`model`) values (1,'metroevent','request'),(2,'metroevent','event'),(3,'auth','user'),(4,'metroevent','administrator');

UNLOCK TABLES;

/*Table structure for table `django_session` */

DROP TABLE IF EXISTS `django_session`;

CREATE TABLE `django_session` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `session_key` varchar(500) DEFAULT NULL,
  `session_data` varchar(500) DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `django_session` */

LOCK TABLES `django_session` WRITE;

insert  into `django_session`(`id`,`session_key`,`session_data`,`expire_date`) values (7,'rb39wsi7cz2nmo78j2x9gal8fiiv68vm','.eJxVjssKgzAURP8l6xI0JiZ22b3fIJPca7XVBHxAofTfa8BFu50zc5i36LBvQ7evvHQjiasoxeU38whPjhnQA_GeZEhxW0Yvc0WedJVtIp5uZ_dPMGAd8ho-eCZligpECAFsLMjWhSb0pHqosiKnfGG1Ma4ilLXTDUAOCNYf0qyLmPmwzXgdZ3hKjbPi8wWAtEJB:1qqrpi:YlTtSg4P7ooErwc_ZZRutDmyPazhs91Ue_XmdjxCRsM','2023-10-26 09:18:18');

UNLOCK TABLES;

/*Table structure for table `event` */

DROP TABLE IF EXISTS `event`;

CREATE TABLE `event` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `event_pic` varchar(255) DEFAULT NULL,
  `is_cancelled` varchar(255) DEFAULT NULL,
  `is_approved` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `event` */

LOCK TABLES `event` WRITE;

insert  into `event`(`id`,`name`,`description`,`datetime`,`address`,`event_pic`,`is_cancelled`,`is_approved`) values (1,'CIT','Midterm Examination','2023-10-12 13:50:01','Cebu','2','0','1'),(2,'BISU Charter Day','BISU Charter Day','2023-10-12 06:10:54','Taytay','media/Arduino_Logo.svg.png','0','1');

UNLOCK TABLES;

/*Table structure for table `event_participants` */

DROP TABLE IF EXISTS `event_participants`;

CREATE TABLE `event_participants` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `user_id` int(12) DEFAULT NULL,
  `event_id` int(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `event_participants` */

LOCK TABLES `event_participants` WRITE;

insert  into `event_participants`(`id`,`user_id`,`event_id`) values (1,2,2),(2,1,1),(3,2,2);

UNLOCK TABLES;

/*Table structure for table `organizer` */

DROP TABLE IF EXISTS `organizer`;

CREATE TABLE `organizer` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `organizer_id` int(12) DEFAULT NULL,
  `date_promoted` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `organizer` */

LOCK TABLES `organizer` WRITE;

insert  into `organizer`(`id`,`organizer_id`,`date_promoted`) values (1,1,'2023-10-12 00:00:00');

UNLOCK TABLES;

/*Table structure for table `request` */

DROP TABLE IF EXISTS `request`;

CREATE TABLE `request` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `request_type` varchar(255) DEFAULT NULL,
  `user_id` int(12) DEFAULT NULL,
  `event_id` int(12) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `request` */

LOCK TABLES `request` WRITE;

insert  into `request`(`id`,`request_type`,`user_id`,`event_id`,`status`,`created_at`,`updated_at`) values (1,'Be an organizer',1,1,'Accepted','2023-10-12 05:29:14','2023-10-12 06:21:02'),(2,'Join event',1,1,'Approved','2023-10-12 05:51:09','2023-10-12 06:21:46'),(3,'Join event',2,2,'Approved','2023-10-12 06:14:24','2023-10-12 06:21:47');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
