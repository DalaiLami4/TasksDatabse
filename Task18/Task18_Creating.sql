CREATE DATABASE IF NOT EXISTS `task18` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `task18`;


CREATE TABLE IF NOT EXISTS `customers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `models` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Model` text NOT NULL,
  `Specifications` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Name`,`Model`(100),`ID`) USING BTREE,
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `Model` (`Model`) USING HASH
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `contracts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerID` int(11) NOT NULL,
  `DateOfRegistration` date NOT NULL,
  `DateOfExecution` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_contracts_customers` (`CustomerID`),
  CONSTRAINT `FK_contracts_customers` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `sales` (
  `ContractID` int(11) NOT NULL,
  `ModelID` int(11) NOT NULL,
  `Number` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ContractID`,`ModelID`),
  KEY `FK_sales_models` (`ModelID`),
  CONSTRAINT `FK_sales_contracts` FOREIGN KEY (`ContractID`) REFERENCES `contracts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_sales_models` FOREIGN KEY (`ModelID`) REFERENCES `models` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;