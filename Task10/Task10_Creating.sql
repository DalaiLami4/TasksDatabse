CREATE DATABASE IF NOT EXISTS `task10`;
USE `task10`;


CREATE TABLE IF NOT EXISTS `diagnoses` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `doctors` (
  `FullName` varchar(50) NOT NULL,
  `Speciality` varchar(50) NOT NULL,
  `Category` int(11) NOT NULL,
  PRIMARY KEY (`FullName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `patients` (
  `MedicalCardID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL,
  `DOB` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Discount(%)` float DEFAULT 0,
  PRIMARY KEY (`MedicalCardID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `appointment_cards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Doctor` varchar(50) NOT NULL,
  `Time` text NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  KEY `doctor` (`Doctor`),
  CONSTRAINT `doctor` FOREIGN KEY (`Doctor`) REFERENCES `doctors` (`FullName`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `appointments` (
  `AppointmentCard` int(11) NOT NULL AUTO_INCREMENT,
  `Patient` int(11) NOT NULL,
  `DateOfVisit` date NOT NULL,
  `VisitPurpose` varchar(100) NOT NULL,
  `Diagnosis` int(11) DEFAULT NULL,
  `Price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`AppointmentCard`,`DateOfVisit`) USING BTREE,
  KEY `patient` (`Patient`),
  KEY `diagnosis` (`Diagnosis`),
  CONSTRAINT `appcardid` FOREIGN KEY (`AppointmentCard`) REFERENCES `appointment_cards` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `diagnosis` FOREIGN KEY (`Diagnosis`) REFERENCES `diagnoses` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `patient` FOREIGN KEY (`Patient`) REFERENCES `patients` (`MedicalCardID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;s