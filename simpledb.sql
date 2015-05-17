-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2013 at 05:55 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b7_14076701_new`
--
CREATE DATABASE IF NOT EXISTS `b7_14076701_new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `b7_14076701_new`;

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE IF NOT EXISTS `bids` (
  `User_ID` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_claim` text NOT NULL,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `bid_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`bid_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `bids`
--

INSERT INTO `bids` (`User_ID`, `pid`, `date_time`, `user_claim`, `approved`, `bid_id`) VALUES
(7, 2, '2013-12-04 13:33:49', 'This is first bid ever on this project.', 0, 8),
(2, 2, '2013-12-04 13:33:47', 'This was a great movie.', 1, 17),
(3, 7, '2013-12-04 16:17:28', 'Well I am in love this movie, the main thing of its popularity is it''s adventure.', 0, 18),
(3, 9, '2013-12-04 16:19:55', 'This one is really the sister movie.', 0, 19),
(4, 2, '2013-12-05 16:17:41', 'Great movie it is.', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `cast`
--

CREATE TABLE IF NOT EXISTS `cast` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cast1` varchar(255) NOT NULL,
  `cast2` varchar(255) NOT NULL,
  `cast3` varchar(255) NOT NULL,
  `cast4` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `cast`
--

INSERT INTO `cast` (`id`, `cast1`, `cast2`, `cast3`, `cast4`) VALUES
(1, 'Sacha Baron Cohen', 'Sayed Badreya', 'Rocky Citron', 'Liam Campora'),
(2, 'Tobey Maguire', 'Kirsten Dunst', 'James Franco', 'Alfred Molina'),
(3, 'Tobey Maguire', 'Kirsten Dunst', 'James Franco', 'Alfred Molina'),
(4, 'Tobey Maguire', 'Kirsten Dunst', 'James Franco', 'Alfred Molina'),
(5, 'Tobey Maguire', 'Kirsten Dunst', 'James Franco', 'Alfred Molina'),
(6, 'Alan Howard', 'Elijah Wood', 'Sean Astin', 'Sean Bean'),
(7, 'Alan Howard', 'Elijah Wood', 'Sean Astin', 'Sean Bean'),
(9, 'Alan Howard', 'Elijah Wood', 'Sean Astin', 'Sean Bean');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `zipcode` varchar(60) NOT NULL,
  `houseno` varchar(60) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datereg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `moneyacc` varchar(60) NOT NULL,
  `companyname` varchar(60) NOT NULL,
  `empno` int(11) NOT NULL,
  `companyrelated` varchar(60) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`fname`, `lname`, `email`, `password`, `country`, `city`, `zipcode`, `houseno`, `id`, `datereg`, `moneyacc`, `companyname`, `empno`, `companyrelated`) VALUES
('Jack', 'Jason', 'jack.jason@gmail.com', '9f03a802ed69b91dbd3ff264d53beb6789048fd2', 'France', 'Paris', 'Par-019', 'H-879', 4, '2013-11-23 06:57:19', 'omjnczr4%^&', 'France Softwares', 11, 'Software'),
('Hayyan', 'Haris', 'hayyan.haris@gmail.com', '2ee531a3aea77c751bf99f3007a5b2dad80a65dc', 'UK', 'Ireland', '856479', 'OPTYI-58', 5, '2013-11-23 07:25:05', 'IRYEBZN$%', 'Mazik Global', 11, 'Software'),
('Hani', 'Sayyed', 'hani.sayyed@gmail.com', '549079e5e7356d5ef5b6afd44fe8e66cc57c2154', 'Pakistan', 'Islamabad', '74987', 'YT-984', 7, '2013-11-23 08:24:18', 'sa,tpb#%&', 'Ham Gam', 2, 'Games'),
('Ikza', 'Shafi', 'ikza.shafi@gmail.com', 'd3cda8e59edcf5cf8a5441130c80bd43fdcb516e', 'Pakistan', 'Lahore', '74945', 'KO-879', 8, '2013-12-03 02:50:16', 'oki9thqmzzhrq', 'Korana', 51, 'Software'),
('Rafay', 'Farooq', 'rafayfarooq@outlook', '4233137d1c510f2e55ba5cb220b864b11033f156', 'jj', 'jj', 'jj', 'jj', 9, '2013-12-03 05:33:52', 'jjj2929', 'Soltuion', 2, 'Content Writing');

-- --------------------------------------------------------

--
-- Table structure for table `freelancers`
--

CREATE TABLE IF NOT EXISTS `freelancers` (
  `fname` varchar(60) NOT NULL,
  `lname` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `country` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `zipcode` varchar(60) NOT NULL,
  `houseno` varchar(60) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datereg` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gender` varchar(60) NOT NULL DEFAULT 'male',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `freelancers`
--

INSERT INTO `freelancers` (`fname`, `lname`, `email`, `password`, `country`, `city`, `zipcode`, `houseno`, `id`, `datereg`, `gender`) VALUES
('Usama', 'Noman', 'osamization@gmail.com', '45c571a156ddcef41351a713bcddee5ba7e95460', 'Pakistan', 'Karachi', '74900', 'N-746', 2, '2013-11-21 15:55:01', 'male'),
('Alex', 'Donald', 'alex.donald@gmail.com', '8e87bbe1ac4a574f4386e5faad1089a29affdd56', 'United States Of America', 'New York', '54200', 'K-746', 3, '2013-11-21 16:18:58', 'male'),
('Ramos', 'Thomas', 'ramos.thomas@gmail.com', 'c87b074d239a2978a0f6dc0bf2fac831e9035bdd', 'Mexico', 'Max', '63200', 'I-Block #46  ', 4, '2013-11-21 16:32:16', 'male'),
('Rania', 'Ahmed', 'rania.ahmed@gmail.com', '5f1daf6e5e7314dcd4588fb51544c1e3a269ee23', 'Pakistan', 'Hyderabad', '74906', 'H-7', 5, '2013-11-21 18:07:52', 'male'),
('Inni', 'Marry', 'Inni.marry@gmail.com', '452168e721278afbe63ae20587a96a4a9674cf5b', 'Russia', 'Cuba', '66541', 'I-Hotel 56', 7, '2013-11-21 18:14:28', 'male'),
('Yanni', 'John', 'Yanni.John@gmail.com', '9cd61a9e10f35d4a9fa01337b306d29913f3e64c', 'Uganda', 'ika', '41065', 'OPD-87', 8, '2013-11-21 18:16:58', 'male'),
('Polack', 'Dale', 'polack.dale@gmail.com', '820930b05add079f01837e1d9daa049a8759c304', 'South Africa', 'Columbia', '9887', 'UT-76', 9, '2013-11-21 18:19:11', 'male'),
('David', 'Millar', 'david.millar@gmail.com', '6f27343162e9ce3f87fd59adf108897ecec07583', 'South Africa', 'Columbia', '9887', 'IKN-34', 10, '2013-11-21 18:20:11', 'male'),
('Polo', 'Mojho', 'polo.mojho@gmail.com', 'aa5b5dbf1fccb02dcf02ff7c7e2ec417f958a555', 'Mexico', 'Max', '74906', '86547-OK', 14, '2013-11-23 06:34:33', 'male'),
('Unaiza', 'Junaid', 'unaiza.junaid@gmail.com', 'd6d428d29b60c7c7c4aa52666b8f291b23b5dc4d', 'Pakistan', 'Karachi', '74900', 'UJ-856', 15, '2013-11-23 06:36:24', 'male'),
('Tania', 'Roymond', 'tania.roymond@gmail.com', '6ba52baf85361dbf375800cd7cb8d13dba2084c9', 'Philpines', 'Mali', '8561', '09-UKI', 17, '2013-11-23 06:54:09', 'male'),
('Andrew', 'Fillintof', 'andrew.fillintof@gmail.com', '3c8b57303330224d8d1fd63557e9fa093cdb93ab', 'England', 'London', 'UK-8669', 'UK-8745', 18, '2013-11-23 06:55:47', 'male'),
('Hamid', 'Meer', 'hamid.meer@gmail.com', 'd164fb8a35f8681d9129b1f87e00cc35525e7128', 'India', 'Mumbai', '74900', 'H-878', 19, '2013-11-23 09:56:28', 'male'),
('Abdul', 'Razzak', 'abdul.razzak@gmail.com', '29366b22744ddc7fe5186dd0251da8ac8ac5db44', 'Bangladesh', 'Dhaka', '58641', 'OKIT-987', 20, '2013-11-23 09:58:52', 'male'),
('Rafay', 'Farooq', 'rafayfarooq@outlook.com', 'hello123', 'USA', 'Chicago', '898299', '232ADas2', 21, '2013-12-03 05:27:35', 'male'),
('Rafay', 'Tariq', 'rafay.tariq@gmail.com', 'f62742f62fbc3a168a4bc18ec266db8215bfd6fd', 'Pakistan', 'Karachi', '74900', 'LO45', 22, '2013-12-04 05:12:25', 'male');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE IF NOT EXISTS `history` (
  `hist_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `producer` varchar(255) NOT NULL,
  `director` varchar(255) NOT NULL,
  `cast1` varchar(255) NOT NULL,
  `cast2` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  PRIMARY KEY (`hist_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`hist_id`, `user_id`, `producer`, `director`, `cast1`, `cast2`, `category`, `writer`) VALUES
(2, 3, 'Larry Charles ', 'Larry Charles ', 'Sacha Baron Cohen', 'Sayed Badreya', 'Funny', 'Sacha Baron Cohen'),
(3, 3, 'Larry Charles ', 'Larry Charles ', 'Sacha Baron Cohen', 'Sayed Badreya', 'Funny', 'Sacha Baron Cohen'),
(4, 3, 'New Line Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(5, 3, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(6, 3, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(7, 3, 'Prime Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(8, 3, 'Larry Charles ', 'Larry Charles ', 'Sacha Baron Cohen', 'Sayed Badreya', 'Funny', 'Sacha Baron Cohen'),
(9, 3, 'Larry Charles ', 'Larry Charles ', 'Sacha Baron Cohen', 'Sayed Badreya', 'Funny', 'Sacha Baron Cohen'),
(10, 3, 'Prime Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(11, 3, 'Prime Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(12, 3, 'New Line Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(13, 3, 'Larry Charles ', 'Larry Charles ', 'Sacha Baron Cohen', 'Sayed Badreya', 'Funny', 'Sacha Baron Cohen'),
(14, 4, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(15, 4, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(16, 4, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(17, 4, 'New Line Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(18, 4, 'New Line Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(19, 4, 'Larry Charles ', 'Larry Charles ', 'Sacha Baron Cohen', 'Sayed Badreya', 'Funny', 'Sacha Baron Cohen'),
(20, 4, 'New Line Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(21, 9, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(22, 9, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(23, 9, 'Prime Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(24, 9, 'Prime Cenima', 'Peter Jackson', 'Alan Howard', 'Elijah Wood', 'Adventure', 'J. R. R. Tolkien'),
(25, 10, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics'),
(26, 10, 'Sam Raimi', 'Sam Raimi', 'Tobey Maguire', 'Kirsten Dunst', 'Super Human', 'Marvel Comics');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE IF NOT EXISTS `projects` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `data_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(60) NOT NULL,
  `director` varchar(255) NOT NULL,
  `producer` varchar(255) NOT NULL,
  `writer` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `releaseDate` varchar(255) NOT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`pid`, `title`, `description`, `data_time`, `category`, `director`, `producer`, `writer`, `language`, `releaseDate`) VALUES
(1, 'The Dictator', 'The heroic story of a dictator who risks his life to ensure that democracy would never come to the country he so lovingly oppressed.', '2013-12-04 20:20:38', 'Funny', 'Larry Charles ', 'Larry Charles ', 'Sacha Baron Cohen', 'English', 'May 16, 2012 '),
(2, 'Spiderman 1', 'Peter Parker is beset with troubles in his failing personal life as he battles a brilliant scientist named Doctor Otto Octavius.                                                                                                ', '2013-12-04 20:25:52', 'Super Human', 'Sam Raimi', 'Sam Raimi', 'Marvel Comics', 'English', 'May 3 2002'),
(4, 'Spiderman 2', 'Peter Parker is beset with troubles in his failing personal life as he battles a brilliant scientist named Doctor Otto Octavius.', '2013-12-04 14:17:23', 'Super Human', 'Sam Raimi', 'Sam Raimi', 'Marvel Comics', 'English', 'June 30, 2004'),
(5, 'Spiderman 3 ', 'Peter Parker is beset with troubles in his failing personal life as he battles a brilliant scientist named Doctor Otto Octavius.', '2013-12-04 15:34:34', 'Super Human', 'Sam Raimi', 'Sam Raimi', 'Ivan Raimi', 'English', 'April 16, 2007'),
(6, 'Lord of the rings : The Fellowship of the ring', 'A meek hobbit of The Shire and eight companions set out on a journey to Mount Doom to destroy the One Ring and the dark lord Sauron.', '2013-12-04 15:37:31', 'Adventure', 'Peter Jackson', 'New Line Cenima', 'J. R. R. Tolkien', 'English', '19 December 2001'),
(7, 'The Lord of the rings : The Two Towers', 'A meek hobbit of The Shire and eight companions set out on a journey to Mount Doom to destroy the One Ring and the dark lord Sauron.', '2013-12-04 15:42:23', 'Adventure', 'Peter Jackson', 'Prime Cenima', 'J. R. R. Tolkien', 'English', '5 December 2002'),
(9, 'The Lord of the Rings : The return of the king ', 'A meek hobbit of The Shire and eight companions set out on a journey to Mount Doom to destroy the One Ring and the dark lord Sauron.', '2013-12-04 15:52:37', 'Adventure', 'Peter Jackson', 'Prime Cenima', 'J. R. R. Tolkien', 'English', '1 December 2003');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE IF NOT EXISTS `rate` (
  `user_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `rate` int(11) NOT NULL,
  `rate_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`rate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`user_id`, `pid`, `rate`, `rate_id`) VALUES
(2, 2, 2, 1),
(3, 1, 3, 2),
(4, 6, 3, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
