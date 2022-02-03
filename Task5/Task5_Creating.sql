CREATE DATABASE IF NOT EXISTS `task5`;
USE `task5`;


CREATE TABLE IF NOT EXISTS `product_kinds` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `product_models` (
  `ModelID` int(11) NOT NULL,
  `ModelName` varchar(50) NOT NULL DEFAULT '',
  `ProductID` int(11) NOT NULL DEFAULT 0,
  `ModelPrice` decimal(20,6) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ModelID`),
  KEY `productid` (`ProductID`),
  CONSTRAINT `productid` FOREIGN KEY (`ProductID`) REFERENCES `product_kinds` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `receipts` (
  `ReceiptID` int(11) NOT NULL,
  `ModelID` int(11) NOT NULL,
  `ReceiptDate` date NOT NULL,
  `Number` int(11) NOT NULL,
  `Recipient` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ReceiptID`),
  KEY `modelid` (`ModelID`),
  CONSTRAINT `modelid` FOREIGN KEY (`ModelID`) REFERENCES `product_models` (`ModelID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
