-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Generation Time: Sep 25, 2023 at 02:27 AM
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
-- Table structure for table bis42_member
--

CREATE TABLE bis42_member (
  mem_no int NOT NULL,
  mem_id varchar(20) COLLATE utf32_bin NOT NULL,
  mem_name varchar(60) COLLATE utf32_bin NOT NULL,
  mem_type varchar(20) CHARACTER SET utf32 COLLATE utf32_bin NOT NULL,
  mem_point int NOT NULL,
  mem_accumulat double(10,2) NOT NULL,
  timestamp datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table bis42_member
--

INSERT INTO bis42_member (mem_no, mem_id, mem_name, mem_type, mem_point, mem_accumulat, timestamp) VALUES
(1, 'MEM01', 'วิชิต สุขสม', 'redcard', 1543, 56041.00, '2023-09-24 16:14:05'),
(2, 'MEM02', 'วรรณดา สีทอง', 'redcard', 130, 2369.00, '2023-09-24 16:14:05'),
(3, 'MEM03', 'อินทรา วาดไว้', 'blackcard', 75, 430.00, '2023-09-24 16:15:27'),
(4, 'MEM04', 'สมยศ มุ่งกันดี', 'blackcard', 3512, 4210.00, '2023-09-24 16:15:27'),
(5, 'MEM05', 'หาญชัย แพรพรวา', 'blackcard', 12, 360.00, '2023-09-24 16:16:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table bis42_member
--
ALTER TABLE bis42_member
  ADD PRIMARY KEY (mem_id),
  ADD KEY mem_no (mem_no);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table bis42_member
--
ALTER TABLE bis42_member
  MODIFY mem_no int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
