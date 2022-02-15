CREATE DATABASE IF NOT EXISTS `task16`;
USE `task16`;


CREATE TABLE IF NOT EXISTS `banks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `LegalAddress` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `atms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Address` text NOT NULL,
  `BankID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_atms_banks` (`BankID`),
  CONSTRAINT `FK_atms_banks` FOREIGN KEY (`BankID`) REFERENCES `banks` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `customers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `BankID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_customers_banks` (`BankID`),
  CONSTRAINT `FK_customers_banks` FOREIGN KEY (`BankID`) REFERENCES `banks` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `operations` (
  `CustomerID` int(11) NOT NULL,
  `ATM_ID` int(11) NOT NULL,
  `DateAndTime` datetime NOT NULL,
  `Сommission` varchar(3) NOT NULL DEFAULT 'Нет',
  `Sum` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CustomerID`,`ATM_ID`,`DateAndTime`) USING BTREE,
  KEY `FK_operations_atms` (`ATM_ID`),
  CONSTRAINT `FK_operations_atms` FOREIGN KEY (`ATM_ID`) REFERENCES `atms` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_operations_customers` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;