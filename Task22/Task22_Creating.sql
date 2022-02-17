CREATE DATABASE IF NOT EXISTS `task22`;
USE `task22`;


CREATE TABLE IF NOT EXISTS `departments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `workers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentID` int(11) NOT NULL,
  `FullName` text NOT NULL,
  `Position` text NOT NULL,
  `Salary` decimal(10,2) NOT NULL,
  `Premium` decimal(10,2) NOT NULL,
  `Month` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_workers_departments` (`DepartmentID`),
  CONSTRAINT `FK_workers_departments` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `organizations` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `CountryID` int(11) NOT NULL,
  `City` text NOT NULL,
  `Address` text NOT NULL,
  `Phone` text NOT NULL,
  `E-mail` text NOT NULL,
  `Website` text DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `contracts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `OrganizationID` int(11) NOT NULL DEFAULT 0,
  `DateOfConclusion` date NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_contracts_organizations` (`OrganizationID`),
  CONSTRAINT `FK_contracts_organizations` FOREIGN KEY (`OrganizationID`) REFERENCES `organizations` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `deliveries` (
  `ContractID` int(11) NOT NULL,
  `TypeOfEquipment` text NOT NULL,
  `UserComment` text DEFAULT NULL,
  `WorkerID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ContractID`),
  KEY `FK_deliveries_workers` (`WorkerID`),
  CONSTRAINT `FK_deliveries_contracts` FOREIGN KEY (`ContractID`) REFERENCES `contracts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_deliveries_workers` FOREIGN KEY (`WorkerID`) REFERENCES `workers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;