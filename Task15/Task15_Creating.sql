CREATE DATABASE IF NOT EXISTS `task15` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `task15`;


CREATE TABLE IF NOT EXISTS `customers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Phone` text NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Firm` text NOT NULL,
  `Model` text NOT NULL,
  `Specifications` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Guarantee` float NOT NULL DEFAULT 0,
  `Picter` blob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `shops` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` text NOT NULL,
  `DeliveryPayment` varchar(3) NOT NULL DEFAULT 'Нет',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `product_availability` (
  `ShopID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  PRIMARY KEY (`ShopID`,`ProductID`),
  KEY `avail_prod` (`ProductID`),
  CONSTRAINT `avail_prod` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `avail_shop` FOREIGN KEY (`ShopID`) REFERENCES `shops` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ShopID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderTime` time NOT NULL,
  `Number` int(11) NOT NULL,
  `Confirmation` varchar(3) NOT NULL DEFAULT 'Нет',
  PRIMARY KEY (`ID`),
  KEY `order_shop` (`ShopID`),
  KEY `order_prod` (`ProductID`),
  KEY `order_customer` (`CustomerID`),
  CONSTRAINT `order_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `order_prod` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `order_shop` FOREIGN KEY (`ShopID`) REFERENCES `shops` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `deliveries` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryTime` time NOT NULL,
  `Address` text NOT NULL,
  `Courier` text NOT NULL,
  PRIMARY KEY (`OrderID`,`CustomerID`),
  UNIQUE KEY `OrderID` (`OrderID`),
  KEY `deliv_customer` (`CustomerID`) USING BTREE,
  CONSTRAINT `deliv_customer` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `deliv_order` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;