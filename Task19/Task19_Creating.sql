CREATE DATABASE IF NOT EXISTS `task19`;
USE `task19`;


CREATE TABLE IF NOT EXISTS `workshops` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Foreman` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `WorkshopID` int(11) NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_products_workshops` (`WorkshopID`),
  CONSTRAINT `FK_products_workshops` FOREIGN KEY (`WorkshopID`) REFERENCES `workshops` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `contracts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer` text NOT NULL,
  `CustomerAddress` text NOT NULL,
  `DateOfRegistration` date NOT NULL,
  `DateOfExecution` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `orders` (
  `ContractID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  PRIMARY KEY (`ContractID`,`ProductID`),
  KEY `FK_orders_products` (`ProductID`),
  CONSTRAINT `FK_orders_contracts` FOREIGN KEY (`ContractID`) REFERENCES `contracts` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;