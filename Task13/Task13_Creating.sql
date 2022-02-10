CREATE DATABASE IF NOT EXISTS `task13`;
USE `task13`;


CREATE TABLE IF NOT EXISTS `apartments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Address` text NOT NULL,
  `NumberOfResidents` int(11) NOT NULL,
  `Square` float NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `lodgers` (
  `PersonalAccount` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`PersonalAccount`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `rents` (
  `LodgersID` int(11) NOT NULL,
  `ApartmentID` int(11) NOT NULL,
  PRIMARY KEY (`LodgersID`,`ApartmentID`),
  UNIQUE KEY `LodgersID` (`LodgersID`),
  UNIQUE KEY `ApartmentID` (`ApartmentID`),
  CONSTRAINT `apartmentid` FOREIGN KEY (`ApartmentID`) REFERENCES `apartments` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lodgersid` FOREIGN KEY (`LodgersID`) REFERENCES `lodgers` (`PersonalAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `services` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` text NOT NULL,
  `Unit` text NOT NULL,
  `Price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `payments` (
  `PersonalAccount` int(11) NOT NULL,
  `ServicesID` int(11) NOT NULL,
  `ActuallySpent` float NOT NULL,
  `PayUpTo` date NOT NULL,
  `PaidOnTime` varchar(3) NOT NULL DEFAULT 'Нет',
  `DateOfPayment` date DEFAULT NULL,
  PRIMARY KEY (`PersonalAccount`,`ServicesID`,`PayUpTo`),
  KEY `servicesid` (`ServicesID`),
  CONSTRAINT `personal_account` FOREIGN KEY (`PersonalAccount`) REFERENCES `lodgers` (`PersonalAccount`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `servicesid` FOREIGN KEY (`ServicesID`) REFERENCES `services` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;