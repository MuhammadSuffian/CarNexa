-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2023 at 04:10 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carnexa`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `Gmail` varchar(254) DEFAULT NULL,
  `Car_Category` varchar(70) DEFAULT NULL,
  `Registeration_Number` varchar(20) DEFAULT NULL,
  `Model_Year` int(4) DEFAULT NULL,
  `Appointement` varchar(20) DEFAULT NULL,
  `Appointement_ID` varchar(9) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Gmail`, `Car_Category`, `Registeration_Number`, `Model_Year`, `Appointement`, `Appointement_ID`, `Date`, `Status`) VALUES
('mspakistan59@gmail.com', 'BIKE', 'RIQ-380', 2018, 'General Checkup', 'BBZ04038', '2023-12-24 08:00:00', 1),
('mspakistan59@gmail.com', 'BIKE', 'RIQ-380', 2018, 'General Checkup', 'BVP78083', '2023-12-24 11:00:00', 1),
('mspakistan59@gmail.com', 'BIKE', 'RIQ-380', 2018, 'General Checkup', 'DJD03527', '2023-12-07 14:00:00', 1),
('mspakistan59@gmail.com', 'SUV/MPV/PICKUP', 'jh', 7, 'Enigine issue', 'DOT96767', '2023-12-16 11:00:00', 1),
('mspakistan59@gmail.com', 'SEDAN/SPORTS SEDAN ', 'd', 2, 'Enigine issue', 'DPW53527', '2023-12-09 08:00:00', 1),
('mspakistan59@gmail.com', 'CONVERTABLE/CABRIOLET', 'jh', 7, 'Enigine issue', 'EBL17315', '2023-12-16 11:00:00', 1),
('mspakistan59@gmail.com', 'BIKE', 'RIQ-380', 2018, 'General Checkup', 'FIK78400', '2023-12-24 14:00:00', 1),
('mspakistan59@gmail.com', 'BIKE', 'hs', 2, 'General Checkup', 'QHH69264', '2023-12-09 00:00:00', 1),
('mspakistan59@gmail.com', 'SEDAN/SPORTS SEDAN ', 'd', 2, 'Enigine issue', 'YNR37869', '2023-12-07 08:00:00', 1),
('mspakistan59@gmail.com', 'SEDAN/SPORTS SEDAN ', 'uyg', 2, 'Enigine issue', 'ZGM10427', '2023-12-09 14:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Name` varchar(32) NOT NULL,
  `Gmail` varchar(254) NOT NULL,
  `Cnic` int(13) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Name`, `Gmail`, `Cnic`, `Password`) VALUES
('Farzam', 'far@gmail.com', 87654, '#f103h'),
('Muhammad Farzam Baig', 'Farzambaig2016@gmail.com', 3740587, '#1S2S3S4H5H6H'),
('Suffian', 'mspakistan59@gmail.com', 12345567, '#87103lik5H9M5H9M'),
('Shaheen', 'shaheen@gmail.com', 9876543, '#1S2S3S4H5H'),
('WaqasChaudary ', 'waqas@gmail.com', 0, '#Q103g103i1S2S3S');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `CID` int(10) NOT NULL,
  `NAME` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`CID`, `NAME`) VALUES
(136, 'M Farzam baig'),
(138, 'M.Suffian Tafoor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`Appointement_ID`),
  ADD KEY `Gmail` (`Gmail`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Gmail`),
  ADD UNIQUE KEY `Cnic` (`Cnic`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`CID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`Gmail`) REFERENCES `customer` (`Gmail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
