-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2016 at 04:49 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `userdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_deleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `last_login`, `is_deleted`) VALUES
(1, 'Gaveen', 'Buddhika', 'gaveen@gmail.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(2, 'Dinusha', 'Madushan', 'dinusha@gmail.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(4, 'Saman', 'Kumara', 'saman@gmail.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(5, 'Nimal', 'Perera', 'nimal@gmail.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(6, 'Buddi', 'Dilum', 'buddika@gmail.com', '7f965560c9f2ce126407eda7c7dbbdb75037ef4d', '0000-00-00 00:00:00', 0),
(7, 'Kamal', 'Silva', 'kamal@gmail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0000-00-00 00:00:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
