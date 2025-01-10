-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 10, 2025 at 05:34 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `musik`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `judul` text DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `gambar` text DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `judul`, `isi`, `gambar`, `tanggal`, `username`) VALUES
(43, 'Aurora', 'Aurora Aksnes, known simply as Aurora, is a Norwegian singer, songwriter and record producer. Born in Stavanger and raised in the towns of Høle and Os, she began writing her first songs and learning dance at the age of six.\r\n', '20250109204026.jpg', '2025-01-09 20:40:26', 'admin'),
(44, 'Beabadoobee', 'Beatrice Kristi Ilejay Laus, known professionally as Beabadoobee, is a Filipino-British singer and songwriter. She is best known for her genre Indie/Alternative pop music.\r\n\r\n', '20250109204054.jpg', '2025-01-09 20:40:54', 'admin'),
(45, 'Kitten Dust', 'Fathia Izzati Saripudin (lahir 26 September 1994) adalah personalia YouTube, penyanyi, penulis lagu, dan aktris Indonesia. Fathia merupakan vokalis dari grup musik Reality Club.', '20250109204942.jpg', '2025-01-09 20:49:42', 'admin'),
(46, 'Liana Flores', 'British-Brazilian artist Liana Flores on her debut LP, Flower of the soul, literary inspirations, and the timeless power of folk music.', '20250109205024.jpg', '2025-01-09 20:50:24', 'admin'),
(47, 'Lyn Lapid', 'Katelyn Lapid as known as her stage name Lyn Lapid, is a Filipino-American singer-songwriter. She is a member of vocal collective Earcandy. She also plays the guitar and ukulele.', '20250109205105.jpg', '2025-01-09 20:51:05', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `nama` varchar(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `gambar` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `nama`, `tanggal`, `gambar`) VALUES
(19, 'Aurora', '2025-01-09', '20250109210051.jpg'),
(20, 'Beabadoobee', '2025-01-09', '20250109210102.jpg'),
(21, 'Clairo', '2025-01-09', '20250109210114.jpg'),
(22, 'Kitten Dust', '2025-01-09', '20250109210125.jpg'),
(23, 'Lyn Lapid', '2025-01-09', '20250109210140.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `foto`) VALUES
(1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '20250109211534.jpg'),
(2, 'sapan', 'b130f05c99d7e770bcdfd6c4212fcd5c', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
