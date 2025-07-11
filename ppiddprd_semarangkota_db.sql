-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2025 at 02:44 PM
-- Server version: 10.6.22-MariaDB
-- PHP Version: 8.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppiddprd_semarangkota_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `aauth_groups`
--

CREATE TABLE `aauth_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `aauth_groups`
--

INSERT INTO `aauth_groups` (`id`, `name`, `definition`) VALUES
(1, 'Developer', 'Developer Group'),
(2, 'Public', 'Public Group'),
(3, 'Default', 'Default Access Group'),
(4, 'Member', 'Member Access Group'),
(5, 'Administrator', 'Akses superadmin khusus pengelola Admin');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_group_to_group`
--

CREATE TABLE `aauth_group_to_group` (
  `group_id` int(10) UNSIGNED NOT NULL,
  `subgroup_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_login_attempts`
--

CREATE TABLE `aauth_login_attempts` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(39) DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `login_attempts` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `aauth_login_attempts`
--

INSERT INTO `aauth_login_attempts` (`id`, `ip_address`, `timestamp`, `login_attempts`) VALUES
(4, '103.101.52.151', '2024-08-06 15:13:42', 2),
(9, '103.101.52.151', '2024-09-03 10:40:06', 255),
(10, '103.101.52.151', '2024-09-03 11:14:55', 9),
(16, '103.101.52.151', '2024-09-23 10:45:00', 222),
(17, '103.185.46.38', '2024-09-25 05:02:18', 56),
(18, '103.101.52.151', '2024-10-02 09:04:19', 1),
(19, '103.101.52.151', '2024-10-02 09:09:21', 1),
(20, '103.101.52.151', '2024-10-02 09:23:16', 148),
(21, '103.101.52.151', '2024-10-02 09:29:04', 45),
(22, '103.101.52.151', '2024-10-02 10:14:44', 3),
(23, '103.101.52.151', '2024-10-02 10:28:35', 216),
(24, '103.101.52.151', '2024-10-02 11:39:28', 103),
(25, '103.101.52.151', '2024-10-02 11:49:08', 168),
(26, '103.101.52.151', '2024-10-02 12:07:20', 233),
(27, '118.136.21.194', '2024-12-26 01:27:08', 3),
(28, '118.136.21.194', '2024-12-26 01:34:34', 2),
(31, '203.144.68.172', '2025-05-12 11:29:54', 3),
(40, '140.213.7.162', '2025-06-22 00:13:21', 1),
(44, '103.147.246.51', '2025-06-22 00:26:39', 1),
(46, '112.215.151.127', '2025-06-22 00:33:35', 3);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perms`
--

CREATE TABLE `aauth_perms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `aauth_perms`
--

INSERT INTO `aauth_perms` (`id`, `name`, `definition`) VALUES
(1, 'menu_dashboard', NULL),
(2, 'menu_crud_builder', NULL),
(3, 'menu_api_builder', NULL),
(4, 'menu_page_builder', NULL),
(5, 'menu_form_builder', NULL),
(6, 'menu_blog', NULL),
(7, 'menu_menu_developer', NULL),
(8, 'menu_menu', NULL),
(9, 'menu_auth', NULL),
(10, 'menu_user', NULL),
(11, 'menu_group', NULL),
(12, 'menu_access', NULL),
(13, 'menu_permission', NULL),
(14, 'menu_extension', NULL),
(15, 'menu_database', NULL),
(16, 'menu_settings', NULL),
(17, 'menu_documentation', NULL),
(18, 'menu_api_documentation', NULL),
(19, 'menu_web_documentation', NULL),
(20, 'user_list', NULL),
(21, 'user_update_status', NULL),
(22, 'user_add', NULL),
(23, 'user_update', NULL),
(24, 'user_update_profile', NULL),
(25, 'user_update_password', NULL),
(26, 'user_profile', NULL),
(27, 'user_view', NULL),
(28, 'user_delete', NULL),
(29, 'user_export_pdf', NULL),
(30, 'user_export_xls', NULL),
(31, 'blog_list', NULL),
(32, 'blog_add', NULL),
(33, 'blog_update', NULL),
(34, 'blog_view', NULL),
(35, 'blog_delete', NULL),
(36, 'blog_export_pdf', NULL),
(37, 'blog_export_xls', NULL),
(38, 'form_list', NULL),
(39, 'form_export', NULL),
(40, 'form_add', NULL),
(41, 'form_update', NULL),
(42, 'form_view', NULL),
(43, 'form_manage', NULL),
(44, 'form_delete', NULL),
(45, 'crud_list', NULL),
(46, 'crud_export', NULL),
(47, 'crud_add', NULL),
(48, 'crud_update', NULL),
(49, 'crud_view', NULL),
(50, 'crud_delete', NULL),
(51, 'rest_list', NULL),
(52, 'rest_export', NULL),
(53, 'rest_add', NULL),
(54, 'rest_update', NULL),
(55, 'rest_view', NULL),
(56, 'rest_delete', NULL),
(57, 'group_list', NULL),
(58, 'group_export', NULL),
(59, 'group_add', NULL),
(60, 'group_update', NULL),
(61, 'group_view', NULL),
(62, 'group_delete', NULL),
(63, 'permission_list', NULL),
(64, 'permission_export', NULL),
(65, 'permission_add', NULL),
(66, 'permission_update', NULL),
(67, 'permission_view', NULL),
(68, 'permission_delete', NULL),
(69, 'access_list', NULL),
(70, 'access_add', NULL),
(71, 'access_update', NULL),
(72, 'menu_list', NULL),
(73, 'menu_add', NULL),
(74, 'menu_update', NULL),
(75, 'menu_delete', NULL),
(76, 'menu_save_ordering', NULL),
(77, 'menu_type_add', NULL),
(78, 'page_list', NULL),
(79, 'page_export', NULL),
(80, 'page_add', NULL),
(81, 'page_update', NULL),
(82, 'page_view', NULL),
(83, 'page_delete', NULL),
(84, 'setting', NULL),
(85, 'setting_update', NULL),
(86, 'database_list', NULL),
(87, 'extension_list', NULL),
(88, 'extension_activate', NULL),
(89, 'extension_deactivate', NULL),
(90, 'keys_list', NULL),
(91, 'menu_api_keys', ''),
(92, 'page_detail', NULL),
(93, 'link_terkait_add', NULL),
(94, 'link_terkait_update', NULL),
(95, 'link_terkait_view', NULL),
(96, 'link_terkait_delete', NULL),
(97, 'link_terkait_list', NULL),
(98, 'halaman_add', NULL),
(99, 'halaman_update', NULL),
(100, 'halaman_view', NULL),
(101, 'halaman_delete', NULL),
(102, 'halaman_list', NULL),
(103, 'media_add', NULL),
(104, 'media_update', NULL),
(105, 'media_view', NULL),
(106, 'media_delete', NULL),
(107, 'media_list', NULL),
(108, 'slider_add', NULL),
(109, 'slider_update', NULL),
(110, 'slider_view', NULL),
(111, 'slider_delete', NULL),
(112, 'slider_list', NULL),
(113, 'faq_add', NULL),
(114, 'faq_update', NULL),
(115, 'faq_view', NULL),
(116, 'faq_delete', NULL),
(117, 'faq_list', NULL),
(118, 'menu_menu_user', NULL),
(119, 'menu_berita', NULL),
(120, 'menu_halaman', NULL),
(121, 'menu_slider', NULL),
(122, 'menu_media', NULL),
(123, 'menu_link_terkait', NULL),
(124, 'menu_faq', NULL),
(125, 'menu_menu_pengaturan', NULL),
(126, 'slider_export_xls', NULL),
(127, 'slider_export_pdf', NULL),
(128, 'halaman_export_xls', NULL),
(129, 'halaman_export_pdf', NULL),
(130, 'media_export_xls', NULL),
(131, 'media_export_pdf', NULL),
(132, 'link_terkait_export_xls', NULL),
(133, 'link_terkait_export_pdf', NULL),
(134, 'faq_export_xls', NULL),
(135, 'faq_export_pdf', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_group`
--

CREATE TABLE `aauth_perm_to_group` (
  `perm_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `aauth_perm_to_group`
--

INSERT INTO `aauth_perm_to_group` (`perm_id`, `group_id`) VALUES
(25, 3),
(24, 3),
(1, 3),
(26, 3),
(118, 5),
(119, 5),
(120, 5),
(121, 5),
(122, 5),
(123, 5),
(124, 5),
(31, 5),
(32, 5),
(33, 5),
(34, 5),
(35, 5),
(93, 5),
(94, 5),
(95, 5),
(96, 5),
(97, 5),
(98, 5),
(99, 5),
(100, 5),
(101, 5),
(102, 5),
(103, 5),
(104, 5),
(105, 5),
(106, 5),
(107, 5),
(108, 5),
(109, 5),
(110, 5),
(111, 5),
(112, 5),
(113, 5),
(114, 5),
(115, 5),
(116, 5),
(117, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_perm_to_user`
--

CREATE TABLE `aauth_perm_to_user` (
  `perm_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_pms`
--

CREATE TABLE `aauth_pms` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender_id` int(10) UNSIGNED NOT NULL,
  `receiver_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(225) NOT NULL,
  `message` text DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `pm_deleted_sender` int(11) DEFAULT NULL,
  `pm_deleted_receiver` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user`
--

CREATE TABLE `aauth_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `aauth_users`
--

CREATE TABLE `aauth_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `oauth_uid` text DEFAULT NULL,
  `oauth_provider` varchar(100) DEFAULT NULL,
  `pass` varchar(64) NOT NULL,
  `username` varchar(100) NOT NULL,
  `full_name` varchar(200) NOT NULL,
  `avatar` text NOT NULL,
  `banned` tinyint(1) DEFAULT 0,
  `last_login` datetime DEFAULT NULL,
  `last_activity` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `forgot_exp` text DEFAULT NULL,
  `remember_time` datetime DEFAULT NULL,
  `remember_exp` text DEFAULT NULL,
  `verification_code` text DEFAULT NULL,
  `top_secret` varchar(16) DEFAULT NULL,
  `ip_address` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `aauth_users`
--

INSERT INTO `aauth_users` (`id`, `email`, `oauth_uid`, `oauth_provider`, `pass`, `username`, `full_name`, `avatar`, `banned`, `last_login`, `last_activity`, `date_created`, `forgot_exp`, `remember_time`, `remember_exp`, `verification_code`, `top_secret`, `ip_address`) VALUES
(1, 'developer@cicool.com', NULL, NULL, 'c827644381870ba2b1303dfac2abcc11c1045a2b2b020bbe5d65d1bfc876fdbd', 'developer', 'developer', '', 0, '2025-06-22 22:15:02', '2025-06-22 22:15:02', '2024-07-08 03:48:50', NULL, '2024-07-11 00:00:00', 'rnZ7Y5FxPkjCIwJW', NULL, NULL, '149.113.114.92'),
(2, 'administrator@cicool.com', NULL, NULL, '1e3a4a5c209c78ba20426000cf5a17098bfbd64ccffcbc9fe7a1a7d58be477d7', 'administrator', 'Administrator', 'default.png', 0, '2025-06-22 22:11:49', '2025-06-22 22:11:49', '2024-07-08 11:32:07', NULL, NULL, NULL, NULL, NULL, '149.113.114.92');

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_to_group`
--

CREATE TABLE `aauth_user_to_group` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=FIXED;

--
-- Dumping data for table `aauth_user_to_group`
--

INSERT INTO `aauth_user_to_group` (`user_id`, `group_id`) VALUES
(1, 1),
(1, 3),
(2, 3),
(2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aauth_user_variables`
--

CREATE TABLE `aauth_user_variables` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `data_key` varchar(100) NOT NULL,
  `value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `tags` text NOT NULL,
  `category` varchar(200) NOT NULL,
  `status` varchar(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `viewers` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `content`, `image`, `tags`, `category`, `status`, `author`, `viewers`, `created_at`, `updated_at`) VALUES
(1, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '1', 'publish', 'developer', 3253, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(2, 'lorem', 'lorem', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '2', 'publish', 'developer', 3159, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(3, 'ipsum', 'ipsum', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '2', 'publish', 'developer', 3175, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(4, 'dolor', 'dolor', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '2', 'publish', 'developer', 3177, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(5, 'sit', 'sit', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '2', 'publish', 'developer', 3149, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(6, 'amet', 'amet', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '2', 'publish', 'developer', 3149, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(7, 'consectur', 'consectur', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '2', 'publish', 'developer', 3138, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(8, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '2', 'publish', 'developer', 1, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(9, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '1', 'publish', 'developer', 1, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(10, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', 'greetings from our team I hope to be happy! ', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '1', 'publish', 'developer', 1, '2024-07-08 03:48:49', '0000-00-00 00:00:00'),
(11, 'Hello Wellcome To Cicool Builder', 'Hello-Wellcome-To-Ciool-Builder', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n<div id=\"gtx-trans\" xss=removed>\r\n<div class=\"gtx-trans-icon\"> </div>\r\n</div>', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '1', 'publish', 'developer', 1, '2024-07-08 03:48:49', '2024-07-16 12:49:48'),
(12, 'Hello Wellcome To Lorem Ipsum', 'hello-wellcome-to-lorem-ipsum', '<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '20240716131202-a821a992b07d9609c5879d4988b22495.jpg', 'greetings', '1', 'publish', 'developer', 3215, '2024-07-10 03:48:49', '2024-07-16 13:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(200) NOT NULL,
  `category_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`category_id`, `category_name`, `category_desc`) VALUES
(1, 'Technology', ''),
(2, 'Lifestyle', '');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `captcha_id` int(10) UNSIGNED NOT NULL,
  `captcha_time` int(11) DEFAULT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `cc_options`
--

CREATE TABLE `cc_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_name` varchar(200) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `cc_options`
--

INSERT INTO `cc_options` (`id`, `option_name`, `option_value`) VALUES
(1, 'favicon', 'default.png'),
(2, 'site_name', 'PPID DPRD KOTA SEMARANG'),
(3, 'timezone', 'Asia/Jakarta'),
(4, 'enable_crud_builder', NULL),
(5, 'enable_api_builder', NULL),
(6, 'enable_form_builder', '1'),
(7, 'enable_page_builder', '1'),
(8, 'enable_disqus', NULL),
(9, 'disqus_id', ''),
(10, 'limit_pagination', '30'),
(11, 'site_description', ''),
(12, 'keywords', ''),
(13, 'author', ''),
(14, 'logo', NULL),
(15, 'landing_page_id', 'default'),
(16, 'active_theme', 'sandbox'),
(17, 'email', 'admin@cicool.com'),
(18, 'google_id', ''),
(19, 'google_secret', '');

-- --------------------------------------------------------

--
-- Table structure for table `cc_session`
--

CREATE TABLE `cc_session` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `data` blob NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL,
  `sort_by` varchar(50) DEFAULT NULL,
  `sort_field` varchar(255) DEFAULT NULL,
  `javascript` text DEFAULT NULL,
  `style` text DEFAULT NULL,
  `javascript_setting_detail` text DEFAULT NULL,
  `javascript_setting_update` text DEFAULT NULL,
  `javascript_setting_create` text DEFAULT NULL,
  `javascript_setting_list` text DEFAULT NULL,
  `primary_key` varchar(200) NOT NULL,
  `page_read` varchar(20) DEFAULT NULL,
  `page_create` varchar(20) DEFAULT NULL,
  `page_update` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `title`, `subject`, `table_name`, `sort_by`, `sort_field`, `javascript`, `style`, `javascript_setting_detail`, `javascript_setting_update`, `javascript_setting_create`, `javascript_setting_list`, `primary_key`, `page_read`, `page_create`, `page_update`) VALUES
(1, 'Link Terkait', 'Link Terkait', 'link_terkait', '', '', NULL, '   /* .group-link_terkait_nama */\r\n   .group-link_terkait_nama {\r\n\r\n   }\r\n\r\n   .group-link_terkait_nama .control-label {\r\n\r\n   }\r\n\r\n   .group-link_terkait_nama .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-link_terkait_nama .form-control {\r\n\r\n   }\r\n\r\n   .group-link_terkait_nama .help-block {\r\n\r\n   }\r\n   /* end .group-link_terkait_nama */\r\n\r\n\r\n\r\n   /* .group-link_terkait_url */\r\n   .group-link_terkait_url {\r\n\r\n   }\r\n\r\n   .group-link_terkait_url .control-label {\r\n\r\n   }\r\n\r\n   .group-link_terkait_url .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-link_terkait_url .form-control {\r\n\r\n   }\r\n\r\n   .group-link_terkait_url .help-block {\r\n\r\n   }\r\n   /* end .group-link_terkait_url */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var link_terkait_nama = $(\'.detail_group-link_terkait_nama\');\n        var link_terkait_url = $(\'.detail_group-link_terkait_url\');\n    } ', 'function onReady() {\n    var link_terkait_nama = $(\'#link_terkait_nama\');\n   /* \n    link_terkait_nama.on(\'change\', function() {});\n    */\n    var link_terkait_url = $(\'#link_terkait_url\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n    var link_terkait_nama = $(\'#link_terkait_nama\');\n   /* \n    link_terkait_nama.on(\'change\', function() {});\n    */\n    var link_terkait_url = $(\'#link_terkait_url\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var link_terkait_nama = row.find(\'.list_group-link_terkait_nama\');\n    var link_terkait_url = row.find(\'.list_group-link_terkait_url\');\n\n} ', 'link_terkait_id', 'yes', 'yes', 'yes'),
(2, 'Halaman', 'Halaman', 'halaman', NULL, NULL, NULL, '   /* .group-halaman_title */\r\n   .group-halaman_title {\r\n\r\n   }\r\n\r\n   .group-halaman_title .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_title .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_title .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_title .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_title */\r\n\r\n\r\n\r\n   /* .group-halaman_slug */\r\n   .group-halaman_slug {\r\n\r\n   }\r\n\r\n   .group-halaman_slug .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_slug .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_slug .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_slug .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_slug */\r\n\r\n\r\n\r\n   /* .group-halaman_content */\r\n   .group-halaman_content {\r\n\r\n   }\r\n\r\n   .group-halaman_content .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_content .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_content .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_content .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_content */\r\n\r\n\r\n\r\n   /* .group-halaman_status */\r\n   .group-halaman_status {\r\n\r\n   }\r\n\r\n   .group-halaman_status .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_status .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_status .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_status .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_status */\r\n\r\n\r\n\r\n   /* .group-halaman_author */\r\n   .group-halaman_author {\r\n\r\n   }\r\n\r\n   .group-halaman_author .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_author .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_author .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_author .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_author */\r\n\r\n\r\n\r\n   /* .group-halaman_viewers */\r\n   .group-halaman_viewers {\r\n\r\n   }\r\n\r\n   .group-halaman_viewers .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_viewers .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_viewers .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_viewers .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_viewers */\r\n\r\n\r\n\r\n   /* .group-halaman_date_created */\r\n   .group-halaman_date_created {\r\n\r\n   }\r\n\r\n   .group-halaman_date_created .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_date_created .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_date_created .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_date_created .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_date_created */\r\n\r\n\r\n\r\n   /* .group-halaman_date_updated */\r\n   .group-halaman_date_updated {\r\n\r\n   }\r\n\r\n   .group-halaman_date_updated .control-label {\r\n\r\n   }\r\n\r\n   .group-halaman_date_updated .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-halaman_date_updated .form-control {\r\n\r\n   }\r\n\r\n   .group-halaman_date_updated .help-block {\r\n\r\n   }\r\n   /* end .group-halaman_date_updated */\r\n\r\n\r\n\r\n', 'function onReady() {\r\n        var halaman_title = $(\'.detail_group-halaman_title\');\r\n        var halaman_slug = $(\'.detail_group-halaman_slug\');\r\n        var halaman_content = $(\'.detail_group-halaman_content\');\r\n        var halaman_status = $(\'.detail_group-halaman_status\');\r\n        var halaman_author = $(\'.detail_group-halaman_author\');\r\n        var halaman_viewers = $(\'.detail_group-halaman_viewers\');\r\n        var halaman_date_created = $(\'.detail_group-halaman_date_created\');\r\n        var halaman_date_updated = $(\'.detail_group-halaman_date_updated\');\r\n    }', 'function onReady() {\r\n    var halaman_title = $(\'#halaman_title\');\r\n   /* \r\n    halaman_title.on(\'change\', function() {});\r\n    */\r\n    var halaman_slug = $(\'#halaman_slug\');\r\n   var halaman_content = $(\'#halaman_content\');\r\n   var halaman_status = $(\'#halaman_status\');\r\n   var halaman_author = $(\'#halaman_author\');\r\n   var halaman_viewers = $(\'#halaman_viewers\');\r\n   var halaman_date_created = $(\'#halaman_date_created\');\r\n   var halaman_date_updated = $(\'#halaman_date_updated\');\r\n   \r\n}\r\n\r\nfunction beforeSave() {\r\n    data_post.push({\r\n        name : \'_example\',\r\n        value : \'value_of_example\',\r\n    })\r\n}', 'function onReady() {\r\n    var halaman_title = $(\'#halaman_title\');\r\n   /* \r\n    halaman_title.on(\'change\', function() {});\r\n    */\r\n    var halaman_slug = $(\'#halaman_slug\');\r\n   var halaman_content = $(\'#halaman_content\');\r\n   var halaman_status = $(\'#halaman_status\');\r\n   var halaman_author = $(\'#halaman_author\');\r\n   var halaman_viewers = $(\'#halaman_viewers\');\r\n   var halaman_date_created = $(\'#halaman_date_created\');\r\n   var halaman_date_updated = $(\'#halaman_date_updated\');\r\n   \r\n}\r\n\r\nfunction beforeSave() {\r\n    data_post.push({\r\n        name : \'_example\',\r\n        value : \'value_of_example\',\r\n    })\r\n}', 'function onReady() {\r\n\r\n}\r\n\r\nfunction eachRows(row) {\r\n    var halaman_title = row.find(\'.list_group-halaman_title\');\r\n    var halaman_slug = row.find(\'.list_group-halaman_slug\');\r\n    var halaman_content = row.find(\'.list_group-halaman_content\');\r\n    var halaman_status = row.find(\'.list_group-halaman_status\');\r\n    var halaman_author = row.find(\'.list_group-halaman_author\');\r\n    var halaman_viewers = row.find(\'.list_group-halaman_viewers\');\r\n    var halaman_date_created = row.find(\'.list_group-halaman_date_created\');\r\n    var halaman_date_updated = row.find(\'.list_group-halaman_date_updated\');\r\n\r\n}', 'halaman_id', 'yes', 'yes', 'yes'),
(3, 'Media', 'Media', 'media', '', '', NULL, '   /* .group-media_nama */\r\n   .group-media_nama {\r\n\r\n   }\r\n\r\n   .group-media_nama .control-label {\r\n\r\n   }\r\n\r\n   .group-media_nama .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-media_nama .form-control {\r\n\r\n   }\r\n\r\n   .group-media_nama .help-block {\r\n\r\n   }\r\n   /* end .group-media_nama */\r\n\r\n\r\n\r\n   /* .group-media_keterangan */\r\n   .group-media_keterangan {\r\n\r\n   }\r\n\r\n   .group-media_keterangan .control-label {\r\n\r\n   }\r\n\r\n   .group-media_keterangan .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-media_keterangan .form-control {\r\n\r\n   }\r\n\r\n   .group-media_keterangan .help-block {\r\n\r\n   }\r\n   /* end .group-media_keterangan */\r\n\r\n\r\n\r\n   /* .group-media_file */\r\n   .group-media_file {\r\n\r\n   }\r\n\r\n   .group-media_file .control-label {\r\n\r\n   }\r\n\r\n   .group-media_file .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-media_file .form-control {\r\n\r\n   }\r\n\r\n   .group-media_file .help-block {\r\n\r\n   }\r\n   /* end .group-media_file */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var media_nama = $(\'.detail_group-media_nama\');\n        var media_keterangan = $(\'.detail_group-media_keterangan\');\n        var media_file = $(\'.detail_group-media_file\');\n    } ', 'function onReady() {\n    var media_nama = $(\'#media_nama\');\n   /* \n    media_nama.on(\'change\', function() {});\n    */\n    var media_keterangan = $(\'#media_keterangan\');\n   var media_file = $(\'#media_file\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n    var media_nama = $(\'#media_nama\');\n   /* \n    media_nama.on(\'change\', function() {});\n    */\n    var media_keterangan = $(\'#media_keterangan\');\n   var media_file = $(\'#media_file\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var media_nama = row.find(\'.list_group-media_nama\');\n    var media_keterangan = row.find(\'.list_group-media_keterangan\');\n    var media_file = row.find(\'.list_group-media_file\');\n\n} ', 'media_id', 'yes', 'yes', 'yes'),
(4, 'Slider', 'Slider', 'slider', '', '', NULL, '   /* .group-slider_nama */\r\n   .group-slider_nama {\r\n\r\n   }\r\n\r\n   .group-slider_nama .control-label {\r\n\r\n   }\r\n\r\n   .group-slider_nama .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-slider_nama .form-control {\r\n\r\n   }\r\n\r\n   .group-slider_nama .help-block {\r\n\r\n   }\r\n   /* end .group-slider_nama */\r\n\r\n\r\n\r\n   /* .group-slider_file */\r\n   .group-slider_file {\r\n\r\n   }\r\n\r\n   .group-slider_file .control-label {\r\n\r\n   }\r\n\r\n   .group-slider_file .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-slider_file .form-control {\r\n\r\n   }\r\n\r\n   .group-slider_file .help-block {\r\n\r\n   }\r\n   /* end .group-slider_file */\r\n\r\n\r\n\r\n   /* .group-slider_user_created */\r\n   .group-slider_user_created {\r\n\r\n   }\r\n\r\n   .group-slider_user_created .control-label {\r\n\r\n   }\r\n\r\n   .group-slider_user_created .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-slider_user_created .form-control {\r\n\r\n   }\r\n\r\n   .group-slider_user_created .help-block {\r\n\r\n   }\r\n   /* end .group-slider_user_created */\r\n\r\n\r\n\r\n   /* .group-slider_date_created */\r\n   .group-slider_date_created {\r\n\r\n   }\r\n\r\n   .group-slider_date_created .control-label {\r\n\r\n   }\r\n\r\n   .group-slider_date_created .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-slider_date_created .form-control {\r\n\r\n   }\r\n\r\n   .group-slider_date_created .help-block {\r\n\r\n   }\r\n   /* end .group-slider_date_created */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var slider_nama = $(\'.detail_group-slider_nama\');\n        var slider_file = $(\'.detail_group-slider_file\');\n        var slider_user_created = $(\'.detail_group-slider_user_created\');\n        var slider_date_created = $(\'.detail_group-slider_date_created\');\n    } ', 'function onReady() {\n    var slider_nama = $(\'#slider_nama\');\n   /* \n    slider_nama.on(\'change\', function() {});\n    */\n    var slider_file = $(\'#slider_file\');\n   var slider_user_created = $(\'#slider_user_created\');\n   var slider_date_created = $(\'#slider_date_created\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n    var slider_nama = $(\'#slider_nama\');\n   /* \n    slider_nama.on(\'change\', function() {});\n    */\n    var slider_file = $(\'#slider_file\');\n   var slider_user_created = $(\'#slider_user_created\');\n   var slider_date_created = $(\'#slider_date_created\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var slider_nama = row.find(\'.list_group-slider_nama\');\n    var slider_file = row.find(\'.list_group-slider_file\');\n    var slider_user_created = row.find(\'.list_group-slider_user_created\');\n    var slider_date_created = row.find(\'.list_group-slider_date_created\');\n\n} ', 'slider_id', 'yes', 'yes', 'yes'),
(5, 'FAQ', 'FAQ', 'faq', '', '', NULL, '   /* .group-faq_tanya */\r\n   .group-faq_tanya {\r\n\r\n   }\r\n\r\n   .group-faq_tanya .control-label {\r\n\r\n   }\r\n\r\n   .group-faq_tanya .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-faq_tanya .form-control {\r\n\r\n   }\r\n\r\n   .group-faq_tanya .help-block {\r\n\r\n   }\r\n   /* end .group-faq_tanya */\r\n\r\n\r\n\r\n   /* .group-faq_jawab */\r\n   .group-faq_jawab {\r\n\r\n   }\r\n\r\n   .group-faq_jawab .control-label {\r\n\r\n   }\r\n\r\n   .group-faq_jawab .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-faq_jawab .form-control {\r\n\r\n   }\r\n\r\n   .group-faq_jawab .help-block {\r\n\r\n   }\r\n   /* end .group-faq_jawab */\r\n\r\n\r\n\r\n   /* .group-faq_status */\r\n   .group-faq_status {\r\n\r\n   }\r\n\r\n   .group-faq_status .control-label {\r\n\r\n   }\r\n\r\n   .group-faq_status .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-faq_status .form-control {\r\n\r\n   }\r\n\r\n   .group-faq_status .help-block {\r\n\r\n   }\r\n   /* end .group-faq_status */\r\n\r\n\r\n\r\n   /* .group-faq_date_created */\r\n   .group-faq_date_created {\r\n\r\n   }\r\n\r\n   .group-faq_date_created .control-label {\r\n\r\n   }\r\n\r\n   .group-faq_date_created .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-faq_date_created .form-control {\r\n\r\n   }\r\n\r\n   .group-faq_date_created .help-block {\r\n\r\n   }\r\n   /* end .group-faq_date_created */\r\n\r\n\r\n\r\n   /* .group-faq_date_updated */\r\n   .group-faq_date_updated {\r\n\r\n   }\r\n\r\n   .group-faq_date_updated .control-label {\r\n\r\n   }\r\n\r\n   .group-faq_date_updated .col-sm-8 {\r\n\r\n   }\r\n\r\n   .group-faq_date_updated .form-control {\r\n\r\n   }\r\n\r\n   .group-faq_date_updated .help-block {\r\n\r\n   }\r\n   /* end .group-faq_date_updated */\r\n\r\n\r\n\r\n', 'function onReady() {\n        var faq_tanya = $(\'.detail_group-faq_tanya\');\n        var faq_jawab = $(\'.detail_group-faq_jawab\');\n        var faq_status = $(\'.detail_group-faq_status\');\n        var faq_date_created = $(\'.detail_group-faq_date_created\');\n        var faq_date_updated = $(\'.detail_group-faq_date_updated\');\n    } ', 'function onReady() {\n    var faq_tanya = $(\'#faq_tanya\');\n   /* \n    faq_tanya.on(\'change\', function() {});\n    */\n    var faq_jawab = $(\'#faq_jawab\');\n   var faq_status = $(\'#faq_status\');\n   var faq_date_created = $(\'#faq_date_created\');\n   var faq_date_updated = $(\'#faq_date_updated\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n    var faq_tanya = $(\'#faq_tanya\');\n   /* \n    faq_tanya.on(\'change\', function() {});\n    */\n    var faq_jawab = $(\'#faq_jawab\');\n   var faq_status = $(\'#faq_status\');\n   var faq_date_created = $(\'#faq_date_created\');\n   var faq_date_updated = $(\'#faq_date_updated\');\n   \n}\n\nfunction beforeSave() {\n    data_post.push({\n        name : \'_example\',\n        value : \'value_of_example\',\n    })\n} ', 'function onReady() {\n\n}\n\nfunction eachRows(row) {\n    var faq_tanya = row.find(\'.list_group-faq_tanya\');\n    var faq_jawab = row.find(\'.list_group-faq_jawab\');\n    var faq_status = row.find(\'.list_group-faq_status\');\n    var faq_date_created = row.find(\'.list_group-faq_date_created\');\n    var faq_date_updated = row.find(\'.list_group-faq_date_updated\');\n\n} ', 'faq_id', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `crud_action`
--

CREATE TABLE `crud_action` (
  `id` int(10) UNSIGNED NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `title` varchar(200) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `action` varchar(200) NOT NULL,
  `meta` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `crud_custom_option`
--

CREATE TABLE `crud_custom_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `option_label` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field`
--

CREATE TABLE `crud_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `crud_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `input_type` varchar(200) NOT NULL,
  `help_block` text DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `auto_generate_help_block` varchar(40) DEFAULT NULL,
  `wrapper_class` text DEFAULT NULL,
  `show_column` varchar(10) DEFAULT NULL,
  `show_add_form` varchar(10) DEFAULT NULL,
  `show_update_form` varchar(10) DEFAULT NULL,
  `show_detail_page` varchar(10) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `crud_field`
--

INSERT INTO `crud_field` (`id`, `crud_id`, `field_name`, `field_label`, `input_type`, `help_block`, `placeholder`, `auto_generate_help_block`, `wrapper_class`, `show_column`, `show_add_form`, `show_update_form`, `show_detail_page`, `sort`, `relation_table`, `relation_value`, `relation_label`) VALUES
(8, 1, 'link_terkait_id', 'ID', 'number', '', '', 'yes', 'group-link_terkait_id', '', '', '', 'yes', 1, '', '', ''),
(9, 1, 'link_terkait_nama', 'Judul', 'input', '', '', 'yes', 'group-link_terkait_nama', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(10, 1, 'link_terkait_url', 'URL', 'input', '', '', 'yes', 'group-link_terkait_url', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(11, 1, 'link_terkait_user_created', 'link_terkait_user_created', 'current_user_id', '', '', 'yes', 'group-link_terkait_user_created', '', 'yes', '', '', 4, '', '', ''),
(12, 1, 'link_terkait_date_created', 'link_terkait_date_created', 'timestamp', '', '', 'yes', 'group-link_terkait_date_created', '', 'yes', '', '', 5, '', '', ''),
(13, 1, 'link_terkait_user_updated', 'link_terkait_user_updated', 'current_user_id', '', '', 'yes', 'group-link_terkait_user_updated', '', '', 'yes', '', 6, '', '', ''),
(14, 1, 'link_terkait_date_updated', 'link_terkait_date_updated', 'timestamp', '', '', 'yes', 'group-link_terkait_date_updated', '', '', 'yes', '', 7, '', '', ''),
(15, 2, 'halaman_id', 'ID', 'number', '', '', 'yes', 'group-halaman_id', '', '', '', 'yes', 1, '', '', ''),
(16, 2, 'halaman_title', 'Judul', 'input', '', '', 'yes', 'group-halaman_title', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(17, 2, 'halaman_slug', 'Slug', 'input', '', '', 'yes', 'group-halaman_slug', 'yes', '', '', 'yes', 3, '', '', ''),
(18, 2, 'halaman_content', 'Content', 'editor_wysiwyg', '', '', 'yes', 'group-halaman_content', 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(19, 2, 'halaman_status', 'Status', 'input', '', '', 'yes', 'group-halaman_status', 'yes', '', '', 'yes', 5, '', '', ''),
(20, 2, 'halaman_author', 'Author', 'current_user_username', '', '', 'yes', 'group-halaman_author', 'yes', 'yes', '', 'yes', 6, '', '', ''),
(21, 2, 'halaman_viewers', 'Viewers', 'input', '', '', 'yes', 'group-halaman_viewers', 'yes', '', '', 'yes', 7, '', '', ''),
(22, 2, 'halaman_date_created', 'halaman_date_created', 'timestamp', '', '', 'yes', 'group-halaman_date_created', 'yes', 'yes', '', '', 8, '', '', ''),
(23, 2, 'halaman_user_created', 'halaman_user_created', 'current_user_id', '', '', 'yes', 'group-halaman_user_created', '', 'yes', '', '', 9, '', '', ''),
(24, 2, 'halaman_date_updated', 'halaman_date_updated', 'timestamp', '', '', 'yes', 'group-halaman_date_updated', 'yes', '', 'yes', '', 10, '', '', ''),
(25, 2, 'halaman_user_updated', 'halaman_user_updated', 'current_user_id', '', '', 'yes', 'group-halaman_user_updated', '', '', 'yes', '', 11, '', '', ''),
(32, 3, 'media_id', 'ID', 'number', '', '', 'yes', 'group-media_id', '', '', '', 'yes', 1, '', '', ''),
(33, 3, 'media_nama', 'Nama', 'input', '', '', 'yes', 'group-media_nama', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(34, 3, 'media_keterangan', 'Keterangan', 'textarea', '', '', 'yes', 'group-media_keterangan', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(35, 3, 'media_file', 'File Media', 'file', '', '', 'yes', 'group-media_file', 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(36, 3, 'media_user_created', 'media_user_created', 'current_user_id', '', '', 'yes', 'group-media_user_created', '', 'yes', '', 'yes', 5, '', '', ''),
(37, 3, 'media_date_created', 'media_date_created', 'timestamp', '', '', 'yes', 'group-media_date_created', '', 'yes', '', 'yes', 6, '', '', ''),
(43, 4, 'slider_id', 'ID', 'number', '', '', 'yes', 'group-slider_id', '', '', '', 'yes', 1, '', '', ''),
(44, 4, 'slider_nama', 'Judul', 'input', '', '', 'yes', 'group-slider_nama', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(45, 4, 'slider_file', 'File', 'file', '', '', 'yes', 'group-slider_file', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(46, 4, 'slider_user_created', 'Author', 'current_user_id', '', '', 'yes', 'group-slider_user_created', 'yes', 'yes', '', 'yes', 4, '', '', ''),
(47, 4, 'slider_date_created', 'Date', 'timestamp', '', '', 'yes', 'group-slider_date_created', 'yes', 'yes', '', 'yes', 5, '', '', ''),
(56, 5, 'faq_id', 'ID', 'number', '', '', 'yes', 'group-faq_id', '', '', '', 'yes', 1, '', '', ''),
(57, 5, 'faq_tanya', 'Pertanyaan', 'input', '', '', 'yes', 'group-faq_tanya', 'yes', 'yes', 'yes', 'yes', 2, '', '', ''),
(58, 5, 'faq_jawab', 'Jawaban', 'textarea', '', '', 'yes', 'group-faq_jawab', 'yes', 'yes', 'yes', 'yes', 3, '', '', ''),
(59, 5, 'faq_status', 'Status', 'input', '', '', 'yes', 'group-faq_status', 'yes', 'yes', 'yes', 'yes', 4, '', '', ''),
(60, 5, 'faq_user_created', 'faq_user_created', 'current_user_id', '', '', 'yes', 'group-faq_user_created', '', 'yes', '', '', 5, '', '', ''),
(61, 5, 'faq_date_created', 'faq_date_created', 'timestamp', '', '', 'yes', 'group-faq_date_created', '', 'yes', '', '', 6, '', '', ''),
(62, 5, 'faq_user_updated', 'faq_user_updated', 'current_user_id', '', '', 'yes', 'group-faq_user_updated', '', '', 'yes', '', 7, '', '', ''),
(63, 5, 'faq_date_updated', 'faq_date_updated', 'timestamp', '', '', 'yes', 'group-faq_date_updated', '', '', 'yes', '', 8, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_condition`
--

CREATE TABLE `crud_field_condition` (
  `id` int(10) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `reff` text DEFAULT NULL,
  `crud_id` int(11) NOT NULL,
  `cond_field` text DEFAULT NULL,
  `cond_operator` text DEFAULT NULL,
  `cond_value` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_configuration`
--

CREATE TABLE `crud_field_configuration` (
  `id` int(10) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `group_config` varchar(200) NOT NULL,
  `config_name` text NOT NULL,
  `config_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `crud_field_validation`
--

CREATE TABLE `crud_field_validation` (
  `id` int(10) UNSIGNED NOT NULL,
  `crud_field_id` int(11) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `crud_field_validation`
--

INSERT INTO `crud_field_validation` (`id`, `crud_field_id`, `crud_id`, `validation_name`, `validation_value`) VALUES
(3, 9, 1, 'required', ''),
(4, 10, 1, 'required', ''),
(5, 16, 2, 'required', ''),
(6, 18, 2, 'required', ''),
(12, 33, 3, 'required', ''),
(13, 33, 3, 'max_length', '255'),
(14, 35, 3, 'required', ''),
(15, 35, 3, 'allowed_extension', 'jpg,png,jpeg,pdf,doc,docx,xls,xlsx,ppt,pptx'),
(16, 35, 3, 'max_size', '20480'),
(24, 44, 4, 'required', ''),
(25, 44, 4, 'max_length', '255'),
(26, 45, 4, 'required', ''),
(27, 45, 4, 'allowed_extension', 'jpg,png,jpeg'),
(28, 45, 4, 'max_width', '2800'),
(29, 45, 4, 'max_height', '1150'),
(30, 45, 4, 'max_size', '10240'),
(33, 57, 5, 'required', ''),
(34, 58, 5, 'required', '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_function`
--

CREATE TABLE `crud_function` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `crud_id` int(11) NOT NULL,
  `content` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `crud_function`
--

INSERT INTO `crud_function` (`id`, `slug`, `type`, `crud_id`, `content`) VALUES
(2, 'function_setting_update', 'event', 1, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(3, 'notification_title', 'notification', 1, NULL),
(4, 'notification_message', 'notification', 1, NULL),
(5, 'notification_url', 'notification', 1, NULL),
(6, 'notification_group', 'notification', 1, NULL),
(7, 'function_setting_create', 'event', 1, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(8, 'function_setting_update', 'event', 1, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(9, 'notification_title', 'notification', 1, ''),
(10, 'notification_message', 'notification', 1, ''),
(11, 'notification_url', 'notification', 1, ''),
(12, 'notification_group', 'notification', 1, ''),
(13, 'function_setting_create', 'event', 2, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(14, 'function_setting_update', 'event', 2, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(15, 'notification_title', 'notification', 2, NULL),
(16, 'notification_message', 'notification', 2, NULL),
(17, 'notification_url', 'notification', 2, NULL),
(18, 'notification_group', 'notification', 2, NULL),
(20, 'function_setting_update', 'event', 3, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(21, 'notification_title', 'notification', 3, NULL),
(22, 'notification_message', 'notification', 3, NULL),
(23, 'notification_url', 'notification', 3, NULL),
(24, 'notification_group', 'notification', 3, NULL),
(25, 'function_setting_create', 'event', 3, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(26, 'function_setting_update', 'event', 3, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(27, 'notification_title', 'notification', 3, ''),
(28, 'notification_message', 'notification', 3, ''),
(29, 'notification_url', 'notification', 3, ''),
(30, 'notification_group', 'notification', 3, ''),
(32, 'function_setting_update', 'event', 4, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(33, 'notification_title', 'notification', 4, NULL),
(34, 'notification_message', 'notification', 4, NULL),
(35, 'notification_url', 'notification', 4, NULL),
(36, 'notification_group', 'notification', 4, NULL),
(37, 'function_setting_create', 'event', 4, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(38, 'function_setting_update', 'event', 4, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(39, 'notification_title', 'notification', 4, ''),
(40, 'notification_message', 'notification', 4, ''),
(41, 'notification_url', 'notification', 4, ''),
(42, 'notification_group', 'notification', 4, ''),
(44, 'function_setting_update', 'event', 5, 'function beforeSave() {\r\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\r\n}\r\n\r\nfunction afterSuccess($id){\r\n}'),
(45, 'notification_title', 'notification', 5, NULL),
(46, 'notification_message', 'notification', 5, NULL),
(47, 'notification_url', 'notification', 5, NULL),
(48, 'notification_group', 'notification', 5, NULL),
(49, 'function_setting_create', 'event', 5, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(50, 'function_setting_update', 'event', 5, 'function beforeSave() {\n//$save_data[\'_example\'] = $this->input->post(\'_example\');\n}\n\nfunction afterSuccess($id){\n} '),
(51, 'notification_title', 'notification', 5, ''),
(52, 'notification_message', 'notification', 5, ''),
(53, 'notification_url', 'notification', 5, ''),
(54, 'notification_group', 'notification', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_chained`
--

CREATE TABLE `crud_input_chained` (
  `id` int(10) UNSIGNED NOT NULL,
  `chain_field` varchar(250) DEFAULT NULL,
  `chain_field_eq` varchar(250) DEFAULT NULL,
  `crud_field_id` int(11) DEFAULT NULL,
  `crud_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_type`
--

CREATE TABLE `crud_input_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `custom_value` int(11) NOT NULL,
  `validation_group` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `crud_input_type`
--

INSERT INTO `crud_input_type` (`id`, `type`, `relation`, `custom_value`, `validation_group`) VALUES
(1, 'input', '0', 0, 'input'),
(2, 'textarea', '0', 0, 'text'),
(3, 'select', '1', 0, 'select'),
(4, 'editor_wysiwyg', '0', 0, 'editor'),
(5, 'password', '0', 0, 'password'),
(6, 'email', '0', 0, 'email'),
(7, 'address_map', '0', 0, 'address_map'),
(8, 'file', '0', 0, 'file'),
(9, 'file_multiple', '0', 0, 'file_multiple'),
(10, 'datetime', '0', 0, 'datetime'),
(11, 'date', '0', 0, 'date'),
(12, 'timestamp', '0', 0, 'timestamp'),
(13, 'number', '0', 0, 'number'),
(14, 'yes_no', '0', 0, 'yes_no'),
(15, 'time', '0', 0, 'time'),
(16, 'year', '0', 0, 'year'),
(17, 'select_multiple', '1', 0, 'select_multiple'),
(18, 'checkboxes', '1', 0, 'checkboxes'),
(19, 'options', '1', 0, 'options'),
(20, 'true_false', '0', 0, 'true_false'),
(21, 'current_user_username', '0', 0, 'user_username'),
(22, 'current_user_id', '0', 0, 'current_user_id'),
(23, 'custom_option', '0', 1, 'custom_option'),
(24, 'custom_checkbox', '0', 1, 'custom_checkbox'),
(25, 'custom_select_multiple', '0', 1, 'custom_select_multiple'),
(26, 'custom_select', '0', 1, 'custom_select'),
(27, 'chained', '1', 0, 'chained');

-- --------------------------------------------------------

--
-- Table structure for table `crud_input_validation`
--

CREATE TABLE `crud_input_validation` (
  `id` int(10) UNSIGNED NOT NULL,
  `validation` varchar(200) NOT NULL,
  `input_able` varchar(20) NOT NULL,
  `group_input` text NOT NULL,
  `input_placeholder` text NOT NULL,
  `call_back` varchar(10) NOT NULL,
  `input_validation` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `crud_input_validation`
--

INSERT INTO `crud_input_validation` (`id`, `validation`, `input_able`, `group_input`, `input_placeholder`, `call_back`, `input_validation`) VALUES
(1, 'required', 'no', 'input, file, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes, true_false, address_map, custom_option, custom_checkbox, custom_select_multiple, custom_select, file_multiple, chained', '', '', ''),
(2, 'max_length', 'yes', 'input, number, text, select, password, email, editor, yes_no, time, year, select_multiple, options, checkboxes, address_map', '', '', 'numeric'),
(3, 'min_length', 'yes', 'input, number, text, select, password, email, editor, time, year, select_multiple, address_map', '', '', 'numeric'),
(4, 'valid_email', 'no', 'input, email', '', '', ''),
(5, 'valid_emails', 'no', 'input, email', '', '', ''),
(6, 'regex', 'yes', 'input, number, text, datetime, select, password, email, editor, date, yes_no, time, year, select_multiple, options, checkboxes', '', 'yes', 'callback_valid_regex'),
(7, 'decimal', 'no', 'input, number, text, select', '', '', ''),
(8, 'allowed_extension', 'yes', 'file, file_multiple', 'ex : jpg,png,..', '', 'callback_valid_extension_list'),
(9, 'max_width', 'yes', 'file, file_multiple', '', '', 'numeric'),
(10, 'max_height', 'yes', 'file, file_multiple', '', '', 'numeric'),
(11, 'max_size', 'yes', 'file, file_multiple', '... kb', '', 'numeric'),
(12, 'max_item', 'yes', 'file_multiple', '', '', 'numeric'),
(13, 'valid_url', 'no', 'input, text', '', '', ''),
(14, 'alpha', 'no', 'input, text, select, password, editor, yes_no', '', '', ''),
(15, 'alpha_numeric', 'no', 'input, number, text, select, password, editor', '', '', ''),
(16, 'alpha_numeric_spaces', 'no', 'input, number, text,select, password, editor', '', '', ''),
(17, 'valid_number', 'no', 'input, number, text, password, editor, true_false', '', 'yes', ''),
(18, 'valid_datetime', 'no', 'input, datetime, text', '', 'yes', ''),
(19, 'valid_date', 'no', 'input, datetime, date, text', '', 'yes', ''),
(20, 'valid_max_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric'),
(21, 'valid_min_selected_option', 'yes', 'select_multiple, custom_select_multiple, custom_checkbox, checkboxes', '', 'yes', 'numeric'),
(22, 'valid_alpha_numeric_spaces_underscores', 'no', 'input, text,select, password, editor', '', 'yes', ''),
(23, 'matches', 'yes', 'input, number, text, password, email', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores'),
(24, 'valid_json', 'no', 'input, text, editor', '', 'yes', ' '),
(25, 'valid_url', 'no', 'input, text, editor', '', 'no', ' '),
(26, 'exact_length', 'yes', 'input, text, number', '0 - 99999*', 'no', 'numeric'),
(27, 'alpha_dash', 'no', 'input, text', '', 'no', ''),
(28, 'integer', 'no', 'input, text, number', '', 'no', ''),
(29, 'differs', 'yes', 'input, text, number, email, password, editor, options, select', 'any field', 'no', 'callback_valid_alpha_numeric_spaces_underscores'),
(30, 'is_natural', 'no', 'input, text, number', '', 'no', ''),
(31, 'is_natural_no_zero', 'no', 'input, text, number', '', 'no', ''),
(32, 'less_than', 'yes', 'input, text, number', '', 'no', 'numeric'),
(33, 'less_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric'),
(34, 'greater_than', 'yes', 'input, text, number', '', 'no', 'numeric'),
(35, 'greater_than_equal_to', 'yes', 'input, text, number', '', 'no', 'numeric'),
(36, 'in_list', 'yes', 'input, text, number, select, options', '', 'no', 'callback_valid_multiple_value'),
(37, 'valid_ip', 'no', 'input, text', '', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard`
--

CREATE TABLE `dashboard` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` text NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `faq_id` int(11) NOT NULL,
  `faq_tanya` text DEFAULT NULL,
  `faq_jawab` text DEFAULT NULL,
  `faq_status` varchar(255) DEFAULT NULL,
  `faq_user_created` int(11) DEFAULT NULL,
  `faq_date_created` datetime DEFAULT NULL,
  `faq_user_updated` int(11) DEFAULT NULL,
  `faq_date_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`faq_id`, `faq_tanya`, `faq_jawab`, `faq_status`, `faq_user_created`, `faq_date_created`, `faq_user_updated`, `faq_date_updated`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'active', 1, '2024-07-16 13:33:38', NULL, NULL),
(2, 'Where can I get some?', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', 'active', 1, '2024-07-16 13:33:46', 1, '2024-07-16 13:46:25'),
(3, 'Why do we use it?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 'active', 1, '2024-07-16 13:34:04', NULL, NULL),
(4, 'Where does it come from?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'active', 1, '2024-07-16 13:34:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `form_custom_attribute`
--

CREATE TABLE `form_custom_attribute` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `attribute_value` text NOT NULL,
  `attribute_label` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `form_custom_option`
--

CREATE TABLE `form_custom_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `option_value` text NOT NULL,
  `option_label` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `form_field`
--

CREATE TABLE `form_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `input_type` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `show_detail_page` varchar(20) DEFAULT NULL,
  `show_update_form` varchar(20) DEFAULT NULL,
  `show_add_form` varchar(20) DEFAULT NULL,
  `show_column` varchar(20) DEFAULT NULL,
  `auto_generate_help_block` varchar(10) DEFAULT NULL,
  `help_block` text DEFAULT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `form_field_validation`
--

CREATE TABLE `form_field_validation` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_field_id` int(11) NOT NULL,
  `form_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `halaman_id` int(11) NOT NULL,
  `halaman_uuid` varchar(255) DEFAULT NULL,
  `halaman_title` varchar(255) DEFAULT NULL,
  `halaman_slug` text DEFAULT NULL,
  `halaman_content` longtext DEFAULT NULL,
  `halaman_status` varchar(255) DEFAULT NULL,
  `halaman_author` varchar(255) DEFAULT NULL,
  `halaman_viewers` int(11) DEFAULT 0,
  `halaman_date_created` datetime DEFAULT NULL,
  `halaman_user_created` int(11) DEFAULT NULL,
  `halaman_date_updated` datetime DEFAULT NULL,
  `halaman_user_updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`halaman_id`, `halaman_uuid`, `halaman_title`, `halaman_slug`, `halaman_content`, `halaman_status`, `halaman_author`, `halaman_viewers`, `halaman_date_created`, `halaman_user_created`, `halaman_date_updated`, `halaman_user_updated`) VALUES
(1, '356a192b-7913-404c-9457-4d18c28d46e6', 'Profil Badan Publik PPID DPRD', 'profil-badan-publik-ppid-dprd-z5iohlmasu', 'PPID Kota Semarang adalah Pejabat Pengelola Informasi dan Dokumentasi yang bertanggung jawab di bidang penyimpanan, pendokumentasian, penyediaan, dan/atau pelayanan informasi di lingkungan Pemerintah Kota Semarang.<br>\r\nDalam mengelola pelayanan informasi dan dokumentasi, Pejabat Pengelola Informasi dan Dokumentasi ( PPID ) Kota Semarang dibantu oleh PPID pembantu yang terdapat di Organisasi Perangkat Daerah, Unit Kerja, Perusahaan Daerah dan Desa.<br>\r\n<br>\r\n<strong>Alamat</strong> :<br>\r\n<strong>Gedung Pusat Informasi Publik Kota Semarang</strong><br>\r\nJalan Pemuda No. 148 Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132\r\n<p> </p>\r\n\r\n<p><strong>No Telp</strong> :<br>\r\n(024) 3540009</p>\r\n\r\n<p><strong>Email</strong> :<br>\r\n<a href=\"mailto:ppid@semarangkota.go.id\">ppid@semarangkota.go.id</a></p>\r\n\r\n<p><br>\r\n<strong>Tugas dan Fungsi PPID</strong></p>\r\n\r\n<ul>\r\n <li>\r\n <p>Mengkoordinasikan dan mengkonsolidasikan pengumpulan bahan informasi dan dokumentasi dari PPID Pembantu;</p>\r\n </li>\r\n <li>\r\n <p>Menyimpan, mendokumentasikan, menyediakan dan memberi pelayanan informasi kepada publik;</p>\r\n </li>\r\n <li>\r\n <p>Melakukan verifikasi bahan informasi publik;</p>\r\n </li>\r\n <li>\r\n <p>Melakukan uji konsekuensi atas informasi yang dikecualikan dengan berdasarkan aturan yang berlaku dan analisa kajian terhadap data dan informasi terkait;</p>\r\n </li>\r\n <li>\r\n <p>Melakukan pemutakhiran atau pembaharuan informasi dan dokumentasi;</p>\r\n </li>\r\n <li>\r\n <p>Menyediakan informasi dan dokumentasi untuk diakses oleh masyarakat.</p>\r\n </li>\r\n <li>\r\n <p>Menolak memberikan informasi yang dikecualikan sesuai dengan ketentuan perundang-undangan;</p>\r\n </li>\r\n <li>\r\n <p>Menolak memberikan informasi apabila tidak sesuai dengan peraturan perundang-undangan;</p>\r\n </li>\r\n <li>\r\n <p>Meminta dan memperoleh informasi dari unit kerja/ komponen/ satuan kerja yang menjadi cakupan kerjanya;</p>\r\n </li>\r\n <li>\r\n <p>Memberikan pertimbangan dan kajian cakupan pemberian informasi, tujuan permintaan informasi serta mekanisme pemberian informasi;</p>\r\n </li>\r\n <li>\r\n <p>Membuat, mengumpulkan, serta memelihara informasi dan dokumentasi untuk dan sesuai dengan kebutuhan tugas pokok dan fungsi organisasi;</p>\r\n </li>\r\n <li>\r\n <p>Mengkoordinasikan pemberian pelayanan informasi antara anggota PPID Pembantu dan/ atau pejabat fungsional yang menjadi cakupan kerjanya.</p>\r\n </li>\r\n</ul>\r\n <br>\r\n \r\n<p><strong>Wewenang PPID</strong> </p>\r\n\r\n<p>Menolak memberikan informasi yang dikecualikan sesuai dengan ketentuan perundang-undangan; meminta dan memperoleh informasi dari unit kerja/komponen/satuan kerja yang menjadi cakupan kerjanya; mengkoordinasikan pemberian pelayanan informasi dengan PPID Pembantu; menentukan atau menetapkan suatu informasi dapat/tidaknya diakses oleh publik; menugaskan PPID Pembantu untuk membuat, mengumpulkan, serta memelihara informasi dan dokumentasi untuk kebutuhan organisasi.</p>\r\n\r\n<p> </p>\r\n\r\n<p> </p>\r\n\r\n<p><strong>Hak dan Kewajiban PPID</strong></p>\r\n\r\n<p>PPID berhak menolak menyediakan, memberikan, dan/atau menerbitkan informasi publik yang dikecualikan dan/atau tidak sesuai dengan peraturan perundang-undangan. PPID wajib menyediakan, memberikan, dan/atau menerbitkan informasi publik yang berada di bawah kewenangannya kepada pemohon informasi publik, selain informasi publik yang dikecualikan dan/atau tidak sesuai dengan peraturan perundang-undangan Dalam menjalankan tugasnya dalam memberikan informasi kepada masyarakat, PPID Utama Kota Semarang dibantu oleh PPID Pembantu yang tersebar di 55  OPD.</p>', 'publish', 'developer', 2039, '2024-09-11 08:27:58', 1, '2024-09-11 10:01:22', 2),
(3, '77de68da-ecd8-43ba-bbb5-8edb1c8e14d7', 'Sejarah', 'sejarah-i9rr6y0w67', 'Informasi berkala adalah informasi yang wajib diperbaharui kemudian disediakan dan diumumkan kepada publik secara rutin atau berkala sekurang-kurangnya setiap 6 bulan sekali', 'publish', 'administrator', 2, '2025-06-22 00:30:37', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(11) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL,
  `is_private_key` tinyint(1) NOT NULL,
  `ip_addresses` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 0, '47AD66EDD5348276D993A14F5CA6BE31', 0, 0, 0, NULL, '2024-07-07 20:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `link_terkait`
--

CREATE TABLE `link_terkait` (
  `link_terkait_id` int(11) NOT NULL,
  `link_terkait_nama` varchar(255) DEFAULT NULL,
  `link_terkait_url` text DEFAULT NULL,
  `link_terkait_user_created` int(11) DEFAULT NULL,
  `link_terkait_date_created` datetime DEFAULT NULL,
  `link_terkait_user_updated` int(11) DEFAULT NULL,
  `link_terkait_date_updated` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `link_terkait`
--

INSERT INTO `link_terkait` (`link_terkait_id`, `link_terkait_nama`, `link_terkait_url`, `link_terkait_user_created`, `link_terkait_date_created`, `link_terkait_user_updated`, `link_terkait_date_updated`) VALUES
(1, 'BPHN', 'https://bphn.go.id/', 1, '2024-07-17 14:25:27', NULL, NULL),
(2, 'JDIHN', 'https://jdihn.go.id/', 1, '2024-07-17 14:26:18', NULL, NULL),
(3, 'JDIH Prov. Jateng', 'https://jdih.jatengprov.go.id/', 1, '2024-07-17 14:26:55', NULL, NULL),
(4, 'JDIH DPRD Prov Jateng', 'https://jdih.dprd.jatengprov.go.id/', 1, '2024-07-17 14:27:14', NULL, NULL),
(5, 'DPRD Kota Semarang', 'https://dprd.semarangkota.go.id/', 1, '2024-07-17 14:27:31', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `media_id` int(11) NOT NULL,
  `media_nama` varchar(255) DEFAULT NULL,
  `media_keterangan` text DEFAULT NULL,
  `media_file` varchar(255) DEFAULT NULL,
  `media_user_created` int(11) DEFAULT NULL,
  `media_date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `icon_color` varchar(200) DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `menu_type_id` int(11) NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `label`, `type`, `icon_color`, `link`, `sort`, `parent`, `icon`, `menu_type_id`, `active`) VALUES
(1, 'MAIN NAVIGATION', 'label', '', '{admin_url}/dashboard', 1, 0, '', 1, 1),
(2, 'Dashboard', 'menu', 'default', '{admin_url}/dashboard', 2, 0, 'fa-dashboard', 1, 1),
(3, 'Blog', 'menu', '', '{admin_url}/blog', 3, 0, 'fa-file-text-o', 1, 1),
(4, 'CRUD Builder', 'menu', '', '{admin_url}/crud', 4, 0, 'fa-table', 1, 1),
(5, 'API Builder', 'menu', '', '{admin_url}/rest', 5, 0, 'fa-code', 1, 1),
(6, 'Page Builder', 'menu', '', '{admin_url}/page', 6, 0, 'fa-file-o', 1, 0),
(7, 'Form Builder', 'menu', '', '{admin_url}/form', 7, 0, 'fa-newspaper-o', 1, 0),
(8, 'MENU DEVELOPER', 'label', '', 'javascript:void(0);', 8, 0, '', 1, 1),
(9, 'Menu', 'menu', '', '{admin_url}/menu', 9, 0, 'fa-bars', 1, 1),
(10, 'Auth', 'menu', '', 'javascript:void(0);', 10, 0, 'fa-shield', 1, 1),
(11, 'User', 'menu', '', '{admin_url}/user', 11, 10, '', 1, 1),
(12, 'Groups', 'menu', '', '{admin_url}/group', 12, 10, '', 1, 1),
(13, 'Access', 'menu', '', '{admin_url}/access', 13, 10, '', 1, 1),
(14, 'Permission', 'menu', '', '{admin_url}/permission', 14, 10, '', 1, 1),
(15, 'API Keys', 'menu', '', '{admin_url}/keys', 15, 0, 'fa-key', 1, 1),
(16, 'Extension', 'menu', '', '{admin_url}/extension', 16, 0, 'fa-puzzle-piece', 1, 1),
(17, 'Database', 'menu', '', '{admin_url}/database', 17, 0, 'fa-database', 1, 1),
(18, 'Settings', 'menu', '', '{admin_url}/setting', 18, 0, 'fa-cog', 1, 1),
(19, 'DOCUMENTATION', 'label', '', 'javascript:void(0);', 27, 0, '', 1, 1),
(20, 'Web Documentation', 'menu', 'text-blue', '{admin_url}/doc/web', 28, 0, 'fa-circle-o', 1, 1),
(21, 'API Documentation', 'menu', 'text-yellow', '{admin_url}/doc/api', 29, 0, 'fa-circle-o', 1, 1),
(22, 'Beranda', 'menu', '', '/', 1, 0, '', 2, 1),
(23, 'Profil', 'menu', '', '/', 2, 0, '', 2, 1),
(24, 'Kontak Kami', 'menu', NULL, 'contact', 1, 0, NULL, 3, 1),
(25, 'Informasi Publik', 'menu', NULL, '/', 18, 0, NULL, 2, 1),
(26, 'Anggaran-Keu', 'menu', NULL, '/', 25, 0, NULL, 2, 1),
(27, 'Laporan', 'menu', NULL, '/', 32, 0, NULL, 2, 1),
(28, 'Formulir', 'menu', NULL, '/', 37, 0, NULL, 2, 1),
(29, 'Program Kegiatan', 'menu', NULL, '/', 42, 0, NULL, 2, 1),
(30, 'Profil Badan Publik', 'menu', NULL, 'halaman/356a192b-7913-404c-9457-4d18c28d46e6', 3, 23, NULL, 2, 1),
(31, 'Sejarah', 'menu', NULL, '/', 4, 23, NULL, 2, 1),
(32, 'Visi dan Misi', 'menu', NULL, '/', 5, 23, NULL, 2, 1),
(33, 'Susunan Organisasi', 'menu', NULL, '/', 6, 23, NULL, 2, 1),
(34, 'Tupoksi Setwan', 'menu', NULL, '/', 7, 23, NULL, 2, 1),
(35, 'Susunan PPID Pembantu', 'menu', NULL, '/', 8, 23, NULL, 2, 1),
(36, 'Profil Pejabat', 'menu', NULL, '/', 9, 23, NULL, 2, 1),
(37, 'LHKPN', 'menu', NULL, '/', 10, 23, NULL, 2, 1),
(38, 'LKJIP SETWAN', 'menu', NULL, '/', 11, 23, NULL, 2, 1),
(39, 'Renstra Setwan', 'menu', NULL, '/', 12, 23, NULL, 2, 1),
(40, 'Renja Setwan', 'menu', NULL, '/', 13, 23, NULL, 2, 1),
(41, 'IKU Setwan', 'menu', NULL, '/', 14, 23, NULL, 2, 1),
(42, 'Rancana Aksi Setwan', 'menu', NULL, '/', 15, 23, NULL, 2, 1),
(43, 'PK Setwan', 'menu', NULL, '/', 16, 23, NULL, 2, 1),
(44, 'RKT Setwan', 'menu', NULL, '/', 17, 23, NULL, 2, 1),
(45, 'Berita', 'menu', NULL, 'blog', 19, 25, NULL, 2, 1),
(46, 'Dokumentasi Kegiatan', 'menu', NULL, '/', 20, 25, NULL, 2, 1),
(47, 'Informasi Berkala', 'menu', NULL, '/', 21, 25, NULL, 2, 1),
(48, 'Informasi Serta Merta', 'menu', NULL, '/', 22, 25, NULL, 2, 1),
(49, 'Informasi Setiap Saat', 'menu', NULL, '/', 23, 25, NULL, 2, 1),
(50, 'Informasi Dikecualikan', 'menu', NULL, '/', 24, 25, NULL, 2, 1),
(51, 'Neraca', 'menu', NULL, '/', 26, 26, NULL, 2, 1),
(52, 'Aset dan Inventaris', 'menu', NULL, '/', 27, 26, NULL, 2, 1),
(53, 'Sumber Anggaran', 'menu', NULL, '/', 28, 26, NULL, 2, 1),
(54, 'Catatan Atas Laporan Keuangan (CALK)', 'menu', NULL, '/', 29, 26, NULL, 2, 1),
(55, 'Dokumen Pelaksanaan Anggaran (DPA)', 'menu', NULL, '/', 30, 26, NULL, 2, 1),
(56, 'Rencana dan Realisasi Anggaran', 'menu', NULL, '/', 31, 26, NULL, 2, 1),
(57, 'Ringkasan Laporan Kuangan', 'menu', NULL, '/', 33, 27, NULL, 2, 0),
(58, 'Ringkasan Laporan Informasi Publik', 'menu', NULL, '/', 34, 27, NULL, 2, 1),
(59, 'Ringkasan Laporan Twitter', 'menu', NULL, '/', 35, 27, NULL, 2, 0),
(60, 'Realisasi Anggaran', 'menu', NULL, '/', 36, 27, NULL, 2, 1),
(61, 'Permohonan Informasi', 'menu', NULL, '/', 38, 28, NULL, 2, 1),
(62, 'Keberatan Infromasi', 'menu', NULL, '/', 39, 28, NULL, 2, 1),
(63, 'Pengaduan ASN', 'menu', NULL, '/', 40, 28, NULL, 2, 1),
(64, 'IKM', 'menu', NULL, '/', 41, 28, NULL, 2, 1),
(65, 'Nama Program Kegiatan', 'menu', NULL, '/', 43, 29, NULL, 2, 1),
(66, 'Ruang Lingkup Kegiatan', 'menu', NULL, '/', 44, 29, NULL, 2, 1),
(67, 'Penetapan Kinerja', 'menu', NULL, '/', 45, 29, NULL, 2, 1),
(68, 'Angenda Kerja', 'menu', NULL, '/', 46, 29, NULL, 2, 1),
(69, 'Kerangka Acuan Kerja', 'menu', NULL, '/', 47, 29, NULL, 2, 1),
(70, 'Kerjasma Pihak Ketiga', 'menu', NULL, '/', 48, 29, NULL, 2, 1),
(71, 'Penanggung Jawab', 'menu', NULL, '/', 49, 29, NULL, 2, 1),
(72, 'Target Capain', 'menu', NULL, '/', 50, 29, NULL, 2, 1),
(73, 'Rencana Keg Anggaran', 'menu', NULL, '/', 51, 29, NULL, 2, 1),
(74, 'Agenda Rapat Kerja', 'menu', NULL, '/', 52, 29, NULL, 2, 1),
(75, 'Daftar Penelitian', 'menu', NULL, '/', 53, 29, NULL, 2, 1),
(76, 'Renstra 2013 - 2018', 'menu', NULL, '/', 54, 29, NULL, 2, 1),
(77, 'Jadwal Pelaksaan', 'menu', NULL, '/', 55, 29, NULL, 2, 1),
(78, 'Pekerjaan Terkini', 'menu', NULL, '/', 56, 29, NULL, 2, 1),
(79, 'Rencana Kerja Tahunan', 'menu', NULL, '/', 57, 29, NULL, 2, 1),
(80, 'Agenda Pelaksaan Tugas', 'menu', NULL, '/', 58, 29, NULL, 2, 1),
(81, 'PKM', 'menu', NULL, '/', 59, 29, NULL, 2, 1),
(82, 'MENU USER', 'label', 'default', '/', 19, 0, NULL, 1, 1),
(83, 'Berita', 'menu', 'default', '{admin_url}/blog', 21, 0, 'fa-newspaper-o', 1, 1),
(84, 'Halaman', 'menu', 'default', '{admin_url}/halaman', 22, 0, 'fa-sticky-note-o', 1, 1),
(85, 'Slider', 'menu', 'default', '{admin_url}/slider', 20, 0, 'fa-bullseye', 1, 1),
(86, 'Media', 'menu', NULL, '{admin_url}/media', 23, 0, 'fa-film', 1, 1),
(87, 'Link Terkait', 'menu', NULL, '{admin_url}/link_terkait', 24, 0, 'fa-link', 1, 1),
(88, 'FAQ', 'menu', NULL, '{admin_url}/faq', 25, 0, 'fa-question', 1, 1),
(89, 'MENU PENGATURAN', 'label', NULL, '/', 26, 0, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL,
  `definition` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`id`, `name`, `definition`) VALUES
(1, 'side menu', NULL),
(2, 'top menu', NULL),
(3, 'contact only', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=FIXED;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `url` text DEFAULT NULL,
  `read` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `fresh_content` text NOT NULL,
  `keyword` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL,
  `template` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `page_block_element`
--

CREATE TABLE `page_block_element` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_name` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `image_preview` varchar(200) NOT NULL,
  `block_name` varchar(200) NOT NULL,
  `content_type` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `id` int(10) UNSIGNED NOT NULL,
  `receipent_custom_query` text DEFAULT NULL,
  `receipent_department` varchar(200) DEFAULT NULL,
  `primary_field` varchar(200) DEFAULT NULL,
  `table` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `repeat_frequency` varchar(200) DEFAULT NULL,
  `receipent` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_condition`
--

CREATE TABLE `reminder_condition` (
  `id` int(10) UNSIGNED NOT NULL,
  `cond_type` varchar(200) DEFAULT NULL,
  `cond_table` varchar(200) DEFAULT NULL,
  `cond_field` varchar(200) NOT NULL,
  `cond_operator` varchar(200) NOT NULL,
  `cond_value` varchar(255) DEFAULT NULL,
  `cond_logic` varchar(20) NOT NULL DEFAULT 'AND',
  `reminder_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `reminder_cron`
--

CREATE TABLE `reminder_cron` (
  `id` int(10) UNSIGNED NOT NULL,
  `reminder_id` int(11) NOT NULL,
  `reff_id` int(11) NOT NULL,
  `reff_table` varchar(200) NOT NULL,
  `status` varchar(200) DEFAULT NULL,
  `sent_at` datetime NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rest`
--

CREATE TABLE `rest` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(200) NOT NULL,
  `table_name` varchar(200) NOT NULL,
  `primary_key` varchar(200) NOT NULL,
  `x_api_key` varchar(20) DEFAULT NULL,
  `x_token` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rest_field`
--

CREATE TABLE `rest_field` (
  `id` int(10) UNSIGNED NOT NULL,
  `rest_id` int(11) NOT NULL,
  `field_name` varchar(200) NOT NULL,
  `field_label` varchar(200) DEFAULT NULL,
  `input_type` varchar(200) NOT NULL,
  `show_column` varchar(10) DEFAULT NULL,
  `show_add_api` varchar(10) DEFAULT NULL,
  `show_update_api` varchar(10) DEFAULT NULL,
  `show_detail_api` varchar(10) DEFAULT NULL,
  `relation_table` varchar(200) DEFAULT NULL,
  `relation_value` varchar(200) DEFAULT NULL,
  `relation_label` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rest_field_validation`
--

CREATE TABLE `rest_field_validation` (
  `id` int(10) UNSIGNED NOT NULL,
  `rest_field_id` int(11) NOT NULL,
  `rest_id` int(11) NOT NULL,
  `validation_name` varchar(200) NOT NULL,
  `validation_value` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `rest_input_type`
--

CREATE TABLE `rest_input_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(200) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `validation_group` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `rest_input_type`
--

INSERT INTO `rest_input_type` (`id`, `type`, `relation`, `validation_group`) VALUES
(1, 'input', '0', 'input'),
(2, 'timestamp', '0', 'timestamp'),
(3, 'file', '0', 'file'),
(4, 'select', '1', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `slider_id` int(11) NOT NULL,
  `slider_nama` varchar(255) DEFAULT NULL,
  `slider_file` text DEFAULT NULL,
  `slider_user_created` int(11) DEFAULT NULL,
  `slider_date_created` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_nama`, `slider_file`, `slider_user_created`, `slider_date_created`) VALUES
(1, 'Slider 1', '20250305094945-4768c6b3d349c60a79565a9c15470b28.png', 1, '2024-07-18 09:40:40'),
(2, 'Slider 2', '20250305095012-a9eb7566082b37765afb9c2e8f6ea02d.png', 1, '2024-07-18 09:40:47'),
(3, 'Slider 3', '20250305095022-8e6676fff0073c6b08a8117367f95dcf.png', 1, '2024-07-18 09:40:57'),
(4, 'Slider 4', '20250305095032-d754b8d60eb4e709d799e0ab48e95b58.png', 1, '2024-07-18 09:41:06');

-- --------------------------------------------------------

--
-- Table structure for table `widgeds`
--

CREATE TABLE `widgeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `dashboard_id` int(11) NOT NULL,
  `widged_uuid` varchar(255) NOT NULL,
  `widged_type` varchar(255) NOT NULL,
  `sort_number` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `widged_chart`
--

CREATE TABLE `widged_chart` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `widged_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `widged_chart_series`
--

CREATE TABLE `widged_chart_series` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(200) NOT NULL,
  `value_unit` varchar(200) NOT NULL,
  `data_table` varchar(255) NOT NULL,
  `data_field` varchar(255) NOT NULL,
  `formula` varchar(255) DEFAULT NULL,
  `formula_field` varchar(255) DEFAULT NULL,
  `x_axis_field` varchar(255) NOT NULL,
  `x_axis_field_type` varchar(255) NOT NULL,
  `x_axis_grouping` varchar(20) NOT NULL DEFAULT 'yes',
  `color` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `widged_chart_id` int(11) NOT NULL,
  `widged_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `widged_chart_series_condition`
--

CREATE TABLE `widged_chart_series_condition` (
  `id` int(10) UNSIGNED NOT NULL,
  `cond_field` varchar(200) NOT NULL,
  `cond_operator` varchar(200) NOT NULL,
  `cond_value` varchar(255) NOT NULL,
  `cond_logic` varchar(20) NOT NULL DEFAULT 'AND',
  `widged_series_id` int(11) NOT NULL,
  `widged_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `aauth_group_to_group`
--
ALTER TABLE `aauth_group_to_group`
  ADD PRIMARY KEY (`group_id`,`subgroup_id`) USING BTREE;

--
-- Indexes for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `aauth_perm_to_user`
--
ALTER TABLE `aauth_perm_to_user`
  ADD PRIMARY KEY (`user_id`,`perm_id`) USING BTREE;

--
-- Indexes for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `aauth_user`
--
ALTER TABLE `aauth_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `aauth_users`
--
ALTER TABLE `aauth_users`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `aauth_user_to_group`
--
ALTER TABLE `aauth_user_to_group`
  ADD PRIMARY KEY (`user_id`,`group_id`) USING BTREE;

--
-- Indexes for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`category_id`) USING BTREE;

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`captcha_id`) USING BTREE;

--
-- Indexes for table `cc_options`
--
ALTER TABLE `cc_options`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_action`
--
ALTER TABLE `crud_action`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_custom_option`
--
ALTER TABLE `crud_custom_option`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_field`
--
ALTER TABLE `crud_field`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_field_condition`
--
ALTER TABLE `crud_field_condition`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_field_configuration`
--
ALTER TABLE `crud_field_configuration`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_field_validation`
--
ALTER TABLE `crud_field_validation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_function`
--
ALTER TABLE `crud_function`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_input_chained`
--
ALTER TABLE `crud_input_chained`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_input_type`
--
ALTER TABLE `crud_input_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `crud_input_validation`
--
ALTER TABLE `crud_input_validation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `dashboard`
--
ALTER TABLE `dashboard`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`faq_id`) USING BTREE;

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `form_custom_attribute`
--
ALTER TABLE `form_custom_attribute`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `form_custom_option`
--
ALTER TABLE `form_custom_option`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `form_field`
--
ALTER TABLE `form_field`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `form_field_validation`
--
ALTER TABLE `form_field_validation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`halaman_id`) USING BTREE;

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `link_terkait`
--
ALTER TABLE `link_terkait`
  ADD PRIMARY KEY (`link_terkait_id`) USING BTREE;

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`media_id`) USING BTREE;

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `page_block_element`
--
ALTER TABLE `page_block_element`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reminder_condition`
--
ALTER TABLE `reminder_condition`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `reminder_cron`
--
ALTER TABLE `reminder_cron`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rest`
--
ALTER TABLE `rest`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rest_field`
--
ALTER TABLE `rest_field`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rest_field_validation`
--
ALTER TABLE `rest_field_validation`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `rest_input_type`
--
ALTER TABLE `rest_input_type`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slider_id`) USING BTREE;

--
-- Indexes for table `widgeds`
--
ALTER TABLE `widgeds`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `widged_chart`
--
ALTER TABLE `widged_chart`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `widged_chart_series`
--
ALTER TABLE `widged_chart_series`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `widged_chart_series_condition`
--
ALTER TABLE `widged_chart_series_condition`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aauth_groups`
--
ALTER TABLE `aauth_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `aauth_login_attempts`
--
ALTER TABLE `aauth_login_attempts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `aauth_perms`
--
ALTER TABLE `aauth_perms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `aauth_pms`
--
ALTER TABLE `aauth_pms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_user`
--
ALTER TABLE `aauth_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aauth_users`
--
ALTER TABLE `aauth_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aauth_user_variables`
--
ALTER TABLE `aauth_user_variables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `captcha_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cc_options`
--
ALTER TABLE `cc_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `crud_action`
--
ALTER TABLE `crud_action`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_custom_option`
--
ALTER TABLE `crud_custom_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_field`
--
ALTER TABLE `crud_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `crud_field_condition`
--
ALTER TABLE `crud_field_condition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_field_configuration`
--
ALTER TABLE `crud_field_configuration`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_field_validation`
--
ALTER TABLE `crud_field_validation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `crud_function`
--
ALTER TABLE `crud_function`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `crud_input_chained`
--
ALTER TABLE `crud_input_chained`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crud_input_type`
--
ALTER TABLE `crud_input_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `crud_input_validation`
--
ALTER TABLE `crud_input_validation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `dashboard`
--
ALTER TABLE `dashboard`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_custom_attribute`
--
ALTER TABLE `form_custom_attribute`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_custom_option`
--
ALTER TABLE `form_custom_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_field`
--
ALTER TABLE `form_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `form_field_validation`
--
ALTER TABLE `form_field_validation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `halaman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `link_terkait`
--
ALTER TABLE `link_terkait`
  MODIFY `link_terkait_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `media_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `page_block_element`
--
ALTER TABLE `page_block_element`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder_condition`
--
ALTER TABLE `reminder_condition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reminder_cron`
--
ALTER TABLE `reminder_cron`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest`
--
ALTER TABLE `rest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_field`
--
ALTER TABLE `rest_field`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_field_validation`
--
ALTER TABLE `rest_field_validation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rest_input_type`
--
ALTER TABLE `rest_input_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `widgeds`
--
ALTER TABLE `widgeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widged_chart`
--
ALTER TABLE `widged_chart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widged_chart_series`
--
ALTER TABLE `widged_chart_series`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widged_chart_series_condition`
--
ALTER TABLE `widged_chart_series_condition`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
