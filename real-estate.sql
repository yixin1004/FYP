-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2023 at 05:12 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real-estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE IF NOT EXISTS `amenities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `amenitis_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `amenitis_name`, `created_at`, `updated_at`) VALUES
(3, 'CCTV Security', NULL, NULL),
(5, 'Maintenance Staff', NULL, NULL),
(6, 'First Aid Medical Center', NULL, NULL),
(7, 'Intercom', NULL, NULL),
(8, '24 Hours Concierge', NULL, NULL),
(9, 'Flooring', NULL, NULL),
(10, 'Floor Level', NULL, NULL),
(11, 'Service Elevators', NULL, NULL),
(12, 'Balcony or Terrace', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_name`, `category_slug`, `created_at`, `updated_at`) VALUES
(1, 'Real Estate', 'real-estate', NULL, NULL),
(2, 'Interior', 'interior', NULL, NULL),
(3, 'Architecture', 'architecture', NULL, NULL),
(4, 'Home improvement', 'home-improvement', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE IF NOT EXISTS `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `blogcat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_tags` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_posts`
--

INSERT INTO `blog_posts` (`id`, `blogcat_id`, `user_id`, `post_title`, `post_slug`, `post_image`, `short_descp`, `long_descp`, `post_tags`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'blog1', 'blog1', 'upload/post/1771897361242041.jpg', 'csdvsvsdv', '<p>vsdvdsvsdvsdvsd</p>', 'Realestate', '2023-07-19 16:30:04', NULL),
(2, 2, 1, 'blog2', 'blog2', 'upload/post/1771897387764669.jpg', 'vafvsavf', '<p>vaqvafvav</p>', 'Realestate,vfdsvfd,bsfgbsgb', '2023-07-19 16:30:30', NULL),
(3, 3, 1, 'blog3', 'blog3', 'upload/post/1771897411908533.jpg', 'vsvasdvas', '<p>asvfsavfsavasqvfa</p>', 'Realestate,avsfasvfva', '2023-07-19 16:30:53', NULL),
(4, 4, 1, 'blog4', 'blog4', 'upload/post/1771897434301894.png', 'vsadavsadv', '<p>vsdavadsvadsvasvas</p>', 'Realestate', '2023-07-19 16:31:14', NULL),
(6, 1, 1, 'blog5', 'blog5', 'upload/post/1771897660614000.jpg', 'vadavasv', '<p>vaqvfasvfsavffa</p>', 'Realestate,vfavav', '2023-07-19 16:34:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(5, 3, 1, NULL, 'nice post', 'very good', '2023-07-20 02:15:41', NULL),
(6, 3, 1, NULL, 'give some new', 'pleaseeeee', '2023-07-20 02:16:07', NULL),
(7, 3, 1, 6, 'yeaaaaaaa', 'thank', '2023-07-20 02:17:13', NULL),
(8, 3, 1, 5, 'thank u very much', 'it is helpfull for me', '2023-07-20 02:17:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `compares`
--

CREATE TABLE IF NOT EXISTS `compares` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `compares`
--

INSERT INTO `compares` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 3, 6, '2023-07-17 09:40:40', NULL),
(2, 3, 7, '2023-07-17 09:40:42', NULL),
(4, 2, 12, '2023-07-19 07:43:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE IF NOT EXISTS `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `facility_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `property_id`, `facility_name`, `distance`, `created_at`, `updated_at`) VALUES
(32, 6, 'Pharmacy', '21', '2023-07-17 07:31:05', '2023-07-17 07:31:05'),
(33, 6, 'Bus Stop', '243', '2023-07-17 07:31:05', '2023-07-17 07:31:05'),
(34, 7, 'School', '53', '2023-07-17 07:32:51', '2023-07-17 07:32:51'),
(35, 7, 'Bus Stop', '756', '2023-07-17 07:32:51', '2023-07-17 07:32:51'),
(36, 7, 'Hospital', '86', '2023-07-17 07:32:51', '2023-07-17 07:32:51'),
(37, 8, 'Entertainment', '77', '2023-07-17 07:34:02', '2023-07-17 07:34:02'),
(38, 9, 'Beach', '44', '2023-07-17 08:07:17', '2023-07-17 08:07:17'),
(39, 9, 'Mall', '66', '2023-07-17 08:07:17', '2023-07-17 08:07:17'),
(40, 10, 'Pharmacy', '23', '2023-07-17 08:19:22', '2023-07-17 08:19:22'),
(41, 11, 'School', '75', '2023-07-17 08:20:24', '2023-07-17 08:20:24'),
(42, 11, 'Bus Stop', '6', '2023-07-17 08:20:24', '2023-07-17 08:20:24'),
(43, 11, 'Airport', '7', '2023-07-17 08:20:24', '2023-07-17 08:20:24'),
(44, 11, 'SuperMarket', '3', '2023-07-17 08:20:24', '2023-07-17 08:20:24'),
(45, 12, 'Pharmacy', '65', '2023-07-17 08:21:24', '2023-07-17 08:21:24'),
(46, 12, 'Bank', '34', '2023-07-17 08:21:24', '2023-07-17 08:21:24'),
(47, 12, 'Entertainment', '35', '2023-07-17 08:21:24', '2023-07-17 08:21:24'),
(48, 13, 'Airport', '32', '2023-07-19 06:25:36', '2023-07-19 06:25:36'),
(49, 14, 'Airport', '32', '2023-07-19 06:26:27', '2023-07-19 06:26:27'),
(50, 15, 'Bus Stop', '32', '2023-07-19 07:50:14', '2023-07-19 07:50:14'),
(51, 16, 'School', '53', '2023-07-19 07:51:10', '2023-07-19 07:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_17_075400_create_property_types_table', 2),
(6, '2023_07_17_081131_create_amenities_table', 3),
(7, '2023_07_17_082617_create_properties_table', 4),
(8, '2023_07_17_082839_create_facilities_table', 5),
(9, '2023_07_17_082907_create_multi_images_table', 5),
(10, '2023_07_17_160029_create_package_plans_table', 6),
(11, '2023_07_17_171320_create_wishlists_table', 7),
(12, '2023_07_17_173700_create_compares_table', 8),
(13, '2023_07_17_175257_create_property_messages_table', 9),
(14, '2023_07_19_143803_create_states_table', 10),
(15, '2023_07_19_161343_create_testimonials_table', 11),
(16, '2023_07_19_162851_create_blog_categories_table', 12),
(17, '2023_07_20_001756_create_blog_posts_table', 13),
(18, '2023_07_20_100053_create_comments_table', 14),
(19, '2023_07_20_102034_create_schedules_table', 15),
(20, '2023_07_20_111055_create_smtp_settings_table', 16),
(21, '2023_07_20_131803_create_site_settings_table', 17),
(22, '2023_07_20_140105_create_permission_tables', 18);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 17),
(7, 'App\\Models\\User', 13),
(9, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE IF NOT EXISTS `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `photo_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `property_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(20, 6, 'upload/property/multi-image/1771682256666162.jpg', '2023-07-17 07:31:05', NULL),
(21, 6, 'upload/property/multi-image/1771682256753045.jpg', '2023-07-17 07:31:05', NULL),
(22, 6, 'upload/property/multi-image/1771682256839999.jpg', '2023-07-17 07:31:05', NULL),
(23, 6, 'upload/property/multi-image/1771682256935865.jpg', '2023-07-17 07:31:05', NULL),
(24, 7, 'upload/property/multi-image/1771682367318407.jpg', '2023-07-17 07:32:50', NULL),
(25, 7, 'upload/property/multi-image/1771682367405742.jpg', '2023-07-17 07:32:50', NULL),
(26, 7, 'upload/property/multi-image/1771682367496770.jpg', '2023-07-17 07:32:50', NULL),
(27, 7, 'upload/property/multi-image/1771682367666278.jpg', '2023-07-17 07:32:50', NULL),
(28, 8, 'upload/property/multi-image/1771682442825680.jpg', '2023-07-17 07:34:02', NULL),
(29, 8, 'upload/property/multi-image/1771682442915818.jpg', '2023-07-17 07:34:02', NULL),
(30, 8, 'upload/property/multi-image/1771682443002639.jpg', '2023-07-17 07:34:02', NULL),
(31, 9, 'upload/property/multi-image/1771684534610872.jpg', '2023-07-17 08:07:17', NULL),
(32, 9, 'upload/property/multi-image/1771684534697958.jpg', '2023-07-17 08:07:17', NULL),
(33, 9, 'upload/property/multi-image/1771684534794259.jpg', '2023-07-17 08:07:17', NULL),
(34, 9, 'upload/property/multi-image/1771684534881929.jpg', '2023-07-17 08:07:17', NULL),
(35, 10, 'upload/property/multi-image/1771685294956202.jpg', '2023-07-17 08:19:22', NULL),
(36, 10, 'upload/property/multi-image/1771685295041343.jpg', '2023-07-17 08:19:22', NULL),
(37, 10, 'upload/property/multi-image/1771685295124257.jpg', '2023-07-17 08:19:22', NULL),
(38, 11, 'upload/property/multi-image/1771685359119132.jpg', '2023-07-17 08:20:23', NULL),
(39, 11, 'upload/property/multi-image/1771685359207378.jpg', '2023-07-17 08:20:23', NULL),
(40, 11, 'upload/property/multi-image/1771685359296508.jpg', '2023-07-17 08:20:24', NULL),
(41, 11, 'upload/property/multi-image/1771685359431521.jpg', '2023-07-17 08:20:24', NULL),
(42, 11, 'upload/property/multi-image/1771685359515242.jpg', '2023-07-17 08:20:24', NULL),
(43, 12, 'upload/property/multi-image/1771685422382756.jpg', '2023-07-17 08:21:24', NULL),
(44, 12, 'upload/property/multi-image/1771685422474976.jpg', '2023-07-17 08:21:24', NULL),
(45, 12, 'upload/property/multi-image/1771685422559711.jpg', '2023-07-17 08:21:24', NULL),
(46, 12, 'upload/property/multi-image/1771685422646670.jpg', '2023-07-17 08:21:24', NULL),
(47, 13, 'upload/property/multi-image/1771859330913135.jpg', '2023-07-19 06:25:36', NULL),
(48, 13, 'upload/property/multi-image/1771859331087584.jpg', '2023-07-19 06:25:36', NULL),
(49, 14, 'upload/property/multi-image/1771859383986080.jpg', '2023-07-19 06:26:26', NULL),
(50, 14, 'upload/property/multi-image/1771859384118937.png', '2023-07-19 06:26:27', NULL),
(51, 14, 'upload/property/multi-image/1771859384340071.jpg', '2023-07-19 06:26:27', NULL),
(52, 14, 'upload/property/multi-image/1771859384440746.jpg', '2023-07-19 06:26:27', NULL),
(53, 14, 'upload/property/multi-image/1771859384533146.jpg', '2023-07-19 06:26:27', NULL),
(54, 15, 'upload/property/multi-image/1771864655940584.jpg', '2023-07-19 07:50:14', NULL),
(55, 15, 'upload/property/multi-image/1771864656061545.jpg', '2023-07-19 07:50:14', NULL),
(56, 15, 'upload/property/multi-image/1771864656158875.jpg', '2023-07-19 07:50:14', NULL),
(57, 16, 'upload/property/multi-image/1771864714451596.jpg', '2023-07-19 07:51:10', NULL),
(58, 16, 'upload/property/multi-image/1771864714534014.jpg', '2023-07-19 07:51:10', NULL),
(59, 16, 'upload/property/multi-image/1771864714647250.jpg', '2023-07-19 07:51:10', NULL),
(60, 16, 'upload/property/multi-image/1771864714736817.jpg', '2023-07-19 07:51:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `package_plans`
--

CREATE TABLE IF NOT EXISTS `package_plans` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `package_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_credits` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_amount` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_plans`
--

INSERT INTO `package_plans` (`id`, `user_id`, `package_name`, `package_credits`, `invoice`, `package_amount`, `created_at`, `updated_at`) VALUES
(1, 2, 'Business', '3', 'ERS69256853', '20', '2023-07-17 08:17:45', NULL),
(2, 2, 'Professional', '10', 'ERS62155885', '50', '2023-07-17 08:23:56', NULL),
(3, 2, 'Professional', '10', 'ERS62378900', '50', '2023-07-20 02:38:15', NULL),
(4, 2, 'Business', '3', 'ERS72174594', '20', '2023-07-20 17:22:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group_name`, `created_at`, `updated_at`) VALUES
(115, 'Type.Menu', 'web', 'type', '2023-07-25 01:49:45', '2023-07-25 01:49:45'),
(116, 'Type.All', 'web', 'type', '2023-07-25 01:49:45', '2023-07-25 01:49:45'),
(117, 'Type.Add', 'web', 'type', '2023-07-25 01:49:45', '2023-07-25 01:49:45'),
(118, 'Type.Edit', 'web', 'type', '2023-07-25 01:49:45', '2023-07-25 01:49:45'),
(119, 'Type.Delete', 'web', 'type', '2023-07-25 01:49:45', '2023-07-25 01:49:45'),
(120, 'State.Menu', 'web', 'state', '2023-07-25 01:50:08', '2023-07-25 01:50:08'),
(121, 'State.All', 'web', 'state', '2023-07-25 01:50:08', '2023-07-25 01:50:08'),
(122, 'State.Add', 'web', 'state', '2023-07-25 01:50:08', '2023-07-25 01:50:08'),
(123, 'State.Edit', 'web', 'state', '2023-07-25 01:50:08', '2023-07-25 01:50:08'),
(124, 'State.Delete', 'web', 'state', '2023-07-25 01:50:08', '2023-07-25 01:50:08'),
(125, 'Amenities.Menu', 'web', 'amenities', '2023-07-25 01:50:22', '2023-07-25 01:50:22'),
(126, 'Amenities.All', 'web', 'amenities', '2023-07-25 01:50:22', '2023-07-25 01:50:22'),
(127, 'Amenities.Add', 'web', 'amenities', '2023-07-25 01:50:22', '2023-07-25 01:50:22'),
(128, 'Amenities.Edit', 'web', 'amenities', '2023-07-25 01:50:22', '2023-07-25 01:50:22'),
(129, 'Amenities.Delete', 'web', 'amenities', '2023-07-25 01:50:22', '2023-07-25 01:50:22'),
(130, 'Property.Menu', 'web', 'property', '2023-07-25 01:50:34', '2023-07-25 01:50:34'),
(131, 'Property.All', 'web', 'property', '2023-07-25 01:50:34', '2023-07-25 01:50:34'),
(132, 'Property.Add', 'web', 'property', '2023-07-25 01:50:34', '2023-07-25 01:50:34'),
(133, 'Property.Edit', 'web', 'property', '2023-07-25 01:50:34', '2023-07-25 01:50:34'),
(134, 'Property.Delete', 'web', 'property', '2023-07-25 01:50:34', '2023-07-25 01:50:34'),
(135, 'Package.Menu', 'web', 'history', '2023-07-25 01:51:05', '2023-07-25 01:51:05'),
(136, 'Message.Menu', 'web', 'message', '2023-07-25 01:51:05', '2023-07-25 09:36:40'),
(137, 'Testimonials.Menu', 'web', 'testimonials', '2023-07-25 01:51:22', '2023-07-25 01:51:22'),
(138, 'Testimonials.All', 'web', 'testimonials', '2023-07-25 01:51:22', '2023-07-25 01:51:22'),
(139, 'Testimonials.Add', 'web', 'testimonials', '2023-07-25 01:51:22', '2023-07-25 01:51:22'),
(140, 'Testimonials.Edit', 'web', 'testimonials', '2023-07-25 01:51:22', '2023-07-25 01:51:22'),
(141, 'Testimonials.Delete', 'web', 'testimonials', '2023-07-25 01:51:22', '2023-07-25 01:51:22'),
(142, 'Agent.Menu', 'web', 'agent', '2023-07-25 01:51:39', '2023-07-25 01:51:39'),
(143, 'Agent.All', 'web', 'agent', '2023-07-25 01:51:39', '2023-07-25 01:51:39'),
(144, 'Agent.Add', 'web', 'agent', '2023-07-25 01:51:39', '2023-07-25 01:51:39'),
(145, 'Agent.Edit', 'web', 'agent', '2023-07-25 01:51:39', '2023-07-25 01:51:39'),
(146, 'Agent.Delete', 'web', 'agent', '2023-07-25 01:51:39', '2023-07-25 01:51:39'),
(153, 'Category.Menu', 'web', 'category', '2023-07-25 01:52:42', '2023-07-25 01:52:42'),
(154, 'Post.Menu', 'web', 'post', '2023-07-25 01:52:42', '2023-07-25 01:52:42'),
(157, 'Smtp.Menu', 'web', 'smtp', '2023-07-25 01:55:33', '2023-07-25 01:55:33'),
(158, 'Site.Menu', 'web', 'site', '2023-07-25 01:55:33', '2023-07-25 01:55:33'),
(159, 'Role.Menu', 'web', 'role', '2023-07-25 01:55:33', '2023-07-25 01:55:33'),
(162, 'Comment.Menu', 'web', 'comment', '2023-07-25 01:56:54', '2023-07-25 09:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE IF NOT EXISTS `properties` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ptype_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amenities_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `property_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lowest_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_thambnail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `long_descp` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bedrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bathrooms` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `garage_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `neighborhood` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hot` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `ptype_id`, `amenities_id`, `property_name`, `property_slug`, `property_code`, `property_status`, `lowest_price`, `max_price`, `property_thambnail`, `short_descp`, `long_descp`, `bedrooms`, `bathrooms`, `garage`, `garage_size`, `property_size`, `property_video`, `address`, `city`, `state`, `postal_code`, `neighborhood`, `latitude`, `longitude`, `featured`, `hot`, `agent_id`, `status`, `created_at`, `updated_at`) VALUES
(6, '1', 'First Aid Medical Center,Intercom', 'ddd', 'ddd', 'PC004', 'rent', '34', '333', 'upload/property/thambnail/1771682256481879.png', 'sdvdasvasv', '<p>vasvdasvasvfas</p>', '2', NULL, '23', '2', '232', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '5', '81300', 'das', '232', '2323', '1', '1', NULL, '1', '2023-07-17 07:31:05', '2023-07-19 07:01:47'),
(7, '2', 'Cleaning Services,First Aid Medical Center,Floor Level', 'aaa', 'aaa', 'PC005', 'buy', '22', '333', 'upload/property/thambnail/1771682367226257.jpg', 'dvsav', '<p>vasvasvfasv</p>', '5', NULL, '3', '23', '232', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '5', '81300', 'das', '467', '103.672960', '1', '1', NULL, '1', '2023-07-17 07:32:50', '2023-07-19 07:01:53'),
(9, '1', 'Cleaning Services,Maintenance Staff', 'zzz', 'zzz', 'PC007', 'rent', '22', '464', 'upload/property/thambnail/1771684534559477.jpg', 'vdsvasvasqvfa', '<p>avfavadfva</p>', '1', '4', '23', '4', '232', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '7', '81300', 'das', '2.222410', '234244', '1', '1', 2, '1', '2023-07-17 08:07:17', '2023-07-19 07:01:31'),
(10, '4', 'First Aid Medical Center,24 Hours Concierge,Service Elevators', 'xxx', 'xxx', 'PC008', 'buy', '34', '4234', 'upload/property/thambnail/1771685294862342.jpg', 'cdsvsa', '<p>vasdvasv</p>', '5', '3', '23', '4', '3232', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '5', '81300', 'das', '4324', '3232', '1', NULL, 2, '1', '2023-07-17 08:19:22', '2023-07-19 07:01:22'),
(11, '3', 'Cleaning Services,First Aid Medical Center', 'vvv', 'vvv', 'PC009', 'rent', '34', '464', 'upload/property/thambnail/1771685358972152.png', 'vsdvsvsadv', '<p>bfdbsdbsdfbsfd</p>', '2', '2', '2', '4', '3000', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '1', '81300', 'das', '2232', '2323', NULL, '1', 2, '1', '2023-07-17 08:20:23', '2023-07-19 07:18:29'),
(12, '5', 'Maintenance Staff', 'nnn', 'nnn', 'PC010', 'rent', '34', '333', 'upload/property/thambnail/1771685422208596.png', 'vsvfasfvasv', '<p>vasdvasvasvas</p>', '2', '23', '2', '2', '232', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '1', '81300', 'das', '4324', '23424', '1', '1', 2, '1', '2023-07-17 08:21:24', '2023-07-19 07:18:20'),
(13, '2', 'Maintenance Staff', 'ggg', 'ggg', 'PC011', 'buy', '22', '464', 'upload/property/thambnail/1771859330175955.jpg', 'fevasv', '<p>vasfvsavas</p>', '2', '4', '2', '6', '342', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '1', '81300', 'das', '232', '102.180430', '1', '1', 2, '1', '2023-07-19 06:25:36', '2023-07-19 07:18:11'),
(14, '1', 'Maintenance Staff', 'ttt', 'ttt', 'PC012', 'buy', '565', '464', 'upload/property/thambnail/1771859383898994.jpg', 'rwefwe', '<p>vasdvasvsda</p>', '5', '4', '2', '6', 'sad', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '1', '81300', 'das', '467', '102.180430', '1', '1', 2, '1', '2023-07-19 06:26:26', '2023-07-19 07:00:50'),
(15, '1', 'Maintenance Staff', 'yyy', 'yyy', 'PC013', 'rent', '34', '333', 'upload/property/thambnail/1771864655883961.jpg', 'Csdvsavas', '<p>vasdvasdvasv</p>', '2', '2', '2', '2', '3000', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '2', '81300', 'das', '467', '2323', '1', '1', 2, '1', '2023-07-19 07:50:14', NULL),
(16, '1', 'Cleaning Services', 'ppp', 'ppp', 'PC014', 'rent', '34', '464', 'upload/property/thambnail/1771864714395901.png', 'fdacasd', '<p>vadsvasv</p>', '2', '2', '23', '3', '342', 'https://www.youtube.com/embed/wSZskFmmSwg', 'NO 126, JALAN BUKIT IMPIAN 62', 'JOHOR BHARU', '2', '81300', 'das', '2232', '102.180430', '1', '1', 2, '1', '2023-07-19 07:51:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_messages`
--

CREATE TABLE IF NOT EXISTS `property_messages` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `msg_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_messages`
--

INSERT INTO `property_messages` (`id`, `user_id`, `agent_id`, `property_id`, `msg_name`, `msg_email`, `msg_phone`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, NULL, 7, 'User', 'user@gmail.com', '222', 'i need your personal number', '2023-07-17 09:59:39', NULL),
(2, 3, '2', 9, 'User', 'user@gmail.com', '222', 'long time no see', '2023-07-17 10:00:14', NULL),
(3, 3, '2', NULL, 'User', 'user@gmail.com', '222', 'no wrong', '2023-07-19 05:55:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE IF NOT EXISTS `property_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_types`
--

INSERT INTO `property_types` (`id`, `type_name`, `type_icon`, `created_at`, `updated_at`) VALUES
(1, 'Apartment', 'icon-1', NULL, '2023-07-17 00:05:06'),
(2, 'Office', 'icon-2', NULL, NULL),
(3, 'Floor', 'icon-3', NULL, NULL),
(4, 'Duplex', 'icon-4', NULL, NULL),
(5, 'Building', 'icon-5', NULL, NULL),
(7, 'Warehouse', 'icon-6', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Manager', 'web', '2023-07-20 09:51:49', '2023-07-20 09:51:49'),
(3, 'Admin', 'web', '2023-07-20 09:51:54', '2023-07-20 09:51:54'),
(7, 'Sales', 'web', '2023-07-24 06:00:11', '2023-07-24 06:00:11'),
(9, 'SuperAdmin', 'web', '2023-07-25 09:23:45', '2023-07-25 09:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(115, 7),
(116, 7),
(117, 7),
(125, 2),
(125, 7),
(126, 2),
(126, 7),
(127, 2),
(127, 7),
(128, 2),
(128, 7),
(129, 2),
(129, 7),
(136, 9),
(154, 2),
(159, 9);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE IF NOT EXISTS `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `agent_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tour_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `user_id`, `property_id`, `agent_id`, `tour_date`, `tour_time`, `message`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 9, '2', '07/24/2023', '10am', 'i want visit property', '1', '2023-07-20 02:35:13', '2023-07-20 02:40:14'),
(3, 3, 9, '2', '07/16/2023', '8.00pm', 'i want visit', '1', '2023-07-20 02:42:30', '2023-07-20 02:56:50'),
(4, 3, 9, '2', '07/24/2023', '9.00am', 'hi', '1', '2023-07-20 03:04:53', '2023-07-20 03:36:46'),
(5, 3, 9, '2', '07/21/2023', '10am', 'hello3', '0', '2023-07-20 03:27:13', '2023-07-20 03:38:17'),
(6, 3, 9, '2', '07/24/2023', '9.00am', 'i want visit this property', '1', '2023-07-20 17:17:28', '2023-07-20 17:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_settings`
--

INSERT INTO `site_settings` (`id`, `logo`, `support_phone`, `company_address`, `email`, `facebook`, `twitter`, `copyright`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1771946654118345.png', '0123456789', 'No.123, Jalan Bukit Impian 29/8', 'support@realestatefinderbd.com', 'http://www.facebook.com/', 'http://www.twitter.com/', 'realestatefinder', NULL, '2023-07-20 05:33:34');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

CREATE TABLE IF NOT EXISTS `smtp_settings` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mailer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `mailer`, `host`, `post`, `username`, `password`, `encryption`, `from_address`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'sandbox.smtp.mailtrap.io', '2525', 'f8ba33f92822a1', '8f2248786f150f', 'tls', 'support@realestatefinderbd.com', NULL, '2023-07-20 03:39:10');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `state_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`, `state_image`, `created_at`, `updated_at`) VALUES
(1, 'Perak', 'upload/state/1771861213441469.jpg', NULL, '2023-07-19 06:55:31'),
(2, 'Johor', 'upload/state/1771860804065164.jpg', NULL, NULL),
(3, 'Kuala Lumpur', 'upload/state/1771860814178666.jpg', NULL, NULL),
(4, 'Kedah', 'upload/state/1771860826465326.jpg', NULL, NULL),
(5, 'Penang', 'upload/state/1771860835898652.jpg', NULL, NULL),
(7, 'Negeri Sembilan', 'upload/state/1771861327794658.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `position`, `image`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Mike', 'CEO', 'upload/testimonial/1771866604999149.jpg', 'hello everyone', NULL, NULL),
(3, 'John', 'Manager', 'upload/testimonial/1771866845811789.jpg', 'vsfvasvfasvsa', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','agent','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `credit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `photo`, `phone`, `address`, `role`, `status`, `credit`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin', 'admin@gmail.com', NULL, '$2y$10$s.Cp8S4IR9RzEeYfNhHtOeZkL0PP4Odcric2z8gL33YnK2DXmuQEu', '202307170653202303032118121859823-male-avatar-icon-or-portrait-handsome-young-man-face-with-beard-vector-illustration-.jpg', '000', NULL, 'admin', 'active', '0', NULL, NULL, '2023-07-16 22:58:59'),
(2, 'agent', 'agent', 'agent@gmail.com', NULL, '$2y$10$ZK3hufh.DXdGIYhyA5/zR.B/TL4qsHJQsIgPESNSg8K.snPI6uzcG', '202307171355202303122014download.jpg', '111', 'NO 126, JALAN BUKIT IMPIAN 62, SKUDAI, JOHOR.', 'agent', 'active', '34', NULL, NULL, '2023-07-20 17:22:31'),
(3, 'User', 'user', 'user@gmail.com', NULL, '$2y$10$WJlYi9r3btGJ6Hj9TfCMceD6dtbuf52E8Mj5OWu8UphMrRy8bZY6G', '2023071707402023031319140bfc3c5b20c439c4972383592e1c26bc.jpg', '222', NULL, 'user', 'active', '0', NULL, NULL, '2023-07-16 23:45:34'),
(5, 'Rubie Wolf', NULL, 'xledner@example.com', '2023-07-16 21:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0000ee?text=quas', '1-816-500-0918', '346 Ondricka Brook Apt. 595\nLillyburgh, CO 34929-7902', 'user', 'inactive', '0', 'WYwCO5Egqk', '2023-07-16 21:15:53', '2023-07-16 21:15:53'),
(6, 'Lamont Sawayn', NULL, 'bradtke.danny@example.net', '2023-07-16 21:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/001155?text=ut', '+1-380-910-7697', '291 Liana Creek\nCronaberg, SD 60730', 'user', 'inactive', '0', 'BZVkB0EN8v', '2023-07-16 21:15:53', '2023-07-16 21:15:53'),
(7, 'Janelle Raynor Jr.', NULL, 'icie85@example.com', '2023-07-16 21:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/007777?text=occaecati', '318.681.4736', '60756 Schulist Brooks Suite 573\nCarrollbury, WA 77741', 'user', 'inactive', '0', 'Enu9Yj045A', '2023-07-16 21:15:53', '2023-07-16 21:15:53'),
(8, 'Mario Gerhold', NULL, 'pascale.windler@example.com', '2023-07-16 21:15:53', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'https://via.placeholder.com/60x60.png/0066aa?text=ipsam', '(385) 678-9418', '895 Mohr Rest\nSchoenhaven, LA 56058-4474', 'user', 'inactive', '0', 'xjldUjre9X', '2023-07-16 21:15:53', '2023-07-16 21:15:53'),
(9, 'test', NULL, 'test@gmail.com', NULL, '$2y$10$rYKmaNLD.j3Rkz.cYvWPAOs6yvhJgglYT9ZLKKo1ukEzWKNgoxUPq', NULL, NULL, NULL, 'user', 'active', '0', NULL, '2023-07-16 21:17:24', '2023-07-16 21:17:24'),
(10, 'agent1', NULL, 'agent1@gmail.com', NULL, '$2y$10$pVkR8YXj2aS9pqjzEoSrreZhuA.f07py6PgAKldLisJYYODjhoTWC', NULL, '444', NULL, 'agent', '', '0', NULL, '2023-07-17 05:44:56', '2023-07-20 17:41:00'),
(11, 'agent2', NULL, 'agent2@gmail.com', NULL, '$2y$10$sGpf7vnoSuJJe9wz0fIiheWMMPXFg.HjXSWChwby9/pbskHZTz/gO', NULL, '5165156', NULL, 'agent', 'active', '0', NULL, NULL, '2023-07-17 07:01:33'),
(12, 'agent3', NULL, 'agent3@gmail.com', NULL, '$2y$10$pHKUzJet1SYcpQHLrCN73OIKlvOveDtCThzy/rO2u3Kw77Qz3i6Qa', NULL, '0123456789', NULL, 'agent', 'active', '0', NULL, '2023-07-20 17:42:46', '2023-07-20 17:43:50'),
(13, 'Hi', 'hi', 'hi@gmail.com', NULL, '$2y$10$Z7tXOCdGXrdc/CcFEz6/HOfoX3nVgIP9l2AhM84MGBi9jF0cpI0fS', NULL, '0123456789', 'NO 126, JALAN BUKIT IMPIAN 62', 'admin', 'active', '0', NULL, '2023-07-25 06:07:22', '2023-07-25 08:38:19'),
(17, 'abc', 'abc', 'abc@gmail.com', NULL, '$2y$10$9EXshR3ED9OjiAulAA98yeiFB6nsBaHFremHGTmT.Wslg3SAe3DZq', NULL, '1111', 'NO 126, JALAN BUKIT IMPIAN 62', 'admin', 'active', '0', NULL, '2023-07-25 09:00:15', '2023-07-25 09:00:15');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE IF NOT EXISTS `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `property_id`, `created_at`, `updated_at`) VALUES
(1, 3, 6, '2023-07-17 09:28:38', NULL),
(2, 3, 7, '2023-07-17 09:28:43', NULL),
(4, 2, 12, '2023-07-19 07:43:40', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
