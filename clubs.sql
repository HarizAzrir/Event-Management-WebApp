-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2024 at 12:58 PM
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
-- Table structure for table `clubs`
--

CREATE TABLE `clubs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `clubname` varchar(255) NOT NULL,
  `club_nickname` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `instagram` text NOT NULL,
  `contact_number` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clubs`
--

INSERT INTO `clubs` (`id`, `user_id`, `clubname`, `club_nickname`, `about`, `email`, `instagram`, `contact_number`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, 'Univeristy Peer Group', 'UPG', 'Established in 1999, UPG was formed by Counseling Unit of Multimedia University Cyberjaya with its mission To Unite all students under one big group called \'Peers Group\' where students are encouraged to speak and share their ideas and thoughts for the betterment of them, To Develop students with amazing skills necessary to be become a good leader and also To Give our services to the community; inside or outside of MMU.', 'upg@gmail.com', '@UPGCyber', '+1234567890', 'images/peqDAbnaWKFxfu3KJ7VfUYOHLy18LDtjPEPceKiD.jpg', '2024-01-29 04:00:00', '2024-02-13 07:19:58'),
(2, 1, 'Sekretariat Rakan Muda', 'SRM', 'SRM is a student organization dedicated to promoting youth development, community engagement, and positive initiatives in alignment with the Rakan Muda programs principles in Malaysia. Through various activities and projects, the club provides a platform for MMU students to contribute to their communities and foster personal growth.', 'SRM@example.com', '@SRMCyber', '+2345678901', 'images/zNr5Ut9mV9mcf3k1eM5X15Empl6gJ10wOpYhQCbo.png', '2024-01-29 04:05:00', '2024-02-03 07:44:59'),
(3, 1, 'Rentak Dance Club', 'Rentak', 'Let’s RenTak together 💃🏻🕺🏼Dance your way!\nPerformances / Events\n📍Based in Cyberjaya, Selangor', 'Rentak@example.com', '@Rentak', '+3456789012', 'images/1RY8WCbhc1gPPnjBuYFmFqtEhKzP3YuYMXBYnDYJ.png', '2024-01-29 04:10:00', '2024-02-03 07:45:14'),
(4, 1, 'Communication Society', 'Comms', 'Connecting students since 2022\n\"Everything Begins With A Chat\" 💙❤️', 'Comms@example.com', '@CommsSoc', '+4567890123', 'images/4FcxRcWsjW62DaHGRf3XhNErsuZPWSdhlqr7fREU.png', '2024-01-29 04:15:00', '2024-02-03 07:45:36'),
(5, 1, 'Nakayo', 'Nakayo', 'The MMU Nakayo is a recreational, social, and health facility specifically for the sport of cycling. Ranging from multiple disciplines from road, gravel, MTB and fixie.', 'Nakayo@example.com', '@Nakayo', '+5678901234', 'images/LAS9ermTQw03xaYYagk9px9cna57qCr8BbXdhIb5.jpg', '2024-01-29 04:20:00', '2024-02-14 03:40:49'),
(6, 1, 'Theatre Arts of MMU', 'Tamu', 'Theatre Arts of Multimedia University\nTheatrical Play\n📍Multimedia University, Cyberjaya\n🎭 Follow us for more updates on our upcoming events !\n💌 tamucyberjaya@gmail.com', 'Tamu@example.com', '@Tamucyb', '+6789012345', 'images/lg9oCZ815jbxVHW6jgAMhqCbzlpYUCDMGPJrNsIs.png', '2024-01-29 04:25:00', '2024-02-03 07:46:02'),
(7, 4, 'Sekretariat Sekolah@MMU', 'Sekolah', 'Sekolah@MMU is a charity program that started in 2003, with the core objective to expose secondary school students to the importance of Information Technology & Multimedia knowledge. In 2013, Sekretariat Sekolah@MMU has been rebranded into a digital volunteerism platform that focuses on skills needed in Digital Technology, Entrepreneurship, and Digital Innovation.', 'Sekolah@example.com', '@SekolahMMU', '+7890123456', 'images/EuKR6q6smR7W8xz1kzRffwuYqeJuycYR85aDVB4P.png', '2024-01-29 04:30:00', '2024-02-10 04:34:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clubs`
--
ALTER TABLE `clubs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clubs_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clubs`
--
ALTER TABLE `clubs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `clubs`
--
ALTER TABLE `clubs`
  ADD CONSTRAINT `clubs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
