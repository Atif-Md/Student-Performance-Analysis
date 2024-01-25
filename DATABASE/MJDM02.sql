/*
SQLyog Community v8.71 
MySQL - 5.5.30 : Database - mjdm02
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`mjdm02` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `mjdm02`;

/*Table structure for table `attendance` */

DROP TABLE IF EXISTS `attendance`;

CREATE TABLE `attendance` (
  `RollNo` varchar(50) NOT NULL,
  `year1` double DEFAULT '0',
  `year21` double DEFAULT '0',
  `year22` double DEFAULT '0',
  `year31` double DEFAULT '0',
  `year32` double DEFAULT '0',
  `year41` double DEFAULT '0',
  `year42` double DEFAULT '0',
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attendance` */

insert  into `attendance`(`RollNo`,`year1`,`year21`,`year22`,`year31`,`year32`,`year41`,`year42`) values ('145236',70,72,69,68,74,65,71),('22-501',89,78,75,75,68,98,75);

/*Table structure for table `company` */

DROP TABLE IF EXISTS `company`;

CREATE TABLE `company` (
  `companyname` varchar(255) DEFAULT NULL,
  `mailid` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `company` */

insert  into `company`(`companyname`,`mailid`,`password`,`mobile`,`address`) values ('Amazon','Amazon@gmail.com','1234','2587413690','Secunderabad'),('Wipro','Wipro@gmail.in','1234','8547912307','Hyderabad');

/*Table structure for table `education` */

DROP TABLE IF EXISTS `education`;

CREATE TABLE `education` (
  `RollNo` varchar(50) NOT NULL,
  `EamcetRank` int(50) DEFAULT NULL,
  `InterColl` varchar(50) DEFAULT NULL,
  `InterScore` int(50) DEFAULT NULL,
  `InterPec` double DEFAULT NULL,
  `Colladd` varchar(100) DEFAULT NULL,
  `SchoolName` varchar(50) DEFAULT NULL,
  `SSCScore` int(50) DEFAULT NULL,
  `SSCPer` double DEFAULT NULL,
  `SchoolAdd` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `education` */

insert  into `education`(`RollNo`,`EamcetRank`,`InterColl`,`InterScore`,`InterPec`,`Colladd`,`SchoolName`,`SSCScore`,`SSCPer`,`SchoolAdd`) values ('145236',54000,'Narayna',452,87,'Hyderabad','Chaitanya',780,90,'Hyderabad'),('22-501',1000,'Nagarjuna',800,80,'Hyderabad','OxFord ',598,97,'Sangareddy');

/*Table structure for table `firstex` */

DROP TABLE IF EXISTS `firstex`;

CREATE TABLE `firstex` (
  `RollNo` varchar(255) DEFAULT '0',
  `Branch` varchar(255) DEFAULT '0',
  `Year` int(50) DEFAULT '0',
  `Sem` int(50) DEFAULT '0',
  `Sub1` int(50) DEFAULT '0',
  `Sub2` int(50) DEFAULT '0',
  `Sub3` int(50) DEFAULT '0',
  `Sub4` int(50) DEFAULT '0',
  `Sub5` int(50) DEFAULT '0',
  `Sub6` int(50) DEFAULT '0',
  `Sub7` int(50) DEFAULT '0',
  `Lab-I` int(50) DEFAULT '0',
  `Lab-II` int(50) DEFAULT '0',
  `Lab-III` int(50) DEFAULT '0',
  `Lab-IV` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `firstex` */

insert  into `firstex`(`RollNo`,`Branch`,`Year`,`Sem`,`Sub1`,`Sub2`,`Sub3`,`Sub4`,`Sub5`,`Sub6`,`Sub7`,`Lab-I`,`Lab-II`,`Lab-III`,`Lab-IV`) values ('145236','CSE',1,0,55,54,55,45,64,66,54,51,52,51,47),('22-501','IT',1,0,45,56,35,53,50,40,96,85,65,50,53),('22-501','IT',1,0,45,56,85,67,55,45,35,25,45,67,35);

/*Table structure for table `firstin` */

DROP TABLE IF EXISTS `firstin`;

CREATE TABLE `firstin` (
  `RollNo` varchar(235) DEFAULT '0',
  `Branch` varchar(255) DEFAULT '0',
  `Year` int(50) DEFAULT '0',
  `Sem` int(50) DEFAULT '0',
  `Sub1` int(50) DEFAULT '0',
  `Sub2` int(50) DEFAULT '0',
  `Sub3` int(50) DEFAULT '0',
  `Sub4` int(50) DEFAULT '0',
  `Sub5` int(50) DEFAULT '0',
  `Sub6` int(50) DEFAULT '0',
  `Sub7` int(50) DEFAULT '0',
  `Lab-I` int(50) DEFAULT '0',
  `Lab-II` int(50) DEFAULT '0',
  `Lab-III` int(50) DEFAULT '0',
  `Lab-IV` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `firstin` */

insert  into `firstin`(`RollNo`,`Branch`,`Year`,`Sem`,`Sub1`,`Sub2`,`Sub3`,`Sub4`,`Sub5`,`Sub6`,`Sub7`,`Lab-I`,`Lab-II`,`Lab-III`,`Lab-IV`) values ('145236','CSE',1,0,20,21,20,20,21,25,23,24,21,22,23),('22-501','IT',1,0,15,19,13,21,14,12,16,17,19,14,25);

/*Table structure for table `job` */

DROP TABLE IF EXISTS `job`;

CREATE TABLE `job` (
  `RollNo` varchar(255) DEFAULT NULL,
  `CGPA` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `job` */

/*Table structure for table `marks` */

DROP TABLE IF EXISTS `marks`;

CREATE TABLE `marks` (
  `RollNo` varchar(255) DEFAULT NULL,
  `Branch` varchar(255) DEFAULT NULL,
  `FirstYear` int(11) DEFAULT NULL,
  `SecondYear` int(11) DEFAULT NULL,
  `ThirdYear` int(11) DEFAULT NULL,
  `FourthYear` int(11) DEFAULT NULL,
  `cgpa` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marks` */

insert  into `marks`(`RollNo`,`Branch`,`FirstYear`,`SecondYear`,`ThirdYear`,`FourthYear`,`cgpa`) values ('145236','CSE',834,1210,1154,1122,82.3),('145236','CSE',834,1210,1154,1122,82.3),('22-501','IT',1373,1313,884,1008,87.2),('22-501','IT',1373,1313,884,1008,87.2);

/*Table structure for table `message` */

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `Froms` varchar(255) DEFAULT '-',
  `Tos` varchar(255) DEFAULT '-',
  `message` varchar(255) DEFAULT '-'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `message` */

insert  into `message`(`Froms`,`Tos`,`message`) values ('tpi','amazon@gmail.com','hii'),('amazon@gmail.com','tpi','hello !'),('tpi','Wipro@gmail.in','Please add a CSE Student also in campus placement'),('Wipro@gmail.in','tpi','No We Don\'t have a Requirement\'s');

/*Table structure for table `paper` */

DROP TABLE IF EXISTS `paper`;

CREATE TABLE `paper` (
  `RollNo` varchar(50) DEFAULT NULL,
  `Branch` varchar(50) DEFAULT NULL,
  `Title` varchar(200) DEFAULT NULL,
  `Objective` varchar(150) DEFAULT NULL,
  `Algorithm` varchar(150) DEFAULT NULL,
  `DataSet` varchar(150) DEFAULT NULL,
  `Group` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `paper` */

insert  into `paper`(`RollNo`,`Branch`,`Title`,`Objective`,`Algorithm`,`DataSet`,`Group`) values ('145236','CSE','Frankie','HOME COMMING','AES','COLLEGE DATASETS','MPC'),('22-501','IT','Ahmed','Bawazeer','Abdul ','Naf','Hyderabad');

/*Table structure for table `req` */

DROP TABLE IF EXISTS `req`;

CREATE TABLE `req` (
  `companyname` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `req` */

insert  into `req`(`companyname`,`description`,`status2`) values ('Amazon@gmail.com','request to sponsor placement program','Approved'),('Wipro@gmail.in','If you have vacancy please select campus','Approved');

/*Table structure for table `reqcom` */

DROP TABLE IF EXISTS `reqcom`;

CREATE TABLE `reqcom` (
  `name` varchar(255) DEFAULT NULL,
  `send` varchar(255) DEFAULT NULL,
  `status2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reqcom` */

/*Table structure for table `requirement` */

DROP TABLE IF EXISTS `requirement`;

CREATE TABLE `requirement` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Companyname` varchar(255) DEFAULT NULL,
  `Domain` varchar(255) DEFAULT NULL,
  `Skills` varchar(255) DEFAULT NULL,
  `Criteria` varchar(20) DEFAULT NULL,
  `Qualification` varchar(255) DEFAULT NULL,
  UNIQUE KEY `Id` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `requirement` */

insert  into `requirement`(`Id`,`Companyname`,`Domain`,`Skills`,`Criteria`,`Qualification`) values (1,'Amazon@gmail.com','Software Engineer','Java,sql','60-90','B.Tech'),(2,'Wipro@gmail.in','Java Devloper','Core Java,jsp,servlet,spring boot and Mysql','60-100','IT,cse'),(3,'Wipro@gmail.in','Java Devloper','Core Java,jsp,servlet,spring boot and Mysql','50-100','IT');

/*Table structure for table `secondex` */

DROP TABLE IF EXISTS `secondex`;

CREATE TABLE `secondex` (
  `RollNo` varchar(255) DEFAULT '0',
  `Branch` varchar(255) DEFAULT '0',
  `Year` int(50) DEFAULT '0',
  `Sem` int(50) DEFAULT '0',
  `Sub1` int(50) DEFAULT '0',
  `Sub2` int(50) DEFAULT '0',
  `Sub3` int(50) DEFAULT '0',
  `Sub4` int(50) DEFAULT '0',
  `Sub5` int(50) DEFAULT '0',
  `Sub6` int(50) DEFAULT '0',
  `Lab-I` int(50) DEFAULT '0',
  `Lab-II` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `secondex` */

insert  into `secondex`(`RollNo`,`Branch`,`Year`,`Sem`,`Sub1`,`Sub2`,`Sub3`,`Sub4`,`Sub5`,`Sub6`,`Lab-I`,`Lab-II`) values ('145236','CSE',2,1,55,57,54,58,59,56,51,52),('145236','CSE',2,2,54,54,52,53,56,51,55,57),('145236','CSE',3,1,45,46,41,42,47,48,49,52),('145236','CSE',3,2,55,54,51,52,53,56,58,59),('145236','CSE',4,1,54,51,52,58,57,59,52,53),('22-501','IT',2,1,87,67,47,38,47,32,65,55),('22-501','IT',2,2,45,35,32,30,45,39,45,42),('22-501','IT',2,2,47,35,25,28,47,43,37,35),('22-501','IT',3,1,47,35,39,47,42,43,40,41),('22-501','IT',3,2,47,45,38,34,52,33,31,30),('22-501','IT',4,1,55,52,53,50,45,34,33,30);

/*Table structure for table `secondin` */

DROP TABLE IF EXISTS `secondin`;

CREATE TABLE `secondin` (
  `RollNo` varchar(255) DEFAULT '0',
  `Branch` varchar(250) DEFAULT '0',
  `Year` int(50) DEFAULT '0',
  `Sem` int(50) DEFAULT '0',
  `Sub1` int(50) DEFAULT '0',
  `Sub2` int(50) DEFAULT '0',
  `Sub3` int(50) DEFAULT '0',
  `Sub4` int(50) DEFAULT '0',
  `Sub5` int(50) DEFAULT '0',
  `Sub6` int(50) DEFAULT '0',
  `Lab-I` int(50) DEFAULT '0',
  `Lab-II` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `secondin` */

insert  into `secondin`(`RollNo`,`Branch`,`Year`,`Sem`,`Sub1`,`Sub2`,`Sub3`,`Sub4`,`Sub5`,`Sub6`,`Lab-I`,`Lab-II`) values ('145236','CSE',2,1,20,21,24,23,21,16,19,18),('145236','CSE',2,2,20,21,24,25,23,22,20,19),('145236','CSE',3,1,20,21,24,25,23,20,18,19),('145236','CSE',3,2,20,21,23,20,25,24,23,20),('145236','CSE',4,1,20,21,24,25,23,20,22,21),('22-501','IT',2,1,12,11,16,14,17,19,23,25),('22-501','IT',2,2,17,18,16,14,13,17,19,14),('22-501','IT',3,1,15,19,13,14,15,17,11,10),('22-501','IT',3,2,15,19,20,13,16,17,11,15),('22-501','IT',4,1,15,25,16,21,15,17,11,23);

/*Table structure for table `studentreg` */

DROP TABLE IF EXISTS `studentreg`;

CREATE TABLE `studentreg` (
  `RollNo` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Surname` varchar(50) NOT NULL,
  `FatherName` varchar(50) NOT NULL,
  `MotherName` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `EmailId` varchar(50) NOT NULL,
  `Mobile` varchar(50) NOT NULL,
  `Nationality` varchar(50) NOT NULL,
  `Religion` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Bloodgroup` varchar(50) NOT NULL,
  `Branch` varchar(50) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `FatherOccu` varchar(50) NOT NULL,
  `MotherOccu` varchar(50) NOT NULL,
  `FatherIncome` int(50) NOT NULL,
  `MotherIncome` int(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  PRIMARY KEY (`RollNo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `studentreg` */

insert  into `studentreg`(`RollNo`,`Name`,`Surname`,`FatherName`,`MotherName`,`DOB`,`EmailId`,`Mobile`,`Nationality`,`Religion`,`Gender`,`Bloodgroup`,`Branch`,`Address`,`FatherOccu`,`MotherOccu`,`FatherIncome`,`MotherIncome`,`Phone`) values ('145236','Syyed','Humayun','Azmath Ali','Ayesha Farzana','10-08-1996','Syyed@gmail.com','7845123698','Indian','Muslim','Male','B -Ve','CSE','Hafeezpet','Mechanic','Housewife',100000,0,'8521479632'),('22-501','Ahmed','Bawazeer','Abdul','Naf','10-08-1995','ahmed@gmail.com','9876543210','indian','Muslim','Male','O+','IT','Hyderabad','Bussiness','Home Maker',1000000,1000000,'8796543210');

/*Table structure for table `thirdex` */

DROP TABLE IF EXISTS `thirdex`;

CREATE TABLE `thirdex` (
  `RollNo` varchar(255) DEFAULT '0',
  `Branch` varchar(255) DEFAULT '0',
  `Year` int(50) DEFAULT '0',
  `Sem` int(50) DEFAULT '0',
  `Sub1` int(50) DEFAULT '0',
  `Sub2` int(50) DEFAULT '0',
  `Sub3` int(50) DEFAULT '0',
  `Seminar` int(50) DEFAULT '0',
  `Project` int(50) DEFAULT '0',
  `Viva` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `thirdex` */

insert  into `thirdex`(`RollNo`,`Branch`,`Year`,`Sem`,`Sub1`,`Sub2`,`Sub3`,`Seminar`,`Project`,`Viva`) values ('145236','CSE',4,2,58,56,59,54,51,52),('22-501','IT',4,2,55,59,89,75,74,65);

/*Table structure for table `thirdin` */

DROP TABLE IF EXISTS `thirdin`;

CREATE TABLE `thirdin` (
  `RollNo` varchar(255) DEFAULT '0',
  `Branch` varchar(255) DEFAULT '0',
  `Year` int(50) DEFAULT '0',
  `Sem` int(50) DEFAULT '0',
  `Sub1` int(50) DEFAULT '0',
  `Sub2` int(50) DEFAULT '0',
  `Sub3` int(50) DEFAULT '0',
  `Seminar` int(50) DEFAULT '0',
  `Project` int(50) DEFAULT '0',
  `Viva` int(50) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `thirdin` */

insert  into `thirdin`(`RollNo`,`Branch`,`Year`,`Sem`,`Sub1`,`Sub2`,`Sub3`,`Seminar`,`Project`,`Viva`) values ('145236','CSE',4,2,21,20,21,23,50,45),('22-501','IT',4,2,12,18,20,21,15,10);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
