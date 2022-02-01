CREATE DATABASE IF NOT EXISTS `task6`;
USE `task6`;


CREATE TABLE IF NOT EXISTS `countries` (
  `CountryID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `VisaPrice` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`CountryID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `routes` (
  `RouteID` int(11) NOT NULL,
  `CountryID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`RouteID`),
  KEY `countryid` (`CountryID`),
  CONSTRAINT `countryid` FOREIGN KEY (`CountryID`) REFERENCES `countries` (`CountryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `sales` (
  `RouteID` int(11) NOT NULL,
  `Purpose` varchar(50) NOT NULL,
  `TicketPrice` double NOT NULL DEFAULT 0,
  `NumberSales` int(11) NOT NULL DEFAULT 0,
  `DateSale` date NOT NULL,
  KEY `routeid` (`RouteID`),
  CONSTRAINT `routeid` FOREIGN KEY (`RouteID`) REFERENCES `routes` (`RouteID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;