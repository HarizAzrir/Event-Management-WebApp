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
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `eventName` varchar(255) NOT NULL,
  `dateStart` date NOT NULL,
  `dateEnd` date NOT NULL,
  `timeStart` time NOT NULL,
  `timeEnd` time NOT NULL,
  `venue` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory1` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `club_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO events (id, eventName, dateStart, dateEnd, timeStart, timeEnd, venue, description, price, category, subcategory1, status, image, club_id) VALUES
(1, 'Project Stellar', '2024-04-19', '2024-04-20', '20:00:00', '23:05:00', 'FOE Building', 'Prepare for an extraordinary concert experience, as Multimedia University proudly\r\npresents the \"Malam Galau\"–inspired concert! Join us this December for the Campus\r\nFestival 2023 grand finale –\"Project Stellar,\" an unforgettable evening designed\r\nespecia', 68.00, 'Concert', 'Music', 'Ongoing', 'images/upg_projectstellar.png', 1),
(2, 'We Share We Care', '2024-04-13', '2024-04-15', '08:00:00', '14:00:00', 'PPR Sri Semarak, Kuala Lumpur', 'During this lovely holy month, we emphasise the qualities of sharing and caring. Therefore, we are raising RM20,000 to support an elderly care centre, orphanage & a B40 community. Their struggles at this time of the month are made easier by the crowdfundi', 10.00, 'Charity', 'Community Service', 'Ongoing', 'images/upg_wesharewecare.jpg', 1),
(3, 'Sebenarnya', '2024-12-13', '2024-12-13', '20:00:00', '23:00:00', 'FCA Theatre', 'Sebenarnya mengisahkan tentang satu pasangan remaja yang punya penampilan yang berbeza. Rania seorang yang bergaya, bosan dengan Aizat yang tidak pernah berusaha untuk ubah penampilannya. Rania penat lalu meninggalkan Aizat dan memberi peluang bertempohka', 15.00, 'Entertainment', 'Theatre', 'Ongoing', 'images/tamu.png', 6),
(4, 'K-Dance Royale', '2024-01-14', '2024-01-14', '08:00:00', '17:00:00', 'Central Learning Centre', 'Hey dance enthusiasts, its time for you to shine! ✨ Join the thrill of our Random Play Dance challenge and groove to the unpredictable rhythm. 🎶💃🏻🕺🏻 Secure your chance to win cash prizes that are worth RM300 in total! 💰🏆', 30.00, 'Entertainment', 'Dance', 'Ongoing', 'images/rentak_kdanceroyale.png', 3),
(5, 'A Night to Remember', '2023-12-17', '2023-12-17', '20:00:00', '23:05:00', 'Putra Perdana', 'Embrace the echoes of a remarkable 20 years! 🤩\r\n\r\nTwo decades of side-by-side adventures and unwavering love of Sekolah@MMU! 💛🎢\r\n\r\nLets savor the taste of love and cherish every moment together! 😆\r\n\r\nJoin us for a memorable dinner to celebrate our 20th a', 40.00, 'Charity', 'Music', 'Finished', 'images/sekolah_anighttoremember.jpg', 4);
(6, 'Sebenarnya', '2024-12-13', '2024-12-13', '20:00:00', '23:00:00', 'FCA Theatre', 'theatre night yall get ready', 15.00, 'Charity', 'Theatre', 'Ongoing', 'images/MN7nMmy4xHdHfEEwXWJ8rEnbp548jUce1UPpYsVb.png', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_club_id_foreign` (`club_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_club_id_foreign` FOREIGN KEY (`club_id`) REFERENCES `clubs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
