CREATE DATABASE IF NOT EXISTS `task21`;
USE `task21`;

CREATE TABLE IF NOT EXISTS `cashiers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `currency` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `SellingRate` decimal(10,2) NOT NULL,
  `BuyingRate` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `customers` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` text NOT NULL,
  `PassportID` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `deals` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SoldCurrencyID` int(11) NOT NULL,
  `PurchasedCurrencyID` int(11) NOT NULL,
  `CashierID` int(11) NOT NULL,
  `CustomerID` int(11) NOT NULL,
  `DateOfDeal` date NOT NULL,
  `TimeOfDeal` time NOT NULL,
  `AmountOfSoldCurrency` decimal(12,2) NOT NULL,
  `AmountOfPurchasedCurrency` decimal(12,2) NOT NULL,
  PRIMARY KEY (`ID`,`CashierID`) USING BTREE,
  UNIQUE KEY `ID` (`ID`),
  KEY `FK_deals_currency` (`SoldCurrencyID`),
  KEY `FK_deals_currency_2` (`PurchasedCurrencyID`),
  KEY `FK_deals_cashiers` (`CashierID`),
  KEY `FK_deals_customers` (`CustomerID`),
  CONSTRAINT `FK_deals_cashiers` FOREIGN KEY (`CashierID`) REFERENCES `cashiers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_deals_currency` FOREIGN KEY (`SoldCurrencyID`) REFERENCES `currency` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_deals_currency_2` FOREIGN KEY (`PurchasedCurrencyID`) REFERENCES `currency` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_deals_customers` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;