-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2025 at 01:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Bks2DPttbtqbqFUbMaDYBDDxaw87BjrsMZyktHmI', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOFZFaGpkbWNWRnJtTnRndHVhOVZsUFRlSjFjREhhWXNuVUkyRk9odCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHA6Ly9iZWxhamFyLWxhcmF2ZWwudGVzdDo4MDgwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1744383563),
('VAcL5NVsNFPzBKbTjaookBBvfFDeDH9A03DyoRh6', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36 Edg/135.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMFNtRU1WdDJvOXR5MkN2UkZ1ZmlZYkFKbjFObGtZWHVheEpEWnlKQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1744383534);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test User', 'test@example.com', '2025-04-10 05:32:24', '$2y$12$4LTwU1AVBSMxK6DNx0IfxelR4edXXHbfyq/HL9R0p969hthQgpnH2', 'xKuWSpByLI', '2025-04-10 05:32:25', '2025-04-10 05:32:25'),
(2, 'Ms. Anabel O\'Kon II', 'morris70@example.org', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'xc65beqtPA', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(3, 'Anderson Wehner', 'kole65@example.org', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'AuJ7ZuUxgN', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(4, 'Phyllis Schulist', 'kasey.orn@example.com', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'x7JoBFpA0U', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(5, 'Jettie Emard', 'easton69@example.net', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'etm9OLjlf4', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(6, 'Kip Funk', 'welch.nickolas@example.org', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'BKL2trf2CB', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(7, 'Maia Heidenreich', 'kjones@example.net', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'wRkPIYt3ku', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(8, 'Dr. Karl Larkin DDS', 'jean.gerhold@example.org', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'GakS7EQvFb', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(9, 'Miss Lucile Quigley', 'adolphus.huels@example.com', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'jMZJuBtmXi', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(10, 'Breanne Schaden', 'lsanford@example.net', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'gRL8j9vm8l', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(11, 'Joshuah Rogahn', 'obrown@example.org', '2025-04-10 05:37:29', '$2y$12$q4KCzjuqWVqlCo9CqGW1WO/smrqO8fFF0o4CTSx3D2rQM3/FEnzSW', 'ajawxvOzfl', '2025-04-10 05:37:29', '2025-04-10 05:37:29'),
(12, 'Zulfa Prastuti', 'cici.damanik@example.net', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', 'YwnlKgm33C', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(13, 'Mujur Pratama', 'nugroho.wira@example.org', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', 'aoaCq6NYG7', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(14, 'Chelsea Ifa Andriani M.Farm', 'utama.vino@example.org', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', 'Gxry5Qwy3q', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(15, 'Niyaga Rajasa', 'hardi.tarihoran@example.org', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', 'lpedqjNjrK', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(16, 'Yahya Sitompul', 'raina72@example.com', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', 'ZZQkmrJu7b', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(17, 'Raditya Prayoga', 'rika88@example.com', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', '3A9cemaqsL', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(18, 'Rahman Wasita', 'vhartati@example.net', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', '14LsRp66Co', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(19, 'Titi Safitri', 'nurdiyanti.raina@example.net', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', '8CvmRsCtto', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(20, 'Mitra Pangestu', 'calista33@example.com', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', 'pqBLF6DwWx', '2025-04-10 05:39:37', '2025-04-10 05:39:37'),
(21, 'Aslijan Prakasa', 'laras82@example.net', '2025-04-10 05:39:37', '$2y$12$QFeOrN.pnXooa/s0UNi0j.LnyKqxdw9Pp3Iv6Eg/8UqRdAL7fZSh6', 'bOR8ufvZl1', '2025-04-10 05:39:37', '2025-04-10 05:39:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
