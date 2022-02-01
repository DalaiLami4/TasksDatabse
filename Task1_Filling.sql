CREATE DATABASE IF NOT EXISTS `task 1`;
USE `task 1`;


CREATE TABLE IF NOT EXISTS `customers` (
  `Name` varchar(50) NOT NULL,
  `Address` varchar(70) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DELETE FROM `customers`;
INSERT INTO `customers` (`Name`, `Address`, `Phone`) VALUES
	('Dima', 'Agapovka 81', '89507361975'),
	('Galina', 'Magnitogorsk', '88007353555'),
	('Ivan', 'Magnitogorsk, Karl Marks 165/3', '85162135487');


CREATE TABLE IF NOT EXISTS `orders` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `CustomerName` varchar(50) NOT NULL DEFAULT '0',
  `NumberDeal` int(11) NOT NULL DEFAULT 1,
  `DateDeal` date NOT NULL,
  `Product` int(11) NOT NULL DEFAULT 0,
  `PlannedDelivery` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`OrderID`),
  KEY `cusotmer` (`CustomerName`),
  KEY `product` (`Product`),
  CONSTRAINT `cusotmer` FOREIGN KEY (`CustomerName`) REFERENCES `customers` (`Name`),
  CONSTRAINT `product` FOREIGN KEY (`Product`) REFERENCES `products` (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


DELETE FROM `orders`;
INSERT INTO `orders` (`OrderID`, `CustomerName`, `NumberDeal`, `DateDeal`, `Product`, `PlannedDelivery`) VALUES
	(1, 'Dima', 1, '2022-02-01', 1, 10),
	(2, 'Ivan', 2, '2022-02-08', 4, 30);



CREATE TABLE IF NOT EXISTS `products` (
  `ProductID` int(11) NOT NULL AUTO_INCREMENT,
  `ProductName` varchar(50) NOT NULL DEFAULT '0',
  `Price` decimal(65,0) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


DELETE FROM `products`;
INSERT INTO `products` (`ProductID`, `ProductName`, `Price`) VALUES
	(1, 'Apple', 10),
	(2, 'Carrot', 7),
	(3, 'Tomato', 14),
	(4, 'Egg', 1);


CREATE TABLE IF NOT EXISTS `shipments` (
  `ShipmentID` int(11) NOT NULL AUTO_INCREMENT,
  `OrderID` int(11) NOT NULL,
  `DateShipment` date NOT NULL,
  `ShipmentProducts` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ShipmentID`),
  KEY `orderid` (`OrderID`),
  CONSTRAINT `orderid` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;


DELETE FROM `shipments`;
INSERT INTO `shipments` (`ShipmentID`, `OrderID`, `DateShipment`, `ShipmentProducts`) VALUES
	(1, 1, '2022-02-06', 10),
	(2, 2, '2022-02-15', 15);