-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2023 at 02:24 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `his`
--

-- --------------------------------------------------------

--
-- Table structure for table `next of kin`
--

CREATE TABLE `next of kin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Date of birth` date NOT NULL,
  `Gender` text NOT NULL,
  `Telephone` int(14) NOT NULL,
  `ID Number` int(10) NOT NULL,
  `Relationship` text NOT NULL,
  `id_nok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `next of kin`
--
ALTER TABLE `next of kin`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `id_nok` (`id_nok`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `next of kin`
--
ALTER TABLE `next of kin`
  ADD CONSTRAINT `next of kin_ibfk_1` FOREIGN KEY (`id_nok`) REFERENCES `next of kin` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
