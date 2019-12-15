-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 15, 2019 at 07:07 PM
-- Server version: 5.7.28-0ubuntu0.16.04.2
-- PHP Version: 7.2.23-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_specifications`
--

CREATE TABLE `add_specifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `specification_id` int(11) NOT NULL DEFAULT '0',
  `parent_specification_id` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_specifications`
--

INSERT INTO `add_specifications` (`id`, `product_id`, `specification_id`, `parent_specification_id`, `value`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 2, 1, 'Apple', '2019-12-11 11:01:26', '2019-12-11 11:01:26', NULL),
(2, 1, 6, 1, 'Apple iPhone 11 Pro', '2019-12-11 11:01:26', '2019-12-11 11:01:26', NULL),
(3, 1, 7, 3, '5.8', '2019-12-11 11:01:26', '2019-12-15 04:59:02', NULL),
(4, 1, 8, 3, '1125 X 2436', '2019-12-11 11:01:26', '2019-12-15 04:59:02', NULL),
(5, 1, 9, 4, '12 + 12 + 12', '2019-12-11 11:01:26', '2019-12-15 04:59:02', NULL),
(6, 1, 10, 4, '12', '2019-12-11 11:01:26', '2019-12-15 04:59:02', NULL),
(7, 1, 11, 5, '3190', '2019-12-11 11:01:26', '2019-12-15 04:59:02', NULL),
(15, 2, 2, 1, 'Huawei', '2019-12-11 11:03:38', '2019-12-11 11:03:38', NULL),
(16, 2, 6, 1, 'Huawei P30 Pro', '2019-12-11 11:03:38', '2019-12-11 11:03:38', NULL),
(17, 2, 7, 3, '6.47', '2019-12-11 11:03:38', '2019-12-15 04:56:04', NULL),
(18, 2, 8, 3, '1080 X 2340', '2019-12-11 11:03:38', '2019-12-15 04:56:04', NULL),
(19, 2, 9, 4, '40 + 20 + 8 + TOF', '2019-12-11 11:03:38', '2019-12-15 04:56:04', NULL),
(20, 2, 10, 4, '32', '2019-12-11 11:03:38', '2019-12-15 04:56:04', NULL),
(21, 2, 11, 5, '4200', '2019-12-11 11:03:38', '2019-12-15 04:56:04', NULL),
(22, 3, 2, 1, 'Samsung', '2019-12-11 11:07:51', '2019-12-11 11:07:51', NULL),
(23, 3, 6, 1, 'Samsung Galaxy Note10 Plus', '2019-12-11 11:07:51', '2019-12-11 11:07:51', NULL),
(24, 3, 7, 3, '6.8', '2019-12-11 11:07:51', '2019-12-15 05:00:04', NULL),
(25, 3, 8, 3, '1440 X 3040', '2019-12-11 11:07:51', '2019-12-15 05:00:04', NULL),
(26, 3, 9, 4, '12 + 16 + 12 + TOF', '2019-12-11 11:07:51', '2019-12-15 05:00:04', NULL),
(27, 3, 10, 4, '10', '2019-12-11 11:07:51', '2019-12-15 05:00:04', NULL),
(28, 3, 11, 5, '4300', '2019-12-11 11:07:51', '2019-12-15 05:00:04', NULL),
(29, 4, 2, 1, 'Huawei', '2019-12-14 08:09:13', '2019-12-14 08:09:13', NULL),
(30, 4, 6, 1, 'Huawei P30 Pro', '2019-12-14 08:09:13', '2019-12-14 08:09:13', NULL),
(31, 4, 7, 3, '6.47', '2019-12-14 08:09:13', '2019-12-15 05:01:04', NULL),
(32, 4, 8, 3, '1080 X 2340', '2019-12-14 08:09:13', '2019-12-15 05:01:04', NULL),
(33, 4, 9, 4, '40 + 20 + 8 + TOF', '2019-12-14 08:09:13', '2019-12-15 05:01:04', NULL),
(34, 4, 10, 4, '32', '2019-12-14 08:09:13', '2019-12-15 05:01:04', NULL),
(35, 4, 11, 5, '4200', '2019-12-14 08:09:13', '2019-12-15 05:01:04', NULL),
(36, 5, 2, 1, 'Samsung', '2019-12-14 08:13:29', '2019-12-14 08:13:29', NULL),
(37, 5, 6, 1, 'Samsung Galaxy S10 Plus', '2019-12-14 08:13:29', '2019-12-14 08:13:29', NULL),
(38, 5, 7, 3, '6.4', '2019-12-14 08:13:29', '2019-12-15 05:01:43', NULL),
(39, 5, 8, 3, '1440 X 3040', '2019-12-14 08:13:29', '2019-12-15 05:01:43', NULL),
(40, 5, 9, 4, '12 + 12 + 16', '2019-12-14 08:13:29', '2019-12-15 05:01:43', NULL),
(41, 5, 9, 4, '10 + 8', '2019-12-14 08:13:29', '2019-12-15 05:01:43', NULL),
(42, 5, 11, 5, '4100', '2019-12-14 08:13:29', '2019-12-15 05:01:43', NULL),
(43, 6, 2, 1, 'OnePlus', '2019-12-14 08:17:31', '2019-12-14 08:17:31', NULL),
(44, 6, 6, 1, 'OnePlus 7T Pro', '2019-12-14 08:17:31', '2019-12-14 08:17:31', NULL),
(45, 6, 7, 3, '6.67', '2019-12-14 08:17:31', '2019-12-15 05:02:39', NULL),
(46, 6, 8, 3, '1440 x 3120', '2019-12-14 08:17:31', '2019-12-15 05:02:39', NULL),
(47, 6, 9, 4, '48 + 16 + 8', '2019-12-14 08:17:31', '2019-12-15 05:02:39', NULL),
(48, 6, 10, 4, '720p@960fps, Auto HDR, gyro-EIS', '2019-12-14 08:17:31', '2019-12-15 05:02:39', NULL),
(49, 6, 11, 5, '4085', '2019-12-14 08:17:31', '2019-12-15 05:02:39', NULL),
(50, 7, 2, 1, 'OnePlus', '2019-12-14 08:19:46', '2019-12-14 08:19:46', NULL),
(51, 7, 6, 1, 'OnePlus 7T', '2019-12-14 08:19:46', '2019-12-14 08:19:46', NULL),
(52, 7, 7, 3, '6.55', '2019-12-14 08:19:46', '2019-12-15 05:05:07', NULL),
(53, 7, 8, 3, '1080 x 2400', '2019-12-14 08:19:46', '2019-12-15 05:05:07', NULL),
(54, 7, 9, 4, '48 + 12 + 16', '2019-12-14 08:19:46', '2019-12-15 05:05:07', NULL),
(55, 7, 10, 4, '2160p@30/60fps, 1080p@30/60/240fps, 24-bit/192kHz stereo sound rec., HDR10 video, gyro-EIS', '2019-12-14 08:19:46', '2019-12-15 05:05:07', NULL),
(56, 7, 11, 5, '3800', '2019-12-14 08:19:46', '2019-12-15 05:05:07', NULL),
(57, 8, 2, 1, 'Asus', '2019-12-14 08:24:08', '2019-12-14 08:24:08', NULL),
(58, 8, 6, 1, 'Asus ROG Phone II', '2019-12-14 08:24:08', '2019-12-14 08:24:08', NULL),
(59, 8, 7, 3, '6.59', '2019-12-14 08:24:08', '2019-12-15 05:05:59', NULL),
(60, 8, 8, 3, '1080 x 2340', '2019-12-14 08:24:08', '2019-12-15 05:05:59', NULL),
(61, 8, 9, 4, '48 + 13', '2019-12-14 08:24:08', '2019-12-15 05:05:59', NULL),
(62, 8, 10, 4, '2160p@30/60fps, 1080p@30/60/240fps, 720p@480fps; gyro-EIS (except @240/480fps)', '2019-12-14 08:24:08', '2019-12-15 05:05:59', NULL),
(63, 8, 11, 5, '6000', '2019-12-14 08:24:08', '2019-12-15 05:05:59', NULL),
(64, 9, 2, 1, 'Realme', '2019-12-14 08:26:27', '2019-12-14 08:26:27', NULL),
(65, 9, 6, 1, 'Realme X2 Pro', '2019-12-14 08:26:27', '2019-12-14 08:26:27', NULL),
(66, 9, 7, 3, '6.5', '2019-12-14 08:26:27', '2019-12-15 05:06:41', NULL),
(67, 9, 8, 3, '1080 x 2400', '2019-12-14 08:26:27', '2019-12-15 05:06:41', NULL),
(68, 9, 9, 4, '64 + 13 + 8 + 2', '2019-12-14 08:26:27', '2019-12-15 05:06:41', NULL),
(69, 9, 10, 4, '2160p@30/60fps, 1080p@30/60/120fps, 720p@960fps, gyro-EIS', '2019-12-14 08:26:27', '2019-12-15 05:06:41', NULL),
(70, 9, 11, 5, '4000', '2019-12-14 08:26:27', '2019-12-15 05:06:41', NULL),
(71, 10, 2, 1, 'Oppo', '2019-12-14 08:28:56', '2019-12-14 08:28:56', NULL),
(72, 10, 6, 1, 'Oppo Reno 10x zoom', '2019-12-14 08:28:56', '2019-12-14 08:28:56', NULL),
(73, 10, 7, 3, '6.6', '2019-12-14 08:28:56', '2019-12-15 05:07:41', NULL),
(74, 10, 8, 3, '1080 X 2340', '2019-12-14 08:28:56', '2019-12-15 05:07:41', NULL),
(75, 10, 9, 4, '48 + 13 + 8', '2019-12-14 08:28:56', '2019-12-15 05:07:41', NULL),
(76, 10, 10, 4, '2160p@30fps', '2019-12-14 08:28:56', '2019-12-15 05:07:41', NULL),
(77, 10, 11, 5, '4065', '2019-12-14 08:28:56', '2019-12-15 05:07:41', NULL),
(78, 1, 15, 14, 'Test', '2019-12-15 05:10:21', '2019-12-15 07:26:12', '2019-12-15 07:26:12'),
(79, 2, 15, 14, 'This is test specs', '2019-12-15 07:26:50', '2019-12-15 07:26:50', NULL),
(80, 2, 2, 1, 'dasdasdas', '2019-12-15 07:35:35', '2019-12-15 07:35:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, '2019-06-29 00:38:41'),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-user', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 0, 8, 'Helpers', 'fa-gears', '', NULL, NULL),
(9, 8, 9, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', NULL, NULL),
(10, 8, 10, 'Database terminal', 'fa-database', 'helpers/terminal/database', NULL, NULL),
(11, 8, 11, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', NULL, NULL),
(12, 0, 12, 'Master', 'fa-bars', 'master', '2019-06-22 08:36:41', '2019-06-22 22:36:25'),
(13, 15, 18, 'Article', 'fa-american-sign-language-interpreting', 'articles', '2019-06-22 08:37:19', '2019-06-22 22:36:25'),
(14, 12, 15, 'Category', 'fa-american-sign-language-interpreting', 'category', '2019-06-22 22:23:33', '2019-06-29 00:38:29'),
(15, 0, 17, 'Content', 'fa-align-justify', 'content', '2019-06-22 22:24:33', '2019-06-22 22:36:25'),
(16, 12, 14, 'Content Type', 'fa-american-sign-language-interpreting', 'contenttype', '2019-06-22 22:25:48', '2019-06-29 00:38:29'),
(17, 12, 13, 'Authors', 'fa-american-sign-language-interpreting', 'authors', '2019-06-22 22:27:29', '2019-06-29 00:38:29'),
(19, 0, 19, 'Frontend', 'fa-align-justify', 'frontend', '2019-06-22 22:30:03', '2019-06-22 22:36:25'),
(20, 19, 23, 'Front Menu', 'fa-american-sign-language-interpreting', 'front-menu', '2019-06-22 22:30:32', '2019-06-23 00:06:34'),
(21, 19, 22, 'firstmodule', 'fa-american-sign-language-interpreting', 'firstmodule', '2019-06-22 22:32:00', '2019-06-22 22:36:25'),
(22, 19, 21, 'secondmodule', 'fa-american-sign-language-interpreting', 'secondmodule', '2019-06-22 22:32:58', '2019-06-22 22:36:25'),
(23, 19, 20, 'thirdmodule', 'fa-american-sign-language-interpreting', 'thirdmodule', '2019-06-22 22:33:54', '2019-06-22 22:36:25'),
(25, 12, 16, 'Languages', 'fa-american-sign-language-interpreting', 'languages', '2019-06-22 23:41:08', '2019-06-29 00:38:29'),
(26, 15, 0, 'TopTen', 'fa-american-sign-language-interpreting', 'toptens', '2019-11-17 05:35:10', '2019-12-10 02:00:46'),
(27, 12, 0, 'Specifications', 'fa-american-sign-language-interpreting', 'specifications', '2019-12-07 05:10:52', '2019-12-07 05:20:51'),
(28, 15, 0, 'Specifications', 'fa-american-sign-language-interpreting', 'specifications', '2019-12-07 05:22:24', '2019-12-08 09:19:27'),
(29, 15, 0, 'Products', 'fa-american-sign-language-interpreting', 'products', '2019-12-08 07:32:29', '2019-12-08 07:33:14'),
(30, 15, 0, 'Topten Compare', 'fa-american-sign-language-interpreting', 'compares', '2019-12-10 07:18:45', '2019-12-10 07:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Add', 'can-add', '2019-06-22 08:34:46', '2019-06-22 08:34:46'),
(2, 'Edit', 'can-edit', '2019-06-22 08:34:57', '2019-06-22 08:34:57'),
(3, 'Delete', 'can-delete', '2019-06-22 08:35:09', '2019-06-22 08:35:09'),
(4, 'Update', 'can-update', '2019-06-22 08:35:24', '2019-06-22 08:35:24');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2019-06-22 07:42:23', '2019-06-22 07:42:23'),
(2, 'Authors', 'authors', '2019-06-22 08:35:58', '2019-06-22 08:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 12, NULL, NULL),
(2, 12, NULL, NULL),
(1, 13, NULL, NULL),
(2, 13, NULL, NULL),
(1, 14, NULL, NULL),
(2, 14, NULL, NULL),
(1, 15, NULL, NULL),
(2, 15, NULL, NULL),
(1, 16, NULL, NULL),
(2, 16, NULL, NULL),
(1, 17, NULL, NULL),
(2, 17, NULL, NULL),
(1, 18, NULL, NULL),
(2, 18, NULL, NULL),
(1, 19, NULL, NULL),
(2, 19, NULL, NULL),
(1, 20, NULL, NULL),
(2, 20, NULL, NULL),
(1, 21, NULL, NULL),
(2, 21, NULL, NULL),
(1, 22, NULL, NULL),
(2, 22, NULL, NULL),
(1, 23, NULL, NULL),
(2, 23, NULL, NULL),
(1, 24, NULL, NULL),
(2, 24, NULL, NULL),
(1, 25, NULL, NULL),
(2, 25, NULL, NULL),
(1, 26, NULL, NULL),
(1, 27, NULL, NULL),
(2, 27, NULL, NULL),
(1, 28, '2019-12-02 12:04:53', '2019-12-02 12:04:53'),
(2, 28, '2019-12-02 12:04:53', '2019-12-02 12:04:53');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$DsPdA37R93kMBmhe81nA/u1qWTqc3coMA6xaxPITM4TLsahbXTiFi', 'Administrator', NULL, 't9tFgnT1ygpqidmv9DdpOe4IAAj7VWg5lS1gu22ESRnCvxsFlNVhMPP8eOQp', '2019-06-22 07:42:22', '2019-06-22 07:42:22'),
(2, 'Luckas Editor', '$2y$10$JO2tEDOtJJhew7fAYFv6G.QCtj/lP33BfI6/URe3A/3RJTq7LcixS', 'Luckas Chauhan', 'image/admin.png', 'pIouaYqY2S1Wb0rZdxIVEDcJjTguu4xxXvkUyTNdKnewnqg1G1pSUHZLwrxp', '2019-06-22 08:38:39', '2019-12-08 08:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `recent` tinyint(1) NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `popular` tinyint(1) NOT NULL DEFAULT '0',
  `how` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `alias`, `description`, `author_id`, `image`, `content_id`, `category_id`, `language_id`, `status`, `recent`, `trending`, `popular`, `how`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'जानें Jio में मोबाइल नंबर पोर्ट करने का आसान तरीका', 'how-to-port-jio-mobile-number', '<p dir="ltr">इन आसान स्टेप्स के ज़रिए आप किसी भी प्रीपेड या पोस्टपेड नंबर को जियो में पोर्ट कर सकते हैं। किसी अन्य कम्पनी में पोर्ट करने के लिए भी लगभग समान स्टेप्स फॉलो करने होंगे।</p>\r\n\r\n<p dir="ltr">टेलिकॉम ऑपरेटर जहां एक ओर बढ़िया रिचार्ज प्लान्स, डाटा पैक्स ऑफर कर रहे हैं और अपने यूज़र बेस को बनाए रखने के लिए सभी टेलिकॉम कम्पनियों में एक युद्ध चल रहा है। ज़ाहिर है इसका फायदा सब्सक्राइबर्स को होता है क्योंकि कम दाम में अधिक इन्टरनेट, कॉल्स और यहां तक कि कम्पनियों के डिजिटल एप्प्स जैसे, वोडाफोन प्ले, जियो एप्प्स और माय एयरटेल एप्प्स आदि का फ्री एक्सेस भी मिल जाता है और कई कम्पनियां Amazon Prime का फ्री एक्सेस भी देती हैं। इस बीच कई यूज़र्स जियो में पोर्ट तो कई अन्य कम्पनियों में भी पोर्ट कर रहे हैं।</p>\r\n\r\n<p dir="ltr">क्योंकि अगर नेटवर्क ही न हो तो इतने फ्री डाटा का भी यूज़र्स क्या करें? कम्पनियां जहां एक ओर डाटा बेनेफिट्स और रिचार्ज पैक्स पर काम कर रही हैं, वहीं यूज़र्स को अक्सर नेटवर्क से जुड़ी समस्याओं का भी सामना करना पड़ रहा है। नेटवर्क से परेशान होकर यूज़र्स को एक कम्पनी से दूसरी कम्पनी में पोर्ट करना ही पड़ता है। नंबर को पोर्ट करना मुश्किल नहीं है लेकिन कई बार हमें सही तरीका नहीं पता होता है और हम परेशान होते रहते हैं। आज मैं इस आर्टिकल में एक आसान तरीका बता रही हूँ जिससे आप अपने किसी भी प्रीपेड या पोस्टपेड नंबर को जियो Jio me Port कर सकते हैं। किसी अन्य कम्पनी में नंबर पोर्ट करने तरीका भी लगभग समान ही होता है।</p>\r\n\r\n<p dir="ltr">ऐसे करें किसी मोबाइल नंबर को Jio में पोर्ट (How to Port Your Number To Reliance Jio)</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अपने फोन के मैसेज बॉक्स में जाएं और यहां न्यू मैसेज टाइप करने के लिए टैप करें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">यहां PORT टाइप करें और इसके बाद स्पेस देकर अपना मोबाइल नंबर लिखें, उदाहरण के लिए- PORT 987654321</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इस मैसेज को 1900 पर भेज दें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">यह मैसेज भेजने के बाद आपको एक युनीक पोर्टिंग कॉड प्राप्त होगा जिसे UPC भी कहा जाता है और इस कोड के साथ ही इसकी एक्सपायरी डेट भी लिखी होगी। (UPC 15 दिनों तक मान्य रहता है)</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इस कोड को आप लेकर जियो (Jio) स्टोर या रिलायंस डिजिटल स्टोर पर जा सकते हैं। नंबर पोर्ट करने के लिए आपको अपना एड्रेस प्रुफ, आईडी प्रुफ और जियो कनेक्शन के डिजिटल KYC प्रोसेस के लिए अपना आधार कार्ड साथ ले जाना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अगर आप पोस्टपेड नंबर को पोर्ट करवा रहे हैं तो पिछले सारे बिल्स जमा करने होंगे और नंबर पोर्ट होने में 7 दिन का समय लगेगा।</p>\r\n	</li>\r\n</ul>', '1', 'image/beef6395980932a46e1c6c03fab677db.jpeg', 3, 10, 2, 1, 0, 0, 0, 0, 0, '2019-05-25 06:20:09', '2019-11-15 21:54:10', NULL),
(2, 'पुराना मोबाइल नंबर हो गया है बंद तो ऐसे नया नंबर करें आधार से लिंक', 'how-to-link-new-number-with-adhaar-card', '<p dir="ltr">आधार कार्ड आज के समय में कई कामों के लिए अनिवार्य हो चुका है और देश में कई सरकारी स्कीम और कामों के लिए 12 अंकों वाली युनीक आईडी का उपयोग ज़रूरी होगा। आपको बता दें, कि UIDAI वेबसाइट के साथ आपका मोबाइल नंबर रजिस्टर्ड होना ज़रूरी है, जिससे आपके कई काम आसान हो जाते हैं चाहे वो बैंक से सम्बंधित हो या कई अन्य।</p>\r\n\r\n<p dir="ltr">आपको बता दें अगर आपका आधार से लिंक पुराना नंबर बंद हो गया हो या बदल गया हो या किसी भी कारण आप इस नंबर को एक्सेस नहीं कर पा रहे हैं तो आप इसे दुसरे नंबर से बदल सकते हैं। इसके लिए आपको एनरोलमेंट सेंटर पर जाकर रजिस्ट्रेशन करना होगा।</p>\r\n\r\n<p dir="ltr">हम आपको कुछ आसान स्टेप्स बता रहे हैं जिसके ज़रिए आप अपना नया मोबाइल नंबर aadhaar से लिंक कर सकते हैं।</p>\r\n\r\n<p dir="ltr">आधार कार्ड के साथ नया मोबाइल नंबर ऐसे करें अपडेट</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अपने करीबी आधार एनरोलमेंट सेंटर पर जाएं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">यहां आपको आधार करेक्शन फॉर्म भरना होगा जिसमें आपको सही मोबाइल नंबर और जानकारी भरनी होगी।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फॉर्म भर कर इसे आधार सेंटर पर जमा करा दें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फॉर्म जमा करने के बाद आपको एक एक्नोलेजमेंट स्लिप दी जाएगी जिसमें अपडेट रिक्वेस्ट नंबर लिखा होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इस रिक्वेस्ट नंबर के ज़रिए आप जान सकते हैं कि नंबर आधार कार्ड से लिंक हुआ है या नहीं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">तीन महीने के अन्दर आपका आधार नए फोन नंबर से लिंक कर दिया जाएगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">आधार से नया नंबर लिंक होने के बाद आपको एक OTP प्राप्त होगा जिसके ज़रिए आप ऑनलाइन अपना आधार कार्ड डाउनलोड कर सकते हैं।</p>\r\n	</li>\r\n</ul>', '1', 'image/fd6146521bd1c60b36d734ba7cb9801b.jpeg', 3, 10, 2, 1, 0, 1, 0, 0, 0, '2019-05-25 06:47:20', '2019-11-15 21:54:11', NULL),
(3, 'अपने डेस्कटॉप के माध्यम से कैसे अपलोड करें Instagram पर फोटो', 'how-to-upload-photo-on-Instagram-using-desktop', '<p dir="ltr">:हम जानते हैं कि हम अपने डेस्कटॉप के माध्यम से इनस्टाग्राम पर फोटो आदि नहीं अपलोड कर सकते हैं। असल में ऐसा भी कहा जा सकता है कि विंडोज 10 या इनस्टाग्राम की वेबसाइट से जाकर आप इनस्टाग्राम पर डेस्कटॉप से कोई भी गतिविधि को अंजाम नहीं दे सकते हैं। इसके अलावा आपको बता देते हैं कि MacOS के लिए तो कोई इनस्टा ऐप भी नहीं है।</p>\r\n\r\n<p dir="ltr">हालाँकि यह कहीं न कहीं गलत भी कहा जा सकता है, क्योंकि मान लीजिये कि अगर आप अपने स्मार्टफोन से कोई फोटो न लेकर किसी DSLR से कोई दमदार तस्वीर लेते हैं और उसे इनस्टा पर अपलोड करना चाहते हैं तो आपको इसमें कई तरह के बदलाव करने होते हैं। इसके अलावा आपको डेस्कटॉप पर मौजूद सॉफ्टवेयर के माध्यम से किसी भी फोटो या विडियो में कई बदलाव करने होते हैं, ऐसा भी कह सकते हैं कि आपको कई एडिट करने होते हैं। अब अगर आप इस फोटो को एक बार फिर से अपने फोन पर सेंड करते हैं और इसके बाद इनस्टा पर अपलोड करते हैं तो आपको काफी समस्या आती है।</p>\r\n\r\n<p dir="ltr">हालाँकि आपको घबराने की जरूरत नहीं है, कई ऐसे भी तरीके हैं जिनके माध्यम से आप अपने डेस्कटॉप के माध्यम से ही इनस्टा पर कोई भी फोटो या विडियो अपलोड कर सकते हैं। आज हम आपको ऐसे ही कई तरीकों के बारे में बताने वाले हैं। अगर आप अपने डेस्कटॉप पर ऐसा करना चाहते हैं तो आपको इसके लिए अपने सिस्टम में Bluestacks App Player की जरूरत होने वाली है।</p>\r\n\r\n<p dir="ltr">Bluestacks App Player के द्वारा</p>\r\n\r\n<p dir="ltr">आपको इसके लिए अपने सिस्टम में सबसे पहले इस प्लेयर की जरूरत पड़ने वाली है। आपको बता देते हैं कि एंड्राइड के लिए Instagram App काफी शानदार है। इसे आप अपने सिस्टम में भी चला सकते हैं, लेकिन इसके लिए आपके सिस्टम में Bluestacks App होना जरुरी है। इसके माध्यम से आप अपने PC पर इनस्टाग्राम को चला सकते हैं।</p>\r\n\r\n<p dir="ltr">आपको सबसे पहले अपने सिस्टम में Bluestacks App को डाउनलोड और इनस्टॉल करना होगा, इसके बाद आपको इंजन को शुरू करने के लिए कुछ मिनटों का वेट करना होगा। हालाँकि ऐसा आपको पहली बार में ही करना होगा। इसके बाद यह बिना किसी भी समस्या के चलने वाला है। हालाँकि आपको अपने लिए जरुरी भाषा का चुनाव करना जरुरी है।</p>\r\n\r\n<p dir="ltr">यहाँ आपको अपने गूगल अकाउंट के माध्यम से लॉग इन करना होगा, इसके बाद कंटिन्यू पर क्लिक करके, आपको सभी सेवा की सभी शर्तों को मान लेना होगा, और इसके बाद OK पर क्लिक करना होगा।</p>\r\n\r\n<p dir="ltr">अब यहाँ आपको कई एप्स में से अपने लिए जिस ऐप का इस्तेमाल करना चाहते हैं चुनाव करना होगा, अगर आप यहाँ इनस्टाग्राम का चुनाव करते हैं तो आपको इसपर क्लिक करना होगा, इसके बाद आपको यहाँ अपना नाम दर्ज करना होगा।</p>\r\n\r\n<p dir="ltr">इसके बाद आपको इनस्टाग्राम ऐप को अपने सिस्टम में Bluestacks की मदद से करना होगा। यहाँ आपको एक गूगल प्ले स्टोर का वर्जन ही नजर आने वाला है। यहाँ आपको सर्च बार में इनस्टाग्राम के लिए सर्च करना होगा। इसके बाद आधिकारिक ऐप का चुनाव करके आपको इनस्टॉल पर क्लिक करना होगा। इसके बाद ऐप को अपने कॉन्टेक्ट्स &nbsp;और लोकेशन आदि की जानकारी चाहिए है, अगर आप इससे OK हैं, तो आपको एक्सेप्ट पर क्लिक करके आगे बढ़ जाना है।</p>\r\n\r\n<p dir="ltr">इसके बाद कुछ ही समय बीतने के बाद आपको माय एप्स टैब के अंतर्गत इनस्टाग्राम का आइकॉन नजर आने वाला है। इसे लॉन्च करके के लिए इसपर क्लिक करें। यहाँ आप जैसा चाहते हैं इसका इस्तेमाल वैसा ही कर सकते हैं। अर्थात् जैसे आप अपने फोन में फ़िल्टर आदि का इस्तेमाल करके अपनी फोटो को पोस्ट करते आ रहे हैं वैसे ही आप यहाँ भी कर सकते हैं।</p>', '1', 'image/a7886e4813fdb93a8f2a3fad9f6d7b90.jpeg', 3, 9, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 21:57:52', '2019-07-13 11:00:17', NULL),
(4, 'अपने WhatsApp Account को हैक होने से कैसे बचाएँ?', 'how-to-prevent-your-whatsapp-account-to-be-hacked', '<p dir="ltr">अगर हम WhatsApp की चर्चा करें तो आपको बात देते हैं कि इस इंस्टेंट मैसेजिंग ऐप के अभी तक दुनिया भर में लगभग 1 बिलियन से भी ज्यादा एक्टिव यूजर्स हैं। हालाँकि ज्यादा प्रसिद्धि कहीं न कहीं आपको कुछ परेशान जरुर कर सकती है, शायद इसी कारण आमतौर पर हम सुनते आये हैं कि WhatsAppp के एकाउंट्स हैक हो जाते हैं, और इनकी सुरक्षा को लेकर पिछले कई सालों में बहुत से मामले भी सामने आये हैं। हालाँकि आज हम आपको इस बारे में ज्यादा ज्ञान नहीं देने वाले हैं, इसके अलावा हम आपको बताने वाले हैं कि आखिर आप कैसे अपने WhatsApp अकाउंट को हैक होने से बचा सकते हैं, कैसे आप कुछ आसान से तरीकों को अपना अपने व्हाट्सऐप को सुरक्षित रख सकते हैं। आइये ज्यादा देर न करते हुए शुरू करते हैं और जानते हैं कि आखिर आप कैसे अपने WhatsApp Account को सुरक्षित रख सकते हैं।</p>\r\n\r\n<p dir="ltr">WhatsApp को लॉक लगाकर सुरक्षित रखें</p>\r\n\r\n<p dir="ltr">अगर आप चाहते हैं कि आप अपने व्हाट्सऐप अकाउंट को जैक होने से बचा लें तो इसका सबसे आसान तरीका आपसे ही शुरू होता है, आप अपने अकाउंट पर लॉक ऐप लगाकर इसे सुरक्षित रख सकते हैं। हालाँकि एंड्राइड में इस तरह का फीचर व्हाट्सऐप की ओर से अभी तक नहीं आया है लेकिन आप अगर अपने फोन में किसी लॉक ऐप का इस्तेमाल करते हैं तो आप इसे व्हाट्सऐप पर भी लागू कर सकते हैं, हालाँकि अगर हम iOS की चर्चा करें तो आप अपनी टच आईडी या फेस आईडी के माध्यम से इसे इस्तेमाल कर सकते हैं। यह सबसे साधारण तरीका है अपने व्हाट्सएप्प को सुरक्षित रखने का।</p>\r\n\r\n<h2 dir="ltr">टू फैक्टर ऑथेंटिकेशन</h2>\r\n\r\n<p dir="ltr">हालाँकि बहुत से यूजर व्हाट्सएप्प के इस फीचर से ज्यादा फैमिलिएर नहीं हैं। बहुत से यूजर्स को इसके बारे में पता भी नहीं है। हालाँकि आपको बता देते हैं कि अभी के लिए यह एक डिफ़ॉल्ट के तौर पर मौजूद है। आप व्हाट्सएप्प की सिक्यूरिटी फीचर में जाकर इस फीचर को इनेबल कर सकते हैं। इसका मतलब है कि अगर आप ऐसा करते हैं और एंड-टू-एंड एन्क्रिप्शन इसमें मौजूद है, तो आपका अकाउंट काफी सुरक्षित है, और इसे किसी भी तरह से हैक नहीं किया जा सकता है। इसका मतलब है कि यह हैकर्स से ऐसा करने से सुरक्षित रह सकता है।</p>\r\n\r\n<h2 dir="ltr">पासवर्ड की स्ट्रेंथ</h2>\r\n\r\n<p dir="ltr">अगर आपका पासवर्ड ज्यादा परेशान करने वाला है, तो आप ऐसा मान ही लीजिये कि इस बात की संभावना कम हैं कि आपका व्हाट्सएप्प अकाउंट कभी हैक भी हो सकता है। अगर आपने अपने पासवर्ड का चुनाव कुछ अलग तरीके से किया है, तो आपका व्हाट्सऐप अकाउंट सुरक्षित है। इसके लिए आपको अपने पासवर्ड में अपर केस, लोवर केस, स्पेशल करैक्टर कस इस्तेमाल करना होगा, जिसे आपका पासवर्ड ज्यादा सुरक्षित होगा। हालाँकि आपको बता देते हैं कि कुछ लोग अपना नाम या मोबाइल नंबर ही अपने पासवर्ड के तौर पर इस्तेमाल कर लेते हैं, इसके अलावा अपने किसी करीबी के नाम या उसके फोन नंबर के तौर पर एक पासवर्ड निर्मित करते हैं, जो किसी भी तरह से सही नहीं है। अगर आप ऐसा करते हैं तो आपको कुछ समस्या आ सकती है।</p>\r\n\r\n<h2 dir="ltr">व्हाट्सएप्प अकाउंट को लोग आउट करना न भूलें</h2>\r\n\r\n<p dir="ltr">यहाँ बात आती है कि अगर आप अपने व्हाट्सऐप अकाउंट को अपने डेस्कटॉप पर इस्तेमाल कर रहे हैं, तो आपको इस बात का ख्याल रखना जरुरी है कि जब भी आप इससे दूर हैं, उस समय आपको अपने व्हाट्सऐप अकाउंट को अपने डेस्कटॉप से लॉगआउट जरुर करना है। अगर आप किसी कारण से ऐसा करना भूल जाते हैं तो मान लीजिये कि इस बात की संभावना ज्यादा है कि आपका अकाउंट हैक हो सकता है। हालाँकि अगर आप इसे लॉगआउट कर देते हैं तो इसकी संभावना काफी कम हो जाती है कि आपका अकाउंट हैक होगा।</p>\r\n\r\n<h2 dir="ltr">अगर आपका डिवाइस खो जाए</h2>\r\n\r\n<p dir="ltr">कभी कभी ऐसा भी हो जाता है कि आपका डिवाइस कहीं खो जाता है, अब अगर ऐसा है तो आपको बता देते हैं कि ऐसी स्थिति में भी आपको कुछ कदम उठाने हैं और आप अपने व्हाट्सएप्प अकाउंट को सुरक्षित रख सकते हैं, आपको ऐसी स्थिति में व्हाट्सऐप या अपने सिम नेटवर्क के हेल्प डेस्क पर फ़ोन करना है, और अपने सभी एप्स और नंबर को बंद करा देना है, अगर आप ऐसा करते हैं तो आपका अकाउंट सेफ रहने वाला है।</p>', '1', 'image/a9c3e29390f5c569aa07a5b83f2fa82d.jpeg', 3, 9, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 22:02:14', '2019-11-15 21:52:12', NULL),
(5, 'इन 5 तरीकों से आप बुक कर सकते हैं  एलपीजी (LPG) गैस सिलिंडर', 'how-to-book-your-lpg', '<p dir="ltr">LPG यानी Liquefied Petroleum Gas सबसे ज्यादा इस्तेमाल होने वाली रसोई गैस है। एलपीजी अब एक व्यापक डिस्ट्रीब्यूटर नेटवर्क के ज़रिये आसानी से यूज़र्स के लिए उपलब्ध है। भारत सरकार हर साल एक निश्चित संख्या में सिलेंडरों की लागत में सब्सिडी देती है, जिससे परिवारों को अपनी ईंधन जरूरतों के लिए रसोई गैस का उपयोग करना सस्ता हो जाता है।</p>\r\n\r\n<p dir="ltr">LPG गैस सिलेंडर की ऑनलाइन बुकिंग करना पहले बहुत ही दिक्कत वाला काम हुआ करता था क्योंकि गैस की बुकिंग कराने का उस समय एक ही ऑप्शन रहता था, और वो था यूज़र्स का खुद ही एलपीजी डीलरशिप पर जाना। वहीँ अब आज के समय में ऐसा नहीं रहा। अब तीन नेशनल सप्प्लायर्स, Bharat Gas, HP Gas और Indane Gas यूज़र्स आसानी से अपनी LPG गैस को उसे रीफिल करा सकते हैं। आज हम आपको इसी के बारे में बताने जा रहे हैं कि आप कैसे बस कुछ स्टेप्स में ही मिनटों में अपनी गैस ऑनलाइन बुकिंग करा सकते हैं। आप ऑनलाइन के साथ ऑफलाइन भी ये बुकिंग कर सकते हैं।</p>\r\n\r\n<p dir="ltr">LPG सिलेंडर की बुकिंग अब आप केवल एक बटन के क्लिक पर ही घर बैठे ही करा सकते हैं। आपको बता दें कि इंडेन गैस, एचपी गैस और भारत गैस सभी की अपनी &#39;ऑनलाइन एलपीजी बुकिंग&#39; सेवाएं हैं, जिनके इस्तेमाल से आप आसानी से बुकिंग कर सकते हैं।</p>\r\n\r\n<p dir="ltr">Online LPG Gas Booking</p>\r\n\r\n<p dir="ltr">ऑनलाइन गैस बुकिंग करने से आपके कई &nbsp;फायदे हैं। यूज़र्स Net banking या क्रेडिट कार्ड के माध्यम से भुगतान करना चुन सकते हैं। इसके साथ ही अगर आप वर्किंग हैं और अपने रिफिल सिलेंडर की डिलीवरी नहीं ले सकते तो अब रिफिल ऑर्डर करने के समय सिर्फ प्री-पे कर सकते हैं। सिलेंडर डिलीवर होने के बाद, उपभोक्ता को एक SMS या Email से ही इसकी जानकारी मिल जाएगी। ऑनलाइन LPG गैस बुक करने के लिए अपने LPG provider (HP, Bharat Gas या Indane) की वेबसाइट पर जाएँ और रजिस्ट्रेशन करें। एक बार रजिस्ट्रेशन हो जाने के बाद आपको ऑनलाइन रिफिल बुक करने का ऑप्शन &nbsp;&nbsp;दिखाई देगा। इसके बाद निर्देशों का पालन करें और अपना भुगतान ऑनलाइन करें या cash on delivery करें।</p>\r\n\r\n<h2 dir="ltr">IVRS के ज़रिये Gas Booking</h2>\r\n\r\n<p dir="ltr">गैस कंपनी के IVRS (Interactive Voice Response System) के ज़रिये भी आप सिलेंडर बुक कर सकते हैं। इसके लिए आपको अपने क्षेत्र / राज्य के लिए designated number पर कॉल करना होगा और सिलेंडर बुक करने के निर्देशों का पालन करना होगा। इसके लिए आपको अपने रजिस्टर्ड फ़ोन नंबर से कॉल &nbsp;करना पड़ेगा जिसके बाद अपनी customer ID देनी होगी। सिलेंडर की बुकिंग के समय आपको अपना order number और अनुमानित डिलीवरी की तारीख बताई जाएगी, जिसकी डिलीवरी पर भुगतान किया जाएगा।</p>\r\n\r\n<h2 dir="ltr">SMS के ज़रिये Gas Booking</h2>\r\n\r\n<p dir="ltr">आप बस एक SMS के ज़रिये भी Gas Booking करा सकते हैं। इसके लिए आपको अपना मोबाइल नंबर पहले गैस प्रोवाइडर के पास पंजीकृत कराना होगा, जिसके बाद एसएमएस भेजते समय एक खास फॉर्मेट को फॉलो करना होगा। SMS को उसी गैस कंपनी की वेबसाइट पर भेजना होगा जिस कंपनी की गैस आप लेना चाहते हैं और यह नंबर आपको कंपनी की वेबसाइट पर मिल जायेगा।</p>\r\n\r\n<h2 dir="ltr">Mobile App के ज़रिये Gas Booking</h2>\r\n\r\n<p dir="ltr">अगर आप एक &nbsp;स्मार्टफोन यूज़र्स हैं तो यह ऑप्शन आपके लिए और भी आसान है। आप Google Play store और iTunes जैसे प्लेटफ़ॉर्म से अपनी मनपसंद गैस कंपनी के ऐप को डाउनलोड कर सकते हैं और वहां से अपनी रिफिल बुकिंग कर सकते हैं। इसके लिए आपको पहले अपना मोबाइल नंबर, ईमेल और OTP दर्ज करके मोबाइल ऐप पर रजिस्ट्रेशन करना होगा।</p>\r\n\r\n<p dir="ltr">रजिस्ट्रेशन होने के बाद आप आसानी से सिलेंडर बुक कर सकते हैं जिसका भुगतान क्रेडिट / डेबिट कार्ड के साथ नेट-बैंकिंग के माध्यम से ऑनलाइन किया जा सकता है। गैस कंपनियों ने एलपीजी सिलेंडरों के लिए ई-वॉलेट भुगतान का भी ऑप्शन शुरू किया है और आप इसका भी इस्तेमाल कर सकते हैं। ऐप में booking history, customer ID और बाकी डीटेल्स की भी जानकारी आपको मिलती है।</p>\r\n\r\n<h2 dir="ltr">Agency के ज़रिये Gas Booking</h2>\r\n\r\n<p dir="ltr">आप गैस एजेंसी पर जाकर भी अपने रिफिल LPG Gas सिलेंडरों को बुक कर सकते हैं। अगर आप ऐसा करना चाहते हैं तो आपको इसके लिए अपना customer number देना होगा। Gas Booking के बाद उसकी डिलीवरी के बाद आप भुगतान कर सकते हैं या बुकिंग के समय भी आप भुगतान कर सकते हैं।</p>', '1', 'image/8d94ce0776b16413b627cb4a3bab1956.jpeg', 3, 9, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 22:04:33', '2019-07-13 10:59:33', NULL),
(6, 'Paytm और अन्य तरीको से ऑनलाइन मोबाइल रिचार्ज कैसे करें?', 'how-to-recharge-your-paytm-acoumt', '<p dir="ltr">जैसे-जैसे इंटरनेट तरक्की कर रहा है वैसे ही हमारे अधिकतर काम ऑनलाइन होने लगे हैं। चाहे वो शॉपिंग हो, रीचार्ज हो या अन्य कोई काम हो। ऑनलाइन मोबाइल रीचार्ज के लिए हमारे पास कई विकल्प मौजूद हैं। कई कंपनियां जैसे पेटीएम, मोबिक्विक, फोनपे, गूगल पे आदि ये सुविधा ऑफर करती हैं। मोबाइल ऐप के साथ ही वेबसाइट के ज़रिए भी आप ऑनलाइन मोबाइल रीचार्ज कर सकते हैं।</p>\r\n\r\n<p dir="ltr">ऑनलाइन मोबाइल रीचार्ज के कई फायदे होते हैं, जैसे आप किसी भी समय, किसी भी जगह से चाहे कॉलेज हो, ऑफिस हो या घर, हर जगह से रीचार्ज कर सकते हैं। कई प्लैटफ़ार्म ऑनलाइन रीचार्ज करने के दौरान बढ़िया कैशबैक ऑफर्स भी देते हैं जिससे आपके रीचार्ज अमाउंट में आपको कुछ रियायत मिल जाती है।</p>\r\n\r\n<p dir="ltr">ऑनलाइन मोबाइल रीचार्ज करने के लिए आपके पास क्या होना चाहिए?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">क्योंकि मैं आपको पेटीएम से ऑनलाइन मोबाइल रीचार्ज करने का तरीका बता रही हूँ इसलिए आपके पास पेटीएम अकाउंट होना ज़रूरी है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">पेमेंट के लिए ATM कार्ड या ऑनलाइन बैंकिंग होनी ज़रूरी है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इंटरनेट कनैक्शन की आवश्यकता है।</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 dir="ltr">दो तरह कर सकते हैं ऑनलाइन मोबाइल रीचार्ज</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">वेबसाइट से रीचार्ज कर सकते हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">मोबाइल ऐप डाउनलोड कर के भी रीचार्ज कर सकते हैं।</p>\r\n	</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2 dir="ltr">मोबाइल ऐप से ऐसे करें रीचार्ज</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">सबसे पहले अपने मोबाइल फोन में पेटीएम ऐप खोलें और पेटीएम पासकोड के ज़रिए लॉग इन करें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">होम स्क्रीन पर ही आपको मोबाइल प्रीपैड प्लान का विकल्प मिलेगा, इस पर क्लिक करें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">एंटर मोबाइल नंबर विकल्प पर जाकर नंबर लिखें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">नीचे दिए गए विकल्प पर ओपेरटर का नाम चुनें जैसे एयरटेल, वोडाफोन, रिलायंस जियो आदि।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके बाद अगले विकल्प में रीचार्ज अमाउंट लिखें और रीचार्ज प्रोसीड करें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके बाद प्रोमो कोड अप्लाई करने का विकल्प आएगा, अगर आपके पास कोई प्रोमो कोड है तो आप वो यहाँ अप्लाई कर सकते हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">प्रोसीड करने पर नया पेज खुलेगा जिसमें पेमेंट के अलग-अलग ऑप्शन दिए जाएंगे, इनमें से कोई एक चुनें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">मैं आपको डेबिट कार्ड विकलप के बारे में बता रही हूँ।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">डेबिट कार्ड ऐड करने के लिए आपको यहां अपना डेबिट कार्ड नंबर लिखना होगा जो कार्ड के ऊपर लिखा होता है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">नीचे दिए गए विकल्प में डेबिट कार्ड की एक्सपयारी या वैलिडिटी डेट लिखनी होगी और अगले विकल्प में CVV लिखना होगा जो कार्ड के पीछे दिया होता है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके बाद पे सेक्योरली पर टैप करना होगा।आपके बैंक अकाउंट से लिंक नंबर पर ओटीपी वन टाइम पासवर्ड भेजा जाएगा उसे यहां भरें और सबमिट बटन पर टैप करें।प्रोसेसिंग के लिए कुछ सेकंड्स रुकें और इसके बाद रीचार्ज सक्सेसफुल हो जाएगा।</p>\r\n	</li>\r\n</ul>', '1', 'image/8a08a7bc577028a71285a3f1eeeab551.jpeg', 3, 9, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 22:08:11', '2019-11-15 21:52:10', NULL),
(7, 'Contacts को पुराने से नए Android स्मार्टफोन में ऐसे करें ट्रांसफर', 'how-to-transfer-your-old-records-to-new-android-phone', '<p dir="ltr">अगर आपने भी हाल ही में अपना फ़ोन बदला है और चाहते हैं कि आपके सारे कॉन्टेक्ट्स पुराने एंड्राइड फ़ोन से नए एंड्राइड फ़ोन में आ जाएँ, तो आज हम आपको इसी के बारे मं बताने जा रहे हैं। हम आपके लिए बहुत ही आसान तरीका लेकर आएं हैं जिससे आप अपने कॉन्टेक्ट्स वापस नए android smartphone में ट्रांसफर कर सकते हैं।</p>\r\n\r\n<p dir="ltr">इस तरह Android से नए Android smartphone में ट्रांसफर करें अपने Contacts</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अपने पुराने एंड्रॉइड स्मार्टफोन की Settings पर जाए</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">Settings में जाने के बाद आपको Accounts ऑप्शन नज़र आएगा जिसपर आपको क्लिक करना होगा</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अब यहाँ अपने Google अकाउंट पर जाएँ और क्लिक करें</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">Google अकाउंट पर क्लिक करने के बाद Account Sync पर जाएं</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">Account Sync में एंटर करने के बाद अब Contacs Sync वाला ऑप्शन ON करें</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अब टॉप पर दायीं ओर दिए तीन डॉट वाले ऑप्शन बटन पर क्लिक करें और फिर Sync पर क्लिक करें जिसके बाद आपके सभी Contacts गूगल के सर्वर पर Sync यानी अपलोड हो जाएंग</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अब अपने नए एंड्रॉइड स्मार्टफोन की Settings में जाकर Account ऑप्शन पर क्लिक करें</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">Add Account पर जाएँ और Google का अकाउंट जोड़ें ( पुराने स्मार्टफोन वाले Google अकाउंट से ही लॉग-इन करना होगा)</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir="ltr">आपकी जानकारी के लिए यह बता दें कि अगर आपने अपने गूगल अकाउंट पर Contact Syncing यानी कॉन्टेक्ट्स का गूगल क्लाउड में सेव होने के आप्शन को आपने ON किया हुआ है तो आपके Contacts अपने आप गूगल के सर्वर पर समय-समय पर save होते रहते हैं। ऐसे में यह अच्छा होगा कि आप Contact Syncing को ON ही रखें। इसके साथ ही ध्यान देने वाली बात यह भी है कि आपको नए स्मार्टफोन में भी अपने पुराने स्मार्टफोन वाले Google अकाउंट से ही लॉग-इन करना होगा और जैसे ही आप login करते ही आपके सभी Contacts नए फोन में Sync हो जाएंगे।</p>', '1', 'image/9b4938ca4aceda81c6074b641408c790.jpeg', 3, 9, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 22:20:30', '2019-11-15 21:52:03', NULL),
(8, 'NEFT, RTGS और IMPS पेमेंट सिस्टम क्या हैं; इनसे कैसे करें पैसा ट्रांसफर?', 'how-to-transfer-money-using-neft-rtgs-imps', '<p dir="ltr">अगर आप आजकल के डिजिटल पेमेंट सिस्टम के साथ साथ चलना चाहते हैं तो आपको बता देते हैं कि आजकल इस्तेमाल में होने वाले पेमेंट एप्स और इंटरनेट बैंकिंग के अलावा आप फोन बैंकिंग तक ही सीमित नहीं रह सकते हैं। बाजार में काफी समय से NEFT, RTGS और IMPS जैसे सुविधायें भी उपलब्ध हैं। यहाँ मौजूद इस समय काफी लोगों में इस बात की जानकारी है कि आखिर इनके माध्यम से क्या होता है, और पैसा कैसे ट्रान्सफर किया जाता है, हालाँकि बहुत से ऐसे भी लोग हैं जिन्हें इस बारे में पता ही नहीं है।</p>\r\n\r\n<p dir="ltr">अभी तक बहुत से यूजर्स को इस बारे में जानकारी ही नहीं है कि आप NEFT, RTGS और IMPS मोड्स के माध्यम से भी पैसा एक बैंक अकाउंट से दूसरे में ट्रांसफर किया जा सकता है। हम में से बहुत से लोग इस बारे में भी नहीं जानते हैं कि आखिर कैसे इन तीनों मोड्स में अंतर को देखा जा सकता है, अर्थात् इन सभी में क्या अंतर है। आज हम आपके इन्हीं सवालों के जवाब के लिए यह जानकारी आपको दे रहे हैं। आपको इन इन तीनों पेमेंट्स मोड के बारे में आपको बताने वाले हैं, आइये ज्यादा देर न करते हुए शुरू करते हैं, और जानते हैं कि आखिर इन तीनों मोड्स में क्या अंतर है, और सबसे जरुरी आखिर यह तीनों मोड्स हैं क्या...</p>\r\n\r\n<p dir="ltr">NEFT (नेशनल इलेक्ट्रॉनिक फण्ड ट्रांसफर)</p>\r\n\r\n<p dir="ltr">इसके माध्यम से आप एक अकाउंट से दूसरे अकाउंट में किसी भी समस्या के बिना पैसा बड़ी आसानी से भेज सकते हैं। इस मोड में पैसों को एक दिन में भेजने की कोई भी मैक्सिमम लिमिट नहीं है। आप अपने अनुसार कितना भी फण्ड ट्रांसफर कर सकते हैं।</p>\r\n\r\n<h2 dir="ltr">RTGS (रियल टाइम ग्रॉस सेटलमेंट)</h2>\r\n\r\n<p dir="ltr">किसी भी बिज़नेस के ओनर RTGS का इस्तेमाल उस समय करते हैं जब उन्हें एक साथ कुछ ज्यादा ही अमाउंट कहीं ट्रांसफर करना होता है। अन्य मोड्स के मामले में RTGS ज्यादा बढ़िया अपनी ट्रांजेक्शन स्पीड के कारण बन जाता है। क्योंकि इस मोड के माध्यम से सेंड किया गया पैसा रियल टाइम में दूसरे यूजर को बड़ी आसानी से मिल जाता है।</p>\r\n\r\n<h2 dir="ltr">IMPS (इमीडियेट पेमेंट सर्विस)</h2>\r\n\r\n<p dir="ltr">IMPS को भी एक अन्य रियल टाइम पेमेंट सेवा की तरह देखा जा सकता है, हालाँकि इसका सबसे बड़ा फायदा यह है कि यह 24x7 किसी भी समय उपलब्ध होता है। आप इस सेवा का इस्तेमाल बैंक हॉलिडे के समय में भी कर सकते हैं। आप IMPS का इस्तेमाल करके एक ही समय में 2 लाख तक के अमाउंट को इंस्टेंट ट्रांसफर कर सकते हैं। इस सेवा के लिए आपसे पैसा भी कम ही लिया जाता है। इसके लिए आपको Rs 2।5 से Rs 15 तक ही देने होते हैं।</p>\r\n\r\n<h2 dir="ltr">NEFT के माध्यम से पैसा कैसे ट्रांसफर करें?</h2>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके लिए आपको सबसे पहले अपने नेट बैंकिंग पोर्टल पर लॉग इन करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके बाद आपको बेनेफिसिअरी के तौर पर किसी एक नाम को यहाँ दर्ज करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अब आपको इसका नाम, अकाउंट नंबर, अकाउंट टाइप और IFSC कोड को दर्ज करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">यह सब आपको ऐड न्यू पेयी सेक्शन में करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके अलावा जैसे ही आप किसी अमाउंट को ट्रांसफर करने के लिए NEFT का चुनाव करते हैं तो एक बटन दबाते ही यह अमाउंट ट्रांसफर हो जाता है, हालाँकि इसे दूसरे अकाउंट में पहुँचने में कुछ समय लग सकता है।</p>\r\n	</li>\r\n</ul>\r\n\r\n<h2 dir="ltr">RTGS के द्वारा कैसे ट्रांसफर करें पैसा?</h2>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">RTGS के माध्यम से पैसा ट्रांसफर करने के लिए आपको अपने बैंकिंग पोर्टल पर सबसे पहले लॉग इन करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके बाद जो आपने अभी पिछले मोड में किया था, वह आपको यहाँ भी करना है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">आपको बेनेफिसिअरी में किसी रेसिपीएंट का चुनाव करना है, जिसे आप RTGS ट्रांसफर करना चाहते हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अब आपको उसका नाम, बैंक अकाउंट</p>\r\n	</li>\r\n</ul>', '1', 'image/7e0cf3e1c614e0c6906a7ddd674c46f7.jpeg', 3, 9, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 22:23:12', '2019-11-15 21:52:01', NULL),
(9, 'तेज और फ्लेक्सिबल केवाईसी ऐप KYZO लॉन्च, डेटा रखेगा सेफ; ऑफलाइन भी होगा यूज', 'data-safe-online', '<p dir="ltr">देश की फिनटेक स्टार्टअप कंपनी एफआरएसलैब्&zwj;स (FRSLABS) ने नया कायजो (KYZO) ऐप लॉन्च किया है। ये ऐप यूजर को डॉक्युमेंट्स सेव करने का प्लेटफॉर्म देता है। जिसे बाद में डिजिटली यूज किया जा सकता है। कंपनी इस ऐप से इंडीविजुअल और बिजनेस दोनों के केवाईसी फॉर्मेट को बदलना चाहता है। यूजर द्वारा डॉक्युमेंट्स को कहीं भी और कभी भी डिजिटलाइज उपयोग में लाने के लिए ओसीआर और कम्प्यूटर विजन टेक्नोलॉजी का इस्तेमाल करता है।</p>\r\n\r\n<h3 dir="ltr">डॉक्युमेंट्स रखने का झंझट खत्म</h3>\r\n\r\n<p dir="ltr">ऐप पर यूजर्स अपने सभी डॉक्युमेंट्स जो केवाईसी के दौरान भी काम आते हैं उन्हें ऐप पर अपलोड कर सकता है। डॉक्युमेंट्स को अपलोड करने की प्रोसेर बेहद आसान है। इसके लिए यूजर को सिर्फ डॉक्युमेंट्स स्कैन करना है, जिसके बाद वो उस पर अपलोड हो जाता है। डॉक्युमेंट्स एक बार अपलोड हो जाएं तब उन्हें ऑफलाइन यानी बिना इंटरनेट के भी यूज किया जा सकता है। इसके लिए कंपनी ने स्कैनिंग और फेस कैप्चर टेक्नोलॉजी का इस्तेमाल किया है, जो ऑफलाइन काम करती है। यूजर्स का डेटा एनक्रिप्टेड होता है और उपयोग के लिए पूरी तरह सुरक्षित रहता है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3 dir="ltr">ऐप को इस्तेमाल करने की प्रोसेस</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">सबसे पहले गूगल प्ले स्टोर से KYZO ऐप को फ्री इन्स्टॉल करें।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अब डॉक्युमेंट्स अपलोड करने के लिए SCAN पर जाएं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">डॉक्युमेंट्स का QR कोड स्कैन करते ही अपलोडिंग प्रोससे शुरू हो जाएगी।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">डॉक्युमेंट्स सेंड करने के लिए QR कोड स्कैन करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अब वैरिफिकेशन पिन डालें, डॉक्युमेंट सेंड हो जाएंगे।</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir="ltr">कंपनी का कहना है कि यूजर के सभी डॉक्युमेंट्स फोन में रहेंगे (एनक्रिप्टेड)। ये क्लाउड में नहीं जाएंगे, जिससे इनके हैकिंग या लीक होने का खतरा नहीं होता।</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<h3 dir="ltr">ऐप से चीजें होंगी आसान : सीईओ</h3>\r\n\r\n<p dir="ltr">एफआरएसलैब्&zwj;स के सीईओ शंकर ने कहा, &quot;केवाइसी प्रगति का अभिन्न अंग है। चाहे बैंक में खाता खोलना हो, सिम लेना हो, कार किराए पर देनी हो या डिलीवरी पार्टनर को बिजनेस में ऑनबोर्ड करना हो, केवाइसी आवश्&zwj;यक और अनिवार्य हो चुकी है। हालांकि, मौजूदा केवाइसी प्रोसेस में समय लगता है, यह अत्&zwj;यधिक हस्&zwj;तक्षेप वाली है और बाधाओं से भरी हैं। केवाइडओ के साथ हम ग्राहकों और व्यवसायों को त्वरित और विश्वसनीय तरीके से ऑनबोर्डिंग की विधि दे रहे हैं।&quot;</p>', '1', 'image/2531b4e698002385e9d7a6b0633876ba.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 23:28:37', '2019-07-13 10:57:32', NULL),
(10, 'ऑनलाइन खाना मंगाने अलग-अलग ऐप की जरूरत नहीं पड़ेगी, गूगल ने सुविधा सर्च, मैप और असिस्टेंस में दी', 'online-food-order-does-not-app', '<p dir="ltr">गैजेट डेस्क. ऑनलाइन ऑर्डर कर खाना मंगवाना इन दिनों काफी चलन में है। भारत में स्विगी, जोमैटो, उबर ईट्स, फूड पांडा जैसी कंपनियां इस बिजनेस में होड़ कर रही हैं। यूजर्स को इन कंपनियों के ऐप के जरिए खाना ऑर्डर करना होता है। लेकिन, दुनिया की सबसे बड़ी इंटरनेट कंपनियों में से एक गूगल अब ऐसी सुविधा देने जा रही है जिससे यूजर्स अलग-अलग ऐप डाउनलोड किए बिना पसंदीदा रेस्टोरेंट से खाना ऑर्डर कर सकेंगे।</p>\r\n\r\n<p dir="ltr">गूगल अब अपने सर्च, मैप और असिस्टेंस सर्विस में भी खाना ऑर्डर करने की सुविधा देने जा रही है। यानी आप अगर गूगल सर्च का इस्तेमाल कर रहे हैं और कोई पसंदीदा खाना सर्च करते हैं तो गूगल आपको यह बताएगा कि इसे किस रेस्टोरेंट से ऑर्डर किया जा सकता है। इतना ही नहीं वहीं से आप तत्काल खाना ऑर्डर भी कर सकेंगे और गूगल पे के जरिए ऑर्डर का पेमेंट भी कर सकते हैं। इसी तरह गूगल मैप का इस्तेमाल करते वक्त अगर आप किसी इलाके में मौजूद रेस्टोरेंट से खाना ऑर्डर कर सकेंगे। इतना ही नहीं गूगल वॉइस कमांड (गूगल असिस्टेंस) के जरिए भी यह काम किया जा सकेगा।</p>\r\n\r\n<p dir="ltr">अमेरिका में कई कंपनियों से करार</p>\r\n\r\n<p dir="ltr">गूगल खुद फूड डिलीवरी बिजनेस में नहीं आ रही है। इसके लिए वह इस बिजनेस में मौजूद कंपनियों के साथ करार कर रही है। अमेरिका में उसने इसके लिए डोर डैश, पोस्टमेट्स, डिलीवरी डॉट कॉम, स्लाइस और चाउ नाऊ के साथ करार किया है। जल्द ही जप्लर और अन्य कंपनियों को भी प्लेटफॉर्म पर लाया जाएगा। कंपनी भारत सहित अन्य देशों में ऑनलाइन ऑर्डर लेकर फूड डिलीवरी का काम कर रही कंपनियों के साथ करार करने की योजना भी बना रही है। अगर आपने किसी रेस्त्रां से पहले खाना ऑर्डर किया है और वहीं से खाना फिर मंगाना चाहते हैं तो गूगल असिस्टेंस के जरिए कुछ ही सेकंड में मंगवा सकेंगे। इसके लिए फोन को हाथ में लेने की जरूरत भी नहीं पड़ेगी।</p>\r\n\r\n<p dir="ltr">5 साल में फूड डिलीवरी बिजनेस 11 लाख करोड़ रुपए का हो जाएगा</p>\r\n\r\n<p dir="ltr">स्मार्टफोन पेनिट्रेशन और इंटरनेट का इस्तेमाल बढ़ने से दुनियाभर में फूड डिलीवरी बिजनेस में तेजी आई है। एक अनुमान के मुताबिक साल 2024 तक दुनिया में फूड डिलीवरी मार्केट 16400 हजार करोड़ डॉलर (करीब 11 लाख करोड़ रुपए) का हो जाएगा। भारत में यह मार्केट सालाना 16.2% की दर से आगे बढ़ी रहा है। 2013 तक भारत में यह 1.18 लाख करोड़ रुपए तक पहुंच जाएगा। इस मार्केट में हिस्सा हासिल करने के लिए तमाम बड़ी कंपनियां होड़ कर रही हैं। इंटरनेट दिग्गज गूगल ने यह सुविधा इसी मौके को ध्यान में रखकर शुरू की है।</p>', '1', 'image/89a90a0692c650560ae7681f6848941e.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 23:31:40', '2019-07-13 10:56:45', NULL),
(11, 'नोकिया 8.1, 7.1 समेत कंपनी के चार स्मार्टफोन पर आज मिलेगा 6 हजार रु तक डिस्काउंट', '6000-discount-on-nokia-8.1-7.1', '<p dir="ltr">Image:नोकिया फैन फेस्टिवल सेल के दौरान नोकिया 8.1, नोकिया 7.1, नोकिया 6.1 और नोकिया 8 सिरोको पर 6 हजार रुपए तक का डिस्काउंट मिलेगा। यह सेल 24 फरवरी से शुरू होगी। कंपनी ने हाल ही में नोकिया 6.1 प्लस और नोकिया 5.1 प्लस स्मार्टफोन की कीमतों में भी कटौती की है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr"><img src="https://lh4.googleusercontent.com/S6-iwMVpmPuP3-eZ6yoIjkg63mEIkLGT9sd1pQqvoD-B0VbyxPPNMQgm8w0m88KTo_fawpAXehnoEWWX6dSVM4HXs0fcC9sbjvNU-lwfY_YWMkoRZ3FT-AZLO5Hrn2fDK8QNw-E6" style="height:468px; width:624px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">नोकिया फैन फेस्टिवल सेल के दौरान नोकिया 8.1, नोकिया 7.1, नोकिया 6.1 और नोकिया 8 सिरोको पर 6 हजार रुपए तक का डिस्काउंट मिलेगा। यह सेल 24 फरवरी से शुरू होगी। कंपनी ने हाल ही में नोकिया 6.1 प्लस और नोकिया 5.1 प्लस स्मार्टफोन की कीमतों में भी कटौती की है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h4 dir="ltr">किस पर कितना ऑफर</h4>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<ol>\r\n	<li dir="ltr">\r\n	<p dir="ltr">नोकिया इंडिया की ऑफिशियल वेबसाइट के नोकिया फैन फेस्टिवल के पेज पर देखा जा सकता है कि नोकिया 8.1 के 4 जीबी रैम वाले वैरिएंट पर 6 हजार रुपए का डिस्काउंट मिल रहा है। डिस्काउंट का लाभ लेने के लिए ग्राहकों को &#39;FAN6000&#39; कोड का इस्तेमाल करना होगा।<br />\r\n	नोकिया 8.1 के 6GB रैम वाले वैरिएंट पर 4 हजार रुपए का डिस्काउंट दिया जा रहा है। इस लाभ को लेने के लिए ग्राहकों को &#39;FAN4000&#39; कोड का इस्तेमाल करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">नोकिया 8.1 को दिसंबर 2018 में भारत में लॉन्च किया गया था। तब इसके 4GB रैम और 64GB स्टोरेज वाले वैरिएंट की कीमत 26,999 रुपए थी, जबकि इसके 6GB रैम और 128GB स्टोरेज वाले वैरिएंट की कीमत 29,999 रुपए थी।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">सेल में नोकिया 7.1 (कीमत 16,398 रुपए), नोकिया 6.1 (कीमत 13,300 रुपए) और नोकिया 8 सिरोको पर एक हजार रुपए का डिस्काउंट दिया जाएगा। इस ऑफर का लाभ लेने के लिए ग्राहकों को &#39;FANFESTIVAL&#39; कोड का इस्तेमाल करना होगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">एचएमडी ग्लोबल ने हाल ही में लिमिटेड समय के लिए नोकिया 6.1 प्लस और नोकिया 5.1 प्लस (कीमत 9,190 रुपए) की कीमतों में कटौती का ऐलान किया था। 4GB रैम वाले नोकिया 6.1 प्लस और 3GB रैम वाले नोकिया 5.1 प्लस स्मार्टफोन पर कंपनी प्रोमोशनल डिस्काउंट के तौर पर 1,750 रुपए का डिस्काउंट दे रही है। इन स्मार्टफोन पर खासतौर पर एयरटेल के ग्राहकों को 240GB तक का अतिरिक्त डेटा दिया जाएगा।</p>\r\n	</li>\r\n</ol>', '1', 'image/5dcebff385681e52fe45a01e1a41c243.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 23:34:19', '2019-07-13 10:56:06', NULL),
(12, 'लिक्विड कूल्ड ट्यूब से लैस होगा गेमिंग फोकस्ड स्मार्टफोन ब्लैक शार्क 2, 27 मई को करेगा भारत में डेब्यू', 'gaming-smartphone-is-less-of-liquid-cool-tube', '<p dir="ltr">श्याओमी का सब-ब्रांड ब्लैक शार्क जल्द ही अपने सेकंड जनरेशन गेमिंग फोकस्ड स्मार्टफोन ब्लैक शार्क 2 को भारतीय बाजार में लॉन्च करने की तैयारी में है। कंपनी इसे 27 मई को भारत में लॉन्च करेगी। मीडिया रिपोर्ट्स के मुताबिक कंपनी फोन के साथ गेमिंग एक्सेसरीज जैसे गेमिंग पैड 2.0 कंट्रोलर भी ग्राहकों को देगी, जो गेम खेलने का बेहतरीन एक्सपीरियंस देगी। मार्च में कंपनी ने फोन को चीनी बाजार में उतारा था।</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">मीडिया रिपोर्ट्स के मुताबिक फोन में प्रेशर सेंसिटिव डिस्प्ले होगा साथ ही यह क्वालकॉम स्नैपड्रैगन 855 प्रोसेसर से लैस होगा। यह ब्लैक शार्क को पहला प्रोडक्ट से जिसे भारतीय बाजार में डेब्यू करने जा रहा है।</p>\r\n\r\n<h4 dir="ltr">फीचर्स और स्पेसिफिकेशन में क्या होगा खास</h4>\r\n\r\n<ol>\r\n	<li dir="ltr">\r\n	<p dir="ltr">ब्लैक शार्क की वेबसाइट के अनुसार ब्लैक शार्क 2 में 6.39 इंच की AMOLED (2340*1080 पिक्सल रेजोल्यूशन) डिस्प्ले पैनल होगा। यह प्रेशर सेंसिटिव टेक्नोलॉजी से लैस होगी, जो एपल के 3डी टच में भी देखने को मिली है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">मीडिया रिपोर्ट्स में दावा किया जा रहा है कि कंपनी फोन के साथ गेमिंग एक्सेसरीज जैसे गेमिंगपैड 2.0 कंट्रोलर भी मिलेगा जो फोन पर गेम खेलने को बेहतरीन अनुभव देगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">परफॉर्मेंस को बेहतर बनाने के लिए इसके हार्डवेयर में लिक्विड कूलिंग 3.0 का इस्तेमाल किया गया है। यह लिक्विड कूल्ड प्लेट्स और लिक्विड कूल्ड ट्यूब से लैस होगा, जो गेम खेलते समय पार्ट्स को गर्म होने से बचाएगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">ब्लैक शार्क 2 में स्नैपड्रैगन 855 प्रोसेसर होगा साथ ही में एड्रिनो 640 जीपीयू भी होगा। फोन में 4,000mAh की बैटरी होगी जो 27W फास्ट चार्जिंग को सपोर्ट् करेगी।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">कनेक्टिविटी के लिए फोन में ब्लूटूथ 5.0, ड्युअल 4G VoLTE, 802.11 वाई-फाई और जीपीएस जैसे फीचर्स होंगे।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोटोग्राफी के लिए फोन में 48 मेगापिक्सल का प्राइमरी कैमरे के साथ ही 12 मेगापिक्सल का सेकेंडरी कैमरा भी होगा जिसमें एलईडी फ्लैश भी होगा। फोन में 20 मेगापिक्सल का सेल्फी कैमरा होगा।</p>\r\n	</li>\r\n</ol>', '1', 'image/b84899d9dba131955f7f2cab8dad9aff.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 23:37:22', '2019-07-13 10:55:40', NULL),
(13, 'इंफिनिक्स S4 लॉन्च; 32MP का सेल्फी कैमरा और बैटरी देगी 26 दिन का स्टैंडबाय टाइम, कीमत 8,999 रु.', 'infinix-s4-launch-with-32MP-selfie-camera', '<p>&nbsp;</p>\r\n\r\n<p>हांगकांग बेस्ड कंपनी इंफिनिक्स ने भारतीय बाजार में अपने नए बजट स्मार्टफोन इंफिनिक्स S4 को लॉन्च कर दिया है। कंपनी का कहना है यह बाजार में मौजूद मोस्ट अफोर्डेबल स्मार्टफोन है जिसमें 32 मेगापिक्सल का सेल्फी कैमरा है। फोन की कीमत 8,999 रुपए है। इसकी बिक्री 28 मई से शुरू होगी जिसे फ्लिपकार्स से खरीदा जा सकेगा। कंपनी ने सबसे पहले इसे नाइजीरिया लॉन्च किया था।</p>\r\n\r\n<p dir="ltr">भारत में कितनी है कीमत</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">कंपनी ने भारतीय बाजार में इंफिनिक्स S4 की कीमत 8,999 रुपए रखी है। फोन को फ्लिपकार्ट पर एक्सलूसिवली बेचा जाएगा। इसे पहले सेल 28 मई को 12 बजे से फ्लिपकार्ट पर शुरू होगी। कंपनी ने इसे नेबुला ब्लू, ट्विलाइट पर्पल और स्पेस ग्रे कलर में लॉन्च किया गया है।</p>\r\n\r\n<p dir="ltr"><a href="https://twitter.com/InfinixIndia/status/1130743261037940736/photo/1" target="_blank">https://twitter.com/InfinixIndia/status/1130743261037940736/photo/1</a></p>\r\n\r\n<h4 dir="ltr">यह है फोन के स्पेसिफिकेशन</h4>\r\n\r\n<ol>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इंफिनिक्स S4 में एज-टू-एज डिस्प्ले है जिसके टॉप पर वाटरड्रॉप नॉच है। नॉच में सेल्फी कैमरे के साथ कई अन्य सेंसर फिट है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोन के बैक पैनल पर प्लास्टिक ब्लैक पैनल और ग्रेडिएंट ग्लोसी फिनिश मिलती है। साथ ही बैक पैनल पर रियर माउंटेड फिंगरप्रिंट सेंसर मौजूद है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोन में 6.21 इंच का आईपीएस टीएफटी डिस्प्ले है जिसका रेजोल्यूशन 1520*720 पिक्सल है। प्रोसेसिंग पावर के लिए फोन में ऑक्टा-कोर मीडियाटेक हीलियो पी22 प्रोसेसर है। इसमें 3GB रैम और 32GB का स्टोरेज मिलता है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोटोग्राफी के लिए फोन के बैक पैनल पर ट्रिपल रियर कैमरा सेटअप है जिसमें क्वाड एलईडी फ्लैश यूनिट है। इसमें 13 मेगापिक्सल का प्राइमरी कैमरा, 8 मेगापिक्सल का सेकेंडरी कैमरा और 2 मेगापिक्सल का तीसरा कैमरा है। यह 30 फ्रेम प्रति सेकंड की स्पीड से वीडियो रिकॉर्डिंग करने में सक्षम है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">सेल्फी के लिए फोन में 32 मेगापिक्सल का फ्रंट कैमरा है। फोन में एआई 3डी ब्यूटी फीचर मिलता है जो एडवांस्ड एआई एल्गोरिदम से चेहरे को 1024 प्वाइंट से मैप करता है, जिसमें 18 कस्टमाइज्ड ब्यूटिफिकेशन ऑप्शन मिलते हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इस लेटेस्ट फोन एंड्रॉयड 9.0 पाई पर बेस्ड है। क्नेक्टिविटी के लिए इसमें 4G LTE, डुअल सिम स्लॉट, वाई-फाई, ब्लूटूथ और जीपीएस जैसे फीचर्स है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोन में 4,000mAh की बैटरी है। कंपनी का दावा है कि यह 26 दिनों का स्टैंडबाय टाइम देती है।</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>', '1', 'image/1e942be61bf8670f12a60ae75a2e6545.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 23:56:10', '2019-07-13 10:55:10', NULL),
(14, '11 हजार रु. के रेडमी नोट 7S में है 48MP का कैमरा, रेडमी नोट 7 से सिर्फ एक हजार रुपए महंगा', '11-thousand-on-redmi-note-7s', '<p dir="ltr">चीनी कंपनी श्याओमी ने सोमवार को नोट 7 सीरीज के लेटेस्ट स्मार्टफोन रेडमी नोट 7S को भारतीय बाजार में लॉन्च किया। फोन को देखते से ही सबसे पहली बात जो दिमाग में आई वे ये कि यह रेडमी नोट 7 प्रो से कितना अलग है। दोनों में से कौनसा फोन बेस्ट है यह कहना थोड़ा मुश्किल है लेकिन एक बात जो सामने आई वो यह कि अब नोट 7 प्रो का दमदार कैमरा कम कीमत में खरीदा जा सकेगा।</p>\r\n\r\n<p dir="ltr">फोन के 3 GB रैम और 32 GB स्टोरेज वाले वैरिएंट की कीमत 10,999 रुपए है जबकि 4GB रैम और 64 GB स्टोरेज वाले वैरिएंट की कीमत 12,999 रुपए है। फोन की बिक्री 23 मई से शुरू होगी, इसे Mi.कॉम, Mi होम स्टोर के अलावा फ्लिपकार्ट से खरीदा जा सकेगा।</p>\r\n\r\n<p dir="ltr">बता दें कि रेडमी नोट 7S को कंपनी ने 7 सीरीज के रेडमी नोट 7 और रेडमी नोट 7 प्रो की बीच स्थान दिया है। हमने फोन के साथ कुछ वक्त गुजारा और तो यह रहा हमारा फर्स्ट इंप्रेशन...</p>', '1', 'image/9973a049c479f81c939b9d0ac360cfcd.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-26 23:58:27', '2019-07-13 10:54:43', NULL),
(15, 'डिजाइन एंड डिस्प्ले', 'design-and-display', '<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">यह दिखने में बिल्कुल रेडमी नोट 7 और नोट 7 प्रो की तरह ही दिखता है। इसमें भी 6.3 इंच की फुल एचडी प्लस डिस्प्ले है, जिसमें कॉर्निंग गोरिल्ला ग्लास 5 प्रोटेक्शन मिलता है साथ ही स्क्रीन के टॉप पर डॉट नॉच भी है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसमें 1080*2340 पिक्सल का रेजोल्यूशन मिलता है जो रेडमी नोट 7 की तरह ही है। इसके इयरपीस, &nbsp;स्पीकर्स नॉच के ठीक ऊपर की तरफ दिया गए हैं। टॉप बेजल पतला है जबकि नीचे का बेजल थोड़ा मोटा है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">डायमेंशन की बात करें तो यह अन्य नोट 7 सीरीज स्मार्टफोन की तरह ही है जिसमें बैक पर भी कॉर्निंग गोरिल्ला ग्लास 5 प्रोटेक्टशन मिलता है। कंपनी का दावा है कि फोन के बैक पैनल पर P2i नैनोकोटिंग मिलती है जिससे स्क्रैच नहीं लगते। रेडमी नोट 7S में स्प्लैश-प्रूफ कोटिंग भी मिलती है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसमें डुअल कैमरा सेटअप मिलता है साथ ही बैक पैनल पर फिंगरप्रिंट सेंसर भी है। इसके टॉप एज में आईआर ब्लास्टर और 3.5 एमएम का ऑडियो जैक है। बॉटम एज के सेंटर में यूएसबी टाइप-सी पोर्ट जिसके दोनों तरफ स्पीकर ग्रिल है। फोन के बाएं तरफ हाइब्रिड डुअल सिम स्लॉट है जबकि दूसरी तरफ पावर/स्टैंट बाय और वोल्यूम बटन है। फोन सिर्फ 186 ग्राम वजनी है। फोन के साथ बॉक्स में ट्रांसपेरेंट सिलिकॉन केस भी मिलेगा। हालांकि इसके साथ इयर फोन नहीं मिलते।</p>\r\n	</li>\r\n</ul>', '1', 'image/f7153005f175a41613cd6a55fa46af16.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:05:10', '2019-07-13 10:54:18', NULL),
(16, 'रेडमी नोट 7S: चिपसेट, रैम और स्टोरेज', 'redmi-note-7s-chipset-ram-and-storage', '<p>&nbsp;</p>\r\n\r\n<p>रेडमी नोट 7S में 2.2 GHz क्वालकॉम स्नैपड्रैगन 660 प्रोसेसर के साथ 1.8 GHz का क्वाड-कोर कायरो 260 प्रोसेसर भी है। यह 3GB रैम और 32GB स्टोरेज के साथ 4GB रैम और 64GB स्टोरेज वैरिएंट में लॉन्च किया गया है। माइक्रो एसडी कार्ड की मदद से इसके स्टोरेज को 256GB तक बढ़ाया जा सकता है। ग्राफिक्स के लिए इसमें एड्रिनो 512 जीपीयू भी है।</p>', '1', 'image/f6ff1482cdebd2e66beb6cc256b5eea0.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:09:21', '2019-11-15 21:52:00', NULL),
(17, 'रेडमी नोट 7S: कैमरा और बैटरी', 'redmi-note-7s-camera-and-battery', '<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">जहां रेडमी नोट 7 में 12MP+2MP का कैमरा सेटअप दिया गया है, वहीं नोट 7S में नोट 7 प्रो की तरह ही 48MP के साथ 5MP का डुअल कैमरा सेटअप मिलता है, जिसमें एआई पोट्रेट मोड जैसी फीचर्स मिलते हैं। सेल्फी क लिए इसमें 13MP का फ्रंट फेसिंग कैमरा कैमरा है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">कंपनी ने रेडमी नोट 7S में पिक्सल बिनिंग टेक्नोलॉजी का इस्तेमाल किया है जो 4 पिक्सल को मिलाकर सिंगल पिक्सल में बदले देते हैं, जिससे 48 MP का सेंसर फोटो को 12MP में बदल देते हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोन में 4,000 mAh की बैटरी है जो रेडमी नोट 7 और रेडमी नोट 7 प्रो में देखने को मिली थी। फोन के साथ 10 W का चार्जर मिलता है जिसमें क्विकचार्ज 2.0 सपोर्ट मिलता है, हालांकि क्विकचार्ज 3.0 और क्विकचार्ज 4.0 को भी सपोर्ट करता है।</p>\r\n	</li>\r\n</ul>', '1', 'image/ce4980993102b3e7f357c50ef0f673cf.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:11:26', '2019-11-15 21:51:58', NULL),
(18, 'रेडमी नोट 7S: ऑपरेटिंग सिस्टम', 'redmi-note-7s-operating-system', '<p>&nbsp;</p>\r\n\r\n<p>रेडमी नोट 7S में एंड्रॉयड 9 पाई ओएस मिलता है जो MIUI 10.3 इंटरफेस पर चलता है। फोन में पहले से कई सारे प्री-इंस्टॉल ऐप मिलते हैं जिन्हें आप डिलीट भी कर सकते हैं, हालांकि एमआई ंऐप को आप सिर्फ डिसेबल कर सकते हैं।</p>', '1', 'image/0a4643d4143f712a8568316bcc94d8ae.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:13:39', '2019-11-15 21:51:47', NULL),
(19, '18 हजार रु. तक होगी रियलमी X की कीमत, स्पेसिफिकेशन और फीचर्स होंगे चीनी वर्जन से अलग', '18-thousand-price-of-realmi-x', '<p dir="ltr">पिछले हफ्ते रियलमी ने अपने लेटेस्ट स्मार्टफोन रियलमी X की चीन में लॉन्च किया जिसके बाद जून में इसे भारत में लॉन्च किया जाना है। कंपनी के सीईओ माधव सेठ ने बताया कि भारत में लॉन्च होने वाले रियलमी X के स्पेसिफिकेशन और फीचर चीन में लॉन्च हुए वैरिएंट से अलग होंगे। इसके अलावा उन्होंने यह भी बताया कि इसे ओनियन और गार्लिक कलर के साथ एक और स्पेशल कलर वैरिएंट में लॉन्च किया जाएगा, जिसे खासतौर पर भारत के लिए ही बनाया गया है। सेठ ने आगे बताया कि भारत में फोन की कितनी 18 हजार रुपए के लगभग हो सकती है।</p>\r\n\r\n<p dir="ltr">चीन में कितनी है फोन की कीमत</p>\r\n\r\n<p dir="ltr">रियलमी X को चीन में लॉन्च किया जा चुका है। जहां इसके 4GB+64GB स्टोरेज वैरिएंट की कीमत लगभग 15,400 रुपए, 6GB+64GB स्टोरेज वैरिएंट की कीमत 16,400 रुपए और 8GB+128GB स्टोरेज वैरिएंट की कीमत लगभग 18,500 रुपए है। इसके अलावा नओटो फुकासावा कलेक्शन जो ओनियन और गार्लिक कलर में है जिसे 8GB रैम और 128GB स्टोरेज के साथ लॉन्च किया गया है, इसकी कीमत 19,500 रुपए रखी गई है।</p>\r\n\r\n<p dir="ltr">फोन के स्पेसिफिकेशन</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">चीनी में डुअल नैनो सिम सपोर्ट करने वाले रियलमी X एंड्रॉयड 9 पाई पर चलता है जिसमें कलर ओएस 6.0 भी है। फोन में 6.53 इंच का फुल एचडी प्लस (1080*234 पिक्सल रेजोल्यूशन) डिस्प्ले है, जिसमें AMOLED स्क्रीन लगी हुई है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">इसके स्क्रीन को गोरिल्ला ग्लास 5 का प्रोटेक्शन दिया गया है। साथ ही इसमें इन-डिस्प्ले फिंगरप्रिंट सेंसर दिया गया है। फोन में ऑक्टाकोर स्नैपड्रैगन 710 प्रोसेसर है, जिसमें 8GB तक की रैम मिल जाती है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोटोग्राफी की फोन में ड्युअल रियर कैमरा सेटअप मिलता है। जिसमें 48MP का प्राइमरी कैमरा और 5MP का सेकेंडरी कैमरा मिलता है। इसमें 16MP का पॉप-अप मॉड्यूल सेल्फी कैमरा है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोन में 3,765mAh की बैटरी है, जो VOOC 3.0 फास्ट चार्जिंग को सपोर्ट करता है। इसमें यूएसबी टाइप-सी पोर्ट, डॉल्बी एटमोस सपोर्ट, 4G LTE सपोर्ट, वाई-फाई 802.11, ब्लूटूथ 5 और जीपीएस जैसे कनेक्टिविटी फीचर मौजूद है।</p>\r\n	</li>\r\n</ul>', '1', 'image/30384d580401072026ffccc7a767cee6.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:15:49', '2019-11-15 21:51:47', NULL),
(20, 'माइक्रोमैक्स का बजट स्मार्टफोन आईवन लॉन्च, 4,999 रु. है कीमत; इसमें है 5MP का फ्रंट और रियर कैमरा', 'micromax-budget-ione-launch', '<p dir="ltr">शुक्रवार को भारतीय टेक कंपनी माइक्रोमैक्स ने अपने नए बजट फोन आईवन को लॉन्च किया। फोन की कीमत 4,999 रुपए है। माइक्रोमैक्स के इस फोन में नॉच डिस्प्ले, ऑक्टाकोर चिपसेट है। फोटोग्राफी के लिए फोन के फ्रंट और बैक में 5 मेगापिक्सल का कैमरा है। यह ब्लैक और ब्लू जैसे दो कलर ऑप्शन में उपलब्ध है। इसकी बिक्री आज से ही शुरू हो गई है।</p>\r\n\r\n<p dir="ltr">कंपनी ने दिसंबर 2018 में ही माइक्रोमैक्स इंफिनिटी एन11, इंफिनिटी एन12 स्मार्टफोन को बाजार में लॉन्च किया था। इनकी कीमत दस हजार रुपए से कम थी, जिसमें डुअल रियर कैमरा और डिस्प्ले नॉच था। अब कंपनी ने अपने बजट स्मार्टफोन माइक्रोमैक्स आईवन को लॉन्च किया है।</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">डिस्प्ले</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">5.45 इंच</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">प्रोसेसर</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">ऑक्टाकोर SC9863</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">ओएस</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">एंड्रॉयड 9 पाई</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">फ्रंट/रियर कैमरा &nbsp;&nbsp;&nbsp;</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">5 मेगापिक्सल</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">रैम</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">2GB</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">स्टोरेज</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">16GB(एक्सपेंडेबल 128GB)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">बैटरी</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">2200mAh</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h4 dir="ltr">यह है फोन की स्पेसिफिकेशन</h4>\r\n\r\n<ol>\r\n	<li dir="ltr">\r\n	<p dir="ltr">माइक्रोमैक्स आईवन के टॉप में बड़ा सा नॉच है, हालांकि इसके बॉटम में छोटा सा चिन है। फोन के फ्रंट और बैक में सिंगल कैमरा है, दोनों ही 5 मेगापिक्सल के हैं। इसके मैट प्लास्टिक ब्लैक रियर पैनल है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">यह फोन Unisoc SC9863 ऑक्टाकोर प्रोसेसर से लैस है। इसमें 2GB का रैम और 16GB का इंटरनल स्टोरेज है। माइक्रो एसडी कार्ड की मदद से इसके स्टोरेज को 128GB तक बढ़ाया जा सकता है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फोटोग्राफी की बात करें तो, फोन 5 मेगापिक्सल का फ्रंट कैमरा विद फ्लैश है, साथ में सेल्फी और वीडियो कॉलिंग के लिए 5 मेगापिक्सल का रियर कैमरा मिलता है। कैमरे में रियल टाइम बुके, टाइम लैप्स और स्लो-मोशन जैसे फीचर है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">फ्रंट और रियर कैमरों में फोटोग्राफी के लिए 9 मोड मिलते हैं। इसमें 2,200mAh की बैटरी है जो फोन को पावर देती है।</p>\r\n	</li>\r\n</ol>', '1', 'image/55d07ae9c49fa6ac92fae33847c48e62.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:17:48', '2019-07-13 10:52:00', NULL),
(21, 'गूगल के सबसे सस्ते पिक्सल 3a और 3a XL लॉन्च, 15 मिनट की चार्जिंग पर 7 घंटे तक चलेंगे; प्री-बुकिंग हुई शुरू', 'google-cheapest-pixels', '<p dir="ltr">गैजेट डेस्क. गूगल ने अपनी सालाना डेवलपर्स कॉन्फ्रेंस I/O 2019 के पहले दिन पिक्सल सीरीज के दो स्मार्टफोन पिक्सल 3a और पिक्सल 3a XL को लॉन्च किया। ये दोनों पिक्सल 3 और पिक्सल 3 XL के अपडेट वर्जन हैं। कंपनी ने दोनों स्मार्टफोन का हार्डवेयर स्पेसिफिकेशन लगभग एक जैसा रखा है, लेकिन डिस्प्ले साइज और कुछ फीचर्स में अंतर है। इन फोन की बिक्री 15 मई से शुरू होगी। फ्लिपकार्ट पर इनकी प्री-बुकिंग कर सकते हैं। लॉन्चिंग ऑफर में कस्टमर को कुछ ऑफर्स भी मिलेंगे। पिक्सल 3a की कीमत 39,999 रुपए और पिक्सल 3a XL की कीमत 44,499 रुपए है। बता दें कि गूगल पिक्सल 3 (4GB+64GB) की मौजूदा कीमत 56,999 रुपए और पिक्सल 3XL (4GB+64GB) की मौजूदा कीमत 61,999 रुपए है।</p>\r\n\r\n<p>पिक्सल 3a और 3a XL का लॉन्चिंग ऑफर</p>\r\n\r\n<p>इन दोनों फोन की प्री-बुकिंग फ्लिपकार्ट पर 8 मई से शुरू हो रही है। जो यूजर</p>', '1', 'image/f39ce8a24d28f49599fbc21e16c30899.jpeg', 1, 7, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:19:37', '2019-11-15 21:51:41', NULL);
INSERT INTO `articles` (`id`, `title`, `alias`, `description`, `author_id`, `image`, `content_id`, `category_id`, `language_id`, `status`, `recent`, `trending`, `popular`, `how`, `published`, `created_at`, `updated_at`, `deleted_at`) VALUES
(22, 'Tata Sky एसडी और एचडी सेट-टॉप बॉक्स की कीमतों में कटौती', 'tata-sky-sd-hd-setup-box-price-reduced', '<p dir="ltr">Tata Sky ने अपने सेट-टॉप बॉक्स की कीमतों में 400 रुपये की कटौती कर दी है। टाटा स्काई एचडी और एसडी दोनों ही सेट-टॉप बॉक्स की कीमतों में बदलाव किया गया है। Tata Sky का दावा है कि कंपनी के इस कदम का उद्देश्य भारत के कई अप्रयुक्त कोनों तक पहुंचना है। सेट-टॉप बॉक्स नई कीमत के साथ स्थानीय डीलर और रिटेल स्टोर पर मिलेगा। Tata Sky ने हाल ही में अपने ग्राहकों के लिए स्टार के नए ब्रॉडकास्टर पैक लॉन्च किए हैं। टाटा स्काई द्वारा लॉन्च किए इन पैक की कीमत 49 रुपये (टैक्स के बिना) से शुरू होती है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">टाटा स्काई एचडी सेट-टॉप बॉक्स अब 1,800 रुपये में उपलब्ध होगा तो वहीं इसके एसडी सेट-टॉप बॉक्स के लिए अब 1,600 रुपये चुकाने होंगे। आप लोगों की जानकारी के लिए बता दें कि ये <a href="https://apis.kostprice.com/api/redirect/t.php?from=&amp;redirect=https%3A%2F%2Fwww.airtel.in%2Fdth%2F" target="_blank">Airtel Digital TV</a> के सेट-टॉप बॉक्स की कीमतों के समान हैं। Dish TV एक <a href="https://www.dishtv.in/maximumHD.aspx" target="_blank">प्रमोशनल ऑफर</a> चला रही है जिसके तहत वह अपने एचडी सेट-टॉप बॉक्स को सीमित अवधि के लिए 1,690 रुपये में बेच रही है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">Tata Sky ने हाल ही में अपनी डिजिटल कंटेंट सर्विस को लॉन्च किया है और इसका नाम है Tata Sky Binge। यह सर्विस अमेज़न फायर टीवी स्टिक-टाटा स्काई एडिशन (Amazon Fire TV Stick - Tata Sky Edition) के माध्यम से उपलब्ध है। टाटा स्काई ने यह भी घोषणा की है कि यह सर्विस Eros Now, Hotstar, हंगामा प्ले और Sun NXT के डिजिटल कंटेंट को पेश करेगी।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">Tata Sky ने हाल ही में अपने ग्राहकों के लिए स्टार के नए ब्रॉडकास्टर पैक <a href="https://gadgets.ndtv.com/hindi/telecom/tata-sky-launches-4-new-broadcaster-packs-49-news-2041246" target="_blank">लॉन्च</a> किए हैं। टाटा स्काई द्वारा लॉन्च किए इन पैक की कीमत 49 रुपये (टैक्स के बिना) से शुरू होती है। Airtel Digital TV, D2h और Dish TV जैसी अन्य कंपनियों से मुकाबले के लिए Tata Sky के पास विभिन्न क्यूरेटेड पैक, क्षेत्रीय पैक, ऐड-ऑन पैक और a-la-carte चैनल भी हैं।</p>', '1', 'image/6595275cd29e9403323ea380348b72f0.jpeg', 1, 6, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:30:44', '2019-11-15 21:51:40', NULL),
(23, 'Airtel Digital TV लाई सब्सक्राइबर्स के लिए नए लॉन्ग-टर्म डीटीएच पैक, जानें कीमतें', 'airtel-digital-tv-lie-subscribers', '<p dir="ltr">Airtel Digital TV ने अपने सब्सक्राइबर्स के लिए 6 नए लॉन्ग टर्म DTH पैक लॉन्च किए है। हालांकि इनमें से कुछ पैक एसडी और एचडी दोनों सब्सक्राइबर्स के लिए मान्य हैं तो वहीं अन्य पैक केवल एसडी सब्सक्राइबर तक ही सीमित हैं। यह जानकारी एक रिपोर्ट के जरिए सामने आई है। यह सभी पैक्स अब कंपनी की वेबसाइट, आधिकारिक ऐप या कस्टमर केयर के जरिए Airtel Digital TV सब्सक्राइबर्स के लिए उपलब्ध हैं। बता दें कि नए एयरटेल डिजिटल टीवी लॉन्ग टर्म पैक में हिंदी वैल्यू एसडी पैक, अल्टीमेट धमाका पैक (यूडीपी) एसडी, गुजरात वैल्यू स्पोर्ट्स एसडी, गुजरात वैल्यू स्पोर्ट्स एचडी, गुजरात मेगा एसडी और गुजरात मेगा एचडी पैक शामिल हैं।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">Airtel Digital TV पैक दो वैधता विकल्पों के साथ आएंगे एक तो 6 महीने के साथ 15 दिन फ्री और दूसरा 11 महीने के साथ एक महीने फ्री। ध्यान देने वाली बात यह है कि यूडीपी पैक केवल 6 महीने या 12 महीने के लिए वैध है और इसमें कोई फ्री अवधि शामिल नहीं है। Airtel Digital TV के इन नए पैक को <a href="https://telecomtalk.info/airtel-digital-tv-long-term-packs/197422/" target="_blank">टेलीकॉम टॉक</a> द्वारा स्पॉट किया गया है।</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Airtel Digital TV Long Term Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">HD or SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Duration (days)</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Monthly Price</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Pack Price</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Multiple Connection Price</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Hindi Value Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">195</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 280</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 1,681</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 1,326</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Hindi Value Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">360</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 280</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 3,081</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 2,431</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Ultimate Dhamaka Pack (UDP)</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">180</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 200</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 799</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 799</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Ultimate Dhamaka Pack (UDP)</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">360</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 200</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 1,349</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 1,349</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Value Sports Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">195</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 336</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 2,016</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 1,662</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Value Sports Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">360</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 336</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 3,696</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 3,047</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Value Sports Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">HD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">195</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 475</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 2,852</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 2,352</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Value Sports Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">HD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">360</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 475</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 5,227</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 4,312</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Mega Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">195</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 510</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 3,062</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 2,424</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Mega Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">SD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">360</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 510</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 5,612</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 4,444</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Mega Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">HD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">195</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 699</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 4,197</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 3276</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">Gujarat Mega Pack</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">HD</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">360</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 699</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 7,689</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">Rs. 6,006</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">जैसा कि आप ऊपर टेबल में देख सकते हैं हिंदी वैल्यू पैक और अल्टीमेट धमाका पैक केवल एसडी ग्राहकों के लिए हैं तो वहीं गुजरात वैल्यू स्पोर्ट्स और गुजरात मेगा पैक एचडी और एसडी दोनों ही ग्राहकों के लिए उपलब्ध हैं। एयरटेल डिजिटल टीवी की प्रतिद्धंदी कंपनी Tata Sky ने हाल ही में अपने एचडी और एसडी सेट-टॉप बॉक्स की कीमतों में <a href="https://gadgets.ndtv.com/hindi/telecom/tata-sky-sd-and-hd-set-top-box-receive-price-cut-in-india-news-2042056" target="_blank">कटौती</a> की है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">टाटा स्काई एचडी सेट-टॉप बॉक्स अब 1,800 रुपये में उपलब्ध होगा तो वहीं इसके एसडी सेट-टॉप बॉक्स के लिए अब 1,600 रुपये चुकाने होंगे। एयरटेल डिजिटल टीवी पहले ही अपना एचडी सेट-टॉप बॉक्स 1,800 रुपये और एसडी सेट-टॉप बॉक्स 1,650 रुपये में दे रही है।</p>', '1', 'image/be939af61c5752f4b0556fbb397b72a5.jpeg', 1, 6, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:33:52', '2019-11-15 21:51:56', NULL),
(24, 'Tata Sky ने लॉन्च किए चार नए ब्रॉडकास्टर पैक, कीमत 49 रुपये से शुरू', 'tata-sky-lauch-four-new-broadcast-pack', '<p dir="ltr">Tata Sky ने पिछले महीने क्षेत्रीय स्मार्ट पैक पेश करने के बाद अब भारत में अपने ग्राहकों के लिए स्टार के नए ब्रॉडकास्टर पैक लॉन्च किए हैं। टाटा स्काई द्वारा लॉन्च किए इन पैक की कीमत 49 रुपये (टैक्स के बिना) से शुरू होती है। आप लोगों की जानकारी के लिए बता दें कि Tata Sky के ये नए ब्रॉडकास्टर पैक बंगाली दर्शकों के लिए उतारे गए हैं। Tata Sky द्वारा लॉन्च किए इन चार नए पैक के नाम हैं- स्टार बंगाली वैल्यू ए पैक, स्टार बंगाली वैल्यू बी पैक, स्टार बंगाली प्रीमियम ए पैक और स्टार बंगाली प्रीमियम बी पैक।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">टाटा स्काई के चार नए क्षेत्रीय ब्रॉडकास्टर पैक को सबसे पहले <a href="https://telecomtalk.info/tata-sky-debuts-new-packs/195515/" target="_blank">टेलीकॉम टॉक</a> द्वारा रिपोर्ट किया गया था। सबसे किफायती पैक स्टार बंगाली वैल्यू ए पैक है और इसकी कीमत 49 रुपये (टैक्स के बाद 57.8 रुपये) है। यह पैक 14 एसडी चैनलों के साथ आता है जिसमें नेशनल जियोग्राफिक, स्टार गोल्ड, जलशा मूवी, स्टार स्पोर्ट्स 2, स्टार स्पोर्ट्स 3 और अन्य चैनल शामिल हैं।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">दूसरा पैक है स्टार बंगाली वैल्यू बी पैक और इसकी कीमत भी ऊपर बताए गए पैक के समान है। यह पैक भी 14 एसडी चैनल के साथ आता है। हालांकि, मुख्य अंतर यह है कि स्टार बंगाली वैल्यू बी पैक स्टार स्पोर्ट्स 1 बंगला के बजाय स्टार स्पोर्ट्स 1 हिंदी से लैस है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">तीसरा पैक है स्टार बंगाली प्रीमियम ए पैक और इसकी कीमत 79 रुपये (टैक्स के बाद 93.2 रुपये) है। यह पैक 17 चैनल के साथ आता है जिसमें आपको फॉक्स लाइफ, नेट जियो वाइल्ड, नेशनल जियोग्राफिक, स्टार गोल्ड सेलेक्ट, स्टार स्पोर्ट्स 1, स्टार स्पोर्ट्स 2, स्टार स्पोर्ट्स 3, स्टार स्पोर्ट्स 1 बंगला और अन्य चैनल मिलते हैं।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">स्टार बंगाली प्रीमियम बी पैक की कीमत 100.30 रुपये प्रति माह (टैक्स के साथ)। यह पैक 21 चैनल के साथ आता है, बता दें कि स्टार स्पोर्ट्स 1 हिंदी इस पैक में स्टार स्पोर्ट्स 1 बांग्ला की जगह लेगा। अतिरिक्त चैनलों में मूवीज़ ओके, स्टार उत्सव मूवीज़, स्टार भारत और स्टार उत्सव शामिल हैं। नए पैक कंपनी की <a href="https://www.tatasky.com/wps/portal/TataSky/packs" target="_blank">वेबसाइट</a> पर लाइव कर दिए गए हैं।</p>', '1', 'image/4f85995b5e72267470c5178f2ec860bd.jpeg', 1, 6, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:41:16', '2019-11-15 21:49:09', NULL),
(25, 'Airtel के 399 रुपये, 448 रुपये और 499 रुपये वाले प्लान में मिलेगा ज्यादा डेटा: रिपोर्ट', 'airtel--348-448-449-plan-with-data', '<p dir="ltr">Airtel अब अपने 399 रुपये, 448 रुपये और 499 रुपये वाले तीन प्रीपेड पैक में पहले की तुलना में अधिक डेटा मुहैया करा रही है। एयरटेल के इन तीनों ही प्लान में अब यूज़र्स को प्रतिदिन 400 एमबी अतिरिक्त डेटा दिया जाएगा। एयरटेल के इन प्रीपेड प्लान ( Airtel Prepaid Plans) में बदलाव के बाद अब यूज़र को प्रतिदिन 1.4 जीबी, 1.9 जीबी और 2.4 जीबी &nbsp;डेटा मिलेगा। कुछ समय पहले Airtel ने 129 रुपये और 249 रुपये वाले दो प्रीपेड प्लान को संशोधित किया था और अब इनमें से एक प्लान 4 लाख के लाइफ इंश्योरेंस कवर के साथ आता है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">सबसे पहले बात Airtel के 499 रुपये वाले प्रीपेड प्लान की। अब इस प्लान के साथ 2 जीबी डेटा के बजाय 2.4 जीबी प्रतिदिन डेटा मिलेगा। 400 एमबी प्रतिदिन डेटा के अलावा Airtel TV प्रीमियम सब्सक्रिप्शन मिलता है। इसके अलावा 4जी डिवाइस कैशबैक भी है, नया स्मार्टफोन खरीदने पर यूज़र को 2,000 रुपये का कैशबैक मिलेगा।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">प्लान के साथ एक साल के लिए नॉर्टन मोबाइल सिक्योरिटी और Wynk का भी फ्री सब्सक्रिप्शन मिलता है। इस प्लान की वैधता 82 दिनों की है और यह अनलिमिटेड कॉलिंग बिना किसी एफयूपी (फेयर यूसेज पॉलिसी) लिमिट के और प्रतिदिन 100 एसएमएस के साथ आता है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">अब बात Airtel के 448 रुपये वाले प्लान की। रिपोर्ट में कहा गया है कि अब इस प्लान के साथ 1.5 जीबी डेटा के बजाय 1.9 जीबी डेटा मिलेगा। इस प्लान की वैधता 82 दिनों की है। 400 एमबी प्रतिदिन डेटा के अलावा Airtel TV प्रीमियम सब्सक्रिप्शन, 4जी डिवाइस कैशबैक, नॉर्टन मोबाइल सिक्योरिटी और Wynk का फ्री सब्सक्रिप्शन मिलता है। एयरटेल का 448 रुपये वाला प्लान भी अनलिमिटेड कॉलिंग और प्रतिदिन 100 एसएमएस की सुविधा से लैस है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">Airtel के 399 रुपये वाले प्रीपेड प्लान के साथ अब 1 जीबी डेटा नहीं बल्कि 1.4 जीबी प्रतिदिन डेटा मिलेगा। इस प्लान की वैधता 84 दिनों की है, ऊपर बताए गए प्लान के साथ मिलने वाले फायदे इस प्लान के साथ भी मिलेंगे। <a href="https://telecomtalk.info/airtel-extra-data-prepaid-plans/197064/" target="_blank">टेलीकॉम टॉक</a> ने सबसे पहले इन रीचार्ज प्लान में बदलाव को स्पॉट किया था। फिलहाल, Airtel की वेबसाइट पर प्लान में किए गए बदलाव का ज़िक्र नहीं है। हम भी अतिरिक्त डेटा वाले फायदे से रूबरू नहीं हुए।</p>', '1', 'image/cff647be046086553cfeddca48b928c3.png', 1, 6, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:43:47', '2019-11-15 21:49:08', NULL),
(26, 'Jio Prime मेंबरशिप फिर एक साल के लिए मुफ्त', 'jio-prime-membership-free-for-a-year', '<p dir="ltr">Reliance Jio ने 99 रुपये की Jio Prime मेंबरशिप एक साल और मुफ्त में देने का फैसला किया है। कंपनी ने उन सभी जियो सब्सक्राइबर्स के लिए जियो प्राइम मेंबरशिप की आखिरी तारीख का बढ़ाने का फैसला किया है, जिनके पास पहले से जियो प्राइम मेंबरशिप थी। बता दें कि जियो प्राइम मेंबरशिप यूज़र्स को जियो सिनेमा, जियो सिनेमा और जियो टीवी जैसे Reliance Jio ऐप्स का मुफ्त सब्सक्रिप्शन मिलता है। इसके अलावा अन्य ऑफर्स भी उपलब्ध होते हैं। गौर करने वाली बात है कि यह पहला मौका नहीं है जब रिलायंस जियो ने अपने सब्सक्राइबर्स के लिए जियो प्राइम मेंबरशिप मुफ्त में देने का फैसला किया है। टेलीकॉम कंपनी ने बीते साल भी ऐसा ही किया था।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">क्या आपके जियो प्राइम मेंबरशिप की आखिरी तारीख बढ़ी है या नहीं, यह जानने के लिए MyJio ऐप में जाएं और यहां माय प्लान्स सेक्शन की जांच करें। सेक्शन में जानकारी दी गई है कि मेंबरशिप को एक साल बढ़ाने का फैसला किया गया है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">इसमें लिखा है,&quot;जियो प्राइम मेंबरशिप एक साल मुफ्त में एक्सेस करने के लिए आपके आवेदन को रजिस्टर कर लिया गया है। आप एक और साल के लिए जियो प्राइम के फायदे पाते रहेंगे। धन्यवाद!&quot;</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr"><img alt="jio" src="https://lh5.googleusercontent.com/b60T1j3rn7_lcbH_NEz5OF_YEe0UWGYtTPWE4lzNVvszu5OsOjJvNm6xKyMfxrw2mwip2g34E4PCiMP4lho2531-EJ5NFCYDvk-3SC8WsoxO8xTErtyvstbmiXt_Zv5XvjKgbA9L" style="height:351px; width:624px" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">कंपनी के इस फैसले के बाद उन सारे Reliance Jio सब्सक्राइबर्स को फायदा होगा जिनकी जियो प्राइम मेंबरशिप खत्म होने वाली थी। अब बिना किसी शुल्क के जियो यूज़र इस सुविधा का फायदा उठा सकेंगे। हालांकि, नए Reliance Jio सब्सक्राइबर्स को एक साल की मेंबरशिप के लिए 99 रुपये का भुगतान करना होगा।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">जिन जियो सब्सक्राइबर्स के लिए पास जियो प्राइम मेंबरशिप है, उनके लिए ही यह सुविधा है। इसके बारे में जानकारी <a href="https://telecomtalk.info/reliance-jioprime-membership-renewal/196307/" target="_blank">Telecom Talk</a> ने सबसे पहले दी। Gadgets 360 निजी तौर पर इसकी पुष्टि कर सकता है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">जैसा कि हमने आपको पहले बताया, बीते साल भी जियो प्राइम मेंबरशिप के लिए कंपनी ने अपने यूज़र्स से कोई शुल्क नहीं लिया था। लेकिन इस बार प्रक्रिया और आसान कर दी है। बीते साल जहां सब्सक्राइबर्स को रजिस्टर करना पड़ा था। इस बार मेंबरशिप की आखिरी तारीख अपने आप बढ़ा दी गई है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">अगर आपके पास जियो प्राइम मेंबरशिप है तो आप Jio Cinema, Jio Music और Jio TV जैसे रिलायंस जियो ऐप्स का मुफ्त में मज़ा ले सकते हैं।</p>', '1', 'image/a35bfbeb090f9754614dfc658b9c86a2.png', 1, 6, 1, 1, 0, 0, 0, 0, 0, '2019-05-27 00:45:29', '2019-11-15 21:49:06', NULL),
(27, 'BSNL के 198 रुपये वाले प्रीपेड प्लान में अब मिलेगा ज़्यादा डेटा', 'bsnl-198-rupees-get-prepaid-plan', '<p>&nbsp;</p>\r\n\r\n<p dir="ltr">सरकारी टेलीकॉम कंपनी भारत संचार निगम लिमिटेड (BSNL) ने अपने दो प्रीपेड स्पेशल टैरिफ वाउचर में बदलाव किए हैं। अब सब्सक्राइबर्स को पहले से ज़्यादा डेटा मिलेगा। 47 रुपये और 198 रुपये वाले प्रीपेड प्लान में बदलाव किया गया है। कंपनी की कोशिश है कि Jio, Airtel और अन्य टेलीकॉम के प्रोडक्ट को मजबूती से चुनौती दी जाए। बदलाव के बाद 198 रुपये वाले प्रीपेड रीचार्ज पैक में अब हर दिन 2 जीबी डेटा मिलेगा और वैलिडिटी भी लगभग दोगुनी कर दी गई है। BSNL ने हाल ही में बंपर ऑफर की तारीख बढ़ाने का फैसला किया था।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">सबसे पहले बात 198 रुपये वाले बीएसएनएल प्रीपेड प्लान की। टेलीकॉम टॉक की रिपोर्ट के मुताबिक, हर दिन 2 जीबी डेटा मिलेगा और वैधता 54 दिनों की होगी। पहले इस पैक में ग्राहकों को 1.5 जीबी डेटा मिलता था। इसके अलावा वैधता 28 दिनों की थी। BSNL ने प्लान को अपग्रेड कर दिया है। वैलिडिटी लगभग दोगुनी हो गई है। पहले इस रीचार्ज पैक में कुल 42 जीबी डेटा मिलता था। अब सब्सक्राइबर्स 108 जीबी डेटा पाएंगे।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">दूसरी तरफ, BSNL ने 47 रुपये वाले प्रीपेड प्लान में भी बदलाव किया है। इसमें अब 1 जीबी डेटा और अनलिमिटेड लोकल-एसटीडी कॉल की सुविधा मिलती है। पैक की वैधता 9 दिनों की है। इस प्लान में पहले कोई डेटा नहीं मिलता था। ग्राहक को मुंबई और दिल्ली को छोड़कर बाकी सभी सर्कल में अनलिमिटेड लोकल-एसटीडी कॉल की सुविधा थी। पहले इस प्लान की वैधता 11 दिनों की थी। यानी कंपनी ने डेटा तो दिया है, लेकिन वैलिडिटी दो दिन कम कर दी है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">जैसा कि हमने आपको पहले बताया, BSNL ने अपने बंपर ऑफर को एक्सटेंड कर दिया है। अब प्रीपेड सब्सक्राइबर्स 30 जून तक फायदा पा सकेंगे. बंपर ऑफर में चुनिंदा प्रीपेड पैक में यूज़र्स को प्रतिदिन अतिरिक्त 2.21 जीबी डेटा मिलता है। इस ऑफर को पहले 30 अप्रैल तक एक्सटेंड किया गया था। अब ग्राहक इसका फायदा 30 जून तक पाएंगे।</p>', '1', 'image/a590bfbe9b7a914ea2daec05885995e2.png', 1, 6, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:47:27', '2019-11-15 21:51:37', NULL),
(28, 'Vodafone 249 रुपये के रीचार्ज के साथ आपके घर पर करेगी नए 4जी प्रीपेड सिम की डिलिवरी', 'vodaphone-249-recharge-prepaid-sim-delivery', '<p dir="ltr">Vodafone से नए प्रीपेड कनेक्शन लेने की चाहत रखने वालों के लिए अच्छी खबर है। कंपनी अब घर पर नए 4जी सिम कार्ड की डिलिवरी करेगी। लेकिन इसके लिए ग्राहकों को पहला रीचार्ज वोडाफोन के 249 रुपये वाले पैक से कराना होगा। बताया गया है कि ग्राहकों को इस ऑफर का फायदा वोडाफोन की वेबसाइट से मिलेगा। यहीं पर 249 रुपये वाले पैक से रीचार्ज कराना होगा। Vodafone का 249 रुपये वाला प्रीपेड पैक प्रतिदिन 1.5 जीबी डेटा, अनलिमिटेड लोकल- एसटीडी कॉल और मुफ्त एसएमएस के साथ आता है। इस पैक की वैधता 28 दिनों की है। इसके अलावा Vodafone ने अपने रेड पोस्टपेड सब्सक्राइबर्स के लिए फायदा बढ़ाकर 20,498 रुपये तक कर दिया है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">सबसे पहले बात सिम कार्ड की मुफ्त डिलिवरी की। नए Vodafone यूज़र्स को <a href="https://buyonline.vodafone.in/new-connection/request-prepaid-sim-connection-online?utm_campaign=homepage_banner&amp;utm_medium=cpm&amp;utm_content=doorstep-delivery&amp;utm_adtype=banner" target="_blank">कंपनी की वेबसाइट</a> से प्रीपेड प्लान के लिए सब्सक्राइब करना होगा। आप जैसे ही &lsquo;Buy Now&#39; बटन पर टैप करेंगे। वेबसाइट पर आपसे कुछ बेसिक सवाल पूछे जाएंगे। इसके बाद आपके पास दो विकल्प होंगे। आप अपनी पसंद का नंबर चुन सकते हैं या मौज़ूदा नंबर को मोबाइल नंबर पोर्टिब्लिटी के ज़रिए वोडाफोन पर ट्रांसफर कर सकते हैं। अगर आप पहला विकल्प चुनते हैं तो Vodafone की ओर से कुछ नंबर सुझाए जाएंगे जिनमें से आप किसी एक को चुन सकते हैं। अगर आप दूसरा विकल्प चुनते हैं तो उस नंबर का ब्योरा देना होगा जिसे आप पोर्ट कराना चाहते हैं। Vodafone ने बताया है कि एमएनपी को इस्तेमाल करने के लिए यूज़र्स को मौज़ूदा नेटवर्क से कम से कम 90 दिनों तक जुड़े रहना होगा।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">इसके बाद Vodafone द्वारा डिलिवरी का ब्योरा मांगा जाएगा। आपसे प्रीपेड कनेक्शन के लिए 249 रुपये का भुगतान करने को कहा जाएगा। जैसे ही ये सारी प्रक्रिया पूरी हो जाएगी। Vodafone यह सुनिश्चित करेगी कि सिम आपके घर पर मुफ्त में डिलीवर हो जाए। <a href="https://telecomtalk.info/vodafone-doorstep-delivery-prepaid-sim/195692/" target="_blank">Telecom Talk</a> ने इसके बारे में सबसे पहले जानकारी दी।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">Vodafone ने अपने रेड पोस्टपेड प्लान्स को और फायदेमंद बना दिया है। अब 399 रुपये वाले प्लान में 40 जीबी मासिक डेटा, अनलिमिटेड कॉलिंग सुविधा, वोडाफोन प्ले सब्सक्रिप्शन, 12 महीने के लिए अमेज़न प्राइम सब्सक्रिप्शन और साल भर के लिए ZEE5 का सब्सक्रिप्शन मिलेगा। कंपनी का कहना है कि यह फायदा 4,498 रुपये का है। Telecom Talk की मानें तो महंगे प्लान्स के साथ वोडाफोन 20,498 रुपये तक का फायदा दे रही है।</p>', '1', 'image/099c45fe2159f93dd285ffe676bfe210.jpeg', 1, 6, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 00:49:57', '2019-11-15 21:49:13', NULL),
(29, 'आर्टमिस 2024 का शेड्यूल जारी, आधी सदी बाद चांद पर जाएगा मानव', 'artificial-2024-schedule-start', '<p dir="ltr">नासा ने गुरुवार को अपने आर्टमिस 2024 का शेड्यूल जारी कर दिया। इसके तहत लगभग आधी सदी बाद मानव को फिर से चांद पर भेजा जाना है। आर्टमिस-1 के तहत 2020 में चांद पर केवल केवल अंतरिक्ष यान भेजा जाएगा। दूसरे चरण में अंतरिक्ष यात्री चांद की आर्बिट में जाएंगे तो तीसरे मिशन में अंतरिक्ष यात्री उपग्रह पर अपने कदम रखेंगे। आर्टमिस-3 के तहत पहली बार कोई महिला अंतरिक्ष यात्री चांद पर अपने कदम रखेगी।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">बोईंग से लॉन्च किए जाएंगे तीनों मिशनः प्रशासक</p>\r\n\r\n<p dir="ltr">नासा के प्रशासक जिम ब्राइडेनस्टाइन का कहना है कि तीनों मिशन बोईंग से लॉन्च किए जाएंगे। यह अब तक का सबसे बड़ा रॉकेट है। हालांकि, रॉकेट को तैयार करने की प्रक्रिया अभी चल ही रही है। इसमें देरी के लिए कई बार नासा की आलोचना भी हो चुकी है। इसमें ओरियन कैप्सूल लगाने के लिए लॉकहीड मार्टिन को टेंडर दिया गया है।</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">ब्राइडेनस्टाइन का कहना है कि इनके अलावा पांच और लॉन्च भी किए जाने हैं। इनके जरिए लुनार मिनी स्टेशन गेट-वे का सामान भेजा जाना है। ये मिशन 2022 से लेकर 2024 तक भेजे जाएंगे। गेट-वे चांद पर पहुंचने का दरवाजा होगा। पांचों लॉन्च भेजने का काम निजी कंपनियां करेंगी। इसके लिए उन्हें नासा की तरफ से भुगतान किया जाएगा।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">नासा प्रशासक के मुताबिक- गेट-वे का पहला मॉडल तैयार करने के लिए निजी कंपनी मैक्सर का चयन किया गया है। लैंडर तैयार करने के लिए अंतरिक्ष विज्ञान के क्षेत्र में काम कर रही कंपनियों जैसे बोईंग और लॉकहीड मार्टिन ने पेशकश की है। अब जेफ बोजॉस की कंपनी ब्लू ऑरिजिन भी इस रेस में शामिल हो गई है। कंपनी का चयन नासा का करना है। &nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">ब्राइडेनस्टाइन का कहना है कि नासा के पास हार्डवेयर नहीं है। इसे वह बाहर से खरीद रहे हैं। उनका कहना है कि 2024 बेहद नजदीक है। जल्दी से जल्दी सारा काम पूरा करना है। हमारी योजना चांद पर जाकर अटकने की नहीं है, बल्कि एक कदम आगे बढ़कर मंगल ग्रह पर फतह करने की है।</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p dir="ltr">अपोलो की जुड़वां बहनें थीं आर्टमिस</p>\r\n\r\n<p dir="ltr">चांद पर भेजे गए पहले मिशन का नाम अपोलो था। यूनान की पौराणिक कथाओं के मुताबिक आर्टमिस अपोलो की जुड़वां बहनें थीं। अमेरिका अभी तक चांद पर छह मिशन भेज चुका है। अपोलो-11 अमेरिका समेत पूरी दुनिया की तरफ से चांद पर भेजा गया पहला कामयाब मानव मिशन था। इसके जरिए 20 जुलाई 1969 को नील आर्मस्ट्रॉन्ग और एडविन ऑल्ड्रिन चांद की जमीन पर उतरे थे।</p>', '1', 'image/986cb963a06b1e0a768f9a2053ab2ffb.jpeg', 1, 11, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 01:15:39', '2019-07-13 10:48:12', NULL),
(30, 'चांद पर 2024 तक इंसान भेजने के लिए 11 कंपनियों में होड़, यान के 316 करोड़ रु. तक के मॉडल बना', 'human-reached-on-moon-2024', '<p dir="ltr">चांद पर 2024 तक दोबारा इंसान भेजने के लिए नासा ने 11 कंपनियों को चुना है। अंतरिक्ष यात्री के तौर महिला भी हो सकती है। नासा के अनुसार, अगले 6 महीने में एयरोस्पेस इंजीनियरिंग की 11 कंपनियों में से किसी एक पार्टनर का चयन किया जाना है, ताकि मिशन के लिए जरूरी उपकरणों को डिजाइन किया जा सके। मिशन के तहत नासा की योजना स्पेस स्टेशन के स्ट्रक्चर (कैप्सूल) बनाने की है, जो गेटवे का काम करेगा। यह चांद की सतह पर लैंडिग की जगह खोजेगा।</p>\r\n\r\n<p dir="ltr">अगले कुछ सालों में चंद्रमा की निचली कक्षा में लॉन्च होने वाले कैप्सूल के निर्माण का काम शुरू होगा। नासा द्वारा चुनी गई कंपनियों का मुख्य फोकस आर्टमिस मिशन के लिए तीन अलग तरह के पुर्जे बनाने पर होगा। इसमें वह कैप्सूल भी होगा जिसमें एस्ट्रोनॉट्स चांद तक जाएंगे और वहां से वापस आएंगे।</p>\r\n\r\n<p dir="ltr">पार्टनरशिप में हार्डवेयर के संचालन पर फोकस</p>\r\n\r\n<p dir="ltr">नासा मुख्यालय में मानव-चांग अन्वेषण कार्यक्रमों के निदेशक मार्शल स्मिथ ने कहा, &quot;चंद्रमा पर अपनी वापसी को हम गति दे रहे हैं। इससे हम अपने पारंपरिक तरीके से किए जाने काम को भी चुनौती दे रहे हैं। हम हार्डवेयर के विकास और उनके संचालन को पार्टनरशिप में व्यवस्थित करेंगे। हमारी टीम जितनी जल्दी हो सके, चांद पर दोबारा उतरने को बेताब है। पब्लिक/प्राइवेट पार्टनरशिप की यह टीम चांद की सतह पर मानव कदम को उतारने वाले सिस्टम का भी अध्ययन कर रही है।</p>\r\n\r\n<p dir="ltr">20% फंड कंपनियों को लगाना है</p>\r\n\r\n<p dir="ltr">कंपनियों ने चांद पर भेजे जाने वाले रॉकेट के मॉडल भी बनाए हैं। इनमें से एक रॉकेट की कीमत 316 करोड़ रुपए है। इसके साथ ही प्रत्येक कंपनी को कुल लागत का कम से कम 20% फंड खुद लगाना है। इस एक कदम से नासा की उम्मीद है कि भविष्य के मिशन पर लागत कम होगी, जिससे करदाताओं पर बोझ कम होगा।</p>\r\n\r\n<p dir="ltr">इन 11 कंपनियों में से होगा चयन</p>\r\n\r\n<p dir="ltr">1. एयरोजेट रॉकेटडाइन</p>\r\n\r\n<p dir="ltr">2. ब्लू ओरिजिन</p>\r\n\r\n<p dir="ltr">3. स्पेसएक्स</p>\r\n\r\n<p dir="ltr">4. बोइंग</p>\r\n\r\n<p dir="ltr">5. डायनेस्टिक</p>\r\n\r\n<p dir="ltr">6. लॉकहीड मार्टिन</p>\r\n\r\n<p dir="ltr">7. मास्टेन स्पेस सिस्टम्स</p>\r\n\r\n<p dir="ltr">8. नोथ्रोप ग्रूमन इनोवेशन सिस्टम्स</p>\r\n\r\n<p dir="ltr">9. ऑर्बिट बियॉन्ड</p>\r\n\r\n<p dir="ltr">10. सियरा नेवादा कॉरपोरेशन</p>\r\n\r\n<p dir="ltr">11. एसएसएल</p>', '1', 'image/f87b1398822456e832b0830eefa39eca.jpeg', 1, 11, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 01:17:42', '2019-07-13 10:47:34', NULL),
(31, 'चंद्रमा पर इजरायल के अंतरिक्ष यान के दुर्घटना वाले जगह का पता लगाया गया', 'israil-moon-satelite-destroyed', '<p dir="ltr">नासा ने चंद्रमा पर इजरायल के एक दुर्घटनाग्रस्त बेरेशीट यान के साइट का पता लगाया है। इजरायल की स्पेसइल संस्था ने स्पेस एक्स के फाल्कन 9 रॉकेट की मदद से अपना यान चंद्रमा पर भेजा था। नासा के अनुसार, अंतरिक्ष यान लैंडिंग के दौरान 11 अप्रैल को दुर्घटनाग्रस्त हो गया था।</p>\r\n\r\n<p dir="ltr">चंद्रमा की सतह से 90 किमी ऊपर हुआ क्रैश</p>\r\n\r\n<p dir="ltr">नासा ने बुधवार को अपने बयान में कहा कि लुनर रेकॉन्सेन्स ऑर्बिटर (एलआरओ) ने 22 अप्रैल को चंद्रमा की सतह पर लैंडिंग की। इसके बाद लूनर ने बेरेशीट यान के दुर्गटनाग्रस्त होने वाली जगह का पता लगाया। एलआरओ के मुताबिक, यह जगह चंद्रमा की सतह से 90 किलोमीटर ऊपर है।</p>\r\n\r\n<p dir="ltr">अमेरिकी स्पेस एजेंसी ने कहा कि कैमरा ने लगभग 10 मीटर चौड़े काले धब्बे की फोटो ली है। यह घटना वाली जगह की ओर इशारा करता है। काले धब्बे देखकर लगता है कि हार्ड लैंडिंग की वजह से सतह खुरदरा हो गया है।</p>\r\n\r\n<p dir="ltr">इजरायल ने 21 फरवरी को अंतरिक्ष यान रवाना किया था</p>\r\n\r\n<p dir="ltr">इजराइल ने स्पेस एक्स के फाल्कन-9 रॉकेट से 21 फरवरी को अंतरिक्ष यान रवाना किया था। यान ने 4 अप्रैल को चंद्रमा की कक्षा में सफलतापूर्वक प्रवेश किया था। इस अभियान में अगर कामयाबी मिलती तो इजराइल सोवियत संघ, अमेरिका और चीन के बाद चांद पर यान उतारने वाला चौथा देश बन जाता। भारत भी चंद्रमा पर यान (चंद्रयान-1) भेज चुका है, लेकिन यह सतह पर नहीं उतारा था। इसे परिक्रमा करते हुए प्रयोग करने के लिए भेजा गया था।</p>', '1', 'image/6863c440b6daecf0e8370b5741e9631f.jpeg', 1, 11, 2, 1, 0, 0, 0, 0, 0, '2019-05-27 01:19:19', '2019-07-13 10:47:16', NULL),
(32, 'नासा ने स्पेस के घर का थ्रीडी प्रिंटेड मॉडल पेश किया, इसमें लैब और फिटनेस एरिया भी होंगे', 'nasa-house-3d-printed', '<p dir="ltr">Airtel सिलिंडरनुमा इमारत की यह तस्वीर एक मॉडल घर की है जिसमें इंसान को मंगल ग्रह, चांद या उसके भी पार रह सकेंगे। एआई स्पेसफैक्ट्री ने इसे बनाया है और मार्शा नाम दिया है। नासा ने इसके लिए 2016 में मार्स हैबिटेट कंपीटिशन शुरू की थी। तीन फेज की कंपीटिशन में 60 दल थे। इन्हें सॉफ्टवेयर से मॉडल घर तक बनाने की चुनौती दी गई थी। मार्शा कंपीटिशन की विजेता रही। इसके लिए कंपनी को 3.5 करोड़ रुपए इनाम मिला है। मार्शा की हर मंजिल पर एक खिड़की है। सभी खिड़कियों को मिला दें, तो आसपास का 360 डिग्री नजारा दिखेगा।</p>\r\n\r\n<p dir="ltr">कठोर हवा और रेडिएशन से बचाने के लिए मार्शा में एक केस लगाया गया है। साथ ही, धरती से दूर रहने पर अकेलेपन से बचाने के लिए ऐसी लाइट्स लगाई गई हैं, जो धरती जैसा ही प्रकाश दे सकें।</p>', '1', 'image/1adf69a56fe709af116d7e8f39bae706.jpeg', 1, 11, 2, 1, 0, 1, 0, 0, 0, '2019-05-27 01:21:33', '2019-11-15 21:53:19', NULL),
(33, 'पहला निजी चंद्र अभियान नाकाम, चंद्रमा की सतह पर उतरते वक्त यान क्रैश', 'first-self-moon-satelite', '<p dir="ltr">इजराइल की निजी कंपनी का पहला चंद्र अभियान नाकाम रहा। उसका यान बेरेशीट गुरुवार को चंद्रमा की सतह पर उतरने की कोशिश में क्रैश हो गया। यह दुनिया का पहला निजी चंद्र अभियान था। इसे इजराइल की प्राइवेट कंपनी SpaceIL ने अमेरिकी कारोबारी एलन मस्क की कंपनी स्पेस एक्स के फाल्कन-9 रॉकेट से 21 फरवरी को रवाना किया गया था। यान ने 4 अप्रैल को चंद्रमा की कक्षा में सफलतापूर्वक प्रवेश किया था।</p>\r\n\r\n<p dir="ltr">इस अभियान में अगर कामयाबी मिलती तो इजराइल सोवियत संघ, अमेरिका और चीन के बाद चांद पर यान उतारने वाला चाैथा देश बन जाता। भारत भी चंद्रमा पर यान (चंद्रयान-1) भेज चुका है, लेकिन यह सतह पर नहीं उतारा था। इसे परिक्रमा करते हुए प्रयोग करने के लिए भेजा गया था।</p>\r\n\r\n<p dir="ltr">इंजन और ब्रेकिंग सिस्टम फेल हुआ</p>\r\n\r\n<p dir="ltr">बताया जा रहा है कि यान के इंजन में तकनीकी समस्या आने के बाद इसका ब्रेकिंग सिस्टम नाकाम हो गया था। यह चंद्रमा की सतह से करीब 10 किलोमीटर दूर था तभी पृथ्वी से इसका संपर्क टूट गया और रोवर चंद्रमा की सतह पर दुर्घटनाग्रस्त हो गया। इस मिशन के प्रमुख ने कहा, &lsquo;&lsquo;दुर्भाग्य से हम चंद्रमा पर उतरने वाले चौथे देश नहीं होंगे। हम चंद्रमा के बहुत करीब थे। हम इसे फिर से जांचेंगे और कोशिश करेंगे कि आखिर क्या गलत हुआ।&rsquo;&rsquo; बेरेशीट यान को SpaceIL और इजराइल एयरोस्पेस इंडस्ट्री ने तैयार किया था। बेरेशीट को हिब्रू में या जेनेसिस कहा जाता है, जिसका अर्थ उत्पत्ति या प्रारंभ होता है।</p>\r\n\r\n<p dir="ltr">नेतन्याहू का वादा- इजराइल चांद पर उतरेगा</p>\r\n\r\n<p dir="ltr">इजराइल के प्रधानमंत्री बेंजामिन नेतन्याहू इस मिशन पर कंट्रोल रूम से नजर रखे हुए थे। उन्होंने वैज्ञानिकों का हौसला बढ़ाते हुए कहा, &lsquo;&lsquo;इजराइल चांद पर उतरेगा। पहली बार में आप नाकाम रहे, फिर कोशिश करें।&rsquo;&rsquo; उन्होंने अगले दो साल में चंद्रमा पर यान उतारने की प्रतिज्ञा ली।</p>\r\n\r\n<p dir="ltr">आठ साल पहले SpaceIL की स्थापना हुई</p>\r\n\r\n<p dir="ltr">स्पेसिल की स्थापना 2011 में हुई थी। तब उसने चंद्रमा पर अंतरिक्ष यान को उतारने के लिए गूगल लुनार एक्स प्राइज (जीएलएक्सपी) प्रतियोगिता में भाग लिया था। बेरेशीट पहला इजराइली अंतरिक्ष यान था जिसे कंपनी ने पृथ्वी की कक्षा से परे यात्रा करने के लिए विकसित किया था।</p>', '1', 'image/d8d055c4ab2932bb751f79696567b3fc.jpeg', 1, 11, 2, 1, 0, 1, 0, 0, 0, '2019-05-27 01:23:17', '2019-11-15 21:53:10', NULL),
(34, 'अमेरिका ने कहा- भारत को अंतरिक्ष में खतरा महसूस हो रहा था, इसलिए टेस्ट किया', 'america-says-india-is-not-safe', '<p dir="ltr">अब अमेरिका ने भारत के ए-सैट परीक्षण का समर्थन किया है। अमेरिकी रक्षा मंत्रालय पेंटागन ने गुरुवार को कहा कि भारत अंतरिक्ष में खतरे को लेकर चिंतित था, इसी के चलते उसने ए-सैट परीक्षण किया। भारतीय रक्षा अनुसंधान संस्थान (डीआरडीओ) ने 27 मार्च को एंटी-सैटेलाइट (ए-सैट) मिसाइल का टेस्ट किया था। इस दौरान 300 किलोमीटर दूर पृथ्वी की निचली कक्षा में लाइव सैटेलाइट को नष्ट करने में कामयाबी मिली। भारत यह ताकत हासिल करने वाला अमेरिका, रूस और चीन के बाद चौथा देश बना। प्रधानमंत्री नरेंद्र मोदी ने परीक्षण की कामयाबी की जानकारी दी थी।</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">अमेरिका के पहले दिए 4 बयान</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">5 अप्रैल : पेंटागन ने ए-सैट के मलबे को लेकर संभावना जताई कि वह वायुमंडल में ही जलकर नष्ट हो जाएगा।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">3 अप्रैल : नासा ने कहा कि भारतीय सैटेलाइट के नष्ट होने से 400 टुकड़े हुए। ये अंतरिक्ष की कक्षा में चक्कर लगा रहे हैं। इसके चलते इंटरनेशनल स्पेस स्टेशन (आईएसएस) और उसमें रह रहे एस्ट्रोनॉट्स को खतरा पैदा हो गया है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">31 मार्च : पेंटागन ने भारत के मिशन शक्ति की जासूसी को सिरे से खारिज करते हुए कहा था कि अमेरिका को टेस्ट की पहले से जानकारी थी। अमेरिकी रक्षा विभाग के प्रवक्ता लेफ्टिनेंट डेविड डब्ल्यू एस्टबर्न ने कहा कि हमने किसी भी तरह से भारत की जासूसी नहीं की बल्कि हम भारत के साथ आपसी सहयोग को बढ़ावा दे रहे हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">29 मार्च : अमेरिकी कार्यवाहक रक्षा मंत्री पैट्रिक शैनहन ने कहा था कि हम भारत के परीक्षण का अध्ययन कर रहे हैं। शैनहन ने दुनिया के ऐसे किसी भी देश को चेतावनी दी थी जो भारत जैसे एंटी-सैटेलाइट परीक्षण के लिए विचार कर रहा है। उन्होंने यह भी कहा कि हम अंतरिक्ष में मलबा छोड़कर नहीं आ सकते।</p>\r\n	</li>\r\n</ul>', '1', 'image/0f895d466dcb9c4aba8dbecd0e699c04.jpeg', 1, 11, 2, 1, 0, 1, 0, 0, 0, '2019-05-27 01:25:18', '2019-11-15 21:53:07', NULL),
(35, 'अमेरिका की वजह से अंतरिक्ष में सबसे ज्यादा कचरा, कुल कचरे का सिर्फ 1.07% भारत का', 'america-is-the-main-resource-of-dump', '<p dir="ltr">अमेरिकी अंतरिक्ष एजेंसी नासा ने भारत के एंटी-सैटेलाइट हथियार के परीक्षण से निकले मलबे को खतरनाक बताया था। नासा प्रमुख जिम ब्राइडनस्टाइन का कहना था कि भारत के इस परीक्षण से 400 टुकड़े हुए जो अंतरिक्ष में चक्कर लगा रहे हैं। यह इंटरनेशनल स्पेस स्टेशन (आईएसएस) और उसमें रह रहे एस्ट्रोनोट्स के लिए खतरा है। हालांकि, नासा के खुद के आंकड़ों के मुताबिक, अंतरिक्ष में बाकी देशों के मुकाबले अमेरिका का कचरा सबसे ज्यादा है। वहीं, भारत ने कहा है कि ए-सैट के परीक्षण से जो टुकड़े अंतरिक्ष में मौजूद हैं, वे कुछ ही समय में नष्ट होकर धरती पर आ गिरेंगे।</p>\r\n\r\n<p dir="ltr">ये भी पढ़ें</p>\r\n\r\n<p dir="ltr"><a href="https://www.bhaskar.com/national/news/pentagon-says-india-satellite-debris-expected-to-burn-up-in-atmosphere-01514007.html" target="_blank">अमेरिका के बोल बदले, कहा- भारतीय उपग्रह का मलबा वायुमंडल में ही जल जाएगा</a></p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">अब अमेरिका ने कहा- मलबा वायुमंडल में आते ही जल जाएगा</p>\r\n\r\n<p dir="ltr">भारत के परीक्षण के 9 दिन बाद अमेरिकी रक्षा विभाग (पेंटागन) ने मलबे को लेकर संभावना जताई है कि वह वायुमंडल में ही जलकर नष्ट हो जाएगा। डीआरडीओ ने 27 मार्च को एंटी-सैटेलाइट मिसाइल (ए-सैट) का परीक्षण किया था।</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">अंतरिक्ष में 19,173 टुकड़े, इनमें से 34% अमेरिका के</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अंतरिक्ष में मौजूद कचरे को नासा अपने हिसाब से मॉनिटर करता है। नासा की नवंबर 2018 की रिपोर्ट के मुताबिक, अंतरिक्ष में 19,173 टुकड़े घूम रहे हैं, जिनमें से 34% अमेरिका और सिर्फ 1.07% भारत के हैं। अंतरिक्ष में अमेरिका के टुकड़े 6,401 घूम रहे हैं, जबकि भारत के सिर्फ 206 हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">नासा के मुताबिक, अंतरिक्ष में भारत के 89 टुकड़े पेलोड और 117 टुकड़े रॉकेट के हैं। भारत से करीब 20 गुना ज्यादा कचरा चीन का है। उसके 3,987 टुकड़े अंतरिक्ष में हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">भारत के एंटी-सैटेलाइट परीक्षण के बाद नासा का कहना है कि इससे 400 टुकड़े बिखर गए। इस हिसाब से मानें तो अभी अंतरिक्ष में भारत के 606 टुकड़े मौजूद होंगे। उसके बाद भी ये कुल कचरे का सिर्फ 3.12% हैं।</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">10 साल में अमेरिका के 2,142 टुकड़े बढ़े, भारत के सिर्फ 62 बढ़े</p>\r\n\r\n<p dir="ltr">नासा के आंकड़ों के मुताबिक, 10 साल में अंतरिक्ष में करीब 50% कचरा बढ़ा है। सितंबर 2008 तक अंतरिक्ष में 12,851 टुकड़े मौजूद थे, जिनकी संख्या नवंबर 2018 तक बढ़कर 19,173 पहुंच गई। इस दौरान अंतरिक्ष में अमेरिका की गतिविधियों से जहां 2,142 टुकड़े बढ़े, वहीं भारत से सिर्फ 62 टुकड़े बढ़े। सितंबर 2008 तक अंतरिक्ष में अमेरिका के 4,259 और भारत के 144 टुकड़े थे।</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">देश/ संस्था</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">बड़े टुकड़े (नवंबर 2018 तक)</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">बड़े टुकड़े (सितंबर 2008 तक)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">चीन</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">3,987</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">2,774</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">कॉमनवेल्थ ऑफ इंडिपेंडेंट स्टेट्स (सीआईएस)</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">6,590</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">4,528</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">यूरोपियन स्पेस एजेंसी (ईएसए)</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">144</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">74</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">फ्रांस</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">555</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">376</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">भारत</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">206</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">144</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">जापान</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">281</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">175</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">अमेरिका</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">6,401</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">4,290</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">अन्य</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">1,009</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">521</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p dir="ltr">कुल</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">19,173</p>\r\n			</td>\r\n			<td>\r\n			<p dir="ltr">12,851</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">चीन ने 2007 में परीक्षण किया था, इससे करीब 2,500 से ज्यादा टुकड़े बिखरे थे</p>\r\n\r\n<p dir="ltr">चीन ने सबसे पहले 2007 में केटी-1 रॉकेट से एंटी-सैटेलाइट मिसाइल का परीक्षण किया था। इससे चीन ने अपने मौसम उपग्रह फेंग युन 1-सी को धरती से 800 किमी की ऊंचाई पर लो-अर्थ ऑर्बिट में मार गिराया था। इस परीक्षण के बाद 2,500 से ज्यादा टुकड़े बिखर गए थे। नासा के आंकड़े भी यही कहते हैं। नासा के मुताबिक, सितंबर 2006 तक अंतरिक्ष में चीन के 376 टुकड़े मौजूद थे, जिनकी संख्या अक्टूबर 2007 तक बढ़कर 2,631 हो गई। वहीं, सितंबर 2008 तक अंतरिक्ष में चीन के 2,774 टुकड़े थे।</p>\r\n\r\n<p dir="ltr">&nbsp;</p>\r\n\r\n<p dir="ltr">भास्कर नॉलेज: क्या होता है अंतरिक्ष का कचरा और इसका क्या होता है?</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अंतरिक्ष में जो कचरा होता है, उसे &#39;स्पेस डेब्रिस&#39; या &#39;ऑर्बिटल डेब्रिस&#39; कहते हैं। ये कचरा अंतरिक्ष में इंसानों की भेजी गई चीजों से होता है। इसमें रॉकेट के टुकड़े, सैटेलाइट के टुकड़े, एस्ट्रोनॉट द्वारा छोड़ा गया सामान शामिल होता है। कुल मिलाकर, यह ऐसा कचरा होता है, जिसका अब अंतरिक्ष में कोई इस्तेमाल नहीं बचा। नासा के अनुमान के मुताबिक, रोजाना कम से कम एक टुकड़ा धरती पर आता है। ये टुकड़ा या तो धरती पर कहीं न कहीं गिर जाता है या फिर वायुमंडल में आते ही जल जाता है। अंतरिक्ष का ज्यादातर कचरा पानी में ही गिरता है, क्योंकि धरती पर 71% हिस्से में पानी है।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">अप्रैल 2018 में चीनी स्पेस स्टेशन थियांगोग के पृथ्वी से टकराने का अनुमान था। इसे लेकर काफी चिंता जताई गई थी, लेकिन ये समुद्र में गिर गया था। इससे पहले 1979 में नासा का स्पेस सेंटर स्कायलैब भी धरती पर गिरा था, लेकिन वो भी समुद्र में ही गिरा था।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">1957 में सोवियत संघ ने दुनिया का पहला आर्टिफिशियल सैटेलाइट &#39;स्पूतनिक&#39; लॉन्च किया था। इसके बाद से अब तक 8,950 सैटेलाइट अंतरिक्ष में छोड़े जा चुके हैं। इनमें से 1,950 सैटेलाइट ही काम कर रहे हैं।</p>\r\n	</li>\r\n	<li dir="ltr">\r\n	<p dir="ltr">यूरोपियन स्पेस एजेंसी की गणना नासा से अलग है। इसके मुताबिक, अंतरिक्ष में जनवरी 2019 तक 10 सेंटीमीटर से बड़े 34 हजार टुकड़े मौजूद हैं। जबकि 1-10 सेमी तक के 9 लाख और 1 सेमी से छोटे 12.80 करोड़ टुकड़े हैं।</p>\r\n	</li>\r\n</ul>', '1', 'image/7d435b4cd4e93bd824a2d61ee6c0c3e3.jpeg', 1, 11, 2, 1, 0, 1, 0, 0, 0, '2019-05-27 01:28:15', '2019-11-15 21:53:06', NULL),
(36, 'भारत का मिशन शक्ति और दुनिया में एंटी सैटेलाइट मिसाइल टेक्नोलॉजी की 10 बड़ी बातें', 'india-mission-of-power', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;प्रधानमंत्री नरेंद्र मोदी ने बुधवार को राष्ट्र के नाम संबोधन में भारत के अंतरिक्ष महाशक्ति बनने की घोषणा की। पीएम मोदी ने बताया कि इसरो ने एसैट मिसाइल के इस्तेमाल से करीब 300 किमी दूर लॉ ऑर्बिट में मौजूद एक लाइव सैटेलाइट को नष्ट कर दिया है। पूरा मिशन सिर्फ 3 मिनट में भारत में विकसित स्वदेशी एंटी सैटेलाइट मिसाइल से पूरा किया गया। डीआरडीओ के चेयरमैन जी सतीश रेड्&zwnj;डी ने बताया कि इस मिशन में जिस सैटेलाइट को नष्ट किया गया है वह भारत का अपना ही सैटेलाइट था।</p>', '1', 'image/9c123017b38808cc8bcfd82b09dfe79f.jpeg', 1, 11, 2, 1, 0, 1, 0, 0, 0, '2019-05-27 01:30:22', '2019-11-15 21:53:05', NULL),
(37, 'रोबोटिक ट्रांसलेटर जिसकी मदद से पहली बार मछलियों ने की मधुमक्खियों से बात', 'robotic-translator-help-to-talk-in', '<p dir="ltr">वैज्ञानिकों का दावा इस तकनीक से जानवरों के जीवन को सरल बनाया जा सकेगा</p>\r\n\r\n<ul>\r\n	<li dir="ltr">\r\n	<p dir="ltr">नए रोबोट टू रोबोट की मदद से दोनों प्रजातियां आपस में संवाद कर सकी</p>\r\n	</li>\r\n</ul>\r\n\r\n<p dir="ltr">गैजेट डेस्क. क्या कभी अपने सोचा है कि जमीन में रहने वाले जानवर पानी में रहने वाले जीव-जन्तुओं से बात कर सकते हैं, शायद नहीं। वैज्ञानिकों की एक खोज की वजह से ऐसा संभव हुआ है। उन्होंने वॉकी-टॉकी की तरह काम करने वाला एक ऐसे सिस्टम को तैयार किया है, जिसकी मदद से मछलियों और मधुमक्खियों ने आपस में बात की।</p>', '1', 'image/81e85f9621ebbd970966017d4f97f874.png', 1, 11, 2, 1, 0, 1, 0, 0, 0, '2019-05-27 01:32:12', '2019-11-15 21:53:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `author`, `author_email`, `address`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Tarun Shrivastva', 'shrivastvatarun@gmail.com', '278 Fatak Karor', 'image/0f32da4fbc5484ee02993a0d64a4b1cf.jpeg', 1, '2019-04-21 09:26:04', '2019-12-10 05:21:20', NULL),
(2, 'Arun Shrivastva', 'arun@gmail.com', '278 Fatak Karor Ajmeri Gate Delhi 110006', 'image/ba54e9a216579739b4c2ff4721add2af.jpeg', 1, '2019-04-27 11:11:58', '2019-12-10 05:21:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `url`, `parent_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Mobiles', 'mobile', 0, 1, '2019-04-21 09:21:50', '2019-10-13 04:21:57', NULL),
(2, 'Laptops', 'laptops', 0, 1, '2019-04-21 09:22:19', '2019-04-21 09:22:19', NULL),
(3, 'AC', 'ac', 0, 1, '2019-04-21 09:22:33', '2019-04-21 09:22:33', NULL),
(4, 'TV', 'tv', 0, 1, '2019-04-21 09:22:52', '2019-04-21 09:22:52', NULL),
(5, 'Internet', 'internet', 0, 1, '2019-04-21 09:23:55', '2019-04-21 09:23:55', NULL),
(6, 'Telecom', 'telecom', 0, 1, '2019-04-21 09:24:16', '2019-04-21 09:24:16', NULL),
(7, 'General', 'general', 0, 1, '2019-04-21 09:24:39', '2019-04-21 09:24:39', NULL),
(8, 'Social Meadia', 'social-media', 0, 1, '2019-04-27 18:30:00', '2019-04-27 18:30:00', NULL),
(9, 'how-to', 'how-to', 0, 1, '2019-05-25 11:22:52', '2019-05-27 11:44:43', NULL),
(10, 'Jio', 'jio', 0, 1, '2019-05-25 12:09:16', '2019-05-25 12:12:06', NULL),
(11, 'Science', 'science', 0, 1, '2019-05-27 06:42:40', '2019-05-27 06:42:40', NULL),
(12, 'news', 'news', 0, 1, '2019-10-13 06:04:26', '2019-10-13 06:04:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `compare_product`
--

CREATE TABLE `compare_product` (
  `id` int(11) NOT NULL,
  `compare_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `compare_product`
--

INSERT INTO `compare_product` (`id`, `compare_id`, `product_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, '2019-12-14 08:54:38', '2019-12-14 08:54:38', NULL),
(2, 1, 2, '2019-12-14 08:54:38', '2019-12-14 08:54:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comparisions`
--

CREATE TABLE `comparisions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `top_ten_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comparisions`
--

INSERT INTO `comparisions` (`id`, `title`, `alias`, `image`, `top_ten_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BEST PHONES UNDER 5000 IN INDIA', 'best-phones-under-5000-in-india', 'image/289a2a077fd7f6ed4244bf4381b73101.jpeg', 1, 1, '2019-12-14 08:54:38', '2019-12-14 11:48:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

CREATE TABLE `content_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `content_types`
--

INSERT INTO `content_types` (`id`, `content_type_name`, `url`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'news', 'news', '1', '2019-04-21 09:16:58', '2019-04-21 09:16:58', NULL),
(2, 'features', 'features', '1', '2019-04-21 09:17:09', '2019-04-21 09:17:27', NULL),
(3, 'how-to', 'how-to', '1', '2019-04-21 09:17:51', '2019-04-21 09:17:51', NULL),
(4, 'reviews', 'reviews', '1', '2019-04-21 09:18:00', '2019-04-21 09:18:00', NULL),
(5, 'deal-story', 'deal-story', '1', '2019-04-21 09:18:18', '2019-04-21 09:18:18', NULL),
(6, 'general', 'general', '1', '2019-04-27 11:43:41', '2019-04-27 11:43:41', NULL),
(7, 'Top Products', 'top-products', '0', '2019-12-10 01:57:30', '2019-12-10 01:57:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `first_modules`
--

CREATE TABLE `first_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `first_modules`
--

INSERT INTO `first_modules` (`id`, `article_id`, `order`, `parent_id`, `language_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 3, 0, 0, 2, 1, '2019-10-28 03:11:38', '2019-10-28 03:26:54', '2019-10-28 03:26:54'),
(10, 4, 0, 0, 2, 1, '2019-10-28 03:12:07', '2019-10-28 03:12:07', NULL),
(11, 2, 0, 0, 2, 1, '2019-10-28 03:12:37', '2019-10-28 03:12:37', NULL),
(12, 9, 0, 0, 2, 1, '2019-10-28 03:12:53', '2019-10-28 03:12:53', NULL),
(13, 27, 0, 0, 2, 1, '2019-10-28 03:27:02', '2019-10-28 03:27:02', NULL),
(14, 2, 0, 0, 2, 1, '2019-12-10 04:31:57', '2019-12-10 04:31:57', NULL),
(15, 14, 0, 0, 2, 1, '2019-12-10 04:32:04', '2019-12-10 04:32:25', NULL),
(16, 14, 0, 0, 2, 1, '2019-12-10 04:32:43', '2019-12-10 04:32:43', NULL),
(17, 28, 0, 0, 2, 1, '2019-12-10 04:32:55', '2019-12-10 04:32:55', NULL),
(18, 36, 0, 0, 2, 1, '2019-12-10 04:33:09', '2019-12-10 04:33:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `alias`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'English', 'en', '2019-04-21 18:30:00', '2019-04-21 18:30:00', NULL),
(2, 'Hindi', 'hi', '2019-04-21 18:30:00', '2019-04-21 18:30:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `parent_id`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'home', 0, 1, '2019-04-21 10:25:04', '2019-06-29 06:41:16', NULL),
(2, 'news', 0, 2, '2019-04-21 10:26:00', '2019-06-29 06:41:16', NULL),
(3, 'gadget', 2, 4, '2019-04-21 10:26:27', '2019-06-29 06:41:16', NULL),
(4, 'internet', 2, 7, '2019-04-21 10:26:56', '2019-06-29 06:41:16', NULL),
(5, 'telecom', 2, 3, '2019-04-21 10:27:22', '2019-06-29 06:41:16', NULL),
(6, 'social-media', 2, 8, '2019-04-21 10:28:16', '2019-06-29 06:41:16', NULL),
(7, 'how-to', 0, 10, '2019-05-25 11:25:49', '2019-06-23 01:27:23', NULL),
(8, 'about', 0, 13, '2019-04-21 11:24:12', '2019-12-10 02:02:19', NULL),
(9, 'mobile', 3, 5, '2019-05-16 12:30:00', '2019-10-28 06:44:08', NULL),
(10, 'tv', 3, 6, '2019-05-16 12:30:00', '2019-10-28 06:44:08', NULL),
(11, 'contact', 0, 14, '2019-04-21 11:24:50', '2019-12-10 02:02:19', NULL),
(14, 'jio', 7, 11, '2019-05-25 12:13:52', '2019-06-23 01:27:23', NULL),
(15, 'science', 2, 9, '2019-05-27 06:41:24', '2019-06-29 06:41:16', NULL),
(16, 'top-products', 0, 12, '2019-12-10 02:01:56', '2019-12-10 02:02:19', NULL);

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
(1, '2016_01_04_173148_create_admin_tables', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '0000_00_00_000000_create_comments_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `news_letters`
--

CREATE TABLE `news_letters` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `paytm_price` int(11) DEFAULT NULL,
  `flipkart_price` int(11) DEFAULT NULL,
  `amazon_price` int(11) DEFAULT NULL,
  `tata_cliq_price` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_At` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `status`, `paytm_price`, `flipkart_price`, `amazon_price`, `tata_cliq_price`, `created_at`, `updated_at`, `deleted_At`) VALUES
(1, 'VIVO V17', '<p>Vivo V17 is announced to be launched in December 2019 &amp; will run on Android. The Smartphone will be available only in one color i.e. Blue &amp; will also have a built in fingerprint sensor as the primary security feature, along with the host of connectivity options in terms of 3G, 4G, GPS Bluetooth capabilities. The phone will come with 128 GB of internal storage.</p>', 'image/ae825800838e097f8fd397aebf934162.jpeg', 1, 5000, 6000, 5500, 6000, '2019-12-08 07:58:05', '2019-12-15 03:48:47', NULL),
(2, 'HUAWEI MATE 30 5G', '<p>Huawei Mate 30 5G is announced to be launched in December 2019 &amp; will run on Android 9 OS. The Smartphone will be available in more than three color options i.e.Black, Space Silver, Cosmic Purple, Emerald Green, Orange, Forest Green &amp; will also have a built in fingerprint sensor as the primary security feature, along with the host of connectivity options in terms of 3G, 4G, GPS, Wifi, NFC Bluetooth capabilities. The phone will come with 128GB of internal storage.</p>', 'image/5d7e5b4a1fb361433274ce8b77c8f992.jpeg', 1, 5000, 6000, 5000, 6000, '2019-12-08 08:08:49', '2019-12-15 03:49:30', NULL),
(3, 'SAMSUNG GALAXY NOTE10 PLUS', '<p>The Samsung Galaxy Note 10+ comes across as a phone very similar to the Galaxy S10+, save for a few new features that may or may not turn out to be useful. There&rsquo;s a lot of reason for old Note users to upgrade to this one. Then there&rsquo;s the smaller Galaxy Note as well which comes with watered-down features including a smaller display and form factor which might find acceptance among a new breed of power users eager to get the Galaxy Note experience. What I really liked about the phone is how Samsung has improved the camera performance, especially in low-light, and the new DeX mode that now works much better than before. Overall, the Galaxy Note 10+ feels like an incremental upgrade, but good enough for old Note users to get a new one.</p>', 'image/aabf16c4054fbc53555cb94554b1efb1.jpeg', 1, 4000, 5000, 6000, 5500, '2019-12-11 11:07:51', '2019-12-15 03:49:53', NULL),
(4, 'HUAWEI P30 PRO', '<p>The Huawei P30 Pro definitely sets a new benchmark for smartphone photography, whether its in terms of low light capabilities or in terms of how much zoom is packed into a smartphone camera. Anyone who loves taking photos will absolutely love shooting with the P30 Pro. For the rest, you get a solid day and a half of battery life on heavy use, with a 70 minute charge time from 0 to 100. When it comes to performance, the Kirin 980 chipset along with the 8GB of RAM and EMUI 9.1 all work together well to offer a smooth, stutter-free experience, whether it be for gaming or anything else. The only thing we hope you can live with is paying Rs 71,990 for a smartphone with an FHD+ display and expandable storage which only works if you have a Nano-Memory card, which Huawei doesn&#39;t yet sell in India.</p>', 'image/f29960733d17ea06557290ad4af1b112.jpeg', 1, 5600, 5500, 4500, 6000, '2019-12-14 08:09:13', '2019-12-15 03:50:33', NULL),
(5, 'SAMSUNG GALAXY S10 PLUS', '<p>The Smartphone is powered by 2.7 GHz Octa core Exynos 9820 Octa (8 nm) Processor. A 8GB of RAM ensures phone runs smoothly even the most memory intensive applications &amp; still shows no signs of lag. 128GB of internal storage can be expanded to 512GB via a microSD card.</p>\r\n\r\n<p>The Phone comes with a inch screen with Dynamic AMOLED display having a resolution of 1440 X 3040 at 526 ppi. The screen is also protected by a durable Scratch Resistant glass.</p>\r\n\r\n<p>Samsung Galaxy S10 Plus boasts of dual front camera of 10 + 8 megapixel and 12 + 12 + 16 megapixel dual rear Camera. It also supports Face Detection and high dynamic range(HDR) imaging.</p>\r\n\r\n<p>Samsung Galaxy S10 Plus is the successor to the&nbsp;<a href="https://www.digit.in/mobile-phones/samsung-galaxy-s9-plus-price-100081.html">Galaxy S9 Plus&nbsp;</a>and comes with triple main camera setup and a dual selfie camera for clicking selfies and making video calls. The flagship device supports Fast Qi/PMA wireless charging 15W and Power bank/Reverse wireless charging 9W.</p>', 'image/f97374bc346a6e0db0e4b5ecb1abed75.jpeg', 1, 5400, 5000, 5100, 5300, '2019-12-14 08:13:29', '2019-12-15 03:51:13', NULL),
(6, 'ONEPLUS 7T PRO 256GB', '<p>The Smartphone is powered by 2.96 GHz Octa core Qualcomm Snapdragon 855 Plus Processor. A 8GB of RAM ensures phone runs smoothly even the most memory intensive applications &amp; still shows no signs of lag. 256GB of internal storage can not be expanded further.</p>\r\n\r\n<p>The Phone comes with a inch screen with QHD + display having a resolution of 1440 x 3120 at 516 ppi. The screen is also protected by a durable Scratch Resistant glass.</p>\r\n\r\n<p>OnePlus 7T Pro 256GB boasts of dual primary camera of 48 + 16 + 8 megapixel and 16 megapixel front Camera. The Smartphone has a low camera aperture of f/1.6. It also supports Face Detection and high dynamic range(HDR) imaging.</p>', 'image/8abeba43f459d1186c79b182372554a6.jpeg', 1, 5600, 6500, 5600, 5000, '2019-12-14 08:15:54', '2019-12-15 03:52:51', NULL),
(7, 'ONEPLUS 7T 128GB', '<p>The Smartphone is powered by 2.96GHz Octa core Qualcomm Snapdragon 855 Plus Processor. A 8 GB of RAM ensures phone runs smoothly even the most memory intensive applications &amp; still shows no signs of lag. 128GB of internal storage can not be expanded further.</p>\r\n\r\n<p>The Phone comes with a large 3800 mAh battery to support it&#39;s 6.55 inch screen with Super AMOLED display having a resolution of 1080 x 2400 at 402 ppi. The screen is also protected by a Corning Gorilla Glass.</p>\r\n\r\n<p>OnePlus 7T 128GB boasts of dual primary camera of 48 + 12 + 16 megapixel and 16 megapixel front Camera. The Smartphone has a low camera aperture of f/1.6. It also supports Face Detection and high dynamic range(HDR) imaging.</p>', 'image/780ac858e0a6c6dff59215af489bc236.jpeg', 1, 5600, 6000, 6500, 6500, '2019-12-14 08:19:46', '2019-12-15 03:53:21', NULL),
(8, 'ASUS ROG PHONE II', '<p>The Asus ROG Phone II&nbsp; sports a Snapdragon 855 Plus chipset and has gaming-oriented features. The phone is the ultimate mobile gaming device and has powerful specs. The ROG Phone 2 competes with other gaming smartphones launched in global markets including the Black Shark 2 and Nubia Red Magic 3.</p>\r\n\r\n<p><strong>Design</strong></p>\r\n\r\n<p>The Asus ROG Phone II has a 6.59-inch AMOLED display with 1,080 x 2,340 pixels resolution and a density of 391 PPI. The aspect ratio of 19.5:9 offers an immersive gaming experience. The device has a Corning Gorilla Glass for protection against minor scratches and marks. The device has sleek dimensions of 171 x 77.6 x 9.5 mm and weighs just 240 grams.&nbsp;</p>\r\n\r\n<p><strong>Camera</strong></p>\r\n\r\n<p>It has powerful 48MP and 13MP camera lenses, which has been provided with many features and filters to capture awesome pictures. It also has a 24MP front sensor which clicks good selfies. The phone comes with features like Panorama and HDR.&nbsp;</p>\r\n\r\n<p><strong>Performance</strong></p>\r\n\r\n<p>The&nbsp;ROG Phone II sports a 120Hz OLED display and has a powerful Snapdragon 855 Plus chipset which can handle most games with ease. &nbsp;Equipped with the Qualcomm Snapdragon 855+ chipset with an octa-core processor having a clock speed of up to 2.96GHz it can handle most tasks with ease. Adreno 640 and an 8GB RAM offer a smooth gaming experience. The device runs on Android 9.0 out of the box.&nbsp;Connectivity options included in the phone are 4G VoLTE, Wi-Fi, Mobile Hotspot, Bluetooth, GPS with A-GPS, USB Type-C, etc.</p>\r\n\r\n<p><strong>Storage and Battery</strong></p>\r\n\r\n<p>The Asus ROG Phone II is a gaming-centric flagship smartphone which has a powerful configuration to meet the need of the gamers. It has a powerful battery and comes with huge internal storage which gives ample space for all your music, videos, etc. It has a 6,000mAh battery which can last for a long time. It is equipped with Hyper Quick Charging feature that can refill the battery in a short time. The phone has 128GB of storage which offers ample room for users to keep their files and data.</p>', 'image/eb530ebecd3ca1a16b05ea26d8cc9115.jpeg', 1, 5000, 4500, 5600, 6100, '2019-12-14 08:24:08', '2019-12-15 03:52:31', NULL),
(9, 'REALME X2 PRO', '<p dir="ltr">The phone comes with features like a 90Hz display, vapour cooling, stereo speakers, a tactile linear motor for haptic feedback, and extremely fast charging. The device comes with a 6.5-inch AMOLED display, which Realme calls the &lsquo;fluid AMOLED&#39; display, which is similar to the display on the OnePlus 7T. The Realme X2 Pro comes with a 90Hz refresh rate, quad rear cameras and has a small notch. The company has also kept the headphone jack on the phone.&nbsp;</p>\r\n\r\n<p dir="ltr">The Realme X2 Pro is available in two variants, one with 8GB/ 128GB of storage which is priced at Rs. 29,999, and the second with 12GB RAM/ 256GB of storage which is priced at Rs. 33,999.</p>\r\n\r\n<p dir="ltr"><strong>Design</strong></p>\r\n\r\n<p dir="ltr">The Realme X2 Pro has a 6.5-inch full-HD+ AMOLED panel with 500nits of sustained brightness and 1000nits of peak brightness according to the company. The display can run at 90Hz instead of the usual 60Hz.&nbsp;</p>\r\n\r\n<p dir="ltr">The Realme X2 Pro comes with an aluminium body with Gorilla Glass 5 on the front and back. The mobile phone comes in Master Edition, in &lsquo;Red Brick&#39; and &lsquo;Concrete&#39; finishes. The Realme logo is placed adjacent to the camera module which is different from the company&rsquo;s other offerings. The phone has a vertically arranged rear camera module which creates a bit of bump on the back of this phone.&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Camera&nbsp;</strong></p>\r\n\r\n<p dir="ltr">The phone has a 64 MP primary sensor which is similar to the one found on the Realme XT. The phone has a 13 MP telephoto camera, an 8 MP wide-angle sensor with ultra-steady stabilisation mode, and a 2 MP depth sensor to help with portrait shots. The phone has a 16 MP selfie camera for making video calls.&nbsp;</p>\r\n\r\n<p dir="ltr">The phone has a nightscape mode which works for the selfie camera. Users can adjust the level of background blur in Portrait mode. The wide-angle camera can also be used to shoot videos on the device. Realme has also added an &lsquo;Ultra Steady&#39; shooting mode for enhanced stabilisation and the phone can shoot up to 4K 60fps videos.</p>\r\n\r\n<p dir="ltr"><strong>Performance</strong></p>\r\n\r\n<p dir="ltr">The Realme X2 Pro uses Qualcomm&#39;s Snapdragon 855+ SoC which has been used in a number of recent mid-range flagships like the Asus ROG Phone 2 and the OnePlus 7T. The phone is available in 8 GB and 12 GB RAM variants in India. Realme is also using the UFS 3.0 standard on the X2 Pro for its flash storage.&nbsp;</p>\r\n\r\n<p dir="ltr">The phone runs on ColorOS 6.1, based on Android 9.0. The feature comes with a dark mode and Google&#39;s Digital Wellbeing app. Realme has added a number of preinstalled apps such as Game Space and ORoaming on the device. There are a number of preinstalled third-party apps that can be uninstalled for extra space.&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Battery and Storage</strong></p>\r\n\r\n<p dir="ltr">In terms of battery life, the Realme X2 Pro is backed by a 4000mAh capacity and comes with a 50W Super VOOC charger in the box. The company claims that the charger will be able to fully charge the battery from zero in just 35 minutes.</p>\r\n\r\n<p dir="ltr">Realme X2 Pro comes with common fast charging standards such as Qualcomm&#39;s Quick Charge and USB Type-C Power Delivery (PD), which will allow you to charge the phone quickly even without the bundled charger, says the company.&nbsp;</p>\r\n\r\n<p dir="ltr">The phone is available in two variants one with 128GB of storage and the second with 256GB of storage.&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Connectivity&nbsp;</strong></p>\r\n\r\n<p dir="ltr">In terms of connectivity, the phone can accommodate two Nano-SIMs and supports dual 4G VoLTE. It has dual-band Wi-Fi, Bluetooth 5.0, and support for three satellite navigation systems. It supports 3G, 4G, 2G, GPRS, EDGE, and GPS. It supports NFC connectivity as well as support for contactless payments.&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Configuration&nbsp;</strong></p>\r\n\r\n<p dir="ltr">The phone uses Qualcomm&rsquo;s latest Snapdragon 855 plus processor with a 64-bit ARM LTE system on a chip that was introduced in mid-2019. The phone has been developed by TSMC&#39;s 7nm process, the has four Kryo 485 Silver high-efficiency cores operating at 1.8 GHz as well as three high-performance Kryo 485 Gold operating at 2.42 GHz. It also has another higher-performance Kryo 485 Gold core which operates at 2.84 GHz</p>\r\n\r\n<p dir="ltr"><strong>Platform&nbsp;</strong></p>\r\n\r\n<p dir="ltr">The smartphone runs on Android 9.0 OS out of the box and is powered by Qualcomm Snapdragon 855 Plus Soc which has octa-core Kryo cores and integrated Adreno 640 GPU operation at 700 MHz. Qualcomm claims that the processor delivers up to 15% faster graphics rendering and as well as delivers a higher CPU performance from its sibling the Snapdragon 855.&nbsp;</p>\r\n\r\n<p dir="ltr"><strong>Technology&nbsp;</strong></p>\r\n\r\n<p dir="ltr">The mobile phone uses the newer UFS 3.0 storage standard. It has a new tactile linear vibration motor for more nuanced haptic feedback says the company. Apart from this, the phone has a vapour chamber cooling system for the CPU. Other specifications included in the phone are dual-band Wi-Fi, Bluetooth 5.0, and support for three satellite navigation systems.&nbsp;</p>\r\n\r\n<p dir="ltr">The Qualcomm snapdragon 855 plus combines Adreno 640 GPU operation at 700 MHz and comes with an X24 LTE modem which supports Cat 20 uplink and Cat 20 downlink.</p>\r\n\r\n<p dir="ltr"><strong>Multimedia&nbsp;</strong></p>\r\n\r\n<p dir="ltr">The headphone socket, a USB Type-C port, and a speaker are placed on the bottom of the device. The earpiece also doubles as a second speaker for stereo sound on the Realme X2.</p>\r\n\r\n<p dir="ltr">The retail box of the Realme X2 Pro has a 50W SuperVOOC wall charger, a data cable, a SIM eject tool, a case, a warranty leaflet, and a quick start guide. The phone ships with a pre-applied screen guard, but the phone doesn&rsquo;t have any earphones or a headset in the box.</p>\r\n\r\n<p dir="ltr">The device has Widevine L1 DRM certification so there are no restrictions on the streaming resolution in apps like Netflix. It has support for Dolby Atmos, which works via the speakers as well as wired or wireless headphones.</p>\r\n\r\n<p dir="ltr"><strong>Sensors&nbsp;</strong></p>\r\n\r\n<p dir="ltr">The phone comes with an optical in-display fingerprint sensor and Realme has added some customisable unlock animations. The device also has Face unlock for added security. The X2 Pro offers NFC and contactless payment options, although the latter isn&#39;t of much use here in India since services such as Google Pay don&#39;t use it.</p>', 'image/f4270de2424daa8e77dec867a170a972.jpeg', 1, 6000, 7000, 6100, 6100, '2019-12-14 08:26:27', '2019-12-15 03:52:11', NULL),
(10, 'OPPO RENO 10X ZOOM 256GB', '<p>The Smartphone is powered by 2.84 Octa core Qualcomm SDM855 Snapdragon 855 (7 nm) Processor. A 8GB of RAM ensures phone runs smoothly even the most memory intensive applications &amp; still shows no signs of lag. 256GB of internal storage can be expanded to 256 GB via a microSD card.</p>\r\n\r\n<p>The Phone comes with a inch screen with AMOLED display having a resolution of 1080 X 2340 at 387 ppi. The screen is also protected by a durable Scratch Resistant glass.</p>\r\n\r\n<p>Oppo Reno 10x zoom 256GB boasts of dual primary camera of 48 + 13 + 8 megapixel and 16 megapixel front Camera. The Smartphone is also loaded with Optical Image Stablization and has a low camera aperture of f/1.8. It also supports Face Detection and high dynamic range(HDR) imaging.</p>', 'image/dfe2ec4ef24f09a69feea033356e4fbe.jpeg', 1, 6000, 5000, 5600, 4500, '2019-12-14 08:28:56', '2019-12-15 03:51:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_top_ten`
--

CREATE TABLE `product_top_ten` (
  `product_id` int(11) NOT NULL,
  `top_ten_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_top_ten`
--

INSERT INTO `product_top_ten` (`product_id`, `top_ten_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '2019-12-08 08:54:45', '2019-12-08 08:54:45', NULL),
(2, 1, '2019-12-08 08:54:45', '2019-12-08 08:54:45', NULL),
(3, 2, '2019-12-14 08:35:59', '2019-12-14 08:35:59', NULL),
(4, 2, '2019-12-14 08:35:59', '2019-12-14 08:35:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `second_modules`
--

CREATE TABLE `second_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `second_modules`
--

INSERT INTO `second_modules` (`id`, `article_id`, `order`, `parent_id`, `language_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 4, 0, 0, 2, 1, '2019-10-28 03:18:42', '2019-10-28 03:18:42', NULL),
(7, 26, 0, 0, 1, 1, '2019-10-28 03:18:46', '2019-10-28 03:18:46', NULL),
(8, 8, 0, 0, 2, 1, '2019-10-28 03:18:57', '2019-10-28 03:18:57', NULL),
(9, 13, 0, 0, 2, 1, '2019-10-28 03:19:06', '2019-10-28 03:19:06', NULL),
(10, 3, 0, 0, 2, 1, '2019-10-28 03:19:37', '2019-10-28 03:19:37', NULL),
(11, 7, 0, 0, 2, 1, '2019-10-28 03:20:02', '2019-10-28 03:20:02', NULL),
(12, 11, 0, 0, 2, 1, '2019-10-28 03:20:09', '2019-10-28 03:20:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `specifications`
--

CREATE TABLE `specifications` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `specifications`
--

INSERT INTO `specifications` (`id`, `title`, `parent_id`, `order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Basic Info', 0, 0, '2019-12-07 05:13:57', '2019-12-07 05:13:57', NULL),
(2, 'Manufacturer', 1, 0, '2019-12-07 05:16:22', '2019-12-07 05:16:31', NULL),
(3, 'Display', 0, 0, '2019-12-07 05:16:43', '2019-12-07 05:16:43', NULL),
(4, 'Camera', 0, 0, '2019-12-07 05:16:52', '2019-12-07 05:16:52', NULL),
(5, 'Battery', 0, 0, '2019-12-07 05:17:00', '2019-12-07 05:17:00', NULL),
(6, 'Model', 1, 0, '2019-12-07 05:18:00', '2019-12-07 05:18:13', NULL),
(7, 'Screen', 3, 0, '2019-12-07 05:18:28', '2019-12-07 05:18:28', NULL),
(8, 'Resolution', 3, 0, '2019-12-07 05:18:48', '2019-12-07 05:18:48', NULL),
(9, 'Rear Camera', 4, 0, '2019-12-07 05:19:16', '2019-12-07 05:19:16', NULL),
(10, 'Front Camera', 4, 0, '2019-12-07 05:19:32', '2019-12-07 05:19:32', NULL),
(11, 'Capacity', 5, 0, '2019-12-07 05:19:53', '2019-12-07 05:19:53', NULL),
(13, NULL, 0, 0, '2019-12-07 23:10:35', '2019-12-15 05:09:15', '2019-12-15 05:09:15'),
(14, 'Type', 0, 0, '2019-12-15 05:09:05', '2019-12-15 05:09:05', NULL),
(15, 'Test', 14, 0, '2019-12-15 05:10:02', '2019-12-15 05:10:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `third_modules`
--

CREATE TABLE `third_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `third_modules`
--

INSERT INTO `third_modules` (`id`, `article_id`, `order`, `parent_id`, `language_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 1, 2, 0, 2, 1, '2019-10-28 03:22:24', '2019-11-15 21:46:19', NULL),
(6, 26, 0, 0, 2, 1, '2019-10-28 03:22:32', '2019-10-28 03:24:37', '2019-10-28 03:24:37'),
(7, 8, 4, 0, 2, 1, '2019-10-28 03:22:39', '2019-11-15 21:46:01', NULL),
(8, 12, 5, 0, 2, 1, '2019-10-28 03:22:47', '2019-11-15 21:46:01', NULL),
(9, 26, 0, 0, 2, 1, '2019-10-28 03:23:07', '2019-10-28 03:24:42', '2019-10-28 03:24:42'),
(10, 1, 6, 0, 2, 1, '2019-10-28 03:24:50', '2019-11-15 21:46:01', NULL),
(11, 15, 3, 0, 2, 1, '2019-10-28 03:24:59', '2019-11-15 21:46:19', NULL),
(12, 25, 1, 0, 2, 1, '2019-10-28 03:25:10', '2019-11-15 21:46:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `toptens`
--

CREATE TABLE `toptens` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text,
  `content_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `toptens`
--

INSERT INTO `toptens` (`id`, `title`, `alias`, `description`, `content_id`, `category_id`, `author_id`, `language_id`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BEST 8 GB RAM MOBILE PHONES', 'best-8-gb-ram-mobile-phones', '<p>8 GB RAM seems to be the upgrade of the year and we believe most of you have already bought one of the latest 8 GB RAM smartphones. However, if you are still looking for a 8 GB RAM mobiles and cannot decide which one to buy, here are your options. We list down the best 8 GB RAM phones in India, which offer the right combination of connectivity and performance. These 8 GB RAM mobile phones offer the right balance between performance and build quality.</p>', 1, 1, 1, 1, 'image/0b242bcb9f513a520a4cea6220c11133.jpeg', 1, '2019-12-14 14:04:31', '2019-12-15 08:40:48', NULL),
(2, 'BEST PHONES UNDER 5000 IN INDIA', 'top-10-best-phone-under-5000-rs-in-india', '<p>While a smartphone under Rs 5000 won&#39;t have all the features of a flagship, there are plenty of options to choose from if you have a tight budget of Rs 5,000. This year, the most exciting features in best phones under 5000 is the taller 18:9 display and 4G connectivity. Google&#39;s Android Oreo (Go Edition) phones have also started coming in that price range which makes budget Android phones run smoother. Here are the best phones you can buy under Rs 5,000.</p>', 1, 1, 1, 1, NULL, 1, '2019-12-14 14:05:59', '2019-12-14 14:05:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Tarun shrivastva', 'shrivastvatarun@gmail.com', '$2y$10$5GCTqVbnqvQtoVPlQa4jcuMsXjKNlbO3QkbiCPT7kXho4PB3AWeQ2', 'hYGuBGD7pZw92CUXVMit6YrSSliwVCRxjUhZg7tr6fPWO6yQcfjSKb8oUNLS', '2019-10-12 09:43:06', '2019-10-12 09:43:06'),
(7, 'karan', 'shrivastvakaran@gmail.com', '$2y$10$lGijGbzypZHQs5urARpRJO.XY6HFhpimBNR0TOsSG3IpWRnVtL7j.', 'VH6tQeFBVEVMCWwLxjGwh3gexUDK8F54W6lPcwauBbvVYi7Qjq5IfNhbqyrx', '2019-10-26 03:00:03', '2019-10-26 03:00:03'),
(8, 'Tarun shrivastva', 'shrivastvaarun@gmail.com', '$2y$10$fbg1iQ.SufcLIhKXpWuF6.qSGd/yqWEoChD9WydlnDYZrqdkH.d2e', 'TBqKeMN8pn4Vg3TIY0IZq31KK7PVJ3sw1z1ioVMhg19VvDW9ATkeOjYVK18a', '2019-11-17 05:15:01', '2019-11-17 05:15:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_specifications`
--
ALTER TABLE `add_specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_author_email_deleted_at_unique` (`author_email`,`deleted_at`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_url_deleted_at_unique` (`name`,`url`,`deleted_at`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compare_product`
--
ALTER TABLE `compare_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comparisions`
--
ALTER TABLE `comparisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_types`
--
ALTER TABLE `content_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_modules`
--
ALTER TABLE `first_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `first_modules_deleted_at_unique` (`deleted_at`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `languages_deleted_at_unique` (`deleted_at`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_letters`
--
ALTER TABLE `news_letters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_top_ten`
--
ALTER TABLE `product_top_ten`
  ADD KEY `product_topten_product_id_topten_id_index` (`product_id`,`top_ten_id`);

--
-- Indexes for table `second_modules`
--
ALTER TABLE `second_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `first_modules_deleted_at_unique` (`deleted_at`);

--
-- Indexes for table `specifications`
--
ALTER TABLE `specifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `third_modules`
--
ALTER TABLE `third_modules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `first_modules_deleted_at_unique` (`deleted_at`);

--
-- Indexes for table `toptens`
--
ALTER TABLE `toptens`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `add_specifications`
--
ALTER TABLE `add_specifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compare_product`
--
ALTER TABLE `compare_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `comparisions`
--
ALTER TABLE `comparisions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `content_types`
--
ALTER TABLE `content_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `first_modules`
--
ALTER TABLE `first_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news_letters`
--
ALTER TABLE `news_letters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `second_modules`
--
ALTER TABLE `second_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `specifications`
--
ALTER TABLE `specifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `third_modules`
--
ALTER TABLE `third_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `toptens`
--
ALTER TABLE `toptens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
