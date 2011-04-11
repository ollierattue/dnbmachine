-- phpMyAdmin SQL Dump
-- version 2.11.8.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2011 at 11:09 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dnbmachine_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_types`
--

DROP TABLE IF EXISTS `track_types`;
CREATE TABLE IF NOT EXISTS `track_types` (
  `track_type_id` int(2) NOT NULL auto_increment,
  `track_type_name` varchar(30) default NULL,
  `track_type_slug` varchar(30) default NULL,
  `track_type_order` int(2) default NULL,
  PRIMARY KEY  (`track_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;
