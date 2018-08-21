SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


USE `erp`;

DROP TABLE IF EXISTS `item`;
DROP TABLE IF EXISTS `inventory`;
DROP TABLE IF EXISTS `customer`;
DROP TABLE IF EXISTS `salesOrder`;
DROP TABLE IF EXISTS `workOrder`;

CREATE TABLE IF NOT EXISTS `item` (
  `itemId` int(11) NOT NULL AUTO_INCREMENT,
  `partId` varchar(50) NOT NULL,
  `partName` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `revision` varchar(10) NOT NULL,
  `customerId` int(11),

  PRIMARY KEY (`itemId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `inventory` (
 `inventoryId` int(11) NOT NULL AUTO_INCREMENT,
 `itemId` int(11) NOT NULL,
 `quantity` int(11),
 `lotId` varchar(20),
 `batchId` varchar(20),
 `manufacturerCode` varchar(20),
 `comment` text(300),
  PRIMARY KEY (`inventoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `customer` (
 `customerId` varchar (50) NOT NULL UNIQUE,
 `phone` varchar(20),
 `postalCode` varchar(20),

  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `salesOrder` (
 `soId` int (11) NOT NULL AUTO_INCREMENT,
 `itemId` int(11) NOT NULL,
 `customerId` varchar(20),
 `quantity` int(11) NOT NULL,
 `dueDate` varchar(20) NOT NULL,
 `shipDate` varchar(20),
 `close` boolean DEFAULT FALSE,

  PRIMARY KEY (`soId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS `workOrder` (
 `woId` int (11) NOT NULL AUTO_INCREMENT,
 `itemId` int(11) NOT NULL,
 `quantity` int(11) NOT NULL,
 `soId` int(11),
 `complete` boolean DEFAULT FALSE,
 `close` boolean DEFAULT FALSE,

  PRIMARY KEY (`woId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

