CREATE DATABASE IF NOT EXISTS `task8_test` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `task8_test`;

CREATE TABLE IF NOT EXISTS `publications` (
  `PublicationID` int(11) NOT NULL AUTO_INCREMENT,
  `PublicationType` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` decimal(6,2) NOT NULL DEFAULT 0.000000,
  PRIMARY KEY (`PublicationID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `recipients` (
  `RecipientID` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(50) NOT NULL DEFAULT '0',
  `Address` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`RecipientID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `subscriptions` (
  `RecipientID` int(11) NOT NULL DEFAULT 0,
  `PublicationID` int(11) NOT NULL DEFAULT 0,
  `SubscriptionTerm` int(11) NOT NULL DEFAULT 0,
  `StartMonth` int(11) NOT NULL DEFAULT 0,
  `StartYear` year(4) NOT NULL DEFAULT 0000,
  PRIMARY KEY (`RecipientID`, `PublicationID`),
  KEY `recipientid` (`RecipientID`),
  KEY `publid` (`PublicationID`),
  CONSTRAINT `publid` FOREIGN KEY (`PublicationID`) REFERENCES `publications` (`PublicationID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `recipientid` FOREIGN KEY (`RecipientID`) REFERENCES `recipients` (`RecipientID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
