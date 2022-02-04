CREATE DATABASE IF NOT EXISTS `task7`;
USE `task7`;


CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Unit` varchar(50) NOT NULL DEFAULT 'Thing',
  `RetailPrice` decimal(20,6) NOT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `departments` (
  `DepartmentID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `ProductID` int(11) NOT NULL DEFAULT 0,
  `DepartmentHead` varchar(50) NOT NULL,
  `Phone` varchar(50) NOT NULL,
  `Volume` int(11) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`),
  KEY `prodid` (`ProductID`),
  CONSTRAINT `prodid` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `sales` (
  `SaleID` int(11) NOT NULL AUTO_INCREMENT,
  `DepartmentID` int(11) NOT NULL DEFAULT 0,
  `DateOfSale` date NOT NULL,
  `NumberSold` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`SaleID`),
  KEY `depid` (`DepartmentID`),
  CONSTRAINT `depid` FOREIGN KEY (`DepartmentID`) REFERENCES `departments` (`DepartmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
