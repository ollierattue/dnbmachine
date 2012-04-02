-- phpMyAdmin SQL Dump
-- version 3.3.2deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2012 at 01:43 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dnbmachine_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `artist_id` int(10) NOT NULL AUTO_INCREMENT,
  `artist_name` varchar(300) NOT NULL,
  `artist_url_slug` varchar(200) NOT NULL,
  `artist_soundcloud` varchar(500) DEFAULT NULL,
  `artist_twitter` varchar(50) DEFAULT NULL,
  `artist_facebook` varchar(100) DEFAULT NULL,
  `artist_myspace` varchar(200) NOT NULL,
  `artist_disogs` varchar(200) DEFAULT NULL,
  `artist_website` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`artist_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `artist_name`, `artist_url_slug`, `artist_soundcloud`, `artist_twitter`, `artist_facebook`, `artist_myspace`, `artist_disogs`, `artist_website`) VALUES
(1, 'Marcus Intalex', 'marcus-intalex', 'marcusintalex', 'marcusintalex', NULL, '', NULL, NULL),
(2, 'DJ Fresh', 'dj-fresh', NULL, '', NULL, '', NULL, NULL),
(3, 'Camo and Krooked', 'camo-and-krooked', 'camokrooked', 'camokrooked', 'CamoKrooked', '', NULL, 'http://camoandkrooked.com'),
(4, 'DJ Hazard', 'dj-hazard', NULL, '', NULL, '', NULL, NULL),
(5, 'Lomax', 'lomax', NULL, '', NULL, '', NULL, NULL),
(6, 'Ultracode', 'ultracode', 'ultracode', '', NULL, '', NULL, NULL),
(7, 'Phil tangent', 'phil-tangent', NULL, NULL, NULL, '', NULL, NULL),
(8, 'Apex', 'apex', 'apex-music', '', NULL, '', NULL, ''),
(9, 'DJ Marky & S.P.Y', 'dj-marky-and-s.p.y', NULL, NULL, NULL, '', NULL, NULL),
(10, 'Synkro', 'synkro', NULL, NULL, NULL, '', NULL, NULL),
(11, 'DJ Marky', 'dj-marky', 'dj-marky', 'djmarky', 'DJMarkyBrasil', '', NULL, 'http://www.djmarky.com.br'),
(12, 'Stray', 'stray', 'straydnb', '', '', '', NULL, ''),
(13, 'Stray', 'stray', 'straydnb', '', '', '', NULL, ''),
(14, 'dBridge', 'dbridge', 'dBridge', 'dBridge', '', '', NULL, ''),
(15, 'Netsky', 'netsky', 'netsky', 'netskymusic', 'netskymusic', 'http://www.myspace.com/netskymusic', '', 'http://www.myspace.com/netskymusic'),
(16, 'Lenzman', 'lenzman', 'lenzman', 'thelenzman', '/pages/Lenzman/7593032428', '', 'Lenzman', ''),
(17, 'Hybris', 'hybris', '', '', 'hybrisdnb', 'hybrisdnb', '', ''),
(18, 'Marcus Intalex &amp; S.P.Y', 'marcus-intalex-amp-spy', '', '', '', '', '', ''),
(19, 'Commix', 'commix', 'commix', 'guycommix', 'commixmusic', 'commix', 'Commix', ''),
(20, 'DJ Friction', 'dj-friction', 'dj-friction', 'frictionshogun', 'frictiondeejay', 'frictiondeejay', 'DJ+Friction', ''),
(21, 'Break &amp; Die', 'break-amp-die', '', '', '', '', '', ''),
(22, 'Mad Rabbit', 'mad-rabbit', '', '', '', 'djmadrabbit ', '', ''),
(23, 'Delta heavy', 'delta-heavy', 'deltaheavy', 'deltaheavyuk', 'deltaheavyuk', 'deltaheavyuk', 'Delta+Heavy', ''),
(24, 'Random Movement', 'random-movement', '', '', '', '', '', ''),
(25, 'Pro Luxe', 'pro-luxe', 'djproluxe', '', '', '', '', ''),
(26, 'Kemo &amp; Lynx', 'kemo-amp-lynx', '', '', '', '', '', ''),
(27, 'Subwave', 'subwave', 'subwave', '', 'subwavemusic', 'thesubwave', 'Subwave', 'http://subwavemusic.com/'),
(28, 'Culture Shock', 'culture-shock', 'culture-shock', '', 'cultureshock.music', 'jamescultureshock', 'Culture+Shock+(2)', ''),
(29, 'Mutated forms', 'mutated-forms', '', '', '', '', '', ''),
(30, 'Shy FX', 'shy-fx', '', 'shyfx', '', '', '', 'http://www.digitalsoundboy.com/'),
(31, 'Code 3', 'code-3', '', '', '', '', '', ''),
(32, 'Zero Tolerance', 'zero-tolerance', '', '', '', '', '', ''),
(33, 'Nu:Logic', 'nulogic', '', '', '', '', '', ''),
(34, 'Unquote + Molecular Structures', 'unquote-molecular-structures', '', '', '', '', '', ''),
(35, 'Rockwell', 'rockwell', 'ROCKWELL', '', '', '', '', ''),
(36, 'Siren', 'siren', '', 'SirenRecordsUK', '', 'sirenrecordsuk', '', ''),
(37, 'Nymfo', 'nymfo', 'nymfo', 'nymfoDNB', 'bardo.camp', 'nymforedzone', 'Nymfo+(2)', ''),
(38, 'Ray Keith', 'ray-keith', '', '', '', '', '', ''),
(39, 'Original Sin &amp; Taxman', 'original-sin-amp-taxman', '', '', '', '', '', ''),
(40, 'Sub Zero', 'sub-zero', '', '', '', '', '', ''),
(41, 'Command Strange', 'command-strange', 'command_strange', 'command_strange', 'commandstrangemusic', 'commandstrange', '', ''),
(42, 'Unquote', 'unquote', 'unquote-mr-sizef', 'unquote_ru', 'Unquote.ru', 'unquoteru', 'Unquote', ''),
(43, 'Wax Doctor', 'wax-doctor', '', '', '', '', '', ''),
(44, 'Klute', 'klute', '', '', '', 'kluteuk', 'Klute', 'http://www.commercialsuicide.org'),
(45, 'S.P.Y.', 'spy', 'spydnb', '', '', 'spymusicpage', 'S.P.Y.', ''),
(46, 'Metrik', 'metrik', '', 'metrikmusic', 'metrikmusic', 'metrikmusic', '', ''),
(47, 'Cyantific', 'cyantific', 'cyantific', 'cyantific3000', 'cyantificNHS', 'cyantific', '', 'http://www.cyantific.co.uk/'),
(48, 'Logistics', 'logistics', '', 'logisticsdnb', 'logisticsdnb', 'logisticsnmte', '', 'http://www.logisticsdnb.com/'),
(49, 'Audio', 'audio', '', '', '', '', '', ''),
(50, 'Calibre', 'calibre', '', '', '', '', '', ''),
(51, 'Serum', 'serum', '', '', '', '', '', ''),
(52, 'Data', 'data', 'data', '', '', 'data1010', 'Data+(15)', ''),
(53, 'J Majik &amp; Wickerman', 'j-majik-amp-wickerman', '', '', '/jmajikandwickaman', 'jmajikinfrared', 'J+Majik', ''),
(54, 'Chase &amp; Status', 'chase-amp-status', 'chase-and-status', 'chaseandstatus', 'chaseandstatus', '', '', ''),
(55, 'Sub Focus', 'sub-focus', 'subfocusmusic', 'subfocus', 'subfocus', '', '', ''),
(56, 'D Minds', 'd-minds', 'dminds', '', '', '', '', ''),
(57, 'EZ Rollers', 'ez-rollers', 'ez-rollers', '', '', '', '', ''),
(58, 'Rufige Kru', 'rufige-kru', '', '', '', '', '', ''),
(59, 'J Majik', 'j-majik', '', '', '', '', '', ''),
(60, 'Thinnen', 'thinnen', 'thinnen', '', '', '', '', ''),
(61, 'Royalston', 'royalston', 'royalston', '', 'Royalstonmusic', 'Royalston2', 'Royalston', ''),
(62, 'Nuage', 'nuage', 'nuage-2', '', 'nuagespb', '532734479', '', ''),
(63, 'Octane &amp; DLR', 'octane-amp-dlr', 'octane-dlr', '', '', 'octane-dlr', '', ''),
(64, 'Benny Page', 'benny-page', 'benny-page', '', 'pages/Benny-Page/165860800119591', '', '', ''),
(65, 'Icicle', 'icicle', '', '', '', '', '', ''),
(66, 'Tyke', 'tyke', '', '', '', '', '', ''),
(67, 'Bulb featuring Tiiu', 'bulb-featuring-tiiu', '', '', '', '', '', ''),
(68, 'Amaning', 'amaning', 'amaning', '', '', '', '', ''),
(69, 'Sigma', 'sigma', 'sigmahq', 'sigmahq', 'sigmauk', 'sigmauk', '', ''),
(70, 'The Prototypes', 'the-prototypes', '', 'THEPROTOTYPESUK', '', 'theprototypesuk', '', ''),
(71, 'Futurebound vs Metrik', 'futurebound-vs-metrik', '', '', '', '', '', ''),
(72, 'Tango', 'tango', '', '', '', '', '', ''),
(73, 'Interface &amp; Eddie K', 'interface-amp-eddie-k', '', '', '', '', '', ''),
(74, 'Jubei', 'jubei', '', '', '', '', '', ''),
(75, 'Luca', 'luca', '', '', '', '', '', ''),
(76, 'Twisted individual', 'twisted-individual', '', '', '', '', '', ''),
(77, 'Bop', 'bop', '', '', '', '', '', 'http://www.iambop.com/'),
(78, 'Schematic', 'schematic', 'http://soundcloud.com/schematic', '', '', '', '', ''),
(79, 'Dillinja', 'dillinja', '', '', '', '', '', ''),
(80, 'Break', 'break', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('8e000d96764344292a3147b92dbf66b6', '184.73.117.13', 'GSLFbot', 1333348076, ''),
('2b023771a63055fbf83539889632540c', '184.73.117.13', 'GSLFbot', 1333348077, ''),
('02fb398c84d4e0c2440eaec51a064916', '184.73.117.13', 'GSLFbot', 1333348075, ''),
('fc6715f63ee3ca89e882bdd6abf8431a', '180.76.6.231', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1333347817, ''),
('8c7de65c6809c34fc9da345fb031252a', '184.73.117.13', 'GSLFbot', 1333348072, ''),
('b0a3f6309775e204908429b67a43944d', '184.73.117.13', 'GSLFbot', 1333348073, ''),
('8b913a5bee1f01b3496b8a52c7aee9ba', '184.73.117.13', 'GSLFbot', 1333348081, ''),
('d2a1be336fa4c079644dbff3ca93cb35', '199.21.99.89', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://ya', 1333353425, ''),
('a1827c9bdddbe106c9a0f2c962567198', '180.76.5.160', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1333355162, ''),
('afe8121028e87e8d8666fb63a8cf185e', '38.101.148.126', 'Mozilla/5.0 (compatible; discobot/2.0; +http://dis', 1333356362, ''),
('4a64d9a472ae2186ed16bede79be28e5', '123.126.68.23', 'Sogou web spider/4.0(+http://www.sogou.com/docs/he', 1333364586, ''),
('3019213e1c696039ed672690e0e062d7', '50.16.122.77', 'SemrushBot/0.92', 1333369643, ''),
('c22d6c6c4936f3507df5f0880999422c', '23.20.250.21', 'Mozilla/5.0 (compatible; NetcraftSurveyAgent/1.0; ', 1333371785, ''),
('b5989dc4fa520fde5d6536c119caed8f', '123.125.71.110', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1333372921, ''),
('c204fd8e5f08024abe082c5a56278aac', '220.181.108.172', 'Mozilla/5.0 (compatible; Baiduspider/2.0; +http://', 1333372930, ''),
('594ca1aa8c7fa353e8e03f62df3e85f8', '184.73.117.13', 'GSLFbot', 1333348080, ''),
('4785093128e2936ffe6e36a6916bf724', '184.73.117.13', 'GSLFbot', 1333348078, ''),
('9467b06a990251d06c030bc2c4354452', '184.73.117.13', 'GSLFbot', 1333348079, '');

-- --------------------------------------------------------

--
-- Table structure for table `record_labels`
--

DROP TABLE IF EXISTS `record_labels`;
CREATE TABLE IF NOT EXISTS `record_labels` (
  `record_label_id` int(3) NOT NULL AUTO_INCREMENT,
  `record_label_name` varchar(100) DEFAULT NULL,
  `record_label_url_slug` varchar(100) DEFAULT NULL,
  `record_label_website` varchar(300) DEFAULT NULL,
  `record_label_store` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`record_label_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `record_labels`
--

INSERT INTO `record_labels` (`record_label_id`, `record_label_name`, `record_label_url_slug`, `record_label_website`, `record_label_store`) VALUES
(1, 'Viper Records', 'viper-records', 'http://viperrecords.com/', 'http://store.viperrecords.com/'),
(2, 'Med School', 'med-school', 'http://www.medschoolmusic.com/', 'http://shop.hospitalrecords.com/product/medic22'),
(3, 'Hospital Records', 'hospital-records', 'http://www.hospitalrecords.com/', 'http://shop.hospitalrecords.com/'),
(4, 'Shogun Audio', 'shogun-audio', 'http://www.shogunaudio.co.uk/', 'http://www.shogunaudio.co.uk/shop/'),
(5, 'Metal Headz', 'metal-headz', 'http://www.metalheadz.co.uk/', 'http://www.metalheadz.co.uk/headzStore/'),
(6, 'Mainframe Recordings', 'mainframe-recordings', NULL, NULL),
(7, 'Bingo Beats', 'bingo-beats', 'http://www.bingobeats.com/', 'http://www.bingobeats.com/bingo_shop.html'),
(8, 'Necessary DnB', 'necessary-dnb', NULL, NULL),
(9, 'Defected', 'defected', NULL, NULL),
(10, 'Dstyle', 'dstyle', NULL, NULL),
(11, 'Signature', 'signature', NULL, NULL),
(12, 'Virus', 'virus', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
CREATE TABLE IF NOT EXISTS `tracks` (
  `track_id` int(10) NOT NULL AUTO_INCREMENT,
  `track_name` varchar(300) NOT NULL,
  `track_url_slug` varchar(200) DEFAULT NULL,
  `track_artist_id` int(10) DEFAULT NULL,
  `track_record_label_id` int(3) DEFAULT NULL,
  `track_status_id` int(2) DEFAULT NULL,
  `track_soundcloud_url` varchar(500) DEFAULT NULL,
  `track_soundcloud_id` varchar(20) DEFAULT NULL,
  `track_youtube_url` varchar(500) DEFAULT NULL,
  `track_youtube_id` varchar(20) DEFAULT NULL,
  `track_release_date` datetime DEFAULT NULL,
  `track_release_year` int(2) DEFAULT NULL,
  `track_release_label` int(3) DEFAULT NULL,
  `track_buy_url` varchar(400) DEFAULT NULL,
  `track_added` datetime DEFAULT NULL,
  `track_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`track_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `tracks`
--

INSERT INTO `tracks` (`track_id`, `track_name`, `track_url_slug`, `track_artist_id`, `track_record_label_id`, `track_status_id`, `track_soundcloud_url`, `track_soundcloud_id`, `track_youtube_url`, `track_youtube_id`, `track_release_date`, `track_release_year`, `track_release_label`, `track_buy_url`, `track_added`, `track_modified`) VALUES
(1, 'Triband ft S.P.Y', 'triband-ft-spy', 1, 0, 3, 'http://soundcloud.com/marcusintalex/tribandftspy', '8970340', '', '', '2011-04-18 21:50:29', 11, NULL, '', '2011-04-11 19:27:04', '2011-04-12 16:01:18'),
(2, 'The Gatekeeper ', 'the-gatekeeper-', 2, 0, 4, '', '', 'http://www.youtube.com/watch?v=tgky387kxVY', 'tgky387kxVY', NULL, NULL, NULL, 'http://download.breakbeat.co.uk/lpsepsartists/fresh/futurejungleep.aspx', '2011-04-11 19:27:05', '2011-04-12 15:45:16'),
(3, 'Mind Is Drifting Away', 'mind-is-drifting-away', 3, NULL, 3, NULL, NULL, 'http://www.youtube.com/watch?v=2u0Ty9-ZXmo', '2u0Ty9-ZXmo', NULL, NULL, NULL, NULL, '2011-04-11 19:27:06', NULL),
(4, 'Proteus', 'proteus', 4, NULL, 3, NULL, NULL, 'http://www.youtube.com/watch?v=CICXzJvrhzQ', 'CICXzJvrhzQ', NULL, NULL, NULL, NULL, '2011-04-11 19:27:07', NULL),
(5, 'Short list', 'short-list', 5, NULL, 2, NULL, NULL, 'http://www.youtube.com/watch?v=cptP4kVIFsA', 'cptP4kVIFsA', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Scandinavian', 'scandinavian', 6, NULL, 1, 'http://soundcloud.com/ultracode/ultracode-scandinavian-cut', '7156562', NULL, NULL, NULL, NULL, NULL, NULL, '2011-04-09 22:58:35', NULL),
(7, 'Pleasure Trip', 'pleasure-trip', 7, 0, 2, '', '', 'http://www.youtube.com/watch?v=xbcd580I_Bc', 'xbcd580I_Bc', NULL, NULL, NULL, '', '2010-11-02 23:05:51', '2011-05-20 15:32:22'),
(8, 'Inner Space', 'inner-space', 8, NULL, 2, 'http://soundcloud.com/apex-music/inner-space', '5328086', NULL, NULL, NULL, NULL, NULL, NULL, '2010-11-02 23:07:40', NULL),
(9, 'Destiny', 'destiny', 9, NULL, 2, NULL, NULL, 'http://www.youtube.com/watch?v=u_Sth7AJG08', 'u_Sth7AJG08', NULL, NULL, NULL, NULL, '2010-07-09 23:12:09', NULL),
(10, 'Open arms', 'open-arms', 10, NULL, 3, NULL, NULL, 'http://www.youtube.com/watch?v=gwyw7VLnjsw', 'gwyw7VLnjsw', NULL, NULL, NULL, NULL, '2011-04-11 11:45:13', NULL),
(11, 'Frost', 'frost', 12, NULL, 3, '', '', 'http://www.youtube.com/watch?v=zOZjUQYEfN4', 'zOZjUQYEfN4', NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'The Question', 'the-question', 14, NULL, 4, '', '', 'http://www.youtube.com/watch?v=1sblb2Co4Z8', '1sblb2Co4Z8', NULL, NULL, NULL, NULL, '2011-04-11 13:02:21', '2011-04-11 13:11:24'),
(13, 'Plan B - The Recluse (Netsky Remix)', 'plan-b-the-recluse-netsky-remix', 15, NULL, 2, '', '', 'http://www.youtube.com/watch?v=mRYnsWVhOhA', 'mRYnsWVhOhA', NULL, NULL, NULL, NULL, '2011-04-11 13:14:20', '2011-04-11 19:44:35'),
(14, 'Masquerade', 'masquerade', 16, NULL, 4, '', '', 'http://www.youtube.com/watch?v=2A5PpA3iQac', '2A5PpA3iQac', NULL, NULL, NULL, NULL, '2011-04-11 13:25:35', NULL),
(15, 'The Cleaner', 'the-cleaner', 17, NULL, 4, '', '', 'http://www.youtube.com/watch?v=I1cjWCdNLqk', 'I1cjWCdNLqk', NULL, NULL, NULL, NULL, '2011-04-11 13:28:24', NULL),
(16, 'Celestial Navigation', 'celestial-navigation', 18, NULL, 3, '', '', 'http://www.youtube.com/watch?v=MWIlm8mudK4', 'MWIlm8mudK4', NULL, NULL, NULL, NULL, '2011-04-11 13:29:42', NULL),
(17, 'Japanese Electronics (Instra:mental Moog Remix)', 'japanese-electronics-instra-mental-moog-remix', 19, NULL, 4, 'http://soundcloud.com/commix/japanese-electronics-instra-mental-moog-remix', '4713886', '', '', NULL, NULL, NULL, NULL, '2011-04-11 13:32:15', '2011-04-11 13:32:26'),
(18, 'Vato Gonzalez - Badman Riddim (Friction Remix)', 'vato-gonzalez-badman-riddim-friction-remix', 20, NULL, 3, '', '', 'http://www.youtube.com/watch?v=c6LVCIQH_9c', 'c6LVCIQH_9c', NULL, NULL, NULL, NULL, '2011-04-11 19:27:03', NULL),
(19, 'Slow down', 'slow-down', 21, NULL, 4, '', '', 'http://www.youtube.com/watch?v=T4sXi8Xksic', 'T4sXi8Xksic', NULL, NULL, NULL, NULL, '2011-04-11 13:35:54', NULL),
(20, 'Down by the Riverside', 'down-by-the-riverside', 22, NULL, 3, '', '', 'http://www.youtube.com/watch?v=5LkSJ-2lLbw', '5LkSJ-2lLbw', NULL, NULL, NULL, NULL, '2011-04-11 13:37:55', NULL),
(21, 'Space Time', 'space-time', 23, NULL, 4, '', '', 'http://www.youtube.com/watch?v=TTGVEvPweT4', 'TTGVEvPweT4', NULL, NULL, NULL, NULL, '2011-04-11 13:40:17', NULL),
(22, 'Waterlogged', 'waterlogged', 24, NULL, 4, '', '', 'http://www.youtube.com/watch?v=heHpY4OYbmw', 'heHpY4OYbmw', NULL, NULL, NULL, NULL, '2011-04-11 13:41:07', NULL),
(23, 'For you', 'for-you', 25, NULL, 4, 'http://soundcloud.com/djproluxe/pro-luxe-for-you-forth-intelligent-recordings', '4945760', '', '', NULL, NULL, NULL, NULL, '2011-04-11 13:42:15', NULL),
(24, 'Carnivale', 'carnivale', 26, NULL, 0, '', '', 'http://www.youtube.com/watch?v=SkfT5h6oHhU', 'SkfT5h6oHhU', NULL, NULL, NULL, NULL, '2011-04-11 13:43:24', NULL),
(25, 'Gift', 'gift', 27, NULL, 7, '', '', 'http://www.youtube.com/watch?v=4PbqQ7X6Qaw', '4PbqQ7X6Qaw', NULL, NULL, NULL, 'http://download.breakbeat.co.uk/lpsepsartists/subwave/giftep.aspx', '2011-04-11 13:45:19', NULL),
(26, 'Cathedral', 'cathedral', 28, NULL, 4, '', '', 'http://www.youtube.com/watch?v=wLZWw239vBw', 'wLZWw239vBw', NULL, NULL, NULL, NULL, '2011-04-11 13:47:05', NULL),
(27, 'Last time ft Jenna G', 'last-time-ft-jenna-g', 29, NULL, 3, '', '', 'http://www.youtube.com/watch?v=4M2chYQVNyc', '4M2chYQVNyc', NULL, NULL, NULL, NULL, '2011-04-11 13:48:36', NULL),
(28, 'Raver (Breakage Pattern Moschino Remix) ', 'raver-breakage-pattern-moschino-remix-', 30, NULL, 4, '', '', 'http://www.youtube.com/watch?v=Sobxn6fZFTg', 'Sobxn6fZFTg', NULL, NULL, NULL, NULL, '2011-04-11 13:53:18', NULL),
(29, 'Delta', 'delta', 31, NULL, 4, '', '', 'http://www.youtube.com/watch?v=efTjszgQnno', 'efTjszgQnno', NULL, NULL, NULL, NULL, '2011-04-11 13:54:06', NULL),
(30, 'Mos Def - The Panties (Zero Tolerance Remix)', 'mos-def-the-panties-zero-tolerance-remix', 32, NULL, 2, '', '', 'http://www.youtube.com/watch?v=r-yBKn3W-Ns', 'r-yBKn3W-Ns', NULL, NULL, NULL, NULL, '2011-04-11 13:55:23', NULL),
(31, 'New Technique', 'new-technique', 33, NULL, 4, '', '', 'http://www.youtube.com/watch?v=DgiLpht9gWk', 'DgiLpht9gWk', NULL, NULL, NULL, NULL, '2011-04-11 13:57:45', NULL),
(32, 'Lubov Moya', 'lubov-moya', 34, NULL, 4, '', '', 'http://www.youtube.com/watch?v=mVgauCS_8-Y', 'mVgauCS_8-Y', NULL, NULL, NULL, NULL, '2011-04-11 13:58:53', NULL),
(33, 'A. DJ Friendly Unit Shifter', 'a-dj-friendly-unit-shifter', 35, NULL, 0, 'http://soundcloud.com/rockwell/a-dj-friendly-unit-shifter', '12165028', '', '', NULL, NULL, NULL, NULL, '2011-04-11 14:00:49', NULL),
(34, 'Fakin Jacks', 'fakin-jacks', 35, NULL, 4, 'http://soundcloud.com/rockwell/rockwell-fakin-jacks', '12164974', '', '', NULL, NULL, NULL, NULL, '2011-04-11 14:01:40', NULL),
(35, 'Broken Silence', 'broken-silence', 36, NULL, 0, 'http://soundcloud.com/siren-records/broken-silence-clip', '5424979', '', '', NULL, NULL, NULL, NULL, '2011-04-11 14:04:18', NULL),
(36, 'Try To Forget / Autonomous Robot', 'try-to-forget-autonomous-robot', 37, NULL, 4, '', '', 'http://www.youtube.com/watch?v=ZV_qlVR-A-Y', 'ZV_qlVR-A-Y', NULL, NULL, NULL, NULL, '2011-04-11 14:07:03', NULL),
(37, 'Brutal', 'brutal', 38, NULL, 5, '', '', 'http://www.youtube.com/watch?v=FTAsZRNoJpY', 'FTAsZRNoJpY', NULL, NULL, NULL, NULL, '2011-04-11 14:08:27', NULL),
(38, 'Penamana', 'penamana', 39, NULL, 4, '', '', 'http://www.youtube.com/watch?v=p9rzI4Hcjio', 'p9rzI4Hcjio', NULL, NULL, NULL, NULL, '2011-04-11 14:09:27', NULL),
(39, 'Poon', 'poon', 40, NULL, 4, '', '', 'http://www.youtube.com/watch?v=4FMEvInJrCE', '4FMEvInJrCE', NULL, NULL, NULL, NULL, '2011-04-11 14:11:32', NULL),
(40, 'Brighter Days', 'brighter-days', 40, NULL, 4, '', '', 'http://www.youtube.com/watch?v=EuMfEnxYCUk', 'EuMfEnxYCUk', NULL, NULL, NULL, NULL, '2011-04-11 14:12:26', NULL),
(41, 'Rainbow In Your Hand', 'rainbow-in-your-hand', 41, NULL, 4, '', '', 'http://www.youtube.com/watch?v=Yl0So-dry6Q', 'Yl0So-dry6Q', NULL, NULL, NULL, NULL, '2011-04-11 14:14:35', NULL),
(42, 'Hide Your Tears Because We Are In HeavenHide Your Tears Because We Are In Heaven', 'hide-your-tears-because-we-are-in-heavenhide-your-tears-because-we-are-in-heaven', 42, NULL, 0, '', '', 'http://www.youtube.com/watch?v=YayZcyWJ5Y0', 'YayZcyWJ5Y0', NULL, NULL, NULL, NULL, '2011-04-11 14:17:21', NULL),
(43, 'Heat', 'heat', 43, NULL, 5, '', '', 'http://www.youtube.com/watch?v=IjZEm45tEgw', 'IjZEm45tEgw', NULL, NULL, NULL, NULL, '2011-04-11 15:30:13', NULL),
(44, 'Party Hands', 'party-hands', 44, NULL, 3, '', '', 'http://www.youtube.com/watch?v=MGnd2-2du_Q', 'MGnd2-2du_Q', NULL, NULL, NULL, NULL, '2011-04-11 15:33:42', NULL),
(45, 'S.P.Y. - By Your Side (Logistics Remix)', 'spy-by-your-side-logistics-remix', 45, NULL, 3, '', '', 'http://www.youtube.com/watch?v=INHCdMZeVlc', 'INHCdMZeVlc', NULL, NULL, NULL, NULL, '2011-04-11 15:38:08', NULL),
(46, '305 / Opium', '305-opium', 47, NULL, 4, '', '', 'http://www.youtube.com/watch?v=AYmiW_Sx72g', 'AYmiW_Sx72g', NULL, NULL, NULL, NULL, '2011-04-11 15:42:25', NULL),
(47, 'Way Out West - The Gift (Logistics Remix)', 'way-out-west-the-gift-logistics-remix', 48, NULL, 2, '', '', 'http://www.youtube.com/watch?v=lp0iRUq-Vsc', 'lp0iRUq-Vsc', NULL, NULL, NULL, NULL, '2011-04-11 15:44:21', NULL),
(48, 'Transporter', 'transporter', 48, NULL, 4, '', '', 'http://www.youtube.com/watch?v=dSJbqKp1oCk', 'dSJbqKp1oCk', NULL, NULL, NULL, NULL, '2011-04-11 15:47:34', NULL),
(49, 'Inner Child', 'inner-child', 46, 1, 4, '', '', 'http://www.youtube.com/watch?v=ZyZcto27o9o', 'ZyZcto27o9o', NULL, NULL, NULL, 'http://beatport.com/s/r1hZwb', '2011-04-11 15:49:12', '2011-04-12 16:22:07'),
(50, 'Collision', 'collision', 49, 12, 4, '', '', 'http://www.youtube.com/watch?v=J7IYhmcUAGs', 'J7IYhmcUAGs', NULL, NULL, NULL, 'http://beatport.com/s/r1ePZb', '2011-04-11 15:50:15', '2011-04-12 16:21:24'),
(51, 'Even If', 'even-if', 50, 11, 4, '', '', 'http://www.youtube.com/watch?v=CouG7u8LaYQ', 'CouG7u8LaYQ', NULL, NULL, NULL, 'http://beatport.com/s/r1dsIb', '2011-04-11 15:52:31', '2011-04-12 16:19:48'),
(52, 'Gappa G &amp; Hyper Hypa Information Centre - Serum remix', 'gappa-g-amp-hyper-hypa-information-centre-serum-remix', 51, NULL, 2, '', '', 'http://www.youtube.com/watch?v=wQLibpW49Cw', 'wQLibpW49Cw', NULL, NULL, NULL, NULL, '2011-04-11 15:55:13', NULL),
(53, 'Compassion feat. Kathy Brown', 'compassion-feat-kathy-brown', 52, 5, 4, 'http://soundcloud.com/data/data-dynamic-feat-kathy-brown-compassion-metalheadz/', '3959373', '', '', NULL, NULL, NULL, 'http://www.metalheadz.co.uk/headzStore/product_info.php?manufacturers_id=245&amp;products_id=996', '2011-04-11 15:58:29', '2011-04-12 16:18:22'),
(54, 'Old Headz', 'old-headz', 53, NULL, 3, '', '', 'http://www.youtube.com/watch?v=Exl7kPjvSUA', 'Exl7kPjvSUA', NULL, NULL, NULL, NULL, '2011-04-11 16:02:08', NULL),
(55, 'Rain Dance', 'rain-dance', 27, NULL, 2, 'http://soundcloud.com/subwave/subwave-rain-dance', '1166234', '', '', NULL, NULL, NULL, NULL, '2011-04-11 16:03:56', NULL),
(56, 'Set It Off (Icicle Remix)', 'set-it-off-icicle-remix', 20, 4, 3, 'http://soundcloud.com/djfriction/friction-k-tee-set-it-off-icicle-remix', '3575283', '', '', NULL, NULL, NULL, '', '2011-04-11 16:05:19', '2011-04-12 16:16:08'),
(57, 'Plan B - Prayin&#39; (Chase &amp; Status Remix)', 'plan-b-prayin39-chase-amp-status-remix', 54, NULL, 3, '', '', 'http://www.youtube.com/watch?v=AIVBrCPWe1U', 'AIVBrCPWe1U', NULL, NULL, NULL, NULL, '2011-04-11 16:09:05', NULL),
(58, 'Rusko - Hold On (feat. Amber Coffman) (Sub Focus Remix)', 'rusko-hold-on-feat-amber-coffman-sub-focus-remix', 55, 0, 2, 'http://soundcloud.com/rusko-3/rusko-hold-on-feat-amber-coffman-sub-focus-remix', '4349376', 'http://www.youtube.com/watch?v=NI2b7qXUlnE', 'NI2b7qXUlnE', NULL, NULL, NULL, '', '2011-04-11 16:12:03', '2011-04-12 16:12:30'),
(59, 'T-10 - (DMinds Gangster Step mix)', 't-10-dminds-gangster-step-mix', 56, 10, 4, '', '', 'http://www.youtube.com/watch?v=kdJE-KvwZjg', 'kdJE-KvwZjg', NULL, NULL, NULL, 'http://beatport.com/s/r12FNb', '2011-04-11 16:16:12', '2011-04-12 16:10:19'),
(60, 'Crowd Rocker (Savage Rehab Remix)', 'crowd-rocker-savage-rehab-remix', 57, 0, 2, '', '', 'http://www.youtube.com/watch?v=8e8ucoQ4e1g', '8e8ucoQ4e1g', NULL, NULL, NULL, '', '2011-04-11 16:18:35', '2011-04-12 16:09:00'),
(61, 'Sometime Sad Day', 'sometime-sad-day', 58, 5, 4, '', '', 'http://www.youtube.com/watch?v=9Gl-IaupCxQ', '9Gl-IaupCxQ', NULL, NULL, NULL, 'http://beatport.com/s/rMXhb', '2011-04-11 16:21:42', '2011-04-12 16:07:59'),
(62, 'Origin Unknown - Lunar Bass (Commix Remix)', 'origin-unknown-lunar-bass-commix-remix', 19, NULL, 3, '', '', 'http://www.youtube.com/watch?v=ovEjtKrYRgk', 'ovEjtKrYRgk', NULL, NULL, NULL, NULL, '2011-04-11 16:24:23', NULL),
(63, 'Love Is Not A Game Feat. Kathy Brown', 'love-is-not-a-game-feat-kathy-brown', 59, 9, 4, '', '', 'http://www.youtube.com/watch?v=mBOjKWllG9o', 'http://www.youtube.c', NULL, NULL, NULL, 'http://beatport.com/s/r4U5b', '2011-04-11 16:26:08', '2011-04-12 16:06:59'),
(64, 'Booka Shade - Regenerate (Thinnen Remix)', 'booka-shade-regenerate-thinnen-remix', 60, NULL, 1, 'http://soundcloud.com/thinnen/booka-shade-regenerate-thinnen-remix', '2560917', '', '', NULL, NULL, NULL, NULL, '2011-04-11 16:29:11', NULL),
(65, 'One Step Back', 'one-step-back', 60, NULL, 1, 'http://soundcloud.com/thinnen/one-step-back', '8097769', '', '', NULL, NULL, NULL, NULL, '2011-04-11 16:30:33', NULL),
(66, 'Magic Fountain - Art vs Science - Royalston Remix', 'magic-fountain-art-vs-science-royalston-remix', 61, NULL, 2, 'http://soundcloud.com/royalston/magic-fountain-art-vs-science-royalston-bootleg', '6899718', '', '', NULL, NULL, NULL, NULL, '2011-04-11 16:36:53', NULL),
(67, 'Missing You', 'missing-you', 62, 2, 4, '', '', 'http://www.youtube.com/watch?v=LqxHnmTqGn8', 'LqxHnmTqGn8', NULL, NULL, NULL, '', '2011-04-11 16:39:58', '2011-04-12 15:51:50'),
(68, 'Gentlemans Dub Club - Emergency (Octane and DLR remix)', 'gentlemans-dub-club-emergency-octane-and-dlr-remix', 63, NULL, 7, 'http://soundcloud.com/octane-dlr/gentlemans-dub-club-emergency-octane-dlr-rmx-click-buy-this-track-to-download-full-track', '8871205', '', '', NULL, NULL, NULL, 'http://soundcloud.com/octane-dlr/gentlemans-dub-club-emergency-octane-dlr-rmx-click-buy-this-track-to-download-full-track', '2011-04-11 16:42:12', '2011-04-11 16:42:25'),
(69, 'Pass The Kutchie feat. Mr Williamz', 'pass-the-kutchie-feat-mr-williamz', 64, 8, 4, '', '', 'http://www.youtube.com/watch?v=xNHrkm1USus', 'xNHrkm1USus', NULL, NULL, NULL, 'http://download.breakbeat.co.uk/mp3/benny-page/pass-the-kutchie-ft-mr-williamzremix.aspx', '2011-04-11 16:44:19', '2011-04-12 15:57:34'),
(70, 'Top Of The Page', 'top-of-the-page', 65, NULL, 3, 'http://soundcloud.com/shogunaudio/7-top-of-the-page', '11345353', '', '', NULL, NULL, NULL, NULL, '2011-04-11 16:49:48', '2011-04-12 15:22:17'),
(71, 'The Music Makers VIP feat. Recipe', 'the-music-makers-vip-feat-recipe', 66, NULL, 0, '', '', 'http://www.youtube.com/watch?v=vj8PClK8nxw', 'vj8PClK8nxw', NULL, NULL, NULL, NULL, '2011-04-11 16:51:13', NULL),
(72, 'Distinctions Of The Same', 'distinctions-of-the-same', 67, 2, 4, '', '', 'http://www.youtube.com/watch?v=zIMqTn1mEcg', 'zIMqTn1mEcg', NULL, NULL, NULL, 'http://beatport.com/s/r1t9Kb', '2011-04-11 19:11:10', '2011-04-12 15:51:33'),
(73, 'O.S.T', 'ost', 68, NULL, 2, 'http://soundcloud.com/amaning/amaning-o-s-t-soundcloud', '2345720', '', '', NULL, NULL, NULL, NULL, '2011-04-11 19:13:17', '2011-04-11 19:13:27'),
(74, 'Topcat - Special Dedication (Sigma Remix)', 'topcat-special-dedication-sigma-remix', 69, NULL, 2, '', '', 'http://www.youtube.com/watch?v=NXgbuZwaPU4', 'NXgbuZwaPU4', NULL, NULL, NULL, NULL, '2011-04-11 19:16:18', NULL),
(75, 'El Presidente', 'el-presidente', 69, 7, 4, '', '', 'http://www.youtube.com/watch?v=h6Vw34QD4p8', 'h6Vw34QD4p8', NULL, NULL, NULL, 'http://beatport.com/s/rgH5b', '2011-04-11 19:16:57', '2011-04-12 15:56:19'),
(76, 'Subterrestrial', 'subterrestrial', 70, NULL, 3, '', '', 'http://www.youtube.com/watch?v=szLZvj0WS-E', 'szLZvj0WS-E', NULL, NULL, NULL, NULL, '2011-04-11 19:23:49', NULL),
(77, 'Brave New World', 'brave-new-world', 71, 1, 4, '', '', 'http://www.youtube.com/watch?v=DNk0Izw0Z3w', 'DNk0Izw0Z3w', NULL, NULL, NULL, 'http://beatport.com/s/r1saXt', '2011-04-11 19:27:08', '2011-04-12 15:50:31'),
(78, 'Outcast', 'outcast', 70, 6, 4, 'http://soundcloud.com/theprototypes/the', '12833443', '', '', NULL, NULL, NULL, 'http://beatport.com/s/r1nnTb', '2011-04-11 19:28:49', '2011-04-12 15:52:55'),
(79, 'Food Fight', 'food-fight', 4, NULL, 3, '', '', 'http://www.youtube.com/watch?v=qg7BYj2ZQAQ', 'qg7BYj2ZQAQ', NULL, NULL, NULL, NULL, '2011-04-11 19:29:33', '2011-04-11 19:37:13'),
(80, 'BCee feat. S.P.Y - Is Anybody Out There [Friction &amp; K-Tee Remix', 'bcee-feat-spy-is-anybody-out-there-friction-amp-k-tee-remix', 20, NULL, 3, '', '', 'http://www.youtube.com/watch?v=Lyt7NQdpRTM', 'Lyt7NQdpRTM', NULL, NULL, NULL, NULL, '2011-04-11 19:31:45', NULL),
(81, 'BTKRSH', 'btkrsh', 35, 0, 3, '', '', 'http://www.youtube.com/watch?v=UCYFs5AXq98', 'UCYFs5AXq98', NULL, NULL, NULL, '', '2011-04-11 19:33:31', '2011-05-17 16:49:08'),
(82, 'Zero 7 - In the Waiting Line (SPY Remix)', 'zero-7-in-the-waiting-line-spy-remix', 45, NULL, 2, '', '', 'http://www.youtube.com/watch?v=7dXlQbejIDw', '7dXlQbejIDw', NULL, NULL, NULL, NULL, '2011-04-11 19:39:18', NULL),
(83, 'Collie Budz - Come Around (Sigma Remix)', 'collie-budz-come-around-sigma-remix', 69, NULL, 2, '', '', 'http://www.youtube.com/watch?v=KG1I7BdpTvQ', 'KG1I7BdpTvQ', NULL, NULL, NULL, NULL, '2011-04-11 19:41:21', NULL),
(84, 'Spellbound', 'spellbound', 72, NULL, 5, '', '', 'http://www.youtube.com/watch?v=pLplzcSS8FY', 'pLplzcSS8FY', NULL, NULL, NULL, NULL, '2011-04-11 19:42:10', NULL),
(85, 'Protection', 'protection', 28, NULL, 3, '', '', 'http://www.youtube.com/watch?v=-XzEGRskopQ', '-XzEGRskopQ', NULL, NULL, NULL, NULL, '2011-04-11 19:43:10', NULL),
(86, 'Get Down', 'get-down', 73, 0, 3, '', '', 'http://www.youtube.com/watch?v=fIPL7SpPAPM', 'fIPL7SpPAPM', NULL, NULL, NULL, '', '2011-04-12 15:41:06', NULL),
(87, 'Alignment (Boddika Remix)', 'alignment-boddika-remix', 74, 5, 3, 'http://soundcloud.com/metalheadz/jubei-alignment-boddika-rmx', '13217878', '', '', NULL, NULL, NULL, '', '2011-04-14 12:46:48', NULL),
(88, 'Saint Bond', 'saint-bond', 75, 2, 4, '', '', 'http://www.youtube.com/watch?v=vhp6PErmkIo', 'vhp6PErmkIo', NULL, NULL, NULL, 'http://shop.hospitalrecords.com/product/medic22/', '2011-04-14 12:47:46', '2011-04-14 12:48:00'),
(89, 'No Problem', 'no-problem', 54, 0, 3, '', '', 'http://www.youtube.com/watch?v=Sss9aNbtEpA', 'Sss9aNbtEpA', NULL, NULL, NULL, '', '2011-04-14 12:48:27', NULL),
(90, 'I Am Leg End', 'i-am-leg-end', 76, 0, 3, '', '', 'http://www.youtube.com/watch?v=pYAezFlnCHM', 'pYAezFlnCHM', NULL, NULL, NULL, '', '2011-04-14 12:49:27', NULL),
(91, '8-Bit Cosmos', '8-bit-cosmos', 77, 2, 3, 'http://soundcloud.com/medschoolmusic/bop-8-bit-cosmos', '14663169', '', '', NULL, NULL, NULL, '', '2011-05-08 11:56:27', NULL),
(92, 'Wherever I Am', 'wherever-i-am', 78, 0, 1, 'http://soundcloud.com/schematic/schematic-wherever-i-am/', '14044084', '', '', NULL, NULL, NULL, '', '2011-05-17 16:27:22', '2011-05-20 01:09:52'),
(93, 'Future Forces Inc- Strontium Jazz ( DILLINJA mix)', 'future-forces-inc-strontium-jazz-dillinja-mix', 79, 0, 5, '', '', 'http://www.youtube.com/watch?v=l_AWcXrnuxY', 'l_AWcXrnuxY', NULL, NULL, NULL, '', '2011-05-17 16:46:56', NULL),
(94, 'So Hard', 'so-hard', 79, 0, 3, '', '', 'http://www.youtube.com/watch?v=FzHB6V_qxuM', 'FzHB6V_qxuM', NULL, NULL, NULL, '', '2011-05-17 16:47:35', NULL),
(95, 'Coming Up For Air', 'coming-up-for-air', 40, 0, 3, '', '', 'http://www.youtube.com/watch?v=vPtuk1CK2AY', 'vPtuk1CK2AY', NULL, NULL, NULL, '', '2011-05-17 16:48:18', NULL),
(96, 'Krome and Time - The Licence (Break Remix)', 'krome-and-time-the-licence-break-remix', 80, 0, 3, '', '', 'http://www.youtube.com/watch?v=d93CItkyC5U', 'd93CItkyC5U', NULL, NULL, NULL, '', '2011-05-31 02:35:25', '2011-05-31 02:36:56');

-- --------------------------------------------------------

--
-- Table structure for table `track_statuses`
--

DROP TABLE IF EXISTS `track_statuses`;
CREATE TABLE IF NOT EXISTS `track_statuses` (
  `track_status_id` int(2) NOT NULL AUTO_INCREMENT,
  `track_status_name` varchar(30) DEFAULT NULL,
  `track_status_slug` varchar(30) DEFAULT NULL,
  `track_status_order` int(2) DEFAULT NULL,
  PRIMARY KEY (`track_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `track_statuses`
--

INSERT INTO `track_statuses` (`track_status_id`, `track_status_name`, `track_status_slug`, `track_status_order`) VALUES
(1, 'Unsigned', 'unsigned', 1),
(2, 'Dub', 'dub', 2),
(3, 'Forthcoming', 'forthcoming', 3),
(5, 'Classic', 'classic', 5),
(4, 'Released', 'released', 4),
(7, 'Free', 'free', 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_username` varchar(50) NOT NULL,
  `user_email` varchar(255) NOT NULL DEFAULT '',
  `user_pass` varchar(60) NOT NULL DEFAULT '',
  `user_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_last_login` datetime DEFAULT NULL,
  `user_role` varchar(20) NOT NULL DEFAULT 'fan',
  `user_first_name` varchar(200) NOT NULL,
  `user_surname` varchar(200) NOT NULL,
  `user_country` varchar(200) NOT NULL,
  `activated` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_username`, `user_email`, `user_pass`, `user_date`, `user_modified`, `user_last_login`, `user_role`, `user_first_name`, `user_surname`, `user_country`, `activated`) VALUES
(1, 'admin', 'admin-dnbmachine@mailinator.com', '$P$Bk5OUreHyEQoEMdFIzFtvOJqT/3ykk0', '2010-02-24 14:11:35', '2010-02-24 14:11:35', '2011-05-31 02:31:32', 'admin', 'Ollie', 'Rattue', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_password_reset`
--

DROP TABLE IF EXISTS `users_password_reset`;
CREATE TABLE IF NOT EXISTS `users_password_reset` (
  `password_reset_code` varchar(80) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `password_reset_date` datetime NOT NULL,
  PRIMARY KEY (`password_reset_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_password_reset`
--

