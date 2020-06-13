-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 01:58 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quickapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02086677ecfbfb2b895e690e2cea42430124f52a905d908c44f04d7c728c5cb76ba94e02119a20a2', 1, 1, 'Personal API Token', '[]', 0, '2020-06-13 05:28:41', '2020-06-13 05:28:41', '2021-06-13 11:28:41'),
('159ab3e1ad59f928397479d78567ad2d8388075b7d21ce72cc1d1bc3247b74dfa528a68734706cd6', 1, 1, 'Personal API Token', '[]', 0, '2020-06-13 04:53:17', '2020-06-13 04:53:17', '2021-06-13 10:53:17'),
('238fcbb1a503a51c5c6ac18e78f6632af0da1efaf831df43038c50ce856b840ce4fb4bbce8e653d9', 1, 1, 'Personal API Token', '[]', 0, '2020-06-13 05:23:27', '2020-06-13 05:23:27', '2021-06-13 11:23:27'),
('3a98ddd15abc116e64d936c459c7a45aa25aee849036fcbe774fcfe43b06fb645ebb66495721f9cc', 1, 1, 'Personal API Token', '[]', 0, '2020-06-13 04:55:47', '2020-06-13 04:55:47', '2021-06-13 10:55:47'),
('48076fa4c9c5896db3ab8d270d97178f825e9444f2d8ce14dc2689ee527a57d84d38e5322b1e0321', 1, 1, 'Personal API Token', '[]', 1, '2020-06-13 05:36:34', '2020-06-13 05:36:34', '2021-06-13 11:36:34'),
('7ece91d35c73ccebb3548aab5fac90d88c4b4fd1977dec3dc0ee86e6b4ae2bbb261a3ddb03c70f1a', 2, 1, 'Personal API Token', '[]', 0, '2020-06-13 05:50:59', '2020-06-13 05:50:59', '2021-06-13 11:50:59'),
('9eab86e5fed7e0f1e6dd687c7ce851d285a579657aa6cdce8bbe69972e8f1d2ec901e1e14fc2d86b', 1, 1, 'Personal API Token', '[]', 1, '2020-06-13 05:08:55', '2020-06-13 05:08:55', '2021-06-13 11:08:55'),
('a2e2ff4375334f138bfa60dd155788cbb2cf3263bc73fb08c094010ac692ff834d93f0fcf5a7001d', 2, 1, 'Personal API Token', '[]', 0, '2020-06-13 05:53:07', '2020-06-13 05:53:07', '2021-06-13 11:53:07'),
('a6614469771ed93d7afede7b537d96b842a1c26ed740eba4c5a5e4a28fd6c116ef150883b8c2b17b', 1, 1, 'Personal API Token', '[]', 1, '2020-06-13 05:31:50', '2020-06-13 05:31:50', '2021-06-13 11:31:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'm5V4WJGI8iajN9otEanvDsB6aRO74nJ8MER14mgf', 'http://localhost', 1, 0, 0, '2020-06-13 03:30:07', '2020-06-13 03:30:07'),
(2, NULL, 'Laravel Password Grant Client', '7oQamu8qggxuu9dDyEo4FcpktNXvOmZRmmAaaBZd', 'http://localhost', 0, 1, 0, '2020-06-13 03:30:07', '2020-06-13 03:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-06-13 03:30:07', '2020-06-13 03:30:07');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
(1, 'Md Azizul Hakim', 'ahslucky12@gmail.com', NULL, '$2y$10$2E1YJsduv7n4.1S13X47ZeRKHq4NiBMX8QXTJuiS5Mo5THz7c0CtW', NULL, '2020-06-13 04:53:17', '2020-06-13 04:53:17'),
(2, 'Vena Dicki', 'nitzsche.louisa@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1e3OadEJym', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(3, 'Sheila Lynch', 'arnulfo79@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6T5Wj648v9', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(4, 'Skylar Kunze II', 'xcrooks@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'B1mLGhgTZM', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(5, 'Leslie Barton', 'shields.ivah@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Lz2S5xXLHG', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(6, 'Valentina Mayer', 'antonio.crooks@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HaZB8ZsNgP', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(7, 'Dr. Roderick Erdman', 'walsh.adriel@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xTObGLIW0F', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(8, 'Gardner Koepp III', 'ubraun@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'lVJaNkuqRr', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(9, 'Zackery Denesik I', 'urban.runolfsson@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'k7v9ojjezB', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(10, 'Miss Chaya Koepp MD', 'lukas.bins@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GNoKmq279c', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(11, 'Clotilde Ortiz', 'jordon00@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bd1XPJSseJ', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(12, 'Nickolas Schneider', 'vreichert@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'QTzGszQdyD', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(13, 'Ms. Maximillia Grimes', 'dewitt17@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hmSauCWPAZ', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(14, 'Mr. Nikko Nikolaus', 'davion.littel@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sWoHUhh818', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(15, 'Nettie Upton II', 'xcasper@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ge0pN8oOeY', '2020-06-13 05:49:27', '2020-06-13 05:49:27'),
(16, 'Prof. Ara Stiedemann IV', 'treutel.newell@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'k3WhjC6SOn', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(17, 'Hermina Rodriguez', 'maci58@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yZl4Bd6Rar', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(18, 'Mrs. Carley Marquardt', 'wdickens@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'XlzUlFJaMI', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(19, 'Monroe Larson', 'graham.marcellus@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'arSp4yM4u5', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(20, 'Orpha Corwin V', 'lucious.renner@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6HzHetVFlU', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(21, 'Franco Gulgowski', 'eleazar24@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'vkuNrrtih5', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(22, 'Colt Stracke', 'dach.carolyne@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oohwSoSEcY', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(23, 'Brooks Quigley PhD', 'pgoyette@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'cTrauG3nAs', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(24, 'Bridget Johnston II', 'ulebsack@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rRxlNiRWnh', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(25, 'Ceasar Block', 'tracey.zulauf@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4ZBQvW7zNx', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(26, 'Michale Ledner II', 'antonio39@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0uTTS8kPlR', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(27, 'Rodger Miller MD', 'rosalyn77@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oI7ja48bvs', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(28, 'Miss Amber Mertz II', 'josue.reynolds@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'mXqvQ0PEcl', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(29, 'Kaleigh Lemke III', 'kautzer.breanne@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dOM1b2xC4x', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(30, 'Ms. Marie Kuhn II', 'zcarter@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'o58njSiaOO', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(31, 'Unique Bosco DVM', 'macy63@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zBA62nRyVj', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(32, 'Rachel Turner', 'cronin.meta@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'FtToy5IDah', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(33, 'Naomie Sporer', 'uheidenreich@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PEuMk7Iub0', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(34, 'Mr. Torrey Kuvalis V', 'jakayla02@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'y0Y8cZn350', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(35, 'Cathrine Nicolas', 'jrobel@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '1dZ0szvcy6', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(36, 'Alex Tremblay', 'werner.boyer@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YhsOcjzpSa', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(37, 'Assunta Swift', 'tanner38@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gxLuppIRGW', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(38, 'Nikko Pouros', 'ford33@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'HxZ9W6VOz9', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(39, 'Kamron Herzog III', 'zrippin@example.com', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'q5Ixdfj9BA', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(40, 'Melody Satterfield', 'fisher.alexandro@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IxHrTz0lpm', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(41, 'Minerva Bode', 'xcarter@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'aea8QkWccC', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(42, 'Reed Nicolas', 'kiel.pacocha@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ylb5S6wIJR', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(43, 'Lacy VonRueden IV', 'maegan16@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '4qCeDTfvYr', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(44, 'Heath Gleichner', 'braxton96@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'tL1NNeODeP', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(45, 'Alessandra Morissette DVM', 'lcarroll@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TOMyVq0yC2', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(46, 'Lilyan Padberg', 'reilly.doyle@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'J2VLxk3H3y', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(47, 'Arely Roob', 'mariano44@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'YAYNit3tFH', '2020-06-13 05:49:28', '2020-06-13 05:49:28'),
(48, 'Ollie Hegmann', 'effertz.everette@example.org', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sjkli9foyx', '2020-06-13 05:49:29', '2020-06-13 05:49:29'),
(49, 'Bella Dach', 'dariana.barrows@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'uojZ7ow7ZB', '2020-06-13 05:49:29', '2020-06-13 05:49:29'),
(50, 'Jade Zieme', 'delfina.conroy@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ie1YhFXyi8', '2020-06-13 05:49:29', '2020-06-13 05:49:29'),
(51, 'Nolan Muller', 'paula67@example.net', '2020-06-13 05:49:27', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2q2ScU4VUy', '2020-06-13 05:49:29', '2020-06-13 05:49:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
