CREATE DATABASE IF NOT EXISTS `task12`;
USE `task12`;


CREATE TABLE IF NOT EXISTS `drivers` (
  `DrivingLicense` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  PRIMARY KEY (`DrivingLicense`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `cars` (
  `Number` varchar(50) NOT NULL,
  `Driver` int(11) DEFAULT NULL,
  `Mark` varchar(50) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Release` year(4) NOT NULL,
  `RegistrationDate` date NOT NULL,
  PRIMARY KEY (`Number`),
  KEY `driverid` (`Driver`),
  CONSTRAINT `driverid` FOREIGN KEY (`Driver`) REFERENCES `drivers` (`DrivingLicense`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `violations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NOT NULL,
  `Fine` decimal(6,2) NOT NULL,
  `Warning` varchar(3) NOT NULL,
  `PeriodOfDisqualification` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `recoveries` (
  `ViolationID` int(11) NOT NULL,
  `DateOfViolation` datetime NOT NULL,
  `DrivingLicense` int(11) NOT NULL,
  `Location` varchar(50) NOT NULL,
  `Fine` decimal(6,2) NOT NULL,
  `Paid` varchar(3) NOT NULL DEFAULT 'No',
  `PeriodOfDisqualification` int(11) DEFAULT NULL,
  `BaseValue` decimal(6,2) NOT NULL,
  `InspectorID` int(11) NOT NULL,
  PRIMARY KEY (`ViolationID`,`DateOfViolation`,`DrivingLicense`),
  KEY `drivinglicense` (`DrivingLicense`),
  CONSTRAINT `drivinglicense` FOREIGN KEY (`DrivingLicense`) REFERENCES `drivers` (`DrivingLicense`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `violationid` FOREIGN KEY (`ViolationID`) REFERENCES `violations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;