-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 01:00 PM
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
-- Database: `crud-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`, `usertype`) VALUES
(1, 'UPG President', 'President@gmail.com', NULL, '$2y$12$XyiXxZ.Ie4VfGjm3bNFjj.DpV/9z6i26iT9xkH.CTBAAs0ffAK2gW', NULL, '2024-01-28 08:15:24', '2024-01-28 08:15:24', NULL, 'president'),
(2, 'milo', 'rirza01@gmail.com', NULL, '$2y$12$RFcm20yGTHyvjVqyWiuQZOPHrJA7GFC0MGrr7VTZkIBBJTl5jSOzq', NULL, '2024-02-02 21:41:42', '2024-02-02 21:41:42', NULL, 'user'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$12$D3Scy4cjcty7fKqOUrp6auqFqY7H0ugVonwG4Y5SwnXSgsm6ecSP2', NULL, '2024-02-03 07:39:08', '2024-02-03 07:39:08', NULL, 'admin'),
(4, 'Sekolah', 'sekolah@mmu.edu.my', NULL, '$2y$12$c18nHxGysPc0QLAykEunhe9G/mdMb0rg3Tp5usx9Foir64fArlz6S', NULL, '2024-02-04 00:42:26', '2024-02-04 00:42:26', NULL, 'president'),
(5, 'apple', 'harizazrir@gmail.com', NULL, '$2y$12$0o29e.xxEZeOq4RKS8bIQewpv77hxr0VgmHGekgge.7GrEQIpTxRO', NULL, '2024-02-07 23:55:27', '2024-02-07 23:55:27', NULL, 'user'),
(6, 'user', 'user@gmail.com', NULL, '$2y$12$63f1uzeoQarxUd4MLvInFe/W8SSKFlb20uUW2lEZOAGlMt3Qp8Pay', NULL, '2024-02-12 07:47:46', '2024-02-12 07:47:46', NULL, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
