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
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
CREATE TABLE IF NOT EXISTS `tracks` (
  `track_id` int(10) NOT NULL auto_increment,
  `track_name` varchar(300) NOT NULL,
  `track_url_slug` varchar(200) default NULL,
  `track_artist_id` int(10) default NULL,
  `track_record_label_id` int(3) default NULL,
  `track_status_id` int(2) default NULL,
  `track_soundcloud_url` varchar(500) default NULL,
  `track_soundcloud_id` varchar(20) default NULL,
  `track_youtube_url` varchar(500) default NULL,
  `track_youtube_id` varchar(20) default NULL,
  `track_release_date` datetime default NULL,
  `track_release_year` int(2) default NULL,
  `track_release_label` int(3) default NULL,
  `track_buy_url` varchar(400) default NULL,
  `track_added` datetime default NULL,
  `track_modified` datetime default NULL,
  PRIMARY KEY  (`track_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=86 ;
