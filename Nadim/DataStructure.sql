-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2024 at 08:36 AM
-- Server version: 8.0.37
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kamal_sis25`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblbatch`
--

CREATE TABLE `tblbatch` (
  `id` int NOT NULL,
  `batch_id` varchar(100) NOT NULL,
  `batch_name` varchar(100) DEFAULT NULL,
  `program_code` varchar(100) NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `batch_status` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblfunder`
--

CREATE TABLE `tblfunder` (
  `id` int NOT NULL,
  `funder` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblfundersubcategory`
--

CREATE TABLE `tblfundersubcategory` (
  `id` int NOT NULL,
  `funder` varchar(100) NOT NULL,
  `funder_sub]` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblhostel`
--

CREATE TABLE `tblhostel` (
  `id` int NOT NULL,
  `hostel_id` varchar(100) NOT NULL,
  `hostel_addr` varchar(100) DEFAULT NULL,
  `hostel_owner` varchar(100) DEFAULT NULL,
  `hostel_phoneno` varchar(100) DEFAULT NULL,
  `hostel_type` char(100) DEFAULT NULL,
  `hostel_availability` char(100) DEFAULT NULL,
  `hostel_status` varchar(100) DEFAULT NULL,
  `hostel_maxtotal` int DEFAULT NULL,
  `note` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblhostel_details`
--

CREATE TABLE `tblhostel_details` (
  `id` int NOT NULL,
  `hostel_id` varchar(100) DEFAULT NULL,
  `student_id` varchar(100) DEFAULT NULL,
  `checkin_date` date DEFAULT NULL,
  `checkout_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblprogram`
--

CREATE TABLE `tblprogram` (
  `program_id` int NOT NULL,
  `program_code` varchar(100) DEFAULT NULL,
  `program_name` varchar(100) DEFAULT NULL,
  `duration` varchar(100) NOT NULL,
  `dur_type` varchar(100) NOT NULL,
  `program_status` varchar(100) DEFAULT NULL,
  `note` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `id` int NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `student_ic` varchar(100) NOT NULL,
  `student_name` varchar(100) DEFAULT NULL,
  `student_gender` char(100) DEFAULT NULL,
  `student_race` varchar(100) DEFAULT NULL,
  `student_phone_no` varchar(100) DEFAULT NULL,
  `student_home_no` varchar(100) DEFAULT NULL,
  `student_email` varchar(100) DEFAULT NULL,
  `student_addr` varchar(100) DEFAULT NULL,
  `student_state` varchar(100) NOT NULL,
  `student_batch_id` varchar(100) NOT NULL,
  `student_reg_date` date NOT NULL,
  `student_status` varchar(100) NOT NULL,
  `student_category` varchar(100) NOT NULL,
  `student_sponsor` varchar(100) NOT NULL,
  `student_father_name` varchar(100) NOT NULL,
  `student_father_phone` varchar(100) NOT NULL,
  `student_father_addr` varchar(100) NOT NULL,
  `student_mother_name` varchar(100) NOT NULL,
  `student_mother_phone` varchar(100) NOT NULL,
  `student_mother_addr` varchar(100) NOT NULL,
  `student_note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int NOT NULL,
  `nama_id` varchar(100) NOT NULL,
  `password_id` varchar(15) NOT NULL,
  `nama_penuh` varchar(100) NOT NULL,
  `level_id` varchar(100) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `nama_id`, `password_id`, `nama_penuh`, `level_id`, `note`) VALUES
(1, 'kamal@kismec.org.my', 'kamal123', 'Kamal Harmoni ', '300', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblbatch`
--
ALTER TABLE `tblbatch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfunder`
--
ALTER TABLE `tblfunder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblfundersubcategory`
--
ALTER TABLE `tblfundersubcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhostel`
--
ALTER TABLE `tblhostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblhostel_details`
--
ALTER TABLE `tblhostel_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprogram`
--
ALTER TABLE `tblprogram`
  ADD PRIMARY KEY (`program_id`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblbatch`
--
ALTER TABLE `tblbatch`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfunder`
--
ALTER TABLE `tblfunder`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblfundersubcategory`
--
ALTER TABLE `tblfundersubcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhostel`
--
ALTER TABLE `tblhostel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblhostel_details`
--
ALTER TABLE `tblhostel_details`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblprogram`
--
ALTER TABLE `tblprogram`
  MODIFY `program_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblstudent`
--
ALTER TABLE `tblstudent`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
