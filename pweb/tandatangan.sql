-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 10, 2023 at 11:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tandatangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` varchar(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `filename` varchar(20) NOT NULL,
  `description` varchar(50) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`id`, `name`, `filename`, `description`, `created_at`, `updated_at`) VALUES
('1', 'faa', 'Surat Izin Peminjama', 'Untuk keperluan rapat', '2023-04-10 13:19:11.000000', '2023-04-10 13:19:11.000000');

-- --------------------------------------------------------

--
-- Table structure for table `signature`
--

CREATE TABLE `signature` (
  `user_id` varchar(11) NOT NULL,
  `document_id` varchar(11) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `signed_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signature`
--

INSERT INTO `signature` (`user_id`, `document_id`, `jabatan`, `status`, `signed_at`, `created_at`, `updated_at`) VALUES
('1', '1', 'Mahasiswa', 'Selesai', '2023-04-10 13:20:20.000000', '2023-04-10 13:20:20.000000', '2023-04-10 13:20:20.000000');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` varchar(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(10) NOT NULL,
  `active` int(2) NOT NULL,
  `sign_img` varchar(20) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `active`, `sign_img`, `created_at`, `updated_at`) VALUES
('1', 'faaa', 'faa@gmail.com', '12345678', 1, 'bla.png', '2023-04-10 13:15:39.000000', '2023-04-10 13:15:39.000000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signature`
--
ALTER TABLE `signature`
  ADD PRIMARY KEY (`user_id`,`document_id`),
  ADD KEY `document_id` (`document_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `signature`
--
ALTER TABLE `signature`
  ADD CONSTRAINT `signature_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `signature_ibfk_2` FOREIGN KEY (`document_id`) REFERENCES `documents` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
