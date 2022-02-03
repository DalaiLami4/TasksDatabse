CREATE DATABASE IF NOT EXISTS `task2_retail`;
USE `task2_retail`;


CREATE TABLE IF NOT EXISTS `dillers` (
  `DillerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `Address` varchar(100) NOT NULL DEFAULT '0',
  `Phone` varchar(11) NOT NULL DEFAULT '0',
  `Contact` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DillerID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `RecieptDate` date NOT NULL,
  `Number` int(11) NOT NULL DEFAULT 0,
  `WholesalePrice` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `sales` (
  `SaleID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) NOT NULL DEFAULT 0,
  `DillerID` int(11) NOT NULL DEFAULT 0,
  `DateSale` date NOT NULL,
  `NumberSold` int(11) NOT NULL DEFAULT 0,
  `RetailPrice` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`SaleID`),
  KEY `productid` (`ProductID`),
  KEY `dillerid` (`DillerID`),
  CONSTRAINT `dillerid` FOREIGN KEY (`DillerID`) REFERENCES `dillers` (`DillerID`),
  CONSTRAINT `productid` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
