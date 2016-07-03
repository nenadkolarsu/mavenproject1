-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2015 at 03:54 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Action & Adventure', ''),
(2, 'Anime & Manga', ''),
(3, 'Art House & International', ''),
(4, 'Classics', ''),
(5, 'Comedy', ''),
(6, 'Cult Movies', ''),
(7, 'Drama', ''),
(8, 'New & Future Releases', ''),
(9, 'Horror', ''),
(10, 'Musicals', ''),
(11, 'Mystery & Suspense', ''),
(12, 'Science Fiction & Fantasy', ''),
(13, 'Westerns', '');

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `supersaver` decimal(6,2) DEFAULT NULL,
  `availability` tinyint(4) DEFAULT NULL,
  `photo` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `price`, `supersaver`, `availability`, `photo`, `category`) VALUES
(1, 'Star Wars Trilogy (Widescreen Edition)', '225.97', '195.00', 1, 'photo_1.jpg', 1),
(2, 'Batman - The Animated Series', '125.00', '195.00', 1, 'photo_4.jpg', 3),
(3, 'Harry Potter and the Prisoner of Azkaban', '350.00', '295.00', 1, 'photo_2.jpg', 2),
(4, 'Blade - Trinity (New Platinum Series)', '115.00', '95.00', 1, 'photo_5.jpg', 2),
(5, 'Million Dollar Baby (Widescreen Edition)', '105.97', '99.00', 1, 'photo_3.jpg', 1),
(6, 'The Matrix Reloaded (Full Screen Edition)', '75.00', '55.00', 1, 'photo_6.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userdata` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordertime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `products` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userdata`, `ordertime`, `products`) VALUES
(6, 'vladimir maric', '2015-06-30 13:52:26', '[{"id":1,"q":6},{"id":2,"q":3},{"id":4,"q":5}]'),
(7, 'fasfsadfa', '2015-06-30 13:54:02', '[{"id":3,"q":2}]');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
