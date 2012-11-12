-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 12, 2012 at 04:11 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `OnlineShoppingDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `Catagories`
--

CREATE TABLE IF NOT EXISTS `Catagories` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `ProductFamily` varchar(30) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `UpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustomerLocationInformation`
--

CREATE TABLE IF NOT EXISTS `CustomerLocationInformation` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `User_ID` int(15) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `City` varchar(40) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `UpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the customer location' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `CustomersLogInInfos`
--

CREATE TABLE IF NOT EXISTS `CustomersLogInInfos` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `UpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the login information of customers' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `OrderDetails`
--

CREATE TABLE IF NOT EXISTS `OrderDetails` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `User_ID` int(15) NOT NULL,
  `Category_ID` int(15) NOT NULL,
  `ProductName_ID` int(15) NOT NULL,
  `OrderLocation` varchar(60) NOT NULL,
  `OrderDate` datetime NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `Updated Date` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores order information.' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ProductLists`
--

CREATE TABLE IF NOT EXISTS `ProductLists` (
  `ID` int(15) NOT NULL AUTO_INCREMENT,
  `Product_ID` int(15) NOT NULL,
  `SubProductName` varchar(50) NOT NULL,
  `CreatedDate` datetime NOT NULL,
  `UpdatedDate` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the item list along with their category id.' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
