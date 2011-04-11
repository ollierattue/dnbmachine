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
-- Table structure for table `users_password_reset`
--

DROP TABLE IF EXISTS `users_password_reset`;
CREATE TABLE IF NOT EXISTS `users_password_reset` (
  `password_reset_code` varchar(80) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `password_reset_date` datetime NOT NULL,
  PRIMARY KEY  (`password_reset_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
