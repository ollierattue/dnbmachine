-- phpMyAdmin SQL Dump
-- version 2.11.8.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2011 at 04:26 PM
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
-- Table structure for table `record_labels`
--

DROP TABLE IF EXISTS `record_labels`;
CREATE TABLE IF NOT EXISTS `record_labels` (
  `record_label_id` int(3) NOT NULL auto_increment,
  `record_label_name` varchar(100) default NULL,
  `record_label_url_slug` varchar(100) default NULL,
  `record_label_website` varchar(300) default NULL,
  `record_label_store` varchar(300) default NULL,
  PRIMARY KEY  (`record_label_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;
