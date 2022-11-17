-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2022 at 12:15 AM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `happyhours_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role_id` int(50) NOT NULL,
  `remember_token` varchar(200) NOT NULL,
  `email_verified_at` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `role_id`, `remember_token`, `email_verified_at`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$pupWAXOxsbgWXXKaVZD01.guFaME9w3fBnMYe72e71E1C/gOtTaJm', 1, '', '', '2021-08-26 18:11:31', '2021-08-26 18:11:31');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `created_at`, `updated_at`) VALUES
(3, 'Karaoke', '2022-07-08 15:10:15', '2022-08-02 11:16:24'),
(4, 'Dancing', '2022-07-08 16:59:01', '2022-08-02 11:16:32'),
(5, 'Brunch', '2022-07-10 00:23:27', '2022-08-02 11:16:41'),
(6, 'Lunch', '2022-07-22 01:36:58', '2022-08-02 11:16:47'),
(7, 'Dinner', '2022-08-02 18:15:43', '2022-08-02 11:16:54'),
(8, 'Pool Table', '2022-08-02 18:17:13', '2022-08-12 08:57:54'),
(9, 'Sports Tv', '2022-08-02 18:17:26', '2022-08-12 08:58:05'),
(10, 'Board Games', '2022-08-02 18:17:53', '2022-08-12 08:58:10'),
(12, 'LGBT', '2022-08-02 18:18:11', '2022-08-12 08:58:21'),
(13, 'Dog Friendly', '2022-08-02 18:18:25', '2022-08-12 08:58:34'),
(19, 'Live Entertainment', '2022-08-04 20:46:37', '2022-08-12 08:59:30'),
(20, 'Dj', '2022-08-12 15:59:43', '2022-08-12 15:59:43'),
(21, '420 Smoke Shops', '2022-08-12 16:00:17', '2022-08-12 16:00:17'),
(22, 'outdoor seating', '2022-09-08 21:10:21', '2022-09-08 21:10:21'),
(24, 'Cafe', '2022-09-20 23:41:05', '2022-09-20 23:41:05'),
(25, 'Bar', '2022-09-20 23:41:14', '2022-09-20 23:41:14'),
(26, 'Food and Baverage', '2022-09-20 23:41:29', '2022-09-20 23:41:29'),
(27, 'Play Ground', '2022-09-20 23:41:46', '2022-09-20 23:41:46'),
(28, 'Happy Hour', '2022-10-14 15:57:36', '2022-10-14 15:57:36');

-- --------------------------------------------------------

--
-- Table structure for table `favourite`
--

CREATE TABLE `favourite` (
  `id` int(11) NOT NULL,
  `placeId` varchar(100) NOT NULL,
  `userId` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favourite`
--

INSERT INTO `favourite` (`id`, `placeId`, `userId`, `created_at`, `updated_at`) VALUES
(37, '6', '10', '2022-08-02 21:32:49', '2022-08-02 21:32:49'),
(38, '10', '1', '2022-08-08 23:30:55', '2022-08-08 11:02:54'),
(39, '2', '13', '2022-08-08 18:04:03', '2022-08-08 18:04:03'),
(45, '2', '42', '2022-08-08 22:40:58', '2022-08-08 22:40:58'),
(46, '3', '42', '2022-08-08 22:49:51', '2022-08-08 22:49:51'),
(47, '21', '32', '2022-08-09 11:13:06', '2022-08-09 11:13:06'),
(49, '2', '43', '2022-08-12 10:39:54', '2022-08-12 10:39:54'),
(50, '21', '43', '2022-08-12 10:40:02', '2022-08-12 10:40:02'),
(51, '17', '43', '2022-08-12 10:40:08', '2022-08-12 10:40:08'),
(52, '27', '42', '2022-08-12 17:55:19', '2022-08-12 17:55:19'),
(53, '27', '48', '2022-08-12 18:02:18', '2022-08-12 18:02:18'),
(54, '28', '48', '2022-08-12 18:02:32', '2022-08-12 18:02:32'),
(67, '27', '21', '2022-08-18 12:48:12', '2022-08-18 12:48:12'),
(69, '29', '50', '2022-08-19 22:32:00', '2022-08-19 22:32:00'),
(76, '7', '2', '2022-08-28 01:25:42', '2022-08-28 01:25:42'),
(81, '27', '50', '2022-08-29 19:16:09', '2022-08-29 19:16:09'),
(82, '42', '0', '2022-08-29 23:09:26', '2022-08-29 23:09:26'),
(100, '36', '10', '2022-09-01 20:16:38', '2022-09-01 20:16:38'),
(103, '42', '49', '2022-09-05 17:19:24', '2022-09-05 17:19:24'),
(104, '42', '56', '2022-09-05 17:20:30', '2022-09-05 17:20:30'),
(105, '36', '59', '2022-09-07 10:05:54', '2022-09-07 10:05:54'),
(106, '37', '59', '2022-09-07 10:12:43', '2022-09-07 10:12:43'),
(107, '38', '59', '2022-09-07 10:12:46', '2022-09-07 10:12:46'),
(108, '42', '60', '2022-09-07 14:19:38', '2022-09-07 14:19:38'),
(109, '36', '60', '2022-09-07 14:19:44', '2022-09-07 14:19:44'),
(110, '42', '62', '2022-09-09 13:12:46', '2022-09-09 13:12:46'),
(111, '36', '63', '2022-09-09 14:00:22', '2022-09-09 14:00:22'),
(112, '42', '64', '2022-09-12 13:36:36', '2022-09-12 13:36:36'),
(115, '42', '75', '2022-09-12 16:38:09', '2022-09-12 16:38:09'),
(117, '42', '89', '2022-09-13 19:49:33', '2022-09-13 19:49:33'),
(119, '40', '86', '2022-09-14 15:31:24', '2022-09-14 15:31:24'),
(120, '36', '86', '2022-09-14 15:31:32', '2022-09-14 15:31:32'),
(122, '40', '56', '2022-09-14 19:41:13', '2022-09-14 19:41:13'),
(123, '36', '56', '2022-09-14 19:51:23', '2022-09-14 19:51:23'),
(124, '42', '2', '2022-09-14 20:06:37', '2022-09-14 20:06:37'),
(125, '36', '0', '2022-09-14 21:23:43', '2022-09-14 21:23:43'),
(128, '42', '90', '2022-09-15 13:06:33', '2022-09-15 13:06:33'),
(129, '38', '90', '2022-09-15 13:48:00', '2022-09-15 13:48:00'),
(131, '42', '92', '2022-09-16 16:34:28', '2022-09-16 16:34:28'),
(132, '36', '92', '2022-09-16 16:34:38', '2022-09-16 16:34:38'),
(133, '37', '92', '2022-09-16 16:34:49', '2022-09-16 16:34:49'),
(134, '0', '92', '2022-09-16 17:15:00', '2022-09-16 17:15:00'),
(135, '0', '86', '2022-09-16 17:32:58', '2022-09-16 17:32:58'),
(136, '45', '92', '2022-09-19 15:38:50', '2022-09-19 15:38:50'),
(137, '42', '55', '2022-09-19 16:35:50', '2022-09-19 16:35:50'),
(138, '36', '105', '2022-09-20 23:27:35', '2022-09-20 23:27:35'),
(141, '0', '99', '2022-09-23 15:22:33', '2022-09-23 15:22:33'),
(143, '42', '61', '2022-09-23 20:43:35', '2022-09-23 20:43:35'),
(145, '38', '111', '2022-09-24 12:59:50', '2022-09-24 12:59:50'),
(149, '52', '2', '2022-09-28 00:44:56', '2022-09-28 00:44:56'),
(150, '36', '99', '2022-09-28 11:26:27', '2022-09-28 11:26:27'),
(152, '51', '113', '2022-10-08 00:14:35', '2022-10-08 00:14:35'),
(153, '42', '113', '2022-10-08 00:25:49', '2022-10-08 00:25:49'),
(154, '42', '112', '2022-10-13 16:51:44', '2022-10-13 16:51:44'),
(155, '36', '116', '2022-10-18 10:57:13', '2022-10-18 10:57:13'),
(158, '36', '121', '2022-10-26 11:39:54', '2022-10-26 11:39:54'),
(159, '36', '122', '2022-10-26 23:45:59', '2022-10-26 23:45:59'),
(160, '45', '122', '2022-10-26 23:46:06', '2022-10-26 23:46:06'),
(161, '36', '128', '2022-10-28 18:02:40', '2022-10-28 18:02:40'),
(162, '45', '128', '2022-10-28 18:03:00', '2022-10-28 18:03:00'),
(164, '36', '131', '2022-10-28 19:52:23', '2022-10-28 19:52:23'),
(165, '38', '131', '2022-10-28 19:57:08', '2022-10-28 19:57:08'),
(166, '38', '2', '2022-10-28 20:43:13', '2022-10-28 20:43:13'),
(168, '59', '122', '2022-11-04 17:06:35', '2022-11-04 17:06:35'),
(169, '46', '122', '2022-11-04 17:31:52', '2022-11-04 17:31:52'),
(170, '36', '139', '2022-11-14 19:55:56', '2022-11-14 19:55:56'),
(171, '36', '141', '2022-11-14 23:50:06', '2022-11-14 23:50:06'),
(172, '38', '141', '2022-11-14 23:50:12', '2022-11-14 23:50:12'),
(173, '45', '141', '2022-11-14 23:50:18', '2022-11-14 23:50:18');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` bigint(20) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `place_id`, `image`, `created_at`, `updated_at`) VALUES
(3, 28, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16594239341.png', '2022-08-02 14:05:34', '2022-08-02 14:05:34'),
(5, 41, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16594265450.png', '2022-08-02 14:49:05', '2022-08-02 14:49:05'),
(8, 41, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16594317432.jpg', '2022-08-02 16:15:43', '2022-08-02 16:15:43'),
(9, 41, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16594317433.jpg', '2022-08-02 16:15:43', '2022-08-02 16:15:43'),
(12, 41, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16595198520.png', '2022-08-03 16:44:12', '2022-08-03 16:44:12'),
(13, 28, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16595203720.png', '2022-08-03 16:52:52', '2022-08-03 16:52:52'),
(15, 41, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16599618310.webp', '2022-08-08 19:30:31', '2022-08-08 19:30:31'),
(16, 27, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16599639870.png', '2022-08-08 20:06:27', '2022-08-08 20:06:27'),
(18, 28, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16601366720.jpg', '2022-08-10 20:04:32', '2022-08-10 20:04:32'),
(19, 38, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16602054480.jpg', '2022-08-11 15:10:48', '2022-08-11 15:10:48'),
(20, 38, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16602054481.jpg', '2022-08-11 15:10:48', '2022-08-11 15:10:48'),
(21, 38, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16602054482.jpg', '2022-08-11 15:10:48', '2022-08-11 15:10:48'),
(22, 36, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656240.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(23, 36, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656241.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(24, 36, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656242.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(25, 36, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656243.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(26, 36, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656244.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(27, 33, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656245.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(28, 33, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656246.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(29, 33, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656247.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(30, 33, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16606656248.png', '2022-08-16 23:00:24', '2022-08-16 23:00:24'),
(31, 40, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16608184510.jpg', '2022-08-18 17:27:31', '2022-08-18 17:27:31'),
(32, 40, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16608184511.jpg', '2022-08-18 17:27:31', '2022-08-18 17:27:31'),
(33, 40, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16608184512.jpg', '2022-08-18 17:27:31', '2022-08-18 17:27:31'),
(34, 40, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16608184513.jpg', '2022-08-18 17:27:31', '2022-08-18 17:27:31'),
(35, 37, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16611574560.jpg', '2022-08-22 15:37:36', '2022-08-22 15:37:36'),
(36, 37, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16611574561.jpg', '2022-08-22 15:37:36', '2022-08-22 15:37:36'),
(37, 37, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16611574562.jpg', '2022-08-22 15:37:36', '2022-08-22 15:37:36'),
(38, 37, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16611574563.jpg', '2022-08-22 15:37:36', '2022-08-22 15:37:36'),
(39, 37, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16611574564.jpg', '2022-08-22 15:37:36', '2022-08-22 15:37:36'),
(40, 42, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16614507460.jpg', '2022-08-26 01:05:47', '2022-08-26 01:05:47'),
(41, 42, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16614507471.webp', '2022-08-26 01:05:47', '2022-08-26 01:05:47'),
(47, 46, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16626586570.jpg', '2022-09-09 00:37:37', '2022-09-09 00:37:37'),
(48, 46, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16626586571.jpg', '2022-09-09 00:37:37', '2022-09-09 00:37:37'),
(49, 46, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16626586572.jpg', '2022-09-09 00:37:37', '2022-09-09 00:37:37'),
(50, 46, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16626586573.jpg', '2022-09-09 00:37:37', '2022-09-09 00:37:37'),
(55, 50, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16631459800.jpg', '2022-09-14 15:59:40', '2022-09-14 15:59:40'),
(56, 50, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16631459801.jpg', '2022-09-14 15:59:40', '2022-09-14 15:59:40'),
(57, 50, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16631459802.jpg', '2022-09-14 15:59:40', '2022-09-14 15:59:40'),
(58, 50, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16631459803.jpg', '2022-09-14 15:59:40', '2022-09-14 15:59:40'),
(59, 51, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16636931980.jpg', '2022-09-20 23:59:58', '2022-09-20 23:59:58'),
(60, 51, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16636931981.jpg', '2022-09-20 23:59:58', '2022-09-20 23:59:58'),
(61, 51, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16636931982.jpg', '2022-09-20 23:59:58', '2022-09-20 23:59:58'),
(62, 51, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16636931983.jpg', '2022-09-20 23:59:58', '2022-09-20 23:59:58'),
(67, 55, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16668005340.jpg', '2022-10-26 23:08:54', '2022-10-26 23:08:54'),
(68, 55, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16668005341.jpg', '2022-10-26 23:08:54', '2022-10-26 23:08:54'),
(69, 55, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16668005342.jpg', '2022-10-26 23:08:54', '2022-10-26 23:08:54'),
(70, 57, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675527110.jpg', '2022-11-04 16:05:11', '2022-11-04 16:05:11'),
(71, 57, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675527111.jpg', '2022-11-04 16:05:11', '2022-11-04 16:05:11'),
(72, 57, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675527112.jpg', '2022-11-04 16:05:11', '2022-11-04 16:05:11'),
(73, 57, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675527420.jpg', '2022-11-04 16:05:42', '2022-11-04 16:05:42'),
(74, 58, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675536230.jpg', '2022-11-04 16:20:23', '2022-11-04 16:20:23'),
(75, 58, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675536231.jpg', '2022-11-04 16:20:23', '2022-11-04 16:20:23'),
(76, 58, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675536232.jpg', '2022-11-04 16:20:23', '2022-11-04 16:20:23'),
(77, 58, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675536690.jpg', '2022-11-04 16:21:09', '2022-11-04 16:21:09'),
(78, 59, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675545400.jpg', '2022-11-04 16:35:40', '2022-11-04 16:35:40'),
(79, 59, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675545401.jpg', '2022-11-04 16:35:40', '2022-11-04 16:35:40'),
(80, 59, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675545402.jpg', '2022-11-04 16:35:40', '2022-11-04 16:35:40'),
(81, 59, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675545403.jpg', '2022-11-04 16:35:40', '2022-11-04 16:35:40'),
(82, 60, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675552240.jpg', '2022-11-04 16:47:04', '2022-11-04 16:47:04'),
(83, 60, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675552241.jpg', '2022-11-04 16:47:04', '2022-11-04 16:47:04'),
(84, 60, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675552242.jpg', '2022-11-04 16:47:04', '2022-11-04 16:47:04'),
(85, 60, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16675552243.jpg', '2022-11-04 16:47:04', '2022-11-04 16:47:04'),
(86, 56, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16676386230.jpg', '2022-11-05 15:57:03', '2022-11-05 15:57:03'),
(87, 56, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16676386231.jpg', '2022-11-05 15:57:03', '2022-11-05 15:57:03'),
(88, 56, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16676386232.jpg', '2022-11-05 15:57:03', '2022-11-05 15:57:03'),
(91, 45, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16684459990.jpg', '2022-11-15 00:13:19', '2022-11-15 00:13:19'),
(92, 45, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16684459991.jpg', '2022-11-15 00:13:19', '2022-11-15 00:13:19'),
(93, 45, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16684459992.jpg', '2022-11-15 00:13:19', '2022-11-15 00:13:19'),
(94, 45, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16684459993.jpg', '2022-11-15 00:13:19', '2022-11-15 00:13:19'),
(95, 45, 'http://beautyliciousnj.com/happyhours/public/Place_uploads/16684459994.jpg', '2022-11-15 00:13:19', '2022-11-15 00:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `placeId` varchar(100) NOT NULL,
  `heading` varchar(200) NOT NULL,
  `message` varchar(2000) NOT NULL,
  `image_path` varchar(1000) DEFAULT NULL,
  `time` time(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `placeId`, `heading`, `message`, `image_path`, `time`, `created_at`, `updated_at`) VALUES
(3, '45', 'Test', 'Test offer', 'http://beautyliciousnj.com/happyhours/public/place/86114.jpg', '07:30:39.000000', '2022-09-14 14:30:39', '2022-09-14 14:30:39'),
(4, '45', 'Day off', '50% off on all games', 'http://beautyliciousnj.com/happyhours/public/place/86114.jpg', '07:48:12.000000', '2022-09-14 14:48:12', '2022-09-14 14:48:12'),
(8, '50', 'Steal Deal', 'Full day discount on Fried chicken', 'http://beautyliciousnj.com/happyhours/public/place/24400.png', '09:06:44.000000', '2022-09-14 16:06:44', '2022-09-14 16:06:44'),
(9, '51', 'Only For Pool', 'Only for Pool', 'http://beautyliciousnj.com/happyhours/public/place/97749.jpg', '17:03:19.000000', '2022-09-21 00:03:19', '2022-09-21 00:03:19'),
(10, '51', 'For Food', 'Only for Food', 'http://beautyliciousnj.com/happyhours/public/place/97749.jpg', '17:03:21.000000', '2022-09-21 00:03:21', '2022-09-21 00:03:21'),
(11, '51', 'Bouns Offer', 'Only for rooms', 'http://beautyliciousnj.com/happyhours/public/place/97749.jpg', '17:03:23.000000', '2022-09-21 00:03:23', '2022-09-21 00:03:23'),
(12, '52', 'END OF SEASON SALE', 'Get upto 50% off on your favourite brands', '', '17:47:12.000000', '2022-09-28 00:47:12', '2022-09-28 00:47:12'),
(13, '53', 'Bouns Offer', 'Tesitng', 'http://beautyliciousnj.com/happyhours/public/place/59974.jpg', '10:01:06.000000', '2022-10-11 17:01:06', '2022-10-11 17:01:06'),
(14, '55', 'testing offer', 'test offer', '', '16:06:20.000000', '2022-10-26 23:06:20', '2022-10-26 23:06:20'),
(15, '59', 'Happy hour', 'happy hours offer from 7 to 9', 'http://beautyliciousnj.com/happyhours/public/place/74237.jpg', '10:25:52.000000', '2022-11-04 17:25:52', '2022-11-04 17:25:52');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(201) NOT NULL,
  `place_id` int(201) NOT NULL,
  `Heading` varchar(201) NOT NULL,
  `valid_upto` varchar(201) NOT NULL,
  `description` mediumtext NOT NULL,
  `Image` varchar(201) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `place_id`, `Heading`, `valid_upto`, `description`, `Image`, `status`, `created_at`, `updated_at`) VALUES
(9, 38, '50% off', '2022-09-03', '50% off on all food', 'http://beautyliciousnj.com/happyhours/public/Offers/1659963931.png', 1, '2022-08-08 14:19:05', '2022-08-08 14:19:05'),
(10, 38, 'Bummper', '2022-10-03', 'only food', 'http://beautyliciousnj.com/happyhours/public/Offers/1659963639.jpg', 1, '2022-08-08 20:00:39', '2022-08-08 20:00:39'),
(11, 37, 'testing offer', '2022-10-03', 'Grab-a-deal', 'http://beautyliciousnj.com/happyhours/public/Offers/1659963931.png', 1, '2022-08-08 20:05:31', '2022-08-08 20:05:31'),
(12, 37, 'test', '2022-09-10', 'everything for free till next 24 hrs', 'http://beautyliciousnj.com/happyhours/public/Offers/1659968301.png', 1, '2022-08-08 21:18:21', '2022-08-08 21:18:21'),
(17, 41, 'test', '2022-09-03', 'test offer', 'http://beautyliciousnj.com/happyhours/public/Offers/1660665396.png', 1, '2022-08-16 22:56:36', '2022-08-16 22:56:36'),
(18, 36, 'test offer', '2022-09-03', 'test offer', 'http://beautyliciousnj.com/happyhours/public/Offers/1660805284.jpg', 1, '2022-08-18 13:48:04', '2022-08-18 13:48:04'),
(19, 46, 'Happy hour', '2022-08-31', '50% off on all pizza\'s', 'http://beautyliciousnj.com/happyhours/public/Offers/1660818146.jpg', 1, '2022-08-18 17:22:26', '2022-08-18 17:22:26'),
(20, 40, 'one on one', '2022-09-15', 'get a pizza free on purchase of one', 'http://beautyliciousnj.com/happyhours/public/Offers/1660818231.jpg', 1, '2022-08-18 17:23:51', '2022-08-18 17:23:51'),
(21, 40, 'ninety-nine', '2022-09-18', 'get 2 pizza\'s at rupees 99 each', 'http://beautyliciousnj.com/happyhours/public/Offers/1660818328.jpg', 1, '2022-08-18 17:25:28', '2022-08-18 17:25:28'),
(22, 36, 'Off on all food items', '2022-09-23', 'flat 70 % off on all food items', 'http://beautyliciousnj.com/happyhours/public/Offers/1661925567.jpg', 1, '2022-08-31 12:59:27', '2022-08-31 12:59:27'),
(23, 42, 'full-day-off', '2022-09-01', 'full day flat 50% off on all items and services', 'http://beautyliciousnj.com/happyhours/public/Offers/1661925942.jpg', 1, '2022-08-31 13:05:42', '2022-08-31 13:05:42'),
(24, 42, 'Steal Deal', '2022-09-02', 'Limited time super sale', 'http://beautyliciousnj.com/happyhours/public/Offers/1661926055.jpg', 1, '2022-08-31 13:07:35', '2022-08-31 13:07:35'),
(25, 45, 'Day off', '2022-09-28', '50% off on all games', 'http://beautyliciousnj.com/happyhours/public/Offers/1661970622.jpg', 1, '2022-09-01 01:30:22', '2022-09-01 01:30:22'),
(26, 45, 'Test', '2022-09-02', 'Test offer', 'http://beautyliciousnj.com/happyhours/public/Offers/1661970665.jpg', 1, '2022-09-01 01:31:05', '2022-09-01 01:31:05'),
(28, 50, 'Steal Deal', '2022-09-17', 'Full day discount on Fried chicken', 'http://beautyliciousnj.com/happyhours/public/Offers/1663146368.jpg', 1, '2022-09-14 16:06:08', '2022-09-14 16:06:08'),
(29, 50, 'Fries+Drink', '2022-09-30', 'Fries +drink @100', 'http://beautyliciousnj.com/happyhours/public/Offers/1663146439.jpg', 1, '2022-09-14 16:07:19', '2022-09-14 16:07:19'),
(30, 56, 'Bouns Offer', '2023-05-05', 'Only for rooms', 'http://beautyliciousnj.com/happyhours/public/Offers/1663692995.jpg', 1, '2022-09-20 23:56:35', '2022-09-20 23:56:35'),
(31, 56, 'For Food', '2026-05-05', 'Only for Food', 'http://beautyliciousnj.com/happyhours/public/Offers/1663693021.jpg', 1, '2022-09-20 23:57:01', '2022-09-20 23:57:01'),
(32, 58, 'Only For Pool', '2025-05-05', 'discount on rides', 'http://beautyliciousnj.com/happyhours/public/Offers/1663693053.jpg', 1, '2022-09-20 23:57:33', '2022-09-20 23:57:33'),
(36, 55, 'testing offer', '2022-10-27', 'test offer', 'http://beautyliciousnj.com/happyhours/public/Offers/1666800176.png', 1, '2022-10-26 23:02:56', '2022-10-26 23:02:56'),
(37, 57, 'Free visit for a day', '2022-11-05', 'you can come enjoy for free', 'http://beautyliciousnj.com/happyhours/public/Offers/1667552846.jpg', 1, '2022-11-04 16:07:26', '2022-11-04 16:07:26'),
(38, 60, 'Free food', '2022-11-12', 'free food for 24 hours', 'http://beautyliciousnj.com/happyhours/public/Offers/1667555433.jpg', 1, '2022-11-04 16:50:33', '2022-11-04 16:50:33'),
(39, 59, 'Happy hour', '2022-11-12', 'happy hours offer from 7 to 9', 'http://beautyliciousnj.com/happyhours/public/Offers/1667556388.jpg', 1, '2022-11-04 17:06:28', '2022-11-04 17:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` int(11) NOT NULL,
  `placeName` varchar(200) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `location` varchar(200) NOT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `lattitude` varchar(100) DEFAULT NULL,
  `ratings` varchar(100) DEFAULT '0',
  `services` varchar(200) DEFAULT NULL,
  `website` varchar(200) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `description` longtext,
  `offers` varchar(2000) DEFAULT NULL,
  `marketing_phone` varchar(201) NOT NULL,
  `marketing_email` varchar(201) NOT NULL,
  `marketing_name` varchar(201) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `email` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `placeName`, `mobile`, `location`, `longitude`, `lattitude`, `ratings`, `services`, `website`, `image`, `description`, `offers`, `marketing_phone`, `marketing_email`, `marketing_name`, `created_at`, `updated_at`, `email`, `password`) VALUES
(36, 'community center', '098781250641', 'Indian Wells', '-116.25921249389648', '33.85445064580389', '3.3', 'gym,bar,pool', 'https://www.google.com/', 'http://beautyliciousnj.com/happyhours/public/place/24437.jpg', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Adipisci perferendis quos ea nulla quasi, quae vitae dolor iusto fuga voluptates distinctio odio reiciendis! Dolorum, libero illum obcaecati voluptatum provident similique optio eum illo nesciunt impedit, esse pariatur quis ducimus sapiente commodi ratione repudiandae, nisi quidem itaque unde excepturi eius! Quod, quae repellendus nulla ducimus', NULL, '846892190013', 'gurma3812@gmail.com', 'teste', '2022-08-17 19:39:49', '2022-11-14 19:56:06', 'gurma381@gmail.com', '$2y$10$wiNgHYPxUvvhYJ01iIUMxemUB89aWQaxARlJw0VDQr8Xm2ssOhAVy'),
(37, 'Dominos', '987812506412', 'Cathedral City', '-117.20798513476562', '33.94045985257393', '5.0', 'gym,bar,pool', 'https://mdbootstrap.com/snippets/jquery/mdbootstrap/920964', 'http://beautyliciousnj.com/happyhours/public/place/68007.jpg', '', NULL, '846892190012', 'gurma381@gmail.com', 'Gurman', '2022-08-18 14:34:45', '2022-08-31 05:09:03', 'gurman8571@gmail.com', '$2y$10$eP0qdRzdzZURPY6HTJVrluIvuRiI2brlf1minLWA9BM6q6GFpwVCK'),
(38, 'Kobe japenese', '098781250640', 'Cathedral City', '-116.4460512657139', '33.77163782822799', '4.0', 'gym,bar,pool', 'https://mdbootstrap.com/snippets/jquery/mdbootstrap/920964', 'http://beautyliciousnj.com/happyhours/public/place/images (6).jpg', '', NULL, '987607374511', 'gurma3811@gmail.com', 'Gurman', '2022-08-18 16:12:13', '2022-11-05 04:04:05', 'test1@gmail.com', '$2y$10$DCevKMpP2m0l4braAPNDausQpAJ/yBXv85MaqsxfOcEoGq9JNsaUm'),
(40, 'cheese cake factory', '999878125064', 'Rancho Mirage', '-116.410231590271', '33.73943667536974', '2.9', 'gym,bar,pool', 'https://www.google.com/', 'http://beautyliciousnj.com/happyhours/public/place/16168.jpg', '', NULL, '999878159064', 'gurma3813@gmail.com', 'Gurman', '2022-08-18 16:16:33', '2022-10-18 07:19:44', 'test4@gmail.com', '$2y$10$hunTaSGVVCBXJ2eznWyT2.i7wM.bOPAuPUJVC8V9nQoF8NUhQfxjG'),
(41, 'Taco Bell', '917895707093', 'Cathedral City', '-116.46649360656738', '33.78003909341784', '3.0', 'gym,bar,pool', 'https://www.happylandboards.com/home-1', 'http://beautyliciousnj.com/happyhours/public/place/7064.png', '', NULL, '917895707093', 'anubhav123@gmail.com', 'Anubhav', '2022-08-18 17:51:51', '2022-08-31 12:40:43', 'anubhav@gmail.com', '$2y$10$7HYDWK5M.8q9jt/4UeHkmudmygAx2FxNuAQ3VkB3C7DlV/QaAH6je'),
(45, 'Smaash', '987812506487', 'Cathedral City', '-116.49456024169922', '33.792023475482004', '4.3', 'gym,bar,pool', 'https://smaaash.in/', 'http://beautyliciousnj.com/happyhours/public/place/42339.jpg', '', NULL, '987812506431', 'gurmandeep12356@gmail.com', 'Gurman Deep', '2022-09-01 01:25:24', '2022-11-14 20:27:42', 'gurmandeep1235@gmail.com', '$2y$10$LYPYLw0tfGlrq2MiSmNgtepjZV1L7HDFWsrtR0qS8BQ/jFVYkfzO6'),
(46, 'Coachella Smoke Co. & Lounge', '987812506478', 'Coachella', '-116.17385387420654', '33.67947909067272', '5.0', 'gym,bar,pool', 'https://weedmaps.com/dispensaries/coachella-smoke-co-1', 'http://beautyliciousnj.com/happyhours/public/place/24403.png', 'Coachella\'s first dispensary offering a Cannabis lounge with on-site consumption, 21 and over. Located right in the heart of Coachella\'s downtown, Pueblo Viejo. On the corner of 7th St. and grapefruit blvd. Come smoke with us and enjoy a safe environment', NULL, '987812506478', 'smoke@gmail.com', 'Gurman', '2022-09-09 00:28:50', '2022-11-04 17:31:46', 'smoke@gmail.com', '$2y$10$ehpfAzPnvhoqsJyM6BhGz.qMMYGHjbom2CyUX4Fk0bXlQ4cQTNdHm'),
(50, 'Kfc', '989897123451', 'Coachella', '-117.27888107299805', '33.891863691043', '1.5', 'gym,bar,pool', 'https://online.kfc.co.in/', 'http://beautyliciousnj.com/happyhours/public/place/24400.png', NULL, NULL, '999897123451', 'wilson@kfc.com', 'willson', '2022-09-14 15:57:11', '2022-10-27 21:26:13', 'kfc@gmail.com', '$2y$10$zPfhfUI79OHnNCkAET1XLOKQaAsul/7QuD6DTOJNJkIv8juvNSef2'),
(55, 'cath place', '987812450891', 'Indian Wells', '-117.49053976123047', '33.928781152373574', '2.5', 'gym,bar,pool', 'https://www.facebook.com/', 'http://beautyliciousnj.com/happyhours/public/place/893188426.jpg', NULL, NULL, '987812450891', 'xyzxxx@gmail.com', 'cath', '2022-10-26 22:56:50', '2022-11-04 10:01:33', 'xyxz@gmail.com', '$2y$10$ciwaBQ0fcWPVAmreWGMnuOEsgeloc.PS91qNGOIBxtLEZbwbpAOSG'),
(56, 'Old villa', '987607374567', 'Palm Desert', '-118.1349565703125', '33.999683210472', '2.5', 'gym,bar,pool', 'https://mdbootstrap.com/snippets/jquery/mdbootstrap/920964', 'http://beautyliciousnj.com/happyhours/public/place/download (15).jpg', NULL, NULL, '987607374567', 'ccc@gmail.com', 'Gurman', '2022-10-26 23:18:38', '2022-11-05 04:04:52', 'cccc@gmail.com', '$2y$10$lS2jD5dJJbGXlZuhvgRlB.8sChTN419Uvi29m/oAuUHy57braFYEW'),
(57, 'Shields Date Garden', '987607374568', 'Indio', '-116.26676827669144', '33.70689493244471', '3.8', 'park,Rides,farms', 'https://shieldsdategarden.com/', 'http://beautyliciousnj.com/happyhours/public/place/38011.jpg', NULL, NULL, '987607374568', 'sheild_market@gmail.com', 'Gurman Deep', '2022-11-04 15:56:05', '2022-11-04 16:08:06', 'sheilds@gmail.com', '$2y$10$KVyD3Bzj9sJLnIIfYBihz.qs8bvq4Zn4I2CkIAHJ4sCa9DarZLEHm'),
(58, 'Aerial Tramway', '852886750202', 'Palm Springs', '-116.6143798828125', '33.837056906429986', '0', 'adventure,games,sports', 'https://pstramway.com/tickets/', 'http://beautyliciousnj.com/happyhours/public/place/35944.jpg', NULL, NULL, '852886750202', 'airway_tickets@gmail.com', 'Gurman deep', '2022-11-04 16:16:31', '2022-11-04 16:19:27', 'tramway@gmail.com', '$2y$10$SMAV8IoTfhwDDc4ajZmrf.rSIrcERjC7478UYtXLQhLQjjU7.u7oa'),
(59, 'Clearwater Beach', '852776250231', 'Bermuda Dunes', '-82.7653677839189', '27.893249578554418', '5.0', 'barbeque,Rides,swimming', 'https://www.bldc.bm/', 'http://beautyliciousnj.com/happyhours/public/place/74237.jpg', NULL, NULL, '852776250231', 'beach.market@gmail.com', 'Gurman', '2022-11-04 16:31:02', '2022-11-04 17:31:20', 'clearwater@gmail.com', '$2y$10$FkDmBjaxBSJHcG8gDeFjdu.8Qu9il.TMko8Xl0foNqG1v3aT6zvHS'),
(60, 'Old Town La Quinta', '852776250234', 'La Quinta', '-116.279296875', '33.623982412402746', '4.5', 'Food,entertainment,Ancient', 'https://oldtownlaquinta.com/', 'http://beautyliciousnj.com/happyhours/public/place/99332.jpg', NULL, NULL, '852776250234', 'MarketOldQilla@gmail.com', 'Gurman', '2022-11-04 16:40:36', '2022-11-05 04:04:26', 'OldTown@gmail.com', '$2y$10$o3dOlyeetE1cc3920n4xZOscZu3hi1rR7/im2a1AnchHkQPUOTS7a');

-- --------------------------------------------------------

--
-- Table structure for table `place_categories`
--

CREATE TABLE `place_categories` (
  `id` int(201) NOT NULL,
  `category_id` int(201) NOT NULL,
  `places_id` int(201) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `place_categories`
--

INSERT INTO `place_categories` (`id`, `category_id`, `places_id`, `created_at`, `updated_at`) VALUES
(47, 3, 36, '2022-08-17 12:39:49', '2022-08-17 12:39:49'),
(48, 4, 36, '2022-08-17 12:39:49', '2022-08-17 12:39:49'),
(49, 4, 37, '2022-08-18 07:34:45', '2022-08-18 07:34:45'),
(50, 5, 37, '2022-08-18 07:34:45', '2022-08-18 07:34:45'),
(51, 3, 38, '2022-08-18 09:12:13', '2022-08-18 09:12:13'),
(52, 4, 38, '2022-08-18 09:12:13', '2022-08-18 09:12:13'),
(55, 3, 40, '2022-08-18 09:16:33', '2022-08-18 09:16:33'),
(56, 4, 40, '2022-08-18 09:16:33', '2022-08-18 09:16:33'),
(57, 5, 40, '2022-08-18 09:16:33', '2022-08-18 09:16:33'),
(58, 3, 41, '2022-08-18 10:51:51', '2022-08-18 10:51:51'),
(72, 1, 42, '2022-08-25 18:01:49', '2022-08-25 18:01:49'),
(73, 12, 42, '2022-08-25 18:01:49', '2022-08-25 18:01:49'),
(74, 21, 42, '2022-08-25 18:01:49', '2022-08-25 18:01:49'),
(80, 20, 46, '2022-09-08 17:28:50', '2022-09-08 17:28:50'),
(81, 21, 46, '2022-09-08 17:28:50', '2022-09-08 17:28:50'),
(82, 22, 46, '2022-09-08 17:28:50', '2022-09-08 17:28:50'),
(109, 5, 50, '2022-09-14 08:57:11', '2022-09-14 08:57:11'),
(110, 6, 50, '2022-09-14 08:57:11', '2022-09-14 08:57:11'),
(119, 1, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(120, 4, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(121, 6, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(122, 7, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(123, 8, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(124, 9, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(125, 10, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(126, 13, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(127, 20, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(128, 21, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(129, 22, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(130, 24, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(131, 25, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(132, 26, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(133, 27, 51, '2022-09-20 17:03:02', '2022-09-20 17:03:02'),
(136, 24, 54, '2022-10-13 05:15:42', '2022-10-13 05:15:42'),
(137, 6, 45, '2022-10-25 08:03:21', '2022-10-25 08:03:21'),
(138, 8, 45, '2022-10-25 08:03:21', '2022-10-25 08:03:21'),
(139, 9, 45, '2022-10-25 08:03:21', '2022-10-25 08:03:21'),
(140, 13, 45, '2022-10-25 08:03:21', '2022-10-25 08:03:21'),
(142, 4, 55, '2022-10-26 16:03:33', '2022-10-26 16:03:33'),
(143, 5, 55, '2022-10-26 16:03:33', '2022-10-26 16:03:33'),
(144, 6, 55, '2022-10-26 16:03:33', '2022-10-26 16:03:33'),
(145, 8, 55, '2022-10-26 16:03:33', '2022-10-26 16:03:33'),
(146, 5, 56, '2022-10-26 16:18:38', '2022-10-26 16:18:38'),
(147, 6, 56, '2022-10-26 16:18:38', '2022-10-26 16:18:38'),
(148, 19, 57, '2022-11-04 08:56:05', '2022-11-04 08:56:05'),
(149, 28, 57, '2022-11-04 08:56:05', '2022-11-04 08:56:05'),
(150, 19, 58, '2022-11-04 09:16:31', '2022-11-04 09:16:31'),
(154, 7, 60, '2022-11-04 09:40:36', '2022-11-04 09:40:36'),
(155, 19, 60, '2022-11-04 09:40:36', '2022-11-04 09:40:36'),
(156, 6, 59, '2022-11-04 10:16:16', '2022-11-04 10:16:16'),
(157, 10, 59, '2022-11-04 10:16:16', '2022-11-04 10:16:16'),
(158, 12, 59, '2022-11-04 10:16:16', '2022-11-04 10:16:16'),
(159, 13, 59, '2022-11-04 10:16:16', '2022-11-04 10:16:16'),
(160, 19, 59, '2022-11-04 10:16:16', '2022-11-04 10:16:16');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `placeId` varchar(100) NOT NULL,
  `userId` varchar(200) NOT NULL,
  `rating` varchar(100) NOT NULL,
  `message` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `placeId`, `userId`, `rating`, `message`, `created_at`, `updated_at`) VALUES
(1, '2', '1', '5', 'good!!', '2022-07-11 18:50:47', '2022-07-11 18:50:47'),
(2, '2', '1', '4', 'Aweesome!!', '2022-07-12 22:10:10', '2022-07-12 22:10:10'),
(3, '2', '1', '4', 'Aweesome!!', '2022-07-12 22:31:15', '2022-07-12 22:31:15'),
(4, '2', '1', '5', 'kya baat hai, maza aagaya!!', '2022-07-13 13:10:05', '2022-07-13 13:10:05'),
(5, '2', '1', '5', 'kya baat hai, maza aagaya!!', '2022-07-22 17:23:11', '2022-07-22 17:23:11'),
(6, '10', '1', '5', 'kya baat hai, maza aagaya!!', '2022-07-22 17:23:30', '2022-07-22 17:23:30'),
(7, '100', '1', '5', 'kya baat hai, maza aagaya!!', '2022-07-22 17:23:36', '2022-07-22 17:23:36'),
(8, '1', '1', '5', 'kya baat hai, maza aagaya!!', '2022-07-22 17:23:44', '2022-07-22 17:23:44'),
(9, '1', '10', '5', 'kya baat hai, maza aagaya!!', '2022-07-22 17:23:54', '2022-07-22 17:23:54'),
(10, '1', '1', '5', 'kya baat hai, maza aagaya!!', '2022-07-22 17:24:00', '2022-07-22 17:24:00'),
(11, '3', '10', '5', 'Very Good', '2022-07-23 18:18:28', '2022-08-02 10:18:31'),
(12, '3', '10', '5.0', 'Nice', '2022-07-23 18:27:13', '2022-07-23 18:27:13'),
(13, '3', '10', '0.0', 'no', '2022-07-23 18:27:29', '2022-07-23 18:27:29'),
(14, '2', '1', '5', 'Nice!', '2022-07-23 18:36:42', '2022-07-23 18:36:42'),
(15, '1', '13', '5.0', 'wow', '2022-07-24 15:38:25', '2022-07-24 15:38:25'),
(16, '5', '13', '0.0', 'Yo. nice place', '2022-07-24 15:40:27', '2022-07-24 15:40:27'),
(17, '3', '10', '5', 'Nice', '2022-07-24 15:40:42', '2022-08-02 10:18:28'),
(18, '1', '15', '2.0', 'df', '2022-07-25 17:01:12', '2022-07-25 17:01:12'),
(19, '1', '15', '5.0', 'dfbbbfffddddfvbhygfcxxd', '2022-07-25 17:02:07', '2022-07-25 17:02:07'),
(20, '3', '13', '5', 'wwe', '2022-07-25 19:13:09', '2022-08-02 10:18:19'),
(21, '1', '10', '2.5', 'Good Place', '2022-07-25 19:14:45', '2022-07-25 19:14:45'),
(22, '6', '10', '3.0', 'good', '2022-07-26 22:37:44', '2022-07-26 22:37:44'),
(23, '2', '13', '5.0', 'yoo niceeeee', '2022-07-29 14:59:11', '2022-07-29 14:59:11'),
(24, '2', '20', '0.0', 'nicee', '2022-08-01 19:40:42', '2022-08-01 19:40:42'),
(25, '2', '20', '5.0', 'grt', '2022-08-01 19:41:07', '2022-08-01 19:41:07'),
(26, '2', '10', '2.5', 'nice', '2022-08-01 20:53:25', '2022-08-01 20:53:25'),
(27, '6', '15', '4.0', 'nice', '2022-08-03 14:55:49', '2022-08-03 14:55:49'),
(28, '2', '1', '5', 'kya baat hai, maza aagaya!!', '2022-08-06 12:49:36', '2022-08-06 12:49:36'),
(29, '17', '13', '5.0', 'great place', '2022-08-08 18:03:28', '2022-08-08 18:03:28'),
(30, '2', '10', '0.5', 'bad', '2022-08-08 18:52:00', '2022-08-08 18:52:00'),
(31, '10', '13', '4.5', '💜💜', '2022-08-08 19:31:36', '2022-08-08 19:31:36'),
(32, '2', '41', '5.0', 'Good', '2022-08-08 21:47:28', '2022-08-08 21:47:28'),
(34, '2', '42', '5.0', 'Nice Place', '2022-08-08 22:24:42', '2022-08-08 22:24:42'),
(35, '21', '43', '5.0', 'This Place is Awosome', '2022-08-09 11:12:17', '2022-08-09 11:12:17'),
(36, '27', '42', '5.0', 'Nice Place', '2022-08-12 17:55:44', '2022-08-12 17:55:44'),
(37, '27', '48', '5.0', 'Good', '2022-08-12 18:02:08', '2022-08-12 18:02:08'),
(43, '29', '49', '0.0', 'Nice place for hangouts', '2022-08-16 17:43:43', '2022-08-16 17:43:43'),
(44, '27', '49', '0.0', 'great place', '2022-08-16 17:52:40', '2022-08-16 17:52:40'),
(45, '2', '1', '5', 'kya baat hai, maza aagaya!!', '2022-08-16 18:59:36', '2022-08-16 18:59:36'),
(47, '29', '21', '0.0', 'hii', '2022-08-18 12:46:42', '2022-08-18 12:46:42'),
(48, '8', '49', '0.0', 'nice place', '2022-08-25 12:54:57', '2022-08-25 12:54:57'),
(49, '42', '1', '5.0', 'great ambiance', '2022-08-26 01:10:20', '2022-08-26 01:10:20'),
(50, '2', '1', '5', 'kya baat hai, maza aagaya!!', '2022-08-28 00:46:35', '2022-08-28 00:46:35'),
(51, '42', '37', '3', 'Good morning and good luck', '2022-08-28 01:04:51', '2022-08-28 01:04:51'),
(52, '29', '37', '4', 'Good Job', '2022-08-28 01:27:38', '2022-08-28 01:27:38'),
(53, '2', '1', '5', 'kya baat hai, maza aagaya!!', '2022-08-28 17:23:57', '2022-08-28 17:23:57'),
(54, '2', '1', '5', 'kya baat hai, maza aagaya!!', '2022-08-28 17:25:09', '2022-08-28 17:25:09'),
(70, '40', '2', '5.0', 'naiiiice❤️', '2022-08-29 20:22:27', '2022-08-29 20:22:27'),
(78, '42', '10', '4.5', 'nice', '2022-08-31 14:03:28', '2022-08-31 14:03:28'),
(79, '42', '2', '0.0', 'nice ambience', '2022-08-31 15:19:50', '2022-08-31 15:19:50'),
(81, '36', '56', '4.5', 'hi', '2022-09-01 18:39:36', '2022-09-01 18:39:36'),
(82, '42', '10', '5.0', 'nice', '2022-09-01 20:16:13', '2022-09-01 20:16:13'),
(83, '36', '49', '2.5', 'good place test', '2022-09-02 18:55:08', '2022-09-02 18:55:08'),
(84, '42', '62', '0.0', 'all good', '2022-09-09 13:13:35', '2022-09-09 13:13:35'),
(85, '45', '62', '5.0', 'good', '2022-09-12 18:14:28', '2022-09-12 18:14:28'),
(86, '45', '62', '5.0', 'hfhfuf', '2022-09-12 18:35:41', '2022-09-12 18:35:41'),
(88, '41', '56', '3.0', 'dh', '2022-09-14 19:54:23', '2022-09-14 19:54:23'),
(89, '42', '2', '0.0', 'nice place', '2022-09-14 20:06:44', '2022-09-14 20:06:44'),
(90, '42', '2', '5.0', 'nice place', '2022-09-14 20:06:53', '2022-09-14 20:06:53'),
(91, '42', '2', '5.0', 'kya baat hai...', '2022-09-14 20:07:11', '2022-09-14 20:07:11'),
(92, '42', '90', '5', 'Good very good', '2022-09-15 13:54:32', '2022-09-15 13:54:32'),
(93, '42', '55', '0.0', 'ggghhhbbb! hbbbb', '2022-09-19 17:24:39', '2022-09-19 17:24:39'),
(94, '42', '105', '0.0', 'E-verify - It is mandatory to', '2022-09-20 23:16:02', '2022-09-20 23:16:02'),
(95, '42', '105', '4.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing process', '2022-09-20 23:16:52', '2022-09-20 23:16:52'),
(96, '42', '105', '4.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing process', '2022-09-20 23:16:52', '2022-09-20 23:16:52'),
(97, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing process is complete', '2022-09-20 23:17:18', '2022-09-20 23:17:18'),
(98, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:52', '2022-09-20 23:17:52'),
(99, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:53', '2022-09-20 23:17:53'),
(100, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:53', '2022-09-20 23:17:53'),
(101, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:53', '2022-09-20 23:17:53'),
(102, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:53', '2022-09-20 23:17:53'),
(103, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:54', '2022-09-20 23:17:54'),
(104, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:54', '2022-09-20 23:17:54'),
(105, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:54', '2022-09-20 23:17:54'),
(106, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:54', '2022-09-20 23:17:54'),
(107, '42', '105', '5.0', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax E-verify - It is mandatory', '2022-09-20 23:17:54', '2022-09-20 23:17:54'),
(108, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing process is complete', '2022-09-20 23:18:32', '2022-09-20 23:18:32'),
(109, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:00', '2022-09-20 23:20:00'),
(110, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:01', '2022-09-20 23:20:01'),
(111, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:01', '2022-09-20 23:20:01'),
(112, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:01', '2022-09-20 23:20:01'),
(113, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:01', '2022-09-20 23:20:01'),
(114, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:01', '2022-09-20 23:20:01'),
(115, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:01', '2022-09-20 23:20:01'),
(116, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status -', '2022-09-20 23:20:02', '2022-09-20 23:20:02'),
(117, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status - Check the e-filing status to ensure the tax filing', '2022-09-20 23:20:02', '2022-09-20 23:20:02'),
(118, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status -', '2022-09-20 23:20:02', '2022-09-20 23:20:02'),
(119, '42', '105', '3.5', 'E-verify - It is mandatory to e-verify your returns within 120 days of filing (30 days if filed after 31 July).￼E-filing status -', '2022-09-20 23:20:02', '2022-09-20 23:20:02'),
(120, '51', '107', '5.0', 'Amazing', '2022-09-21 00:00:45', '2022-09-21 00:00:45'),
(121, '36', '99', '3.5', 'test', '2022-09-21 15:16:34', '2022-09-21 15:16:34'),
(122, '0', '99', '0.0', 'something', '2022-09-23 16:40:08', '2022-09-23 16:40:08'),
(123, '0', '99', '2.0', 'something', '2022-09-23 16:40:13', '2022-09-23 16:40:13'),
(124, '0', '99', '2.0', 'something', '2022-09-23 16:40:13', '2022-09-23 16:40:13'),
(125, '0', '99', '2.0', 'something', '2022-09-23 16:40:14', '2022-09-23 16:40:14'),
(126, '0', '99', '2.0', 'something', '2022-09-23 16:40:14', '2022-09-23 16:40:14'),
(127, '0', '99', '2.0', 'something', '2022-09-23 16:40:15', '2022-09-23 16:40:15'),
(128, '0', '99', '2.0', 'something', '2022-09-23 16:40:17', '2022-09-23 16:40:17'),
(129, '0', '99', '2.0', 'something', '2022-09-23 16:40:30', '2022-09-23 16:40:30'),
(130, '0', '99', '2.0', 'something', '2022-09-23 16:40:34', '2022-09-23 16:40:34'),
(131, '0', '99', '2.0', 'something', '2022-09-23 16:40:35', '2022-09-23 16:40:35'),
(132, '0', '99', '2.0', 'something', '2022-09-23 16:40:39', '2022-09-23 16:40:39'),
(133, '0', '99', '2.0', 'something', '2022-09-23 16:40:43', '2022-09-23 16:40:43'),
(134, '0', '99', '2.0', 'something', '2022-09-23 16:40:44', '2022-09-23 16:40:44'),
(135, '0', '99', '2.0', 'something', '2022-09-23 16:40:44', '2022-09-23 16:40:44'),
(136, '0', '99', '2.0', 'something', '2022-09-23 16:40:46', '2022-09-23 16:40:46'),
(137, '0', '99', '2.0', 'something', '2022-09-23 16:40:48', '2022-09-23 16:40:48'),
(138, '0', '99', '2.0', 'something', '2022-09-23 16:40:49', '2022-09-23 16:40:49'),
(139, '0', '99', '2.0', 'something', '2022-09-23 16:40:52', '2022-09-23 16:40:52'),
(140, '0', '99', '2.0', 'something', '2022-09-23 16:40:52', '2022-09-23 16:40:52'),
(141, '0', '99', '2.0', 'something', '2022-09-23 16:40:54', '2022-09-23 16:40:54'),
(142, '0', '99', '2.0', 'something', '2022-09-23 16:40:54', '2022-09-23 16:40:54'),
(143, '0', '99', '2.0', 'something', '2022-09-23 16:40:54', '2022-09-23 16:40:54'),
(144, '0', '99', '2.0', 'something', '2022-09-23 16:40:56', '2022-09-23 16:40:56'),
(145, '0', '99', '2.0', 'something', '2022-09-23 16:40:56', '2022-09-23 16:40:56'),
(146, '0', '99', '2.0', 'something', '2022-09-23 16:40:56', '2022-09-23 16:40:56'),
(147, '0', '99', '2.0', 'something', '2022-09-23 16:40:56', '2022-09-23 16:40:56'),
(148, '0', '99', '2.0', 'something', '2022-09-23 16:40:56', '2022-09-23 16:40:56'),
(149, '0', '99', '2.0', 'something', '2022-09-23 16:40:58', '2022-09-23 16:40:58'),
(150, '0', '99', '2.0', 'something', '2022-09-23 16:41:00', '2022-09-23 16:41:00'),
(151, '0', '99', '2.0', 'something', '2022-09-23 16:41:00', '2022-09-23 16:41:00'),
(152, '0', '99', '2.0', 'something', '2022-09-23 16:41:00', '2022-09-23 16:41:00'),
(153, '0', '99', '2.0', 'something', '2022-09-23 16:41:01', '2022-09-23 16:41:01'),
(154, '0', '99', '2.0', 'something', '2022-09-23 16:41:01', '2022-09-23 16:41:01'),
(155, '0', '99', '2.0', 'something', '2022-09-23 16:41:02', '2022-09-23 16:41:02'),
(156, '0', '99', '2.0', 'something', '2022-09-23 16:41:03', '2022-09-23 16:41:03'),
(157, '0', '99', '2.0', 'something', '2022-09-23 16:41:04', '2022-09-23 16:41:04'),
(158, '36', '99', '3.5', 'check', '2022-09-23 16:41:05', '2022-09-23 16:41:05'),
(159, '36', '99', '3.5', 'check', '2022-09-23 16:41:05', '2022-09-23 16:41:05'),
(160, '36', '99', '3.5', 'check', '2022-09-23 16:41:05', '2022-09-23 16:41:05'),
(161, '36', '99', '3.5', 'check', '2022-09-23 16:41:05', '2022-09-23 16:41:05'),
(162, '36', '99', '3.5', 'check', '2022-09-23 16:41:06', '2022-09-23 16:41:06'),
(163, '42', '99', '0.0', 'check', '2022-09-23 16:41:53', '2022-09-23 16:41:53'),
(164, '42', '99', '0.0', 'check', '2022-09-23 16:42:05', '2022-09-23 16:42:05'),
(165, '42', '99', '0.0', 'check', '2022-09-23 16:42:05', '2022-09-23 16:42:05'),
(166, '36', '99', '0.0', 'write review', '2022-09-23 16:55:17', '2022-09-23 16:55:17'),
(167, '36', '99', '4.0', 'new review', '2022-09-23 16:56:00', '2022-09-23 16:56:00'),
(168, '42', '99', '0.0', 'testing', '2022-09-23 17:29:22', '2022-09-23 17:29:22'),
(169, '42', '99', '0.0', 'testing', '2022-09-23 17:29:25', '2022-09-23 17:29:25'),
(170, '42', '99', '0.0', 'y rrr g', '2022-09-23 17:36:38', '2022-09-23 17:36:38'),
(171, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:31', '2022-09-23 17:40:31'),
(172, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:32', '2022-09-23 17:40:32'),
(173, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:32', '2022-09-23 17:40:32'),
(174, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:34', '2022-09-23 17:40:34'),
(175, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:34', '2022-09-23 17:40:34'),
(176, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:35', '2022-09-23 17:40:35'),
(177, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:35', '2022-09-23 17:40:35'),
(178, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:35', '2022-09-23 17:40:35'),
(179, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:35', '2022-09-23 17:40:35'),
(180, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:35', '2022-09-23 17:40:35'),
(181, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(182, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(183, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(184, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(185, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited. The data we provide on The Company', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(186, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited.', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(187, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited.', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(188, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited.', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(189, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited.', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(190, '42', '99', '0.0', 'The Company Check is a registered information and data resource technology platform developed, owned and maintained solely by TCC Information Private Limited.', '2022-09-23 17:40:36', '2022-09-23 17:40:36'),
(191, '42', '99', '0.0', 'great place try out once', '2022-09-23 17:44:54', '2022-09-23 17:44:54'),
(192, '51', '99', '0.0', 'testing review', '2022-09-23 17:47:13', '2022-09-23 17:47:13'),
(193, '42', '99', '0.0', 'testing', '2022-09-23 17:51:01', '2022-09-23 17:51:01'),
(194, '42', '99', '0.0', 'testing', '2022-09-23 17:51:01', '2022-09-23 17:51:01'),
(195, '42', '99', '0.0', 'testing', '2022-09-23 17:51:01', '2022-09-23 17:51:01'),
(196, '42', '99', '0.0', 'testing', '2022-09-23 17:51:01', '2022-09-23 17:51:01'),
(197, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(198, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(199, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(200, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(201, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(202, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(203, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(204, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(205, '42', '99', '0.0', 'testing', '2022-09-23 17:51:02', '2022-09-23 17:51:02'),
(206, '42', '99', '0.0', 'testing', '2022-09-23 17:51:32', '2022-09-23 17:51:32'),
(207, '42', '99', '0.0', 'testing', '2022-09-23 17:51:33', '2022-09-23 17:51:33'),
(208, '42', '99', '0.0', 'test', '2022-09-23 17:58:08', '2022-09-23 17:58:08'),
(209, '42', '99', '3.5', 'testing review', '2022-09-23 17:58:21', '2022-09-23 17:58:21'),
(210, '42', '99', '0.0', 'testing again', '2022-09-23 18:01:52', '2022-09-23 18:01:52'),
(211, '42', '99', '0.0', 'testing review again', '2022-09-23 18:11:45', '2022-09-23 18:11:45'),
(212, '42', '108', '3.5', 'nqjwjwj', '2022-09-23 19:57:18', '2022-09-23 19:57:18'),
(213, '42', '108', '3.5', 'nqjwjwj', '2022-09-23 19:57:18', '2022-09-23 19:57:18'),
(214, '42', '108', '3.5', 'nqjwjwj', '2022-09-23 19:57:18', '2022-09-23 19:57:18'),
(215, '52', '2', '5.0', 'Family Friendly place', '2022-09-28 00:43:56', '2022-09-28 00:43:56'),
(216, '52', '2', '2.0', 'My family loves it here', '2022-09-28 00:44:14', '2022-09-28 00:44:14'),
(217, '52', '2', '3.0', 'Best place to buy wholesale product', '2022-09-28 00:44:40', '2022-09-28 00:44:40'),
(218, '42', '113', '0', 'Awesome', '2022-10-08 06:16:51', '2022-10-08 06:16:51'),
(223, '50', '122', '1.5', 'vo', '2022-10-27 21:26:13', '2022-10-27 21:26:13'),
(224, '55', '122', '2.5', 'vino got', '2022-10-27 21:26:29', '2022-10-27 21:26:29'),
(225, '36', '131', '3', 'Good', '2022-10-28 19:50:44', '2022-10-28 19:50:44'),
(226, '36', '131', '3', 'Nice one', '2022-10-28 19:55:19', '2022-10-28 19:55:19'),
(227, '57', '122', '3.5', 'good place', '2022-11-04 16:07:57', '2022-11-04 16:07:57'),
(228, '57', '122', '4.0', 'must visit', '2022-11-04 16:08:06', '2022-11-04 16:08:06'),
(229, '59', '122', '5.0', 'good place', '2022-11-04 17:31:20', '2022-11-04 17:31:20'),
(230, '59', '122', '5.0', 'good place', '2022-11-04 17:31:20', '2022-11-04 17:31:20'),
(231, '46', '122', '5.0', 'enjoyable place', '2022-11-04 17:31:46', '2022-11-04 17:31:46'),
(232, '38', '122', '4.0', 'good', '2022-11-05 04:04:05', '2022-11-05 04:04:05'),
(233, '60', '122', '4.5', 'nice', '2022-11-05 04:04:26', '2022-11-05 04:04:26'),
(234, '60', '122', '4.5', 'nice', '2022-11-05 04:04:26', '2022-11-05 04:04:26'),
(235, '56', '122', '0.0', 'best', '2022-11-05 04:04:42', '2022-11-05 04:04:42'),
(236, '56', '122', '5.0', 'best', '2022-11-05 04:04:51', '2022-11-05 04:04:51'),
(237, '36', '139', '5.0', 'ok ok', '2022-11-14 19:56:06', '2022-11-14 19:56:06');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `password` varchar(200) NOT NULL,
  `imagePath` varchar(200) DEFAULT NULL,
  `dateOfBirth` date DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `otp` int(11) DEFAULT NULL,
  `provider_id` varchar(500) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `provider_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `mobile`, `password`, `imagePath`, `dateOfBirth`, `created_at`, `updated_at`, `otp`, `provider_id`, `token`, `provider_name`) VALUES
(1, 'Ashutosh', 'Chauhan', 'ashutosh@gmail.com', '8468921900', 'ashutosh123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1661451087.jpg', '2001-11-11', '2022-07-06 01:15:59', '2022-08-25 18:11:27', NULL, NULL, NULL, NULL),
(2, 'Ashutosh', 'Chauhan', 'ashutoshchauhan129@gmail.com', '8468921900', 'ashutosh123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1657178705.png', '2001-11-11', '2022-07-06 01:46:29', '2022-09-23 13:49:27', 3652, NULL, NULL, NULL),
(3, 'Saif', 'Khan', 'saif@gmail.com', '8468921523', 'saifkhan', NULL, '2001-11-11', '2022-07-06 04:50:07', '2022-07-06 04:50:07', NULL, NULL, NULL, NULL),
(4, 'demmo', 'singh', 'demo@gmail.com', '123456798', 'demo123123', NULL, '2003-12-12', '2022-07-07 00:13:39', '2022-07-07 00:13:39', NULL, NULL, NULL, NULL),
(5, 'demmo', 'singh', 'demo@gmail.com', '123456798', 'demo123123', NULL, '2003-12-12', '2022-07-07 03:07:53', '2022-07-07 03:07:53', NULL, NULL, NULL, NULL),
(6, 'jsjsj', 'jzjsjs', 'jsjsjj', 'nznzj', 'jzjzjs', NULL, '2022-12-12', '2022-07-07 06:02:48', '2022-07-07 06:02:48', NULL, NULL, NULL, NULL),
(7, 'kalash', 'sonker', 'kalashsonker22@gmail.com', '18192992', '123', NULL, '2022-01-16', '2022-07-07 06:05:47', '2022-07-07 06:05:47', NULL, NULL, NULL, NULL),
(9, 'ahhw', 'hahha', 'babab', 'bhsbaha', 'babsb', NULL, '2022-03-12', '2022-07-08 02:05:30', '2022-07-08 02:05:30', NULL, NULL, NULL, NULL),
(10, 'kalash', 'Sonker', 'kalashsonker9@gmail.com', '012345678', '456', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659971447.jpg', '2022-06-07', '2022-07-08 03:00:59', '2022-08-31 07:04:47', 7227, NULL, NULL, NULL),
(11, 'kalash', 'sonker', 'kalashsonker19@gmail.com', '9292993', '123', NULL, '2022-03-03', '2022-07-10 22:24:19', '2022-07-10 22:24:19', NULL, NULL, NULL, NULL),
(12, 'demmo', 'singh', 'demo1@gmail.com', '1234567981', 'demo123123', NULL, '2003-12-12', '2022-07-23 06:47:56', '2022-07-23 06:47:56', NULL, NULL, NULL, NULL),
(13, 'Ashutosh', 'Chauhan', 'aashutosh.quantum@gmail.com', '7838066278', 'asdfghhj', 'http://beautyliciousnj.com/happyhours/public/profileImage/1658625642.jpg', '2001-11-11', '2022-07-23 07:48:21', '2022-07-24 01:20:42', NULL, NULL, NULL, NULL),
(15, 'Vikas', 'soni', 'Vikassoni@gmail.com', '9996333823', 'Vikas123@', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659513405.jpg', '1999-05-05', '2022-07-24 22:14:15', '2022-08-07 05:10:41', NULL, NULL, NULL, NULL),
(16, 'vikas', 'soni', 'vikassoni1@gmail.com', '8977886545', 'Vikas123', NULL, '1999-05-05', '2022-07-24 22:15:51', '2022-07-24 22:15:51', NULL, NULL, NULL, NULL),
(17, 'vikas', 'soni', 'Vikasssoni@gmail.com', 'bsjnfnns', 'Vikas123', NULL, '1999-05-06', '2022-07-25 00:12:20', '2022-07-25 00:12:20', NULL, NULL, NULL, NULL),
(18, 'vjj', 'xgg', 'dhhj', '7755', 'bhh', NULL, '1999-05-06', '2022-07-25 02:57:21', '2022-07-25 02:57:21', NULL, NULL, NULL, NULL),
(20, 'test', 'test', 'test@test.com', '8912345677', 'hello', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659356156.jpeg', '2000-01-01', '2022-08-01 05:13:18', '2022-08-01 12:15:56', NULL, NULL, NULL, NULL),
(21, 'Hey', 'Heyy', 'hey@hey.com', '67546543', '123', NULL, '2000-12-10', '2022-08-01 20:12:11', '2022-08-19 08:24:04', 4687, NULL, NULL, NULL),
(23, 'vikas', 'soni', 'vikassoniiii@gmail.com', '777777777777777777777777777', 'vikas123', NULL, '2022-08-19', '2022-08-02 23:26:17', '2022-08-02 23:26:17', NULL, NULL, NULL, NULL),
(24, 'vikassoni', 'soni', 'vikassonii@gmail.com', 'Kdiiiieiieki', 'Vikas123', NULL, '1999-05-05', '2022-08-03 01:00:07', '2022-08-03 01:00:07', NULL, NULL, NULL, NULL),
(25, 'soni', 'vikas', 'vikassoni20189@gmail.com', 'dhjjjdjd', 'Vikas123@', NULL, '1999-05-05', '2022-08-03 01:02:20', '2022-08-03 01:02:20', NULL, NULL, NULL, NULL),
(26, 'soni', 'fgh', 'Vikassoni20186@gmail.com', '9996333825', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659514186.jpg', '1999-05-05', '2022-08-03 01:04:21', '2022-08-03 08:09:46', NULL, NULL, NULL, NULL),
(27, 'kalash', 'sonker', 'kalashsonker99@gmail.com', '0123456799', '123', NULL, '2022-03-03', '2022-08-04 01:36:02', '2022-08-04 01:36:02', NULL, NULL, NULL, NULL),
(28, 'kalash', 'sonker', 'kalashsonker999@gmail.com', '01239', '123', NULL, '2022-03-03', '2022-08-04 01:36:37', '2022-08-04 01:36:37', NULL, NULL, NULL, NULL),
(29, 'kalash', 'sonker', 'kalashsonker123@gmail.com', '123', '123', NULL, '2022-03-03', '2022-08-04 01:37:34', '2022-08-04 01:37:34', NULL, NULL, NULL, NULL),
(30, 'kalash', 'sonker', 'kalashsonker1234@gmail.com', '12345', '123', NULL, '2022-03-03', '2022-08-04 01:43:54', '2022-08-04 01:43:54', NULL, NULL, NULL, NULL),
(31, 'kala', 'sonker', 'kalashsonker8@gmail.com', '123456', '12345', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659603647.jpg', '2022-03-03', '2022-08-04 01:45:23', '2022-08-04 09:00:47', NULL, NULL, NULL, NULL),
(32, 'vicky', 'son', 'vickysoni@gmail.com', '98887778677', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1660274701.jpg', '1999-05-05', '2022-08-04 05:41:50', '2022-08-12 03:25:01', NULL, NULL, NULL, NULL),
(33, 'vicky', 'verma', 'Vickyverma@gmail.com', '898989977987', 'Vikas123', NULL, '1999-05-05', '2022-08-04 06:02:23', '2022-08-04 06:02:23', NULL, NULL, NULL, NULL),
(34, 'vikas', 'soni', 'Vickyverma@yopmail.com', '789456313131', 'Vikas', NULL, '1999-05-05', '2022-08-04 06:04:06', '2022-08-04 06:04:06', NULL, NULL, NULL, NULL),
(35, 'vicky', 'verma', 'Vickyverma1@yopmail.com', '787987546543', 'Vikas', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659618898.png', '1999-05-05', '2022-08-04 06:06:13', '2022-08-04 13:53:58', 8721, NULL, NULL, NULL),
(36, 'vikas', 'soni', 'soni@gmail.com', 'Vikas123@', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659622863.png', '1999-05-05', '2022-08-04 06:56:20', '2022-08-04 14:21:03', NULL, NULL, NULL, NULL),
(37, 'demmo', 'singh', 'hr@gmail.com', '1234567982', 'demo123123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1660673336.', '2003-12-12', '2022-08-04 11:12:59', '2022-08-16 18:08:56', NULL, NULL, NULL, NULL),
(38, 'vicky', 'soni', 'Vikcy@gmail.com', '4546465465465465', 'Vikas123', NULL, '2022-08-07', '2022-08-06 22:02:40', '2022-08-06 22:02:40', NULL, NULL, NULL, NULL),
(39, 'vikas', 'soni', 'Vickys@gmail.com', '789978887898', 'Vicky123', NULL, '1999-05-05', '2022-08-06 22:12:57', '2022-08-07 05:15:28', NULL, NULL, NULL, NULL),
(41, 'John', 'Joe', 'johnjoe@gmail.com', '0123456798', '123', NULL, '2022-03-12', '2022-08-08 07:30:19', '2022-08-08 07:30:19', NULL, NULL, NULL, NULL),
(42, 'john', 'doe', 'johndoe123@gmail.com', '0123456789', '12345', 'http://beautyliciousnj.com/happyhours/public/profileImage/1659972184.jpg', '1999-12-03', '2022-08-08 08:18:22', '2022-08-08 15:23:04', NULL, NULL, NULL, NULL),
(43, 'vikas', 'soni', 'Life@yopmail.com', '989697958998', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1660018610.jpg', '2022-08-09', '2022-08-08 21:04:48', '2022-08-09 04:16:50', NULL, NULL, NULL, NULL),
(44, 'demmo', 'singh', 'demo4@gmail.com', '1234567984', 'demo123123', NULL, '2003-12-12', '2022-08-09 10:00:38', '2022-08-09 10:00:38', NULL, NULL, NULL, NULL),
(45, 'demmo', 'singh', 'demo9@gmail.com', '1234567920', 'demo123123', NULL, '2003-12-12', '2022-08-09 10:00:54', '2022-08-09 10:00:54', NULL, NULL, NULL, NULL),
(46, 'demmo', 'singh', 'demo298@gmail.com', '9598542070', 'demo123123', NULL, '2003-12-12', '2022-08-09 10:01:24', '2022-08-09 10:01:24', NULL, NULL, NULL, NULL),
(47, 'Ashutosh', 'Chauhan', 'ashutoshchauhan129@gmail.com', '8468921900', '12345678', NULL, '2001-11-11', '2022-08-11 05:59:13', '2022-08-16 16:19:00', NULL, NULL, NULL, NULL),
(48, 'Nick', 'Jones', 'nick.jones123@gmail.com', '0123987654', '12345678', NULL, '1999-05-07', '2022-08-12 04:00:48', '2022-08-12 04:00:48', NULL, NULL, NULL, NULL),
(49, 'Abhishek', 'khot', 'jeamsb003@gmail.com', 'newuser007', 'NEW123456', 'http://beautyliciousnj.com/happyhours/public/profileImage/1662441045.png', '2001-12-09', '2022-08-16 03:19:17', '2022-09-09 09:43:10', 3144, NULL, NULL, NULL),
(50, 'vicky', 's', 'ss@gmail.com', '964967365994', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1661775252.jpg', '1999-05-05', '2022-08-19 08:30:53', '2022-08-29 12:14:12', NULL, NULL, NULL, NULL),
(52, 'bhavesh', 'jain', 'bhavesh@gmail.com', '762044846', '123456489', NULL, '1996-08-26', '2022-08-25 07:05:22', '2022-08-25 07:05:22', NULL, NULL, NULL, NULL),
(54, 'Bhavesh', 'Jain', 'bhaveshh@gmail.com', '7620444846', 'Bhavesh@12', NULL, '2022-08-30', '2022-08-29 21:54:03', '2022-08-29 21:54:03', NULL, NULL, NULL, NULL),
(55, 'vikas', 'soni', 'vik', 'v6', 'vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1663580237.jpg', '1999-05-02', '2022-09-01 04:28:42', '2022-09-19 09:37:48', NULL, NULL, NULL, NULL),
(56, '223555', '1255', 'vk', 'hhhh', 'aa', 'http://beautyliciousnj.com/happyhours/public/profileImage/1663158869.png', '2055-05-05', '2022-09-01 04:30:36', '2022-09-14 12:36:13', NULL, NULL, NULL, NULL),
(57, 'Sahil', 'Khan', 'sahil.alwar.sk@gmail.com', '8507893333', 'sahilkhan@1', NULL, '2001-10-07', '2022-09-05 04:25:58', '2022-11-04 05:37:32', 6671, NULL, NULL, NULL),
(58, 'Kalash', 'Sonker', 'kalashsonker989@gmail.com', '01234567698', '123', NULL, '2022-03-03', '2022-09-06 11:37:51', '2022-09-06 11:37:51', NULL, NULL, NULL, NULL),
(59, 'vi', 've', 'vik@gmail.com', '9996333725', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1662520222.jpg', '1999-05-05', '2022-09-06 20:03:58', '2022-09-07 03:13:47', NULL, NULL, NULL, NULL),
(60, 'swaraj', 'changole', 'swarajchangole.quantumit@gmail.com', '9404689585', 'Swaraj123', NULL, '1995-01-26', '2022-09-07 00:03:19', '2022-09-07 00:03:19', NULL, NULL, NULL, NULL),
(61, 'shubham', 'changole', 'swaraj.changole@gmail.com', '9175742019', 'Swaraj123', NULL, '1995-01-26', '2022-09-07 00:03:55', '2022-09-07 00:03:55', NULL, NULL, NULL, NULL),
(62, 'vikas', 'soni', 'sonii@gmail.com', '9996333828', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1662704709.webp', '1999-05-05', '2022-09-08 23:09:52', '2022-09-09 06:25:09', NULL, NULL, NULL, NULL),
(63, 'abc', 'abc', 'abc@gmail.com', '9823840813', '1234567', 'http://beautyliciousnj.com/happyhours/public/profileImage/1665333085.jpg', '1996-08-26', '2022-09-08 23:50:08', '2022-10-09 16:31:25', NULL, NULL, NULL, NULL),
(64, 'abc', 'xyz', 'xyza@gmail.com', '919357818378', '12345678910', NULL, '2000-10-09', '2022-09-09 03:54:25', '2022-09-09 03:54:25', NULL, NULL, NULL, NULL),
(65, 'something', 'something', 'something@gmail.com', '1234567890', '123some', NULL, '2000-12-09', '2022-09-09 04:04:51', '2022-09-09 04:04:51', NULL, NULL, NULL, NULL),
(66, 'ak', 'kk', 'k234@gmail.com', '9087616186', 'sad0074', NULL, '2000-12-06', '2022-09-09 05:13:04', '2022-09-09 05:13:04', NULL, NULL, NULL, NULL),
(67, 'final', 'makdirj', 'final@.comgmail.com', '8536192840', 'wi1834bc', NULL, '1995-09-05', '2022-09-09 05:30:01', '2022-09-09 05:30:01', NULL, NULL, NULL, NULL),
(68, 'abhk', 'jsjdj3qodo', 'kdkjebd@gmail.com', '1234950261', 'aidiirjrkfk245', NULL, '1745-12-09', '2022-09-09 05:32:51', '2022-09-09 05:32:51', NULL, NULL, NULL, NULL),
(69, 'abc', 'xyz', 'jeamsb007@gmail.com', 'newuser0070098', 'NEW1234567890', NULL, '2000-12-09', '2022-09-09 05:39:06', '2022-09-09 05:39:06', NULL, NULL, NULL, NULL),
(70, 'akkk', 'apsje', 'odjr@gmail.com', '3452661978', '123jfjdow', NULL, '1775-06-06', '2022-09-09 05:43:59', '2022-09-09 05:43:59', NULL, NULL, NULL, NULL),
(71, 'sneeok', 'kdoqosb', 'dijeb3jd@gmail.com', '4987318285', 'qhiqd8x72bx', NULL, '4648-04-12', '2022-09-09 05:45:47', '2022-09-09 05:45:47', NULL, NULL, NULL, NULL),
(72, 'Abhishek', 'khot', 'jeamsb@gmail.com', '9966625499', 'NEW12345', NULL, '1996-07-07', '2022-09-12 02:14:47', '2022-09-12 02:14:47', NULL, NULL, NULL, NULL),
(73, 'ak', 'kk', 'someday@gmail.com', '9966452316', 'NEW1234567890', NULL, '1888-12-05', '2022-09-12 02:16:01', '2022-09-12 02:16:01', NULL, NULL, NULL, NULL),
(74, 'ak', 'kk', 'another@gmail.com', '9996663322', '12345', NULL, '1988-03-03', '2022-09-12 02:29:07', '2022-09-12 02:29:07', NULL, NULL, NULL, NULL),
(75, 'ak', 'kk', 'anotherone@gmail.com', '9966332277', '12345', NULL, '1888-12-06', '2022-09-12 02:37:39', '2022-09-12 02:37:39', NULL, NULL, NULL, NULL),
(76, 'xzy', 'czy', 'abcd@gmail.com', '6492031358', '12345', NULL, '1988-03-06', '2022-09-12 04:12:17', '2022-09-12 04:12:17', NULL, NULL, NULL, NULL),
(77, 'ak', 'ak', 'ak@gmail.com', '4319597664', '12345', NULL, '1980-08-06', '2022-09-12 04:12:51', '2022-09-12 04:12:51', NULL, NULL, NULL, NULL),
(78, 'evening', 'evening', 'evening@gmail.com', '8899553355', '12345', NULL, '1999-09-03', '2022-09-12 04:23:45', '2022-09-12 04:23:45', NULL, NULL, NULL, NULL),
(79, 'xyz', 'zhc', 'zhc@gmail.com', '9988552233', '12345', NULL, '1999-09-03', '2022-09-12 04:39:18', '2022-09-12 04:39:18', NULL, NULL, NULL, NULL),
(80, 'what', 'what', 'random@gmail.com', '9988552244', '12345', NULL, '1998-09-03', '2022-09-12 05:21:00', '2022-09-12 05:21:00', NULL, NULL, NULL, NULL),
(81, 'some', 'some', 'just@gmail.com', '8899002255', '12345', NULL, '2001-12-03', '2022-09-12 05:38:48', '2022-09-12 05:38:48', NULL, NULL, NULL, NULL),
(82, 'paifh', 'kkdkwl', 'what@gmail.com', '6461629561', '12345', NULL, '1500-09-09', '2022-09-12 05:47:07', '2022-09-12 05:47:07', NULL, NULL, NULL, NULL),
(83, 'vvvv', 'vvvv', 'v@gmail.com', '8899955666', '12345', NULL, '1999-09-06', '2022-09-12 21:22:22', '2022-09-12 21:22:22', NULL, NULL, NULL, NULL),
(84, 'sodjrh', 'kdkwn', 'kk@gmail.com', '6431629899', '1234567890', NULL, '1205-03-03', '2022-09-12 21:52:25', '2022-09-12 21:52:25', NULL, NULL, NULL, NULL),
(85, 'wpeij', 'skkskdometimieowles', 'pc@gmail.com', '6451349204', '1234567', NULL, '1275-03-05', '2022-09-12 22:07:47', '2022-09-12 22:07:47', NULL, NULL, NULL, NULL),
(86, 'done', 'done', 'done@gmail.com', '9881952441', 'done12345', 'http://beautyliciousnj.com/happyhours/public/profileImage/1663055773.png', '2022-02-04', '2022-09-12 22:23:31', '2022-09-19 11:20:12', NULL, NULL, NULL, NULL),
(87, 'Kalash', 'Sonker', 'kalashsonker90@gmail.com', '0123654789', '123456', NULL, '2022-03-22', '2022-09-13 02:05:14', '2022-09-13 02:05:14', NULL, NULL, NULL, NULL),
(88, 'woeoj', 'sidjj', 'jhon@gmail.com', '9881952454', 'jhon12345', NULL, '1995-09-02', '2022-09-13 05:43:37', '2022-09-13 05:43:37', NULL, NULL, NULL, NULL),
(89, 'no', 'no', 'no@gmail.com', '8855994433', 'nope12345', NULL, '1975-07-07', '2022-09-13 05:44:27', '2022-09-13 05:44:27', NULL, NULL, NULL, NULL),
(90, 'jain', 'jain', 'jain@gmail.com', '8329924753', '12345678', NULL, '2022-09-15', '2022-09-14 23:06:00', '2022-09-14 23:06:00', NULL, NULL, NULL, NULL),
(91, 'jeff', 'bezoes', 'jeff@gmail.com', '1685236497', '1234567890', NULL, '2022-09-02', '2022-09-14 23:06:02', '2022-09-14 23:06:02', NULL, NULL, NULL, NULL),
(92, 'Swaraj', 'Changole', 'sthakre77.st@gmail.com', '9404689585', 'Swaraj123#', NULL, '1995-01-26', '2022-09-16 01:49:22', '2022-09-16 10:23:28', NULL, NULL, NULL, NULL),
(93, 'vk', 'vik', 'vk@gmail.com', '9996333826', 'Vikas123', NULL, '2022-09-05', '2022-09-19 05:49:09', '2022-09-19 05:49:09', NULL, NULL, NULL, NULL),
(94, 'kml', 'k', 'kml@gmail.com', '99985528522', 'aa', 'http://beautyliciousnj.com/happyhours/public/profileImage/1663689459.jpg', '1999-05-31', '2022-09-19 05:55:33', '2022-09-20 16:00:57', NULL, NULL, NULL, NULL),
(95, 'test', 'test', 'test@gmail.com', '9885541356', 'test12345', NULL, '2001-06-06', '2022-09-19 21:11:37', '2022-09-19 21:11:37', NULL, NULL, NULL, NULL),
(96, 'error', 'error', 'error@gmail.com', '8056653825', 'error12345', NULL, '2022-03-05', '2022-09-19 21:18:08', '2022-09-19 21:18:08', NULL, NULL, NULL, NULL),
(97, 'whaterror', 'errornumber', 'numberformat@gmail.com', '9224413569', 'number12345', NULL, '2022-03-01', '2022-09-19 21:24:58', '2022-09-19 21:24:58', NULL, NULL, NULL, NULL),
(98, 'somewhat', 'somewhat', 'somewhat@gmail.com', '5544666002', 'somewhat12345', NULL, '2005-01-09', '2022-09-19 21:30:51', '2022-09-19 21:30:51', NULL, NULL, NULL, NULL),
(99, 'fixed', 'fix', 'fixed@gmail.com', '9524415836', 'fix12345', NULL, '2005-02-03', '2022-09-19 21:38:03', '2022-09-19 21:38:03', NULL, NULL, NULL, NULL),
(100, 'fixed', 'check', 'checked@gmail.com', '-64520726', 'checked12345', NULL, '2007-12-11', '2022-09-19 21:45:28', '2022-09-19 21:45:28', NULL, NULL, NULL, NULL),
(101, 'tok', 'hh', 'vas@gmail.com', '9996338522', 'Vikas123', NULL, '1999-05-06', '2022-09-20 08:46:22', '2022-09-20 08:46:22', NULL, NULL, NULL, NULL),
(102, 'sas', 'sos', 'sos@gmail.com', '8886333828', 'Vikas123@', NULL, '2021-09-25', '2022-09-20 08:47:18', '2022-09-20 08:47:18', NULL, NULL, NULL, NULL),
(103, 'kamal', 'sharma', 'kmal@gmail.com', '8885222325', 'Vikas123', NULL, '2022-09-19', '2022-09-20 08:53:48', '2022-09-20 08:53:48', NULL, NULL, NULL, NULL),
(104, 'vik', 'ggg', '333@gmail.com', '7776333824', 'Vikas123', NULL, '2022-09-20', '2022-09-20 09:04:34', '2022-09-20 09:04:34', NULL, NULL, NULL, NULL),
(105, 'vik', 'ggg', '444@gmail.com', '8885222358', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1663691564.jpg', '1999-03-05', '2022-09-20 09:07:42', '2022-09-20 16:33:22', NULL, NULL, NULL, NULL),
(106, 'Vikas', 'soni', 'ansu@mail.com', '789845126545', 'Vikas123', NULL, '1999-05-05', '2022-09-20 09:36:30', '2022-09-20 09:36:30', NULL, NULL, NULL, NULL),
(107, 'vk', 'soni', 'ans@mail.com', '8596745241', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1664170226.png', '1999-05-05', '2022-09-20 09:38:26', '2022-09-26 05:30:26', NULL, NULL, NULL, NULL),
(108, 'Kalash', 'Sonker', 'kalashsonker9999@gmail.com', '0123456987', '123456', NULL, '2021-03-03', '2022-09-23 05:50:33', '2022-09-23 05:50:33', NULL, NULL, NULL, NULL),
(109, 'ggg', 'zzz', 'zzz@gmail.com', '8574965241', 'Vikas124', 'http://beautyliciousnj.com/happyhours/public/profileImage/1663997273.jpg', '2022-09-24', '2022-09-23 22:24:45', '2022-09-24 05:27:53', NULL, NULL, NULL, NULL),
(110, '123456677', '124445678', 'laxman@gmail.com', '477414747755852856954866666668570855084755', 'Laxman@12', NULL, '2022-09-24', '2022-09-23 22:37:37', '2022-09-23 22:37:37', NULL, NULL, NULL, NULL),
(111, 'dev', 'surana', 'suranadev', '7620444849', 'aa', 'http://beautyliciousnj.com/happyhours/public/profileImage/1663998958.', '2022-09-24', '2022-09-23 22:38:24', '2022-09-24 05:55:58', NULL, NULL, NULL, NULL),
(112, 'Shubham', 'Khare', 'khare@gmail.com', '9630852741', '12345678', NULL, '1995-09-28', '2022-09-28 07:47:08', '2022-09-28 07:47:08', NULL, NULL, NULL, NULL),
(115, 'testing1', 'testing1', 'test1@gmail.com', '012345678901', '123456789', NULL, '2022-10-13', '2022-10-14 01:54:36', '2022-10-14 01:54:36', NULL, NULL, NULL, NULL),
(116, 'Steave', 'Roger', 'steave@gmail.com', '7532061955', 'roger123456789', NULL, '2018-05-12', '2022-10-17 11:29:51', '2022-10-17 11:29:51', NULL, NULL, NULL, NULL),
(120, 'Shubham', 'Khare', 'hr1@gmail.com', '9087654321', '12345678', 'http://beautyliciousnj.com/happyhours/public/profileImage/1667482225.', '2022-10-21', '2022-10-21 10:35:25', '2022-11-03 13:30:25', NULL, NULL, NULL, NULL),
(121, 'jjj', 'jjj', 'ansu@yopmail.com', '9865329865', 'Vikas123', 'http://beautyliciousnj.com/happyhours/public/profileImage/1666759047.jpeg', '2022-10-26', '2022-10-25 21:26:52', '2022-10-26 04:37:27', NULL, NULL, NULL, NULL),
(122, 'gurman', 'deep', 'gurma381@gmail.com', '9878125064', 'Amritsar12', 'http://beautyliciousnj.com/happyhours/public/profileImage/1668447413.png', '2001-07-30', '2022-10-26 09:12:36', '2022-11-14 17:36:53', NULL, NULL, NULL, NULL),
(123, 'Abhishek', 'khot', 'happyhours@gmail.com', '0699342991', 'happyhours123', NULL, '1990-06-02', '2022-10-27 00:28:23', '2022-10-27 00:28:23', NULL, NULL, NULL, NULL),
(124, 'kkk', 'oni', 'lll@gmail.com', '2356896532', 'Vikas123', NULL, '2022-10-28', '2022-10-28 03:41:20', '2022-10-28 03:41:20', NULL, NULL, NULL, NULL),
(125, 'uuu', 'uuu', 'uuu@gmail.com', '1245785421', 'Vikas123', NULL, '2022-10-28', '2022-10-28 03:42:20', '2022-10-28 03:42:20', NULL, NULL, NULL, NULL),
(126, 'uuu', 'uuu', 'uu@gmail.com', '8754215487', 'Vikas123', NULL, '2022-10-28', '2022-10-28 03:42:55', '2022-10-28 03:42:55', NULL, NULL, NULL, NULL),
(127, 'uuu', 'uuu', 'uuuu@gmail.com', '1245785423', 'Vikas123', NULL, '2022-10-28', '2022-10-28 03:44:06', '2022-10-28 03:44:06', NULL, NULL, NULL, NULL),
(128, 'gurman', 'deep', 'gurmandeep1235@gmail.com', '9878125060', 'Amritsar12', NULL, '2001-07-25', '2022-10-28 04:02:07', '2022-10-28 04:02:07', NULL, NULL, NULL, NULL),
(129, 'everything', 'skfk', 'mdk@gmail.com', '6431956831', 'passwordmdk123', NULL, '2018-04-24', '2022-10-28 04:16:55', '2022-10-28 04:16:55', NULL, NULL, NULL, NULL),
(130, 'babu', 'babu', 'babu26@gmail.com', '7620444123', '7620444847', NULL, '2022-10-28', '2022-10-28 04:46:07', '2022-10-28 04:46:07', NULL, NULL, NULL, NULL),
(131, 'raju', 'jain', 'raju@gmail.com', '1234567898', '12345678', 'http://beautyliciousnj.com/happyhours/public/profileImage/1666961479.', '2022-10-28', '2022-10-28 04:57:26', '2022-10-28 12:51:20', NULL, NULL, NULL, NULL),
(132, 'Priyam', 'Prakash', 'priyamprakash99@gmail.com', '+91749385923', '123456', NULL, '1999-03-28', '2022-11-03 05:03:53', '2022-11-07 13:08:03', NULL, NULL, NULL, NULL),
(133, 'Sahil', 'Pc', 'sahilpc.alwar@gmail.com', NULL, 'w+PjNA7-Ih?*', NULL, NULL, '2022-11-04 01:25:33', '2022-11-04 01:25:33', NULL, '100412628770939458136', 'o9xAxRcby7y6ljxlvhcnOltLwesCshlG6GD8jWEtnOTA30pv0R', 'GOOGLE'),
(134, 'aak', 'kakak', 'kalashsonker909@gmail.com', '9846464664', '123456', NULL, '2022-03-11', '2022-11-08 07:08:12', '2022-11-08 07:08:12', NULL, NULL, NULL, NULL),
(135, 'ᏦᏬᏝᎴᏋᏋᎮ', 'ddghjkllljhh', 'fghjkllkkj@gmail.com', '44555632222', ';)PbL7^tpG$s', 'https://graph.facebook.com/v3.3/1519338685249081/picture?type=normal', '1998-01-05', '2022-11-14 03:47:35', '2022-11-14 12:46:56', NULL, '1519338685249081', 'XtXU6pSAHecGmvzRtZ55zzSaMR2ggJbfEhby2995wcAkhBBC0A', 'FACEBOOK'),
(136, 'Vikas', 'Soni', 'vikas.quantumit.@gmail.com', '9996358855', 'I:H_=MB;owf5', 'http://beautyliciousnj.com/happyhours/public/profileImage/1668429309.jpg', '1999-05-05', '2022-11-14 05:32:41', '2022-11-14 12:41:37', NULL, '115020583553408850736', 'tmVVUVpf5KFhqI1symDtbNHHVjxXk9QJaj4P7VpMXu9YJDBpPQ', 'GOOGLE'),
(137, 'Vikas', 'Soni', 'vikas.quantumit.innovation@gmail.com', NULL, 'BNwlD-P@pn(R', NULL, NULL, '2022-11-14 05:42:55', '2022-11-14 05:42:55', NULL, '115020583553408850736', 'CmNaVH6soDMoMWsamVixTpxRW1CkfkMNd2AsnB3LXRLxY5dEqZ', 'GOOGLE'),
(138, 'Vikas', 'gggg', 'gggg@gmail.com', '3265986532', '*3%qn_Gg.Qf)', 'https://graph.facebook.com/v3.3/672474490963644/picture?type=normal', '1999-01-01', '2022-11-14 05:47:12', '2022-11-14 12:48:49', NULL, '672474490963644', 'X30GQ6UmPSktqO9hv2E8rGBQiimClR9zKKX5BUWQtrv3a1C9CE', 'FACEBOOK'),
(141, 'Gurman', 'Deep', 'gurman381@gmail.com', '9878125064', '*c$^g!zKt=ds', 'https://graph.facebook.com/v3.3/1579881195780706/picture?type=normal', '2001-11-11', '2022-11-14 09:42:00', '2022-11-14 16:48:47', NULL, '1579881195780706', 'PR64vItBPa3mgKP99uiB7ZRGKJy1gNYTXtJuXVOBYPqQvQJNYm', 'FACEBOOK');

-- --------------------------------------------------------

--
-- Table structure for table `user_availibility`
--

CREATE TABLE `user_availibility` (
  `id` int(200) NOT NULL,
  `user_id` int(200) NOT NULL,
  `day` varchar(201) NOT NULL,
  `start` varchar(200) DEFAULT NULL,
  `end` varchar(200) DEFAULT NULL,
  `is_open` bigint(20) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_availibility`
--

INSERT INTO `user_availibility` (`id`, `user_id`, `day`, `start`, `end`, `is_open`, `created_at`, `updated_at`) VALUES
(8, 40, 'monday', '17:50', '19:52', 1, '2022-08-18 17:18:52', '2022-08-18 17:18:52'),
(9, 40, 'tuesday', '16:49', '18:51', 1, '2022-08-18 17:18:52', '2022-08-18 17:18:52'),
(10, 40, 'wednesday', '21:54', '19:52', 1, '2022-08-18 17:18:52', '2022-08-18 17:18:52'),
(11, 40, 'thursday', NULL, NULL, 0, '2022-08-18 17:18:52', '2022-08-18 17:18:52'),
(12, 40, 'friday', '18:51', '20:53', 1, '2022-08-18 17:18:52', '2022-08-18 17:18:52'),
(13, 40, 'saturday', '20:53', '20:53', 1, '2022-08-18 17:18:52', '2022-08-18 17:18:52'),
(14, 40, 'sunday', NULL, NULL, 0, '2022-08-18 17:18:52', '2022-08-18 17:18:52'),
(15, 41, 'monday', '19:59', '06:58', 1, '2022-08-18 17:52:26', '2022-08-18 17:52:26'),
(16, 41, 'tuesday', NULL, NULL, 0, '2022-08-18 17:52:26', '2022-08-18 17:52:26'),
(17, 41, 'wednesday', NULL, NULL, 0, '2022-08-18 17:52:26', '2022-08-18 17:52:26'),
(18, 41, 'thursday', NULL, NULL, 0, '2022-08-18 17:52:26', '2022-08-18 17:52:26'),
(19, 41, 'friday', NULL, NULL, 0, '2022-08-18 17:52:26', '2022-08-18 17:52:26'),
(20, 41, 'saturday', NULL, NULL, 0, '2022-08-18 17:52:26', '2022-08-18 17:52:26'),
(21, 41, 'sunday', NULL, NULL, 0, '2022-08-18 17:52:26', '2022-08-18 17:52:26'),
(22, 8, 'monday', '13:43', '14:44', 1, '2022-08-23 13:11:10', '2022-08-23 13:11:10'),
(23, 8, 'tuesday', '13:00', '17:04', 1, '2022-08-23 13:11:10', '2022-08-23 14:29:22'),
(24, 8, 'wednesday', '08:32', '17:29', 1, '2022-08-23 13:11:10', '2022-08-30 12:40:22'),
(25, 8, 'thursday', '15:14', '17:16', 0, '2022-08-23 13:11:10', '2022-08-30 12:40:51'),
(26, 8, 'friday', NULL, NULL, 0, '2022-08-23 13:11:10', '2022-08-23 13:11:10'),
(27, 8, 'saturday', NULL, NULL, 0, '2022-08-23 13:11:10', '2022-08-23 13:11:10'),
(28, 8, 'sunday', NULL, NULL, 0, '2022-08-23 13:11:10', '2022-08-23 13:11:10'),
(29, 42, 'monday', '10:00', '22:00', 0, '2022-08-26 01:00:00', '2022-08-26 01:00:36'),
(30, 42, 'tuesday', '10:00', '22:00', 1, '2022-08-26 01:00:00', '2022-08-26 01:00:00'),
(31, 42, 'wednesday', '11:00', '23:00', 1, '2022-08-26 01:00:00', '2022-08-26 01:00:00'),
(32, 42, 'thursday', '10:00', '22:00', 1, '2022-08-26 01:00:00', '2022-08-26 01:00:00'),
(33, 42, 'friday', '11:00', '12:00', 1, '2022-08-26 01:00:00', '2022-08-26 01:00:00'),
(34, 42, 'saturday', '12:00', '11:00', 1, '2022-08-26 01:00:00', '2022-08-26 01:00:00'),
(35, 42, 'sunday', '10:00', '22:00', 1, '2022-08-26 01:00:00', '2022-08-26 01:01:38'),
(50, 36, 'monday', '09:00', '22:00', 1, '2022-09-01 01:07:56', '2022-09-01 01:07:56'),
(51, 36, 'tuesday', '12:00', '00:00', 1, '2022-09-01 01:07:56', '2022-09-01 01:07:56'),
(52, 36, 'wednesday', '22:29', '23:37', 0, '2022-09-01 01:07:56', '2022-09-01 01:12:31'),
(53, 36, 'thursday', '14:42', '23:42', 1, '2022-09-01 01:07:56', '2022-09-01 01:12:32'),
(54, 36, 'friday', NULL, NULL, 0, '2022-09-01 01:07:56', '2022-09-01 01:07:56'),
(55, 36, 'saturday', '13:00', '00:40', 1, '2022-09-01 01:07:56', '2022-09-01 01:09:47'),
(56, 36, 'sunday', NULL, NULL, 0, '2022-09-01 01:07:56', '2022-09-01 01:07:56'),
(57, 45, 'monday', '13:00', '22:05', 1, '2022-09-01 01:26:00', '2022-10-27 13:36:06'),
(58, 45, 'tuesday', '10:00', '22:30', 1, '2022-09-01 01:26:00', '2022-09-01 01:38:37'),
(59, 45, 'wednesday', '10:00', '22:00', 1, '2022-09-01 01:26:00', '2022-09-01 01:37:22'),
(60, 45, 'thursday', '09:00', '18:06', 1, '2022-09-01 01:26:00', '2022-09-14 15:51:17'),
(61, 45, 'friday', '10:00', '00:04', 1, '2022-09-01 01:26:00', '2022-10-27 13:37:34'),
(62, 45, 'saturday', NULL, NULL, 0, '2022-09-01 01:26:00', '2022-09-01 01:26:00'),
(63, 45, 'sunday', NULL, NULL, 0, '2022-09-01 01:26:00', '2022-09-01 01:26:00'),
(64, 46, 'monday', '22:58', '17:58', 1, '2022-09-09 00:29:01', '2022-09-09 00:29:01'),
(65, 46, 'tuesday', NULL, NULL, 0, '2022-09-09 00:29:01', '2022-09-09 00:29:01'),
(66, 46, 'wednesday', NULL, NULL, 0, '2022-09-09 00:29:01', '2022-09-09 00:29:01'),
(67, 46, 'thursday', NULL, NULL, 0, '2022-09-09 00:29:01', '2022-09-09 00:29:01'),
(68, 46, 'friday', NULL, NULL, 0, '2022-09-09 00:29:01', '2022-09-09 00:29:01'),
(69, 46, 'saturday', NULL, NULL, 0, '2022-09-09 00:29:01', '2022-09-09 00:29:01'),
(70, 46, 'sunday', NULL, NULL, 0, '2022-09-09 00:29:01', '2022-09-09 00:29:01'),
(78, 50, 'monday', '09:00', '20:00', 1, '2022-09-14 15:58:11', '2022-09-14 15:58:11'),
(79, 50, 'tuesday', '09:00', '20:00', 1, '2022-09-14 15:58:11', '2022-09-14 15:58:11'),
(80, 50, 'wednesday', NULL, NULL, 0, '2022-09-14 15:58:11', '2022-09-14 15:58:11'),
(81, 50, 'thursday', NULL, NULL, 0, '2022-09-14 15:58:11', '2022-09-14 15:58:11'),
(82, 50, 'friday', NULL, NULL, 0, '2022-09-14 15:58:11', '2022-09-14 15:58:11'),
(83, 50, 'saturday', NULL, NULL, 0, '2022-09-14 15:58:11', '2022-09-14 15:58:11'),
(84, 50, 'sunday', NULL, NULL, 0, '2022-09-14 15:58:11', '2022-09-14 15:58:11'),
(85, 51, 'monday', '07:00', '09:00', 1, '2022-09-21 00:01:55', '2022-09-21 00:01:55'),
(86, 51, 'tuesday', '08:00', '09:00', 1, '2022-09-21 00:01:55', '2022-09-21 00:01:55'),
(87, 51, 'wednesday', '08:00', '09:00', 1, '2022-09-21 00:01:55', '2022-09-21 00:01:55'),
(88, 51, 'thursday', '05:08', '05:00', 1, '2022-09-21 00:01:55', '2022-09-21 00:01:55'),
(89, 51, 'friday', '12:00', '07:00', 1, '2022-09-21 00:01:55', '2022-09-21 00:01:55'),
(90, 51, 'saturday', '08:00', '08:00', 1, '2022-09-21 00:01:55', '2022-09-21 00:01:55'),
(91, 51, 'sunday', '07:00', '07:00', 1, '2022-09-21 00:01:55', '2022-09-21 00:01:55'),
(106, 54, 'monday', NULL, NULL, 0, '2022-10-13 16:00:42', '2022-10-13 16:00:42'),
(107, 54, 'tuesday', NULL, NULL, 0, '2022-10-13 16:00:42', '2022-10-13 16:00:42'),
(108, 54, 'wednesday', NULL, NULL, 0, '2022-10-13 16:00:42', '2022-10-13 16:00:42'),
(109, 54, 'thursday', NULL, NULL, 0, '2022-10-13 16:00:42', '2022-10-13 16:00:42'),
(110, 54, 'friday', NULL, NULL, 0, '2022-10-13 16:00:42', '2022-10-13 16:00:42'),
(111, 54, 'saturday', NULL, NULL, 0, '2022-10-13 16:00:42', '2022-10-13 16:00:42'),
(112, 54, 'sunday', NULL, NULL, 0, '2022-10-13 16:00:42', '2022-10-13 16:00:42'),
(113, 55, 'monday', '23:29', '22:28', 1, '2022-10-26 22:57:48', '2022-10-26 22:57:48'),
(114, 55, 'tuesday', '22:35', '00:37', 1, '2022-10-26 22:57:48', '2022-10-26 23:04:44'),
(115, 55, 'wednesday', NULL, NULL, 0, '2022-10-26 22:57:48', '2022-10-26 22:57:48'),
(116, 55, 'thursday', NULL, NULL, 0, '2022-10-26 22:57:48', '2022-10-26 22:57:48'),
(117, 55, 'friday', NULL, NULL, 0, '2022-10-26 22:57:48', '2022-10-26 22:57:48'),
(118, 55, 'saturday', NULL, NULL, 0, '2022-10-26 22:57:48', '2022-10-26 22:57:48'),
(119, 55, 'sunday', NULL, NULL, 0, '2022-10-26 22:57:48', '2022-10-26 22:57:48'),
(120, 56, 'monday', '01:53', '02:54', 1, '2022-10-26 23:18:59', '2022-10-26 23:18:59'),
(121, 56, 'tuesday', NULL, NULL, 0, '2022-10-26 23:18:59', '2022-10-26 23:18:59'),
(122, 56, 'wednesday', NULL, NULL, 0, '2022-10-26 23:18:59', '2022-10-26 23:18:59'),
(123, 56, 'thursday', NULL, NULL, 0, '2022-10-26 23:18:59', '2022-10-26 23:18:59'),
(124, 56, 'friday', NULL, NULL, 0, '2022-10-26 23:18:59', '2022-10-26 23:18:59'),
(125, 56, 'saturday', NULL, NULL, 0, '2022-10-26 23:18:59', '2022-10-26 23:18:59'),
(126, 56, 'sunday', NULL, NULL, 0, '2022-10-26 23:18:59', '2022-10-26 23:18:59'),
(127, 57, 'monday', '15:27', '16:28', 1, '2022-11-04 15:56:55', '2022-11-04 15:56:55'),
(128, 57, 'tuesday', '20:32', '18:30', 1, '2022-11-04 15:56:55', '2022-11-04 15:56:55'),
(129, 57, 'wednesday', '20:32', '18:30', 1, '2022-11-04 15:56:55', '2022-11-04 15:56:55'),
(130, 57, 'thursday', NULL, NULL, 0, '2022-11-04 15:56:55', '2022-11-04 15:56:55'),
(131, 57, 'friday', '10:26', '11:28', 1, '2022-11-04 15:56:55', '2022-11-04 15:56:55'),
(132, 57, 'saturday', '18:30', '19:31', 1, '2022-11-04 15:56:55', '2022-11-04 15:56:55'),
(133, 57, 'sunday', NULL, NULL, 0, '2022-11-04 15:56:55', '2022-11-04 15:56:55'),
(134, 58, 'monday', '10:00', '19:00', 1, '2022-11-04 16:18:34', '2022-11-04 16:18:34'),
(135, 58, 'tuesday', '10:00', '19:00', 1, '2022-11-04 16:18:34', '2022-11-04 16:18:34'),
(136, 58, 'wednesday', '10:00', '19:00', 1, '2022-11-04 16:18:34', '2022-11-04 16:18:34'),
(137, 58, 'thursday', '09:00', '20:00', 1, '2022-11-04 16:18:34', '2022-11-04 16:18:34'),
(138, 58, 'friday', '10:00', '19:00', 1, '2022-11-04 16:18:34', '2022-11-04 16:18:34'),
(139, 58, 'saturday', NULL, NULL, 0, '2022-11-04 16:18:34', '2022-11-04 16:18:34'),
(140, 58, 'sunday', '08:00', '20:00', 1, '2022-11-04 16:18:34', '2022-11-04 16:18:34'),
(141, 59, 'monday', '09:00', '21:00', 1, '2022-11-04 16:33:36', '2022-11-04 16:33:36'),
(142, 59, 'tuesday', '09:00', '20:00', 1, '2022-11-04 16:33:36', '2022-11-04 16:33:36'),
(143, 59, 'wednesday', '09:00', '21:00', 1, '2022-11-04 16:33:36', '2022-11-04 16:33:36'),
(144, 59, 'thursday', '09:00', '09:00', 1, '2022-11-04 16:33:36', '2022-11-04 16:33:36'),
(145, 59, 'friday', '09:00', '21:00', 1, '2022-11-04 16:33:36', '2022-11-04 16:33:36'),
(146, 59, 'saturday', NULL, NULL, 0, '2022-11-04 16:33:36', '2022-11-04 16:33:36'),
(147, 59, 'sunday', NULL, NULL, 0, '2022-11-04 16:33:36', '2022-11-04 16:33:36'),
(148, 60, 'monday', '15:00', '23:00', 1, '2022-11-04 16:42:27', '2022-11-04 16:42:27'),
(149, 60, 'tuesday', '14:00', '23:00', 1, '2022-11-04 16:42:27', '2022-11-04 16:42:27'),
(150, 60, 'wednesday', '15:00', '21:00', 1, '2022-11-04 16:42:27', '2022-11-04 16:42:27'),
(151, 60, 'thursday', '13:00', '22:00', 1, '2022-11-04 16:42:27', '2022-11-04 16:42:27'),
(152, 60, 'friday', '15:00', '22:00', 1, '2022-11-04 16:42:27', '2022-11-04 16:42:27'),
(153, 60, 'saturday', NULL, NULL, 0, '2022-11-04 16:42:27', '2022-11-04 16:42:27'),
(154, 60, 'sunday', NULL, NULL, 0, '2022-11-04 16:42:27', '2022-11-04 16:42:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourite`
--
ALTER TABLE `favourite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place_categories`
--
ALTER TABLE `place_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_availibility`
--
ALTER TABLE `user_availibility`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `favourite`
--
ALTER TABLE `favourite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(201) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `place_categories`
--
ALTER TABLE `place_categories`
  MODIFY `id` int(201) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `user_availibility`
--
ALTER TABLE `user_availibility`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
