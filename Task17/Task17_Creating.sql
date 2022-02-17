CREATE DATABASE IF NOT EXISTS `task17`;
USE `task17`;

CREATE TABLE IF NOT EXISTS `employees` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `Position` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Firm` text NOT NULL,
  `Model` text NOT NULL,
  `Specifications` text NOT NULL,
  `GuaranteePeriod` int(11) NOT NULL,
  `Picture` blob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `orders` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Customer` text NOT NULL,
  `ProductID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `Guarantee` varchar(3) NOT NULL DEFAULT 'No',
  `DateOfReceipt` date NOT NULL,
  PRIMARY KEY (`ID`,`EmployeeID`) USING BTREE,
  KEY `FK_orders_products` (`ProductID`),
  KEY `FK_orders_employees` (`EmployeeID`),
  CONSTRAINT `FK_orders_employees` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_orders_products` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `execution_of_orders` (
  `OrderID` int(11) NOT NULL,
  `EmployeeID` int(11) NOT NULL,
  `TypeOfRepair` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `DateOfExecution` date NOT NULL,
  `ClientNotification` varchar(3) NOT NULL DEFAULT 'No',
  `DateOfReceiving` date DEFAULT NULL,
  `PaymentAmount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `FK_execution_of_orders_employees` (`EmployeeID`),
  CONSTRAINT `FK_execution_of_orders_employees` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_execution_of_orders_orders` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;