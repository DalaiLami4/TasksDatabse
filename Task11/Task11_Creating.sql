CREATE DATABASE IF NOT EXISTS `task11`;
USE `task11`;

CREATE TABLE IF NOT EXISTS `manufacturings` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Foreman` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `overalls` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(50) NOT NULL,
  `WearPeriod(мес)` int(11) NOT NULL,
  `Price` decimal(6,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `workers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL,
  `ManufacturingID` int(11) NOT NULL,
  `Position` varchar(50) NOT NULL,
  `Discount(%)` float NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `manid` (`ManufacturingID`),
  CONSTRAINT `manid` FOREIGN KEY (`ManufacturingID`) REFERENCES `manufacturings` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `receipts` (
  `WorkerID` int(11) NOT NULL,
  `OverallID` int(11) NOT NULL,
  `DateOfReceiving` date NOT NULL,
  `Signature` varchar(50) NOT NULL,
  PRIMARY KEY (`WorkerID`,`OverallID`,`DateOfReceiving`),
  KEY `overallid` (`OverallID`),
  CONSTRAINT `overallid` FOREIGN KEY (`OverallID`) REFERENCES `overalls` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `workerid` FOREIGN KEY (`WorkerID`) REFERENCES `workers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;