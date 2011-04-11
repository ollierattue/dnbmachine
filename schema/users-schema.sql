-- phpMyAdmin SQL Dump
-- version 2.11.8.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2011 at 01:15 PM
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `user_username` varchar(50) NOT NULL,
  `user_email` varchar(255) NOT NULL default '',
  `user_pass` varchar(60) NOT NULL default '',
  `user_date` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_modified` datetime NOT NULL default '0000-00-00 00:00:00',
  `user_last_login` datetime default NULL,
  `user_role` varchar(20) NOT NULL default 'fan',
  `user_first_name` varchar(200) NOT NULL,
  `user_surname` varchar(200) NOT NULL,
  `user_country` varchar(200) NOT NULL,
  `activated` int(1) NOT NULL default '1',
  PRIMARY KEY  (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;
