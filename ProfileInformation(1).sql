-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 09, 2012 at 07:33 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ProfileInformation`
--

-- --------------------------------------------------------

--
-- Table structure for table `Addresses`
--

CREATE TABLE IF NOT EXISTS `Addresses` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Country` text NOT NULL,
  `State` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Street` varchar(20) NOT NULL,
  `CreatedDate` date NOT NULL,
  `UpdatedDate` date NOT NULL,
  `User_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the address information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Phone_Numbers`
--

CREATE TABLE IF NOT EXISTS `Phone_Numbers` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `User_ID` int(10) NOT NULL,
  `PhoneNumberType` varchar(10) NOT NULL,
  `PhoneNumber` int(15) NOT NULL,
  `CreatedDate` date NOT NULL,
  `UpdatedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table store the phone number' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Profiles`
--

CREATE TABLE IF NOT EXISTS `Profiles` (
  `ID` int(10) NOT NULL,
  `Name` text NOT NULL,
  `DOB` date NOT NULL,
  `Gender` text NOT NULL,
  `Maritial Status` text NOT NULL,
  `Profession` text NOT NULL,
  `CreatedDate` date NOT NULL,
  `Updated Date` int(10) NOT NULL,
  `User_ID` int(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the profile information';

-- --------------------------------------------------------

--
-- Table structure for table `Skills`
--

CREATE TABLE IF NOT EXISTS `Skills` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `User_ID` int(10) NOT NULL,
  `SkillsName` text NOT NULL,
  `CreatedDate` date NOT NULL,
  `UpdatedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the skill information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `ID` int(10) NOT NULL,
  `CreatedDate` date NOT NULL,
  `UpdatedDate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores users information';

-- --------------------------------------------------------

--
-- Table structure for table `User_Skills`
--

CREATE TABLE IF NOT EXISTS `User_Skills` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `User_ID` int(10) NOT NULL,
  `Skill_ID` int(10) NOT NULL,
  `CreatedDate` date NOT NULL,
  `UpdatedDate` date NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table stores the user skill' AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
