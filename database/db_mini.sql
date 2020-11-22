-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 22, 2020 at 04:21 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_mini`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_specs`
--

CREATE TABLE `tbl_specs` (
  `ID` int(11) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Price` varchar(10) NOT NULL,
  `Fuel Economy` varchar(15) NOT NULL,
  `Length` varchar(10) NOT NULL,
  `Width` varchar(10) NOT NULL,
  `Height` varchar(10) NOT NULL,
  `Engine` varchar(50) NOT NULL,
  `Horsepower` varchar(10) NOT NULL,
  `Body Style` varchar(10) NOT NULL,
  `Transmission` varchar(10) NOT NULL,
  `Drivetrain` varchar(3) NOT NULL,
  `Standard Seating` int(11) NOT NULL,
  `Wheelbase` varchar(15) NOT NULL,
  `Photo Angle 1` varchar(20) NOT NULL,
  `Photo Angle 2` varchar(20) NOT NULL,
  `Photo Angle 3` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_specs`
--

INSERT INTO `tbl_specs` (`ID`, `Model`, `Price`, `Fuel Economy`, `Length`, `Width`, `Height`, `Engine`, `Horsepower`, `Body Style`, `Transmission`, `Drivetrain`, `Standard Seating`, `Wheelbase`, `Photo Angle 1`, `Photo Angle 2`, `Photo Angle 3`) VALUES
(1, '2018 MINI Cooper', '$21,600', '28 / 38 mpg', '150.4 in.', '68.0 in.', '55.7 in.', '1.5 L 134 HP In-Line 3(xaxis)', '134 HP', 'Hatchback', '6-Speed', 'FWD', 4, '98.2 in.', 'cooperAngle1.png', 'cooperAngle2.png', 'cooperAngle3.png'),
(2, '2018 MINI Countryman', '$31,200', '22 / 32 mpg', '169.8 in.', '71.7 in.', '61.3 in.', '2.0 L 189 HP In-Line 4(xaxis)', '189 HP', 'Hatchback', '8-Speed', 'FWD', 5, '105.1 in.', 'countrymanAngle1.png', 'countrymanAngle2.png', 'countrymanAngle3.png'),
(3, '2018 MINI Clubman', '$35,900', '21 / 31 mpg', '168.3 in.', '70.9 in.', '56.7 in.', '2.0 L 228 HP In-Line 4(xaxis)', '228 HP', 'Wagon', '6-Speed', 'AWD', 5, '105.1 in.', 'clubmanAngle1.png', 'clubmanAngle2.png', 'clubmanAngle3.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_specs`
--
ALTER TABLE `tbl_specs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
