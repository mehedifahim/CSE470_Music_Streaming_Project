-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 29, 2017 at 04:49 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `MusicWave`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL,
  `lanugage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`, `lanugage`) VALUES
(1, 'Dabangg', 1, 11, 'assets/images/artwork/dabangg.jpg', 3),
(2, 'Divide', 8, 2, 'assets/images/artwork/divide_cover.png', 2),
(3, 'Nine Track Mind', 9, 12, 'assets/images/artwork/nine_Track_Mind.png', 2);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

DROP TABLE IF EXISTS `artists`;
CREATE TABLE IF NOT EXISTS `artists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`) VALUES
(1, 'Rahat Fateh Ali Khan'),
(2, 'Mamta Sharma'),
(3, 'Sonu Nigam'),
(4, 'Shreya Ghosal'),
(5, 'Sukhwinder Singh'),
(6, 'Wajid, Master Salim, Shabab Sabri'),
(7, 'Salman Khan'),
(8, 'Ed Sheeran'),
(9, 'Charlie Puth');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Hip-hop'),
(4, 'Rap'),
(5, 'R & B'),
(6, 'Classical'),
(7, 'Techno'),
(8, 'Jazz'),
(9, 'Folk'),
(10, 'Country'),
(11, 'Bollywood Music'),
(12, 'Rythm and Blues');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
CREATE TABLE IF NOT EXISTS `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`) VALUES
(1, 'Nepali'),
(2, 'English'),
(3, 'Hindi');

-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

DROP TABLE IF EXISTS `playlists`;
CREATE TABLE IF NOT EXISTS `playlists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(7, 'Salman ', 'anuraglimbu', '2017-12-25 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

DROP TABLE IF EXISTS `playlistsongs`;
CREATE TABLE IF NOT EXISTS `playlistsongs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(12, 2, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
CREATE TABLE IF NOT EXISTS `songs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL,
  `lanugage` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`, `lanugage`) VALUES
(1, 'Tere Mast Mast Do Nain (Male)', 1, 1, 11, '6:00', 'assets/music/dabangg/1-Tere Mast Mast Do Nain.mp3', 1, 9, 3),
(2, 'Munni Badnaam', 2, 1, 11, '5:07', 'assets/music/dabangg/2 - Munni Badnaam.mp3', 2, 41, 3),
(3, 'Chori Kiya Re Jiya', 3, 1, 11, '4:48', 'assets/music/dabangg/3 - Chori Kiya Re Jiya.mp3', 3, 7, 3),
(4, 'Hud Hud Dabangg', 5, 1, 11, '4:14', 'assets/music/dabangg/4 - Hud Hud Dabangg.mp3', 4, 4, 3),
(5, 'Humka Peeni Hai', 6, 1, 11, '5:15', 'assets/music/dabangg/5 - Humka Peeni Hai.mp3', 5, 7, 3),
(6, 'Tere Mast Mast Do Nain', 1, 1, 11, '5:59', 'assets/music/dabangg/6 - Tere Mast Mast Do Nain.mp3', 6, 5, 3),
(7, 'Dabangg Theme', 7, 1, 11, '2:48', 'assets/music/dabangg/7 - Dabangg Theme.mp3', 7, 18, 3),
(8, 'Eraser', 8, 2, 2, '3:36', 'assets/music/edSheeran/divide/1-Eraser.mp3', 1, 5, 2),
(9, 'Castle On The Hill', 8, 2, 2, '4:48', 'assets/music/edSheeran/divide/2-Castle On The Hill.mp3', 2, 3, 2),
(10, 'Dive', 8, 2, 2, '3:58', 'assets/music/edSheeran/divide/3-Dive.mp3', 3, 1, 2),
(11, 'Shape of You', 8, 2, 2, '4:23', 'assets/music/edSheeran/divide/4-Shape of You.mp3', 4, 4, 2),
(12, 'Perfect', 8, 2, 2, '4:10', 'assets/music/edSheeran/divide/5-Perfect.mp3', 5, 1, 2),
(13, 'Galway Girl', 8, 2, 2, '3:19', 'assets/music/edSheeran/divide/6-Galway Girl.mp3', 6, 1, 2),
(14, 'Happier', 8, 2, 2, '3:17', 'assets/music/edSheeran/divide/7-Happier.mp3', 7, 0, 2),
(15, 'New Man', 8, 2, 2, '3:00', 'assets/music/edSheeran/divide/8-New Man.mp3', 8, 0, 2),
(16, 'Hearts Don\'t Break Round Here', 8, 2, 2, '4:08', 'assets/music/edSheeran/divide/9-Hearts Don\'t Break Round Here.mp3', 9, 1, 2),
(17, 'What Do I Know', 8, 2, 2, '3:45', 'assets/music/edSheeran/divide/10- What Do I Know.mp3', 10, 0, 2),
(18, 'How Would You Feel', 8, 2, 2, '4:26', 'assets/music/edSheeran/divide/11-How Would You Feel.mp3', 11, 1, 2),
(19, 'Supermarket Flowers', 8, 2, 2, '3:41', 'assets/music/edSheeran/divide/12-Supermarket Flowers.mp3', 12, 0, 2),
(20, 'Barcelona', 8, 2, 2, '3:11', 'assets/music/edSheeran/divide/13-Barcelona.mp3', 13, 0, 2),
(21, 'Bibia Be Ye Ye', 8, 2, 2, '2:39', 'assets/music/edSheeran/divide/14-Bibia Be Ye Ye.mp3', 14, 4, 2),
(22, 'Nancy Mulligan', 8, 2, 2, '2:50', 'assets/music/edSheeran/divide/15-Nancy Mulligan.mp3', 15, 1, 2),
(23, 'Save Myself', 8, 2, 2, '3:55', 'assets/music/edSheeran/divide/16-Save Myself.mp3', 16, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(1, 'anuraglimbu', 'Limbu', 'Anurag', 'anuraglimbu2018@gmail.com', '7c6a180b36896a0a8c02787eeafb0e4c', '2017-12-10 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(2, 'gajendra2', 'Gajendra', 'Limbu', 'Gajendrakandangwa812@gmail.com', '2b35fe7d85d8582eb8e98c01d608c677', '2017-12-13 00:00:00', 'assets/images/profile-pics/head_emerald.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
