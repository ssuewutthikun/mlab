-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 25, 2023 at 06:43 AM
-- Server version: 8.0.33
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: MYSQL_DATABASE
--

-- --------------------------------------------------------

--
-- Table structure for table bis41_car
--

CREATE TABLE bis41_car (
  car_no int NOT NULL,
  car_regis varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  car_band varchar(30) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  car_series varchar(30) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  car_rate double(10,2) NOT NULL,
  car_num int NOT NULL,
  timestamp datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table bis41_car
--

INSERT INTO bis41_car (car_no, car_regis, car_band, car_series, car_rate, car_num, timestamp) VALUES
(1, 'กท-5740', 'HONDA', 'civic', 3750.00, 5, '2023-09-24 16:23:54'),
(3, 'ตน-8410', 'HONDA', 'city', 1400.00, 3, '2023-09-24 16:26:09'),
(5, 'ยน-7710', 'HONDA', 'crv', 4200.00, 2, '2023-09-24 16:35:39'),
(4, 'วส-6632', 'TOYOTA', 'yaris', 1630.00, 7, '2023-09-24 16:26:09'),
(2, 'ฮส-1408', 'TOYOTA', 'vios', 2150.00, 3, '2023-09-24 16:23:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table bis41_car
--
ALTER TABLE bis41_car
  ADD PRIMARY KEY (car_regis),
  ADD KEY car_no (car_no);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table bis41_car
--
ALTER TABLE bis41_car
  MODIFY car_no int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
