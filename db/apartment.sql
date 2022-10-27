-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 08:34 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apartment`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment`
--

CREATE TABLE `apartment` (
  `id` int(11) NOT NULL,
  `bid` int(11) NOT NULL,
  `apartmentNum` int(4) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `apartment`
--

INSERT INTO `apartment` (`id`, `bid`, `apartmentNum`, `description`) VALUES
(14, 8, 123, '2BHK apartment'),
(16, 7, 101, '1bhk Apartment'),
(17, 10, 111, '2BHK apartment'),
(18, 10, 123, '1bhk'),
(19, 11, 125, '2BHK apartment'),
(20, 12, 23, '3BH with sq'),
(21, 11, 56, 'Studio apartment'),
(22, 10, 562, '2BH'),
(23, 10, 110, 'STUDIO'),
(24, 11, 789, '2bh apartment'),
(25, 11, 852, '3bh apartment');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
