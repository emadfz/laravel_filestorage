-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 12, 2017 at 12:20 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `file`
--

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `cloud_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `cloud_name`, `title`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '3526f561b59cac9a568780fefbab3ddc.pdf', 'Emad Zaki - PHP web Developer.pdf', '', '2017-05-12 04:05:41', '2017-05-12 04:05:41'),
(2, '3526f561b59cac9a568780fefbab3ddc.pdf', 'Emad Zaki - PHP web Developer.pdf', '', '2017-05-12 04:06:03', '2017-05-12 04:06:03'),
(3, 'a0dfb7f5b41e5b84fd8a27a3423d79ff.png', 'Salon Venedik   Düğün.com   YouTube.png', '1', '2017-05-12 04:07:21', '2017-05-12 04:07:21'),
(4, '7e0080a1e3c9b2df676e3df5ba20c0a2.jpeg', 'coster_care.jpg', '', '2017-05-12 04:18:29', '2017-05-12 04:18:29'),
(5, '815096b227fc28a96fb5e835b90a669c.jpeg', 'AAEAAQAAAAAAAAyCAAAAJDJhNjRmMGRiLWMwZDUtNDJiZC05MjA2LTIwNTE5OWE2YzAzNw.jpg', '', '2017-05-12 04:39:34', '2017-05-12 04:39:34'),
(6, '5db99bd6120a0c98dcc20d40655548aa.pdf', 'Emad Zaki - Software engineer.pdf', '3', '2017-05-12 04:40:58', '2017-05-12 04:40:58');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parent_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`id`, `name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'folder1', NULL, '2017-05-11 10:08:50', '2017-05-11 10:08:50'),
(2, 'folder2', '1', '2017-05-11 10:09:10', '2017-05-11 10:09:10'),
(3, 'folder3', NULL, '2017-05-11 10:09:21', '2017-05-11 10:09:21'),
(4, 'folder4', NULL, '2017-05-11 10:09:31', '2017-05-11 10:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_11_092346_folders', 2),
(4, '2017_05_12_091313_files', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Conrad Considine', 'dhoppe@example.org', '$2y$10$q8t7cosqj7c/EMlfOfyK4..e1RRn/R8lf1AzmAkIOY1S3VFcyZZJy', '45e1QzTluu', '2017-05-10 03:50:16', '2017-05-10 03:50:16'),
(2, 'Mr. Geoffrey Tromp', 'margie66@example.com', '$2y$10$q8t7cosqj7c/EMlfOfyK4..e1RRn/R8lf1AzmAkIOY1S3VFcyZZJy', 'Ub1h6h7vEo', '2017-05-10 03:50:16', '2017-05-10 03:50:16'),
(3, 'Mr. Kelvin Mayer PhD', 'dallas.hyatt@example.net', '$2y$10$q8t7cosqj7c/EMlfOfyK4..e1RRn/R8lf1AzmAkIOY1S3VFcyZZJy', 'cmeJwJGzvm', '2017-05-10 03:50:16', '2017-05-10 03:50:16'),
(4, 'Miss Michaela Bednar', 'uriel.marquardt@example.net', '$2y$10$q8t7cosqj7c/EMlfOfyK4..e1RRn/R8lf1AzmAkIOY1S3VFcyZZJy', 'aH6gHzmuKm', '2017-05-10 03:50:17', '2017-05-10 03:50:17'),
(5, 'Mrs. Alivia Reynolds', 'jhudson@example.net', '$2y$10$q8t7cosqj7c/EMlfOfyK4..e1RRn/R8lf1AzmAkIOY1S3VFcyZZJy', 'fETTVScqq6', '2017-05-10 03:50:17', '2017-05-10 03:50:17'),
(14, 'Emad  Zaki', 'emad.f.z@gmail.com', '$2y$10$HhiKDMycWApZG2xTW1A4r.pu0KNZ3p7AZEu0DB8bfB2Q2x6QdGVE2', NULL, '2017-05-11 00:22:46', '2017-05-11 00:22:46'),
(15, 'Dr. Valentin Steuber', 'pauline51@example.com', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'GdaZzJPK2k', '2017-05-11 04:33:21', '2017-05-11 04:33:21'),
(16, 'Dr. Dallas Schuster', 'ganderson@example.net', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', '3lWkm25pvH', '2017-05-11 04:33:21', '2017-05-11 04:33:21'),
(17, 'Prof. Kassandra Shanahan', 'uwaters@example.net', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'bzUe2Kjkst', '2017-05-11 04:33:21', '2017-05-11 04:33:21'),
(18, 'Gino Jaskolski', 'dagmar34@example.com', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'npRQ7wU7K6', '2017-05-11 04:33:22', '2017-05-11 04:33:22'),
(19, 'Jasmin Kozey', 'ocrist@example.org', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'T9wjxzsJ6e', '2017-05-11 04:33:22', '2017-05-11 04:33:22'),
(20, 'Marley Quitzon', 'pollich.dave@example.org', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'lSo8DdMTb2', '2017-05-11 04:33:22', '2017-05-11 04:33:22'),
(21, 'Darian Mante', 'vtowne@example.com', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', '4HcJ5d7mlw', '2017-05-11 04:33:22', '2017-05-11 04:33:22'),
(22, 'Cortney Eichmann', 'dickinson.sonia@example.net', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'jv0LQasmPN', '2017-05-11 04:33:22', '2017-05-11 04:33:22'),
(23, 'Prof. Carson Ratke', 'bashirian.novella@example.net', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'UhRF47BAYW', '2017-05-11 04:33:22', '2017-05-11 04:33:22'),
(24, 'Sheridan Connelly', 'ecrona@example.net', '$2y$10$.VzUtvioxxu2zaoMkSHH6O87qH/QMF/MGYZy2VwKg/B5j.VSwM2Ay', 'YLcqToJfYZ', '2017-05-11 04:33:22', '2017-05-11 04:33:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

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
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
