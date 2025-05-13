-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2025 at 07:42 AM
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
-- Database: `anime`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `adminname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `email`, `adminname`, `password`, `created_at`) VALUES
(1, 'admin.2@gmail.com', 'Simar', '$2y$10$00dKu/COyRK75h1b/3mLVu6lKLTiT99VenPDh3PodNCzbK5udTAv6', '2025-04-24 01:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `show_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `show_id`, `user_id`, `user_name`, `created_at`) VALUES
(1, 'nvm dropped it bruh what is this', 1, 1, 'simar', '2025-02-28 15:48:02'),
(2, 'just started boruto and alr see that its tragic', 2, 2, 'simar', '2025-02-28 15:48:02'),
(3, 'this show is great', 1, 1, 'simar', '2025-04-23 06:02:32'),
(4, 'awesome show', 1, 1, 'simar', '2025-04-23 06:06:05'),
(5, 'great', 1, 1, 'simar', '2025-04-23 14:49:54'),
(6, 'again', 1, 1, 'simar', '2025-04-23 14:59:17'),
(7, 'awesome anime', 4, 1, 'simar', '2025-04-23 15:00:47'),
(8, 'genius', 7, 1, 'simar', '2025-04-23 15:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `episodes`
--

CREATE TABLE `episodes` (
  `id` int(10) NOT NULL,
  `video` varchar(200) NOT NULL,
  `thumbnail` varchar(200) NOT NULL,
  `show_id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `episodes`
--

INSERT INTO `episodes` (`id`, `video`, `thumbnail`, `show_id`, `name`, `created_at`) VALUES
(1, '1.mp4', 'anime-watch.jpg', 1, '1', '2025-04-23 13:30:17'),
(2, '2.mp4', 'anime-watch.jpg', 1, '2', '2025-04-23 13:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(10) NOT NULL,
  `show_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`id`, `show_id`, `user_id`, `created_at`) VALUES
(1, 1, 1, '2025-04-23 05:40:01'),
(2, 2, 1, '2025-04-23 05:40:25'),
(10, 7, 2, '2025-04-23 16:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `id` int(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`id`, `name`, `created_at`) VALUES
(1, 'Action', '2025-04-22 05:37:33'),
(2, 'Adventure', '2025-04-22 05:37:33'),
(3, 'Fantasy', '2025-04-22 05:37:33'),
(4, 'Magic', '2025-04-22 05:39:25'),
(5, 'Romance', '2025-04-22 06:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `id` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `type` varchar(200) NOT NULL,
  `studios` varchar(200) NOT NULL,
  `date_aired` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `genre` varchar(200) NOT NULL,
  `duration` varchar(200) NOT NULL,
  `quality` varchar(200) NOT NULL,
  `num_available` int(10) NOT NULL,
  `num_total` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`id`, `title`, `image`, `description`, `type`, `studios`, `date_aired`, `status`, `genre`, `duration`, `quality`, `num_available`, `num_total`, `created_at`) VALUES
(1, 'Boruto: Naruto Next Generations', 'tv-1.jpg', 'After the Fourth Shinobi World War, Konohagakure experiences peace, prosperity, and technological advancement. The Seventh Hokage, Naruto Uzumaki, leads a new generation of shinobi, including Boruto, who faces arrogance and a sinister force.', 'TV Series', 'Studio Deen', 'Apr 5, 2017 to Mar 26, 2023', 'Completed', 'Adventure', '24min/ep', 'HD', 190, 293, '2025-02-28 15:06:29'),
(2, 'Revenger', 'tv-2.jpg', 'Tricked into assassinating his own prospective father-in-law, righteous samurai Raizou Kurima is overwhelmed with guilt. In order to reclaim his honor, Raizou swears vengeance on the lord who gave him those misleading orders.', 'TV Series', 'Sunrise', 'Jan 5, 2023 to Mar 23, 2023', 'Finished Airing', 'Adventure', ' 23min/ep', 'HD', 7, 13, '2025-02-28 15:06:29'),
(3, 'Fate/stay night: Unlimited Blade Works', 'hero-1.jpg', 'In Fuyuki City, a long-lived ritual involving battles between seven magi and their servants is taking place. This ritual is known as the Holy Grail War and it promises to grant the victor any wish.', 'OVA', 'ufotable', 'Oct 5, 2014', 'Finished Airing', 'Action', '51m', 'HD', 1, 1, '2025-02-28 15:36:38'),
(4, 'Tokyo Ghoul', 'recent-5.jpg', 'Tokyo has become a cruel and merciless city—a place where vicious creatures called \"ghouls\" exist alongside humans. The citizens of this once great metropolis live in constant fear of these bloodthirsty savages and their thirst for human flesh. However, the greatest threat these ghouls pose is their dangerous ability to masquerade as humans and blend in with society. ', 'TV ', 'Studio Pierrot', 'Jul 4, 2014 to Sep 19, 2014', 'Completed', 'Action', '23min/ep', 'HD', 12, 12, '2025-04-21 14:41:20'),
(5, 'Sword Art Online the Movie -Ordinal Scale-', 'trend-6.jpg', 'In 2026, four years after the infamous Sword Art Online incident, a revolutionary new form of technology has emerged: the Augma, a device that utilizes an Augmented Reality system. Unlike the Virtual Reality of the NerveGear and the Amusphere, it is perfectly safe and allows players to use it while they are conscious, creating an instant hit on the market. The most popular application for the Augma is the game Ordinal Scale, which immerses players in a fantasy role-playing game with player rankings and rewards.', 'TV', 'A-1 Pictures', ' Feb 18, 2017', 'Completed', 'Adventure', '1h 59m', 'HD', 1, 1, '2025-04-21 14:51:37'),
(6, 'Dr. Stone', 'recent-3.jpg', 'High-schooler Taiju Ooki confesses his love to Yuzuriha Ogawa after five years of unspoken feelings. However, a blinding green light turns humanity into stone, and millennia later, Taiju awakens to a nonexistent modern world. He meets his science-loving friend Senkuu, who has a grand scheme to revive civilization with science. Taiju and Senkuu form a formidable partnership, uncovering a method to revive those petrified. However, Senkuu\'s plan is threatened when awakened individuals challenge his ideologies, and the reason for mankind\'s petrification remains unknown.', 'TV', 'TMS Entertainment', 'Jul 5, 2019 to Dec 13, 2019', 'Completed', 'Adventure', '24min/ep', 'HD', 24, 24, '2025-04-21 14:51:37'),
(7, 'Dr. Stone', 'recent-3.jpg', 'High-schooler Taiju Ooki confesses his love to Yuzuriha Ogawa after five years of unspoken feelings. However, a blinding green light turns humanity into stone, and millennia later, Taiju awakens to a nonexistent modern world. He meets his science-loving friend Senkuu, who has a grand scheme to revive civilization with science. Taiju and Senkuu form a formidable partnership, uncovering a method to revive those petrified. However, Senkuu\'s plan is threatened when awakened individuals challenge his ideologies, and the reason for mankind\'s petrification remains unknown.', 'TV', 'TMS Entertainment', 'Jul 5, 2019 to Dec 13, 2019', 'Completed', 'Sci-Fi', '24min/ep', 'HD', 24, 24, '2025-04-21 14:51:37'),
(8, 'Demon Slayer: Sibling\'s Bond', 'recent-6.jpg', 'Rumors of man-eating Demons in the woods have been around since ancient times, leading to the local townsfolk not going outside at night. Tanjiro Kamado, a young man, has been supporting his family since his father\'s death. However, his happiness is shattered when his sister Nezuko Kamado, the only survivor, is turned into a Demon. Tanjiro embarks on a journey to find the Demon who killed their family and turn his sister human again.', 'Movie', 'ufotable', 'Winter 2019', 'completed', 'Fantasy', '2h 40m', 'HD', 1, 1, '2025-04-23 08:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`, `created_at`) VALUES
(1, 'sah0@gmail.com', 'simar', '$2y$10$00dKu/COyRK75h1b/3mLVu6lKLTiT99VenPDh3PodNCzbK5udTAv6', '2025-02-27 16:30:49'),
(2, 'bca2m2@gmail.com', 'BCA', '$2y$10$ypu1MiPfoSGupw0bZ31r4O61/16nYe6ZUthSEMio5ROvsu2th34Sy', '2025-04-23 15:44:21'),
(3, 'bca2m2@gmail.com', 'bca', '$2y$10$GlkKKeEyD.AzOtnMV5dF8.MVAep7iQMmm3Nn7V343cVZl/5A9ddma', '2025-04-23 15:45:01');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `show_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `user_id`, `show_id`, `created_at`) VALUES
(1, 1, 1, '2025-02-28 15:51:13'),
(2, 1, 2, '2025-02-28 15:51:13'),
(3, 1, 2, '2025-02-28 15:51:13'),
(4, 1, 1, '2025-02-28 15:51:13'),
(5, 1, 1, '2025-02-28 15:51:13'),
(6, 1, 3, '2025-04-21 16:37:35'),
(7, 1, 4, '2025-04-21 16:37:35'),
(8, 1, 5, '2025-04-21 16:37:35'),
(9, 1, 6, '2025-04-21 16:37:35'),
(10, 1, 7, '2025-04-21 16:37:35'),
(11, 1, 8, '2025-04-23 08:09:38'),
(12, 2, 2, '2025-04-23 15:51:53'),
(13, 2, 1, '2025-04-23 15:52:33'),
(14, 2, 5, '2025-04-23 15:52:41'),
(15, 2, 4, '2025-04-23 15:54:53'),
(16, 2, 7, '2025-04-23 16:09:13'),
(17, 2, 3, '2025-04-23 16:36:18'),
(18, 2, 0, '2025-04-23 16:43:52'),
(19, 2, 6, '2025-04-23 21:24:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `episodes`
--
ALTER TABLE `episodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `episodes`
--
ALTER TABLE `episodes`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shows`
--
ALTER TABLE `shows`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
