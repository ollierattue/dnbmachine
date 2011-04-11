-- phpMyAdmin SQL Dump
-- version 2.11.8.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2011 at 01:21 PM
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
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `artist_id` int(10) NOT NULL auto_increment,
  `artist_name` varchar(300) NOT NULL,
  `artist_url_slug` varchar(200) NOT NULL,
  `artist_soundcloud` varchar(500) default NULL,
  `artist_twitter` varchar(50) default NULL,
  `artist_facebook` varchar(100) default NULL,
  `artist_myspace` varchar(200) NOT NULL,
  `artist_disogs` varchar(200) default NULL,
  `artist_website` varchar(500) default NULL,
  PRIMARY KEY  (`artist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;
