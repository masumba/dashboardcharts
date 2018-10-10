-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2018 at 12:24 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mps_dash_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `agrodealer`
--

CREATE TABLE IF NOT EXISTS `agrodealer` (
  `agrodealer_id` int(11) NOT NULL,
  `agrodealer_target` int(11) NOT NULL,
  `agrodealer_registered` int(11) NOT NULL,
  `agrodealer_active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agrodealer`
--

INSERT INTO `agrodealer` (`agrodealer_id`, `agrodealer_target`, `agrodealer_registered`, `agrodealer_active`) VALUES
(1, 2600000, 1320000, 948021);

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(550) NOT NULL,
  `region_name` varchar(550) NOT NULL,
  `farmers_target` int(11) NOT NULL,
  `farmers_reg` int(11) NOT NULL,
  `farmers_active` int(11) NOT NULL,
  `finances_given` double(100,2) NOT NULL,
  `finances_used` double(100,2) NOT NULL,
  `finances_credited` double(100,2) NOT NULL,
  `tsp_count` int(11) NOT NULL,
  `tsp_value` double(100,2) NOT NULL,
  `input_count` int(11) NOT NULL,
  `input_value` double(100,2) NOT NULL,
  `agrodealer_target` int(11) NOT NULL,
  `agrodealer_registered` int(11) NOT NULL,
  `agrodealer_active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `district_name`, `region_name`, `farmers_target`, `farmers_reg`, `farmers_active`, `finances_given`, `finances_used`, `finances_credited`, `tsp_count`, `tsp_value`, `input_count`, `input_value`, `agrodealer_target`, `agrodealer_registered`, `agrodealer_active`) VALUES
(1, 'Chisamba', 'Southern', 24353, 2344, 422, 55435333.00, 35221.00, 12312.00, 1543, 424533.00, 1256334, 71201443.00, 260, 132, 94),
(2, 'Magoye', 'Northern', 24353, 2344, 422, 55435333.00, 35221.00, 12312.00, 1543, 424533.00, 1256334, 71201443.00, 260, 132, 94),
(3, 'Lusaka', 'Eastern', 24353, 2344, 422, 55435333.00, 35221.00, 12312.00, 1543, 424533.00, 1256334, 71201443.00, 260, 132, 94),
(4, 'Siavonga', 'Southern', 24353, 2344, 1422, 55435333.00, 35221.00, 12312.00, 1543, 424533.00, 1256334, 71201443.00, 260, 132, 94),
(5, 'Mongu', 'Western', 24353, 2344, 1422, 55435333.00, 35221.00, 12312.00, 1543, 424533.00, 1256334, 71201443.00, 260, 132, 94);

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE IF NOT EXISTS `farmers` (
  `farmers_id` int(11) NOT NULL,
  `farmers_target` int(11) NOT NULL,
  `farmers_reg` int(11) NOT NULL,
  `farmers_active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`farmers_id`, `farmers_target`, `farmers_reg`, `farmers_active`) VALUES
(1, 7000000, 5600000, 3500100);

-- --------------------------------------------------------

--
-- Table structure for table `finances`
--

CREATE TABLE IF NOT EXISTS `finances` (
  `finances_id` int(11) NOT NULL,
  `finances_given` double(100,2) NOT NULL,
  `finances_used` double(100,2) NOT NULL,
  `finances_credited` double(100,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finances`
--

INSERT INTO `finances` (`finances_id`, `finances_given`, `finances_used`, `finances_credited`) VALUES
(1, 600000000.00, 71458333.00, 550000000.00);

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `region_id` int(11) NOT NULL,
  `region_name` varchar(300) NOT NULL,
  `farmers_target` int(11) NOT NULL,
  `farmers_reg` int(11) NOT NULL,
  `farmers_active` int(11) NOT NULL,
  `finances_given` double(100,2) NOT NULL,
  `finances_used` double(100,2) NOT NULL,
  `finances_credited` double(100,2) NOT NULL,
  `tsp_count` int(11) NOT NULL,
  `tsp_value` double(100,2) NOT NULL,
  `input_count` int(11) NOT NULL,
  `input_value` double(100,2) NOT NULL,
  `agrodealer_target` int(11) NOT NULL,
  `agrodealer_registered` int(11) NOT NULL,
  `agrodealer_active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`region_id`, `region_name`, `farmers_target`, `farmers_reg`, `farmers_active`, `finances_given`, `finances_used`, `finances_credited`, `tsp_count`, `tsp_value`, `input_count`, `input_value`, `agrodealer_target`, `agrodealer_registered`, `agrodealer_active`) VALUES
(1, 'Southern', 7000000, 5600000, 3500100, 600000000.00, 71458333.00, 550000000.00, 1543, 424533.00, 126334, 71201443.00, 2600000, 1320000, 948021),
(2, 'Western', 7000000, 641500, 14200, 7000000.00, 7000000.00, 7000000.00, 7000000, 7000000.00, 7000000, 7000000.00, 7000000, 7000000, 7000000),
(3, 'Eastern', 7000000, 70000, 450000, 7000000.00, 7000000.00, 7000000.00, 7000000, 7000000.00, 7000000, 7000000.00, 7000000, 7000000, 7000000),
(4, 'Northern', 7000000, 704465, 700, 7000000.00, 7000000.00, 7000000.00, 7000000, 7000000.00, 7000000, 7000000.00, 7000000, 7000000, 7000000);

-- --------------------------------------------------------

--
-- Table structure for table `town`
--

CREATE TABLE IF NOT EXISTS `town` (
  `town_id` int(11) NOT NULL,
  `town_name` varchar(550) NOT NULL,
  `district_name` varchar(550) NOT NULL,
  `farmers_target` int(11) NOT NULL,
  `farmers_reg` int(11) NOT NULL,
  `farmers_active` int(11) NOT NULL,
  `finances_given` double(100,2) NOT NULL,
  `finances_used` double(100,2) NOT NULL,
  `finances_credited` double(100,2) NOT NULL,
  `tsp_count` int(11) NOT NULL,
  `tsp_value` double(100,2) NOT NULL,
  `input_count` int(11) NOT NULL,
  `input_value` double(100,2) NOT NULL,
  `agrodealer_target` int(11) NOT NULL,
  `agrodealer_registered` int(11) NOT NULL,
  `agrodealer_active` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `town`
--

INSERT INTO `town` (`town_id`, `town_name`, `district_name`, `farmers_target`, `farmers_reg`, `farmers_active`, `finances_given`, `finances_used`, `finances_credited`, `tsp_count`, `tsp_value`, `input_count`, `input_value`, `agrodealer_target`, `agrodealer_registered`, `agrodealer_active`) VALUES
(1, 'Lusaka', 'Lusaka', 24353, 2344, 700, 4688.00, 3522.00, 123.00, 1543, 424533.00, 1256334, 71201443.00, 260, 132, 94),
(3, 'Chongwe', 'Lusaka', 24353, 2344, 700, 4688.00, 3522.00, 123.00, 1543, 424533.00, 1256334, 71201443.00, 260, 132, 94);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `transaction_id` int(11) NOT NULL,
  `tsp_count` int(11) NOT NULL,
  `tsp_value` double(100,2) NOT NULL,
  `input_count` int(11) NOT NULL,
  `input_value` double(100,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `tsp_count`, `tsp_value`, `input_count`, `input_value`) VALUES
(1, 1543, 424533.00, 126334, 712443.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agrodealer`
--
ALTER TABLE `agrodealer`
  ADD PRIMARY KEY (`agrodealer_id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`farmers_id`);

--
-- Indexes for table `finances`
--
ALTER TABLE `finances`
  ADD PRIMARY KEY (`finances_id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`region_id`);

--
-- Indexes for table `town`
--
ALTER TABLE `town`
  ADD PRIMARY KEY (`town_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agrodealer`
--
ALTER TABLE `agrodealer`
  MODIFY `agrodealer_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `farmers_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `finances`
--
ALTER TABLE `finances`
  MODIFY `finances_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `region_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `town`
--
ALTER TABLE `town`
  MODIFY `town_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
