CREATE DATABASE IF NOT EXISTS `task14`;
USE `task14`;


CREATE TABLE IF NOT EXISTS `dishes` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Type` text NOT NULL,
  `Weight` float NOT NULL,
  `Picture` blob NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` text NOT NULL,
  `Calories` float NOT NULL,
  `Weight(g)` float NOT NULL,
  `Price` decimal(6,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `recipes` (
  `RecipeID` int(11) NOT NULL AUTO_INCREMENT,
  `DishID` int(11) NOT NULL,
  `CookingTime(min)` int(11) NOT NULL,
  `CookingTechnology` text NOT NULL,
  PRIMARY KEY (`RecipeID`,`DishID`),
  UNIQUE KEY `RecipeID` (`RecipeID`),
  UNIQUE KEY `DishID` (`DishID`),
  CONSTRAINT `recipe_dish` FOREIGN KEY (`DishID`) REFERENCES `dishes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `compounds` (
  `DishID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  PRIMARY KEY (`DishID`,`ProductID`),
  KEY `com_prod` (`ProductID`),
  CONSTRAINT `com_dish` FOREIGN KEY (`DishID`) REFERENCES `dishes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `com_prod` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


CREATE TABLE IF NOT EXISTS `daily_cooking` (
  `DishID` int(11) NOT NULL,
  `NumberOfServings` int(11) NOT NULL,
  `CookingDate` date NOT NULL,
  PRIMARY KEY (`DishID`,`CookingDate`),
  CONSTRAINT `daily_dish` FOREIGN KEY (`DishID`) REFERENCES `dishes` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;