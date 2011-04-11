-- phpMyAdmin SQL Dump
-- version 2.11.8.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2011 at 11:35 AM
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
-- Table structure for table `track_status`
--

DROP TABLE IF EXISTS `track_status`;
CREATE TABLE IF NOT EXISTS `track_status` (
  `track_status_id` int(2) NOT NULL auto_increment,
  `track_status_name` varchar(30) default NULL,
  `track_status_slug` varchar(30) default NULL,
  `track_status_order` int(2) default NULL,
  PRIMARY KEY  (`track_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;
