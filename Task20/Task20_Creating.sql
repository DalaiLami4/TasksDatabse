CREATE DATABASE IF NOT EXISTS `task20`;
USE `task20`;


CREATE TABLE IF NOT EXISTS `medicines` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Manufacturer` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `pharmacies` (
  `PharmacyNumber` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`PharmacyNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `applications` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DateOfRegistration` date NOT NULL,
  `PharmacyID` int(11) NOT NULL,
  `DateOfExecution` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_applications_pharmacies` (`PharmacyID`),
  CONSTRAINT `FK_applications_pharmacies` FOREIGN KEY (`PharmacyID`) REFERENCES `pharmacies` (`PharmacyNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `purchases` (
  `ApplicationID` int(11) NOT NULL,
  `MedicineID` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`ApplicationID`,`MedicineID`),
  KEY `FK_purchases_medicines` (`MedicineID`),
  CONSTRAINT `FK_purchases_applications` FOREIGN KEY (`ApplicationID`) REFERENCES `applications` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_purchases_medicines` FOREIGN KEY (`MedicineID`) REFERENCES `medicines` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;