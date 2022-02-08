CREATE DATABASE IF NOT EXISTS `taks3`;
USE `taks3`;


CREATE TABLE IF NOT EXISTS `clients` (
  `ClientID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(60) NOT NULL DEFAULT '0',
  `PassportID` varchar(30) NOT NULL DEFAULT '0',
  `Address` varchar(60) NOT NULL DEFAULT '0',
  `Phone` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ClientID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `deposits` (
  `DepositID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `ShelfLife` int(11) NOT NULL DEFAULT 0,
  `Rate(%)` float(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`DepositID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `accounts` (
  `AccountNumber` int(11) NOT NULL AUTO_INCREMENT,
  `ClientID` int(11) NOT NULL,
  `DepositID` int(11) NOT NULL,
  `DateOppening` date NOT NULL,
  `DateClosing` date DEFAULT NULL,
  `Sum` decimal(10,2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`AccountNumber`),
  KEY `clientid` (`ClientID`),
  KEY `depositid` (`DepositID`),
  CONSTRAINT `clientid` FOREIGN KEY (`ClientID`) REFERENCES `clients` (`ClientID`),
  CONSTRAINT `depositid` FOREIGN KEY (`DepositID`) REFERENCES `deposits` (`DepositID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
