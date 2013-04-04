-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 04, 2013 at 02:52 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ttaworapps`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fb_user_id` bigint(20) DEFAULT NULL,
  `fb_first_name` varchar(64) DEFAULT NULL,
  `fb_mid_name` varchar(64) DEFAULT NULL,
  `fb_last_name` varchar(64) DEFAULT NULL,
  `fb_full_name` varchar(200) DEFAULT NULL,
  `fb_user_name` varchar(64) DEFAULT NULL,
  `fb_gender` varchar(64) DEFAULT NULL,
  `fb_local` varchar(20) DEFAULT NULL,
  `fb_email` varchar(128) DEFAULT NULL,
  `fb_mobile_1` varchar(20) DEFAULT NULL,
  `fb_mobile_2` varchar(20) DEFAULT NULL,
  `fb_hometown` varchar(128) DEFAULT NULL,
  `fb_location` varchar(128) DEFAULT NULL,
  `fb_country` varchar(10) DEFAULT NULL,
  `fb_birthday` date DEFAULT NULL,
  `fb_tel` varchar(20) DEFAULT NULL,
  `fb_religion` varchar(45) DEFAULT NULL,
  `fb_martialstatus` varchar(45) DEFAULT NULL,
  `fb_website` varchar(45) DEFAULT NULL,
  `fb_interestedin` varchar(45) DEFAULT NULL,
  `fb_ploticalview` varchar(45) DEFAULT NULL,
  `oauth_token` text NOT NULL,
  `points` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fb_user_id`, `fb_first_name`, `fb_mid_name`, `fb_last_name`, `fb_full_name`, `fb_user_name`, `fb_gender`, `fb_local`, `fb_email`, `fb_mobile_1`, `fb_mobile_2`, `fb_hometown`, `fb_location`, `fb_country`, `fb_birthday`, `fb_tel`, `fb_religion`, `fb_martialstatus`, `fb_website`, `fb_interestedin`, `fb_ploticalview`, `oauth_token`, `points`) VALUES
(5, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(6, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(7, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(8, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(9, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(10, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(11, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(12, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(13, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(14, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(15, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(16, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(17, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(18, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(19, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0),
(20, 67889009, 'Ahmad', 'hasan', 'al-asa', 'Ahmad Al', 'ahmad.alasa', 'male', '10188097890', 'ala@hotmail.com', '970595920915', '970568665606', ' West Bank', '103122493061917', 'israel', '1999-04-13', '970595920915', 'muslim', 'single', 'https://www.facebook.com/ahma67678', 'female', 'none', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
