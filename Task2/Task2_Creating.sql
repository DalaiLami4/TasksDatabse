CREATE DATABASE IF NOT EXISTS `task2_retail`;
USE `task2_retail`;

CREATE TABLE IF NOT EXISTS `dillers` (
  `DillerID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `Address` varchar(100) NOT NULL DEFAULT '0',
  `Phone` varchar(11) NOT NULL DEFAULT '0',
  `Contact` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`DillerID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `supplies` (
  `SupplyID` int(11) NOT NULL,
  `DillerID` int(11) DEFAULT NULL,
  `DateOfReceipt` date NOT NULL,
  `Number` int(11) NOT NULL,
  `WholesalePrice` decimal(10,0) NOT NULL,
  PRIMARY KEY (`SupplyID`),
  KEY `DillerID` (`DillerID`),
  CONSTRAINT `dillersid` FOREIGN KEY (`DillerID`) REFERENCES `dillers` (`DillerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `SupplyID` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ProductID`),
  KEY `supplyid` (`SupplyID`),
  CONSTRAINT `supplyid` FOREIGN KEY (`SupplyID`) REFERENCES `supplies` (`SupplyID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `sales` (
  `SaleID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) NOT NULL DEFAULT 0,
  `DateOfSale` date NOT NULL,
  `NumberSold` int(11) NOT NULL DEFAULT 0,
  `RetailPrice` decimal(10,0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`SaleID`),
  KEY `productid` (`ProductID`),
  CONSTRAINT `productid` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;