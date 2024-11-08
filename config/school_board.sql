-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2024 at 04:57 PM
-- Server version: 8.0.39
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_board`
--

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int NOT NULL,
  `student_id` int DEFAULT NULL,
  `grade` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `student_id`, `grade`) VALUES
(1, 1, 7),
(2, 1, 8),
(3, 1, 6),
(4, 1, 9),
(5, 2, 5),
(6, 2, 8),
(7, 2, 6),
(8, 2, 7),
(9, 3, 9),
(10, 3, 8),
(11, 3, 7),
(12, 4, 4),
(13, 4, 6),
(14, 4, 7),
(15, 4, 5),
(16, 5, 10),
(17, 5, 9),
(18, 6, 6),
(19, 6, 8),
(20, 6, 5),
(21, 7, 9),
(22, 7, 6),
(23, 7, 7),
(24, 8, 4),
(25, 8, 10),
(26, 9, 7),
(27, 9, 5),
(28, 9, 8),
(29, 9, 9),
(30, 10, 8),
(31, 10, 10),
(32, 11, 8),
(33, 11, 9),
(34, 11, 10),
(35, 12, 6),
(36, 12, 7),
(37, 12, 8),
(38, 13, 5),
(39, 13, 7),
(40, 13, 6),
(41, 13, 8),
(42, 14, 8),
(43, 14, 8),
(44, 14, 7),
(45, 15, 10),
(46, 15, 9),
(47, 16, 9),
(48, 16, 8),
(49, 16, 6),
(50, 17, 5),
(51, 17, 9),
(52, 17, 10),
(53, 18, 6),
(54, 18, 9),
(55, 18, 8),
(56, 19, 10),
(57, 19, 10),
(58, 20, 8),
(59, 20, 9);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`) VALUES
(1, 'James Smith'),
(2, 'Olivia Johnson'),
(3, 'Ethan Brown'),
(4, 'Sophia Williams'),
(5, 'Michael Jones'),
(6, 'Emma Miller'),
(7, 'Daniel Davis'),
(8, 'Mia Wilson'),
(9, 'Alexander Moore'),
(10, 'Charlotte Taylor'),
(11, 'Benjamin Anderson'),
(12, 'Amelia Thomas'),
(13, 'Lucas Jackson'),
(14, 'Isabella White'),
(15, 'Henry Harris'),
(16, 'Harper Martin'),
(17, 'Samuel Thompson'),
(18, 'Victoria Lee'),
(19, 'Jack Walker'),
(20, 'Avery Hall');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grades`
--
ALTER TABLE `grades`
  ADD CONSTRAINT `grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
