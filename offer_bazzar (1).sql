-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2024 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `offer_bazzar`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertiser`
--

CREATE TABLE `advertiser` (
  `advertiser_id` int(12) NOT NULL,
  `advertiser_name` varchar(256) NOT NULL,
  `advertiser_shopName` varchar(256) NOT NULL,
  `advertiser_category` varchar(256) NOT NULL,
  `advertiser_openTime` varchar(256) NOT NULL,
  `advertiser_closeTime` varchar(256) NOT NULL,
  `advertiser_address` varchar(256) NOT NULL,
  `advertiser_area` varchar(256) NOT NULL,
  `advertiser_city` varchar(256) NOT NULL,
  `advertiser_pincode` varchar(256) NOT NULL,
  `advertiser_latitude` varchar(256) NOT NULL,
  `advertiser_longitude` varchar(256) NOT NULL,
  `advertiser_contact` varchar(256) NOT NULL,
  `advertiser_email` varchar(256) NOT NULL,
  `advertiser_password` varchar(256) NOT NULL,
  `advertiser_status` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertiser`
--

INSERT INTO `advertiser` (`advertiser_id`, `advertiser_name`, `advertiser_shopName`, `advertiser_category`, `advertiser_openTime`, `advertiser_closeTime`, `advertiser_address`, `advertiser_area`, `advertiser_city`, `advertiser_pincode`, `advertiser_latitude`, `advertiser_longitude`, `advertiser_contact`, `advertiser_email`, `advertiser_password`, `advertiser_status`) VALUES
(100, 'Rajkumar', 'Shop', 'Saari', '10:00 AM', '8:00 PM', 'Shirpur, Dhule', 'Karvand Naka', 'Shirpur', '425405', '76.0987 N', '23.4324 E', '1234567890', 'advertiser1@gmail.com', 'advertiser1', 'disapproved'),
(101, 'Ram', 'Nike shoes', 'Shoes', '10:00 AM', '7:00 PM', 'Chalisgaon , Maharashtra', 'Naka', 'Chalisgaon', '444555', '45.45WE', '56.56', '9356978942', 'advertiser2@gmail.com', 'advertiser2', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `offers_id` int(12) NOT NULL,
  `offers_advertiserId` int(12) NOT NULL,
  `offers_offerName` varchar(256) NOT NULL,
  `offers_offerDetails` varchar(256) NOT NULL,
  `offers_startDate` varchar(256) NOT NULL,
  `offers_endDate` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`offers_id`, `offers_advertiserId`, `offers_offerName`, `offers_offerDetails`, `offers_startDate`, `offers_endDate`) VALUES
(1, 100, 'Saari sale', '50% off', '2024-02-13', '2024-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(12) NOT NULL,
  `user_name` varchar(256) NOT NULL,
  `user_city` varchar(256) NOT NULL,
  `user_contact` varchar(256) NOT NULL,
  `user_address` varchar(256) NOT NULL,
  `user_email` varchar(256) NOT NULL,
  `user_password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_city`, `user_contact`, `user_address`, `user_email`, `user_password`) VALUES
(1, 'Puja', 'Chalisgaon', '9356978942', 'Chalisgaon, Maharastra', 'puja@gmail.com', 'puja');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertiser`
--
ALTER TABLE `advertiser`
  ADD PRIMARY KEY (`advertiser_id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`offers_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertiser`
--
ALTER TABLE `advertiser`
  MODIFY `advertiser_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `offers_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
