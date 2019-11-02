-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2019 at 10:07 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `3To8xeYofz`
--

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Student_ID` int(10) NOT NULL,
  `First_Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Last_Name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Full_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Phone_Number` int(10) NOT NULL,
  `Email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Ethnicity` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Cohort` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Evening` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Location` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `Career_Interests` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Attendance` float NOT NULL,
  `Module_Score` float NOT NULL,
  `Project_Score` float NOT NULL,
  `Bonus` float NOT NULL,
  `Total_Score` float NOT NULL,
  `Graduation_Status` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Student_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
