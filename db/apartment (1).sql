-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 08:55 AM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'ssameer.md@gmail.com', '1234'),
(2, 'admin@gmail.com', 'admin123');

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

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `id` int(11) NOT NULL,
  `Name` varchar(200) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Developer` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`id`, `Name`, `Address`, `Developer`) VALUES
(10, 'orchid', 'kamulu', 'omari'),
(11, 'Mlandizi', 'utawala', 'Samuel'),
(12, 'laravel', '001 nakuru', 'okemwa'),
(13, 'ruby', '002 nakuru', 'ndirangu');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `owned` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `name`, `email`, `password`, `mobile`, `owned`) VALUES
(3, 'james', 'james@gmail.com', '1234', '8971509400', '13'),
(6, 'sameer', 'ssameer.md@gmail.com', '1234', '9876543214', '14'),
(7, 'kerama', 'kerama@gmail.com', '1234', '8971509400', '15'),
(8, 'Muni', 'mu@gmail.com', '1234', '7418529635', '17'),
(9, 'patrick', 'pato@gmail.com', '1234', '789456130', '19'),
(10, 'okemwa', 'okemwa@gmail.com', 'okemwa1', '+911023654789', '20'),
(11, 'edwiin', 'edwin@gmail.com', 'edwin2', '0745789961', '18');

-- --------------------------------------------------------

--
-- Table structure for table `tenant`
--

CREATE TABLE `tenant` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `mobile` varchar(13) NOT NULL,
  `building` varchar(50) NOT NULL,
  `apartment` varchar(10) NOT NULL,
  `rent` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `oid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tenant`
--

INSERT INTO `tenant` (`id`, `name`, `email`, `password`, `mobile`, `building`, `apartment`, `rent`, `date`, `oid`) VALUES
(9, 'josh', 'josh@gmail.com', '1234', '7418529635', '7', '16', '5000', '2018-11-26', '3'),
(10, 'mutinda', 'mutinda@gmail.com', '1234', '7894561235', '8', '14', '4500', '2018-11-26', '8'),
(11, 'yusuf', 'yusuf@gmail.com', '1234', '7418529630', '11', '19', '5000', '2018-11-27', '9'),
(12, 'risper', 'r@gmail.com', 'risper14', '0789977425', '10', '18', '8000', '2022-10-26', '11'),
(13, 'wanjiru', 'mugo@gmail.com', '3001', '1515848945', '10', ' ', '8000', '2022-10-26', '11'),
(14, 'ferina', 'ferina@gmail.com', '0147', '1654161616', '11', ' ', '4500', '2022-10-26', '9'),
(15, 'ferina', 'ferina@gmail.com', '0147', '1654161616', '11', ' ', '4500', '2022-10-26', '9'),
(16, 'mwangi', 'eric@gmail.com', 'eric1', '5748464461', '11', ' ', '4848', '2022-10-26', '9'),
(17, 'ray', 'ray@gmail.com', '1470', '544646468461', '12', '20', '7820', '2022-10-27', '10'),
(18, 'sam', 'sam@gmail.com', '2580', '654644646464', '12', ' ', '8000', '2022-10-27', '10');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `tid` int(4) NOT NULL,
  `date` date NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `tid`, `date`, `amount`) VALUES
(9, 6, '2018-11-23', '5000'),
(10, 6, '2018-11-24', '5000'),
(11, 7, '2018-11-24', '4900'),
(12, 10, '2018-11-26', '4500'),
(13, 11, '2018-11-27', '5000'),
(14, 12, '2022-10-26', '8000'),
(15, 13, '2022-10-26', '8000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `apartment`
--
ALTER TABLE `apartment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tenant`
--
ALTER TABLE `tenant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `apartment`
--
ALTER TABLE `apartment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `building`
--
ALTER TABLE `building`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tenant`
--
ALTER TABLE `tenant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
