-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2023 at 12:10 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buspass_deepika`
--

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`cus_id`, `email`, `field_1`, `field_2`, `created_date`) VALUES
(53, '', 'GOLLAPUDI-KANKIPADU', 'KUMMARI PALEM â€“ BHAVANI PURAM - RAILWAY STN - IGMC STADIUM - BENZ CIRCLE - PATAMATA - AUTONAGAR GA', '2022-02-21'),
(54, '', 'KALESWARARAO MARKET - KANURU', 'KALESWARARAO MARKET - KANURU', '2022-02-21'),
(55, '', 'RAILWAY STATION - AUTONAGAR (VIA GURUNANAK COLONY)', 'RAILWAY STATION - OLD BUS STAND â€“ NAKKAL ROAD â€“ BESENT ROAD â€“ PUSHPA HOTEL â€“ RAMESH HOSPITAL', '2022-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `cus_id` int(255) NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`cus_id`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `created_date`) VALUES
(1, '1G', 'GOLLAPUDI-KANKIPADU', 'KUMMARI PALEM', '5', '17.6868', '83.2185', '2022-02-21'),
(101, '1G', 'GOLLAPUDI', 'RAILWAY STN', '5', '17.6868', '83.2185', '2022-02-28'),
(102, '123', 'Bangalore - Chennai', 'Byepass', '120', '17.6868', '83.2185', '2023-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `bus_speed`
--

CREATE TABLE `bus_speed` (
  `cus_id` int(255) NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bus_speed`
--

INSERT INTO `bus_speed` (`cus_id`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `created_date`) VALUES
(1, '1g', 'A - B', 'Morning', '25', '', '', '2022-02-28');

-- --------------------------------------------------------

--
-- Table structure for table `bus_ticket`
--

CREATE TABLE `bus_ticket` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `bus_ticket`
--

INSERT INTO `bus_ticket` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `created_date`) VALUES
(136, 'user@gmail.com', '2K', 'KALESWARARAO MARKET - KANURU', '? KALESWARARAO MARKET - KANURU', '87', '36093', '2022-02-21'),
(137, 'panneer@gmail.com', '3D', 'MILK PROJECT-DEVI NAGAR', '? MILK PROJECT-DEVI NAGAR', '32', '22601', '2022-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `cur_date`
--

CREATE TABLE `cur_date` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `cur_date`
--

INSERT INTO `cur_date` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(35, '', '14', '2017-05-28'),
(52, '', '12', '2017-05-29'),
(57, '', '7', '2017-05-30'),
(58, '', '6', '2017-05-31'),
(59, '', '5', '2017-08-07'),
(60, '', '4', '2018-03-19'),
(61, '', '3', '2018-05-01'),
(62, '', '2', '2022-01-13'),
(63, '', '1', '2022-01-20');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(59, '', '1G', '2022-02-21'),
(60, '', '2K', '2022-02-21'),
(61, '', '5 SG', '2022-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user_id` int(100) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `mobile` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `name`, `email`, `password`, `mobile`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `field_10`, `created_date`) VALUES
(3, 'Admin', 'admin@gmail.com', 'test', '9999955555', '123456', 'master', 'Dept', 'Desg', 'Admin', 'site', 'area', '', 'Approved', '', '2017-03-08'),
(184, 'User', 'user@gmail.com', 'test', '1234567906', '1234567906123', 'Student', '-1240', 'test', 'test', 'test', 'test', 'Male', 'Approved', '2023-02-21', '2023-02-21'),
(185, 'College', 'college@gmail.com', 'test', '1234567980', 'college', 'College', 'XYZ', 'test', 'test', 'test', 'test', 'Male', 'Approved', '', '2023-02-21'),
(186, 'test', 'test@gmail.com', 'test1@Ea', '1234567890', '1234567890123', 'Student', 'XYZ', '123456', 'etst', 'test', 'test', 'Male', 'Pending', '2023-02-21', '2023-02-27'),
(187, 'test', 'test3@gmail.com', 'test1@Ea', '1234567890', '1234567890', 'Student', 'XYZ', 'test', 'tes', 'test', 'test', 'Male', 'Pending', '2023-02-13', '2023-02-27');

-- --------------------------------------------------------

--
-- Table structure for table `pass`
--

CREATE TABLE `pass` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_2` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_3` varchar(300) COLLATE utf8_bin NOT NULL,
  `field_4` varchar(300) COLLATE utf8_bin NOT NULL,
  `site` varchar(100) COLLATE utf8_bin NOT NULL,
  `area` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_5` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_6` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_7` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_8` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_9` varchar(100) COLLATE utf8_bin NOT NULL,
  `fempid` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_10` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_11` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_12` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_13` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_14` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_15` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_16` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_17` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_18` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_19` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_20` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_21` varchar(100) COLLATE utf8_bin NOT NULL,
  `rating` varchar(100) COLLATE utf8_bin NOT NULL,
  `comment` varchar(100) COLLATE utf8_bin NOT NULL,
  `delay` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL,
  `closing_date` varchar(100) COLLATE utf8_bin NOT NULL,
  `completed` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pass`
--

INSERT INTO `pass` (`cus_id`, `email`, `field_1`, `field_2`, `field_3`, `field_4`, `site`, `area`, `field_5`, `field_6`, `field_7`, `field_8`, `field_9`, `fempid`, `field_10`, `field_11`, `field_12`, `field_13`, `field_14`, `field_15`, `field_16`, `field_17`, `field_18`, `field_19`, `field_20`, `field_21`, `rating`, `comment`, `delay`, `created_date`, `closing_date`, `completed`) VALUES
(12, '73856', '2023-02-21', '123', '1234567906123', 'User', 'test', 'test', '200', '1234567906', 'user@gmail.com', 'test', 'Bangalore - Chennai', '', 'Student Pass', 'Nil', 'Monthly', '2023-02-22', '1', '2023-02-21', '12:00', 'No', '', '', 'http://localhost/projects/buspass/own_build/Deepika/web/uploads/Back-to-Village.png', 'Approve', '', '', '', '2023-02-21', '2023-02-22', '');

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `field_1` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`cus_id`, `email`, `field_1`, `created_date`) VALUES
(51, '', 'College ABC', '2023-02-21'),
(52, '', 'XYZ', '2023-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `version`
--

CREATE TABLE `version` (
  `cus_id` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `version`
--

INSERT INTO `version` (`cus_id`, `email`, `created_date`) VALUES
(77, '1.0', '2017-04-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `bus_speed`
--
ALTER TABLE `bus_speed`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `bus_ticket`
--
ALTER TABLE `bus_ticket`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `cur_date`
--
ALTER TABLE `cur_date`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `pass`
--
ALTER TABLE `pass`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indexes for table `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`cus_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `bus_speed`
--
ALTER TABLE `bus_speed`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bus_ticket`
--
ALTER TABLE `bus_ticket`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `cur_date`
--
ALTER TABLE `cur_date`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `pass`
--
ALTER TABLE `pass`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `version`
--
ALTER TABLE `version`
  MODIFY `cus_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
