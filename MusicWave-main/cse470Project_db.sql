

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--

--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `artworkPath` varchar(500) NOT NULL,
  `lanugage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`id`, `title`, `artist`, `genre`, `artworkPath`, `lanugage`) VALUES
(1, 'Divide', 1, 2, 'assets/images/artwork/divide_cover.png', 2),
(2, 'Oniket Prantor', 2, 13, 'assets/images/artwork/Artcell.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `profile_pic` varchar(500) NOT NULL,
  `profile_icon` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`id`, `name`, `profile_pic`, `profile_icon`) VALUES
(1, 'Ed Sheeran', '', ''),
(2, 'Artcell', 'assets/images/profile-pics/artists/Oniket Prantor/Artcell.jpg', '');


-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Metal');


-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `language` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`) VALUES
(1, 'Bangla'),
(2, 'English');



-- --------------------------------------------------------

--
-- Table structure for table `playlists`
--

CREATE TABLE `playlists` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `owner` varchar(50) NOT NULL,
  `dateCreated` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlists`
--

INSERT INTO `playlists` (`id`, `name`, `owner`, `dateCreated`) VALUES
(1, 'Sadiul', 'rafi', '2023-08-04 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `playlistsongs`
--

CREATE TABLE `playlistsongs` (
  `id` int(11) NOT NULL,
  `songId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `playlistOrder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `playlistsongs`
--

INSERT INTO `playlistsongs` (`id`, `songId`, `playlistId`, `playlistOrder`) VALUES
(13, 2, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `artist` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `genre` int(11) NOT NULL,
  `duration` varchar(8) NOT NULL,
  `path` varchar(500) NOT NULL,
  `albumOrder` int(11) NOT NULL,
  `plays` int(11) NOT NULL,
  `lanugage` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `title`, `artist`, `album`, `genre`, `duration`, `path`, `albumOrder`, `plays`, `lanugage`) VALUES


(1, 'Eraser', 1, 1, 2, '3:36', 'assets/music/edSheeran/divide/1-Eraser.mp3', 1, 15, 2),
(2, 'Castle On The Hill', 1, 1, 2, '4:48', 'assets/music/edSheeran/divide/2-Castle On The Hill.mp3', 2, 7, 2),
(3, 'Dive', 1, 1, 2, '3:58', 'assets/music/edSheeran/divide/3-Dive.mp3', 3, 4, 2),
(4, 'Shape of You', 1, 1, 2, '4:23', 'assets/music/edSheeran/divide/4-Shape of You.mp3', 4, 10, 2),
(5, 'Perfect', 1, 1, 2, '4:10', 'assets/music/edSheeran/divide/5-Perfect.mp3', 5, 4, 2),
(6, 'Galway Girl', 1, 1, 2, '3:19', 'assets/music/edSheeran/divide/6-Galway Girl.mp3', 6, 5, 2),
(7, 'Happier', 1, 1, 2, '3:17', 'assets/music/edSheeran/divide/7-Happier.mp3', 7, 1, 2),
(8, 'New Man', 1, 1, 2, '3:00', 'assets/music/edSheeran/divide/8-New Man.mp3', 8, 2, 2),
(9, 'Hearts Dont Break Round Here', 1, 1, 2, '4:08', 'assets/music/edSheeran/divide/9-Hearts Don\t Break Round Here.mp3', 9, 2, 2),
(10, 'What Do I Know', 1, 1, 2, '3:45', 'assets/music/edSheeran/divide/10- What Do I Know.mp3', 10, 2, 2),
(11, 'How Would You Feel', 1, 1, 2, '4:26', 'assets/music/edSheeran/divide/11-How Would You Feel.mp3', 11, 2, 2),
(12, 'Supermarket Flowers', 1, 1, 2, '3:41', 'assets/music/edSheeran/divide/12-Supermarket Flowers.mp3', 12, 3, 2),
(13, 'Barcelona', 1, 1, 2, '3:11', 'assets/music/edSheeran/divide/13-Barcelona.mp3', 13, 1, 2),
(14, 'Bibia Be Ye Ye', 1, 1, 2, '2:39', 'assets/music/edSheeran/divide/14-Bibia Be Ye Ye.mp3', 14, 17, 2),
(15, 'Nancy Mulligan', 1, 1, 2, '2:50', 'assets/music/edSheeran/divide/15-Nancy Mulligan.mp3', 15, 6, 2),
(16, 'Save Myself', 1, 1, 2, '3:55', 'assets/music/edSheeran/divide/16-Save Myself.mp3', 16, 2, 2),
(17, 'Oniket Prantor', 2, 2, 3, '16:20', 'assets/music/Oniket Prantor/Oniket Prantor.mp3', 1, 1, 1);



-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(32) NOT NULL,
  `signUpDate` datetime NOT NULL,
  `profilePic` varchar(500) NOT NULL DEFAULT 'assets/images/profile-pics/head_emerald.png'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `signUpDate`, `profilePic`) VALUES
(2, 'fahim', 'Mehedi', 'Fahim', 'fahim@gmail.com', '2b35fe7d85d8582eb8e98c01d608c677', '2023-08-13 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(12, 'guest', 'Login', '', '', '', '2023-08-13 00:00:00', ''),
(13, 'rafi', 'Sadiul', 'Arefin', 'rafi@gmail.com', '2b35fe7d85d8582eb8e98c01d608c677', '2023-08-13 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(14, 'priti', 'Priti', 'Saha', 'priti@gmail.com', 'e6dfea6de7efe53f31539c71aac8c274', '2023-08-13 00:00:00', 'assets/images/profile-pics/head_emerald.png'),
(15, 'atif', 'Atif', 'Hossain', 'atif@gmail.com', '8b62d50945e821e37ec11abac803c9fc', '2023-08-13 00:00:00', 'assets/images/profile-pics/head_emerald.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `playlists`
--
ALTER TABLE `playlists`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `id_2` (`id`);

--
-- Indexes for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `playlists`
--
ALTER TABLE `playlists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `playlistsongs`
--
ALTER TABLE `playlistsongs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
