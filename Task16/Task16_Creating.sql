CREATE DATABASE IF NOT EXISTS `task16`;
USE `task16`;


CREATE TABLE IF NOT EXISTS `banks` (
  `ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `LegalAddress` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `atms` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Address` text NOT NULL,
  `BankID` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_atms_banks` (`BankID`),
  CONSTRAINT `FK_atms_banks` FOREIGN KEY (`BankID`) REFERENCES `banks` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `customers` (
  `CardNumber` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Address` text NOT NULL,
  `BankID` int(11) NOT NULL,
  PRIMARY KEY (`CardNumber`) USING BTREE,
  KEY `FK_customers_banks` (`BankID`),
  CONSTRAINT `FK_customers_banks` FOREIGN KEY (`BankID`) REFERENCES `banks` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `operations` (
  `CardNumber` int(11) NOT NULL,
  `ATM_ID` int(11) NOT NULL,
  `DateAndTime` datetime NOT NULL,
  `Сommission` varchar(3) NOT NULL DEFAULT 'Нет',
  `Sum` decimal(10,2) NOT NULL,
  PRIMARY KEY (`CardNumber`,`ATM_ID`,`DateAndTime`) USING BTREE,
  UNIQUE KEY `ATM_ID` (`ATM_ID`,`DateAndTime`),
  KEY `FK_operations_atms` (`ATM_ID`),
  CONSTRAINT `FK_operations_atms` FOREIGN KEY (`ATM_ID`) REFERENCES `atms` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_operations_customers` FOREIGN KEY (`CardNumber`) REFERENCES `customers` (`CardNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;