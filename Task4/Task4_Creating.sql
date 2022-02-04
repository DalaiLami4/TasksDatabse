CREATE DATABASE IF NOT EXISTS `task4`;
USE `task4`;


CREATE TABLE IF NOT EXISTS `categories` (
  `Category` int(11) NOT NULL DEFAULT 1,
  `HourlyRate` double NOT NULL DEFAULT 0,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `workers` (
  `WorkerID` int(11) NOT NULL AUTO_INCREMENT,
  `Category` int(11) NOT NULL DEFAULT 0,
  `FullName` varchar(50) NOT NULL DEFAULT '0',
  `PassportID` varchar(50) NOT NULL DEFAULT '0',
  `DOB` date NOT NULL,
  `Phone` varchar(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`WorkerID`),
  KEY `category` (`Category`),
  CONSTRAINT `category` FOREIGN KEY (`Category`) REFERENCES `categories` (`Category`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `completed_works` (
  `WorkID` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(50) NOT NULL,
  `WorkerID` int(11) NOT NULL,
  `DateOfComplition` date NOT NULL,
  `HoursWorked` int(11) NOT NULL,
  PRIMARY KEY (`WorkID`),
  KEY `workerid` (`WorkerID`),
  CONSTRAINT `workerid` FOREIGN KEY (`WorkerID`) REFERENCES `workers` (`WorkerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
