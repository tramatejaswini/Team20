-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 02, 2019 at 10:08 PM
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
-- Table structure for table `Interviewer`
--

CREATE TABLE `Interviewer` (
  `Interviewer_ID` int(10) NOT NULL,
  `Name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `Phone_Number` int(10) NOT NULL,
  `Cancelled` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Notes` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `VIP` tinyint(1) NOT NULL,
  `Station` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Day` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Event_Location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Employer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Industry_Title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `City_State` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Career_Fields` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
