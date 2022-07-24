-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2022 at 06:39 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_language_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_vi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_cn` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_fr` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_web` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_ids` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `slug`, `name`, `status`, `title`, `description`, `name_vi`, `name_en`, `name_cn`, `name_fr`, `icon_web`, `icon`, `brand_ids`, `banner`, `language`, `created_at`, `updated_at`) VALUES
(1, 'danh-muc-1', 'danh-muc-1', 1, 'Danh mục 1', 'Đây là danh mục số 1', NULL, NULL, NULL, NULL, '<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>', '<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>', 'danh-muc', 'danh-muc', '[{\'vi\':1},{\'ja\':1}]', '2002-07-22 10:00:00', '2002-07-22 10:00:00'),
(2, 'danh-muc-2', 'danh-muc-2', 1, 'Danh mục 2', 'Đây là danh mục số 2', NULL, NULL, NULL, NULL, '<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>', '<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>', 'danh-muc', 'danh-muc', '[{\'vi\':1},{\'ja\':1}]', '2002-07-22 10:00:00', '2002-07-22 10:00:00'),
(3, 'danh-muc-3', 'danh-muc-3', 1, 'Danh mục 3', 'Đây là danh mục số 2', NULL, NULL, NULL, NULL, '<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>', '<i class=\"fa fa-address-book-o\" aria-hidden=\"true\"></i>', 'danh-muc', 'danh-muc', '[{\'vi\':1},{\'ja\':1}]', '2002-07-22 10:00:00', '2002-07-22 10:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
