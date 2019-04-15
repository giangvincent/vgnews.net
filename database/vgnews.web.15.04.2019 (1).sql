-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2019 at 11:21 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lar_vgnews1`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_config`
--

CREATE TABLE `admin_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 0, 18, 'Content', 'fa-bars', '#', '2018-08-27 14:56:18', '2018-11-25 23:16:03'),
(9, 8, 19, 'Posts', 'fa-file-powerpoint-o', '/posts', '2018-08-27 14:58:12', '2018-11-25 23:16:03'),
(10, 8, 20, 'Categories', 'fa-cubes', '/categories', '2018-08-27 15:04:00', '2018-11-25 23:16:03'),
(11, 8, 21, 'Tags', 'fa-tags', '/tags', '2018-08-27 15:05:12', '2018-11-25 23:16:03'),
(12, 8, 22, 'Layouts', 'fa-clipboard', '/layouts', '2018-08-27 15:07:51', '2018-11-25 23:16:03'),
(13, 8, 23, 'Navigations', 'fa-compass', '/navs', '2018-08-27 15:10:42', '2018-12-08 12:30:13'),
(14, 0, 24, 'Medias', 'fa-picture-o', '/medias', '2018-08-27 15:12:18', '2018-11-25 23:16:03'),
(15, 0, 25, 'Users', 'fa-users', '/users', '2018-08-27 15:13:09', '2018-11-25 23:16:03'),
(16, 0, 30, 'Configuration', 'fa-cogs', '#', '2018-08-27 15:13:58', '2018-11-25 23:16:03'),
(17, 16, 31, 'Options', 'fa-cog', '/options', '2018-08-27 15:14:47', '2018-11-25 23:16:03'),
(18, 16, 32, 'Metas', 'fa-compress', '/metas', '2018-08-27 15:15:44', '2018-11-25 23:16:03'),
(19, 15, 26, 'Infomations', 'fa-info-circle', '/informations', '2018-08-27 15:16:41', '2018-11-25 23:16:03'),
(20, 0, 27, 'Dom rules', 'fa-compass', '/dom-rule', '2018-11-10 11:53:33', '2018-11-25 23:16:03'),
(21, 20, 28, 'Dom rules', 'fa-angle-right', '/dom-rule', '2018-11-10 11:54:19', '2018-11-25 23:16:03'),
(22, 20, 29, 'Url craw', 'fa-link', '/url-craw', '2018-11-11 03:18:03', '2018-11-25 23:16:03'),
(23, 0, 13, 'Helpers', 'fa-gears', '', '2018-11-25 23:06:22', '2018-11-25 23:16:46'),
(24, 23, 14, 'Scaffold', 'fa-keyboard-o', 'helpers/scaffold', '2018-11-25 23:06:22', '2018-11-25 23:16:46'),
(25, 23, 15, 'Database terminal', 'fa-database', 'helpers/terminal/database', '2018-11-25 23:06:22', '2018-11-25 23:16:46'),
(26, 23, 16, 'Laravel artisan', 'fa-terminal', 'helpers/terminal/artisan', '2018-11-25 23:06:22', '2018-11-25 23:16:46'),
(27, 23, 17, 'Routes', 'fa-list-alt', 'helpers/routes', '2018-11-25 23:06:22', '2018-11-25 23:16:46'),
(28, 2, 8, 'Scheduling', 'fa-clock-o', 'scheduling', '2018-11-25 23:07:08', '2018-11-25 23:16:03'),
(29, 2, 9, 'Config', 'fa-toggle-on', 'config', '2018-11-25 23:10:53', '2018-11-25 23:16:03'),
(30, 2, 10, 'Log viewer', 'fa-database', 'logs', '2018-11-25 23:12:11', '2018-11-25 23:16:03'),
(31, 2, 11, 'Media manager', 'fa-file', 'media', '2018-11-25 23:12:50', '2018-11-25 23:16:03'),
(32, 2, 12, 'Backup', 'fa-copy', 'backup', '2018-11-25 23:14:09', '2018-11-25 23:16:46');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-08-26 01:11:27', '2018-08-26 01:11:27'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-26 01:12:01', '2018-08-26 01:12:01'),
(3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-26 01:12:22', '2018-08-26 01:12:22'),
(4, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-26 01:12:38', '2018-08-26 01:12:38'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 07:45:06', '2018-08-27 07:45:06'),
(6, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 07:45:18', '2018-08-27 07:45:18'),
(7, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 07:45:22', '2018-08-27 07:45:22'),
(8, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-08-27 07:46:28', '2018-08-27 07:46:28'),
(9, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '[]', '2018-08-27 07:46:46', '2018-08-27 07:46:46'),
(10, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"giang\",\"name\":\"Vincent Giang\",\"password\":\"mylove\",\"password_confirmation\":\"mylove\",\"roles\":[\"1\",null],\"permissions\":[null],\"_token\":\"Zio5GJND1LdxbD598NikKVZuHfiP4UkcqaHgBibL\"}', '2018-08-27 07:47:41', '2018-08-27 07:47:41'),
(11, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-08-27 07:47:42', '2018-08-27 07:47:42'),
(12, 1, 'admin/auth/users/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 07:47:48', '2018-08-27 07:47:48'),
(13, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-08-27 07:48:47', '2018-08-27 07:48:47'),
(14, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 07:48:51', '2018-08-27 07:48:51'),
(15, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-08-27 07:49:24', '2018-08-27 07:49:24'),
(16, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-08-27 07:49:32', '2018-08-27 07:49:32'),
(17, 2, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2018-08-27 07:49:51', '2018-08-27 07:49:51'),
(18, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 07:50:57', '2018-08-27 07:50:57'),
(19, 2, 'admin/auth/setting', 'PUT', '127.0.0.1', '{\"name\":\"Vincent Giang\",\"password\":\"$2y$10$gtP9Z2jVnkZL4.a37UbdZeAjfuiGxz2p99IAeosJCSLXk\\/Q\\/GhvV.\",\"password_confirmation\":\"$2y$10$gtP9Z2jVnkZL4.a37UbdZeAjfuiGxz2p99IAeosJCSLXk\\/Q\\/GhvV.\",\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2018-08-27 07:51:04', '2018-08-27 07:51:04'),
(20, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-08-27 07:51:05', '2018-08-27 07:51:05'),
(21, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2018-08-27 07:51:09', '2018-08-27 07:51:09'),
(22, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 07:51:21', '2018-08-27 07:51:21'),
(23, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 07:54:20', '2018-08-27 07:54:20'),
(24, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Content\",\"icon\":\"fa-bars\",\"uri\":\"#\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 14:56:18', '2018-08-27 14:56:18'),
(25, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 14:56:18', '2018-08-27 14:56:18'),
(26, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Posts\",\"icon\":\"fa-file-powerpoint-o\",\"uri\":\"\\/posts\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 14:58:12', '2018-08-27 14:58:12'),
(27, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 14:58:12', '2018-08-27 14:58:12'),
(28, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9}]}]\"}', '2018-08-27 15:00:54', '2018-08-27 15:00:54'),
(29, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 15:00:55', '2018-08-27 15:00:55'),
(30, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Categories\",\"icon\":\"fa-cubes\",\"uri\":\"\\/categories\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:04:00', '2018-08-27 15:04:00'),
(31, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:04:00', '2018-08-27 15:04:00'),
(32, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10}]}]\"}', '2018-08-27 15:04:13', '2018-08-27 15:04:13'),
(33, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 15:04:14', '2018-08-27 15:04:14'),
(34, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Tags\",\"icon\":\"fa-tags\",\"uri\":\"\\/tags\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:05:12', '2018-08-27 15:05:12'),
(35, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:05:12', '2018-08-27 15:05:12'),
(36, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Layouts\",\"icon\":\"fa-clipboard\",\"uri\":\"\\/layouts\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:07:51', '2018-08-27 15:07:51'),
(37, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:07:52', '2018-08-27 15:07:52'),
(38, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Navigations\",\"icon\":\"fa-compass\",\"uri\":\"\\/navigations\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:10:41', '2018-08-27 15:10:41'),
(39, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:10:42', '2018-08-27 15:10:42'),
(40, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Medias\",\"icon\":\"fa-picture-o\",\"uri\":\"\\/medias\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:12:18', '2018-08-27 15:12:18'),
(41, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:12:19', '2018-08-27 15:12:19'),
(42, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Users\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:13:09', '2018-08-27 15:13:09'),
(43, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:13:10', '2018-08-27 15:13:10'),
(44, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Configuration\",\"icon\":\"fa-cogs\",\"uri\":\"#\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:13:58', '2018-08-27 15:13:58'),
(45, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:13:59', '2018-08-27 15:13:59'),
(46, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"16\",\"title\":\"Options\",\"icon\":\"fa-bars\",\"uri\":\"\\/options\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:14:46', '2018-08-27 15:14:46'),
(47, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:14:47', '2018-08-27 15:14:47'),
(48, 2, 'admin/auth/menu/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 15:14:51', '2018-08-27 15:14:51'),
(49, 2, 'admin/auth/menu/17', 'PUT', '127.0.0.1', '{\"parent_id\":\"16\",\"title\":\"Options\",\"icon\":\"fa-cog\",\"uri\":\"\\/options\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2018-08-27 15:15:10', '2018-08-27 15:15:10'),
(50, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:15:11', '2018-08-27 15:15:11'),
(51, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"16\",\"title\":\"Metas\",\"icon\":\"fa-compress\",\"uri\":\"\\/metas\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:15:44', '2018-08-27 15:15:44'),
(52, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:15:44', '2018-08-27 15:15:44'),
(53, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]}]\"}', '2018-08-27 15:15:49', '2018-08-27 15:15:49'),
(54, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 15:15:49', '2018-08-27 15:15:49'),
(55, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:15:55', '2018-08-27 15:15:55'),
(56, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"15\",\"title\":\"Infomations\",\"icon\":\"fa-info-circle\",\"uri\":\"\\/informations\",\"roles\":[\"1\",null],\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\"}', '2018-08-27 15:16:40', '2018-08-27 15:16:40'),
(57, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-08-27 15:16:41', '2018-08-27 15:16:41'),
(58, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]}]\"}', '2018-08-27 15:16:49', '2018-08-27 15:16:49'),
(59, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 15:16:49', '2018-08-27 15:16:49'),
(60, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"A0oyQB1vFWJgtWqploUvrekz9G5IPtLOBjfwHI1n\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]}]\"}', '2018-08-27 15:17:06', '2018-08-27 15:17:06'),
(61, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-08-27 15:17:07', '2018-08-27 15:17:07'),
(62, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-09-09 07:03:31', '2018-09-09 07:03:31'),
(63, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-10-21 01:52:42', '2018-10-21 01:52:42'),
(64, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-21 02:02:35', '2018-10-21 02:02:35'),
(65, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-21 02:02:41', '2018-10-21 02:02:41'),
(66, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-10-21 02:03:03', '2018-10-21 02:03:03'),
(67, 2, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '[]', '2018-10-21 02:03:11', '2018-10-21 02:03:11'),
(68, 2, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-10-21 03:28:49', '2018-10-21 03:28:49'),
(69, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-10-21 06:39:55', '2018-10-21 06:39:55'),
(70, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-04 02:57:16', '2018-11-04 02:57:16'),
(71, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-10 07:11:18', '2018-11-10 07:11:18'),
(72, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-10 07:36:40', '2018-11-10 07:36:40'),
(73, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 07:36:45', '2018-11-10 07:36:45'),
(74, 2, 'admin/options', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 07:37:49', '2018-11-10 07:37:49'),
(75, 2, 'admin/options', 'GET', '127.0.0.1', '[]', '2018-11-10 07:37:57', '2018-11-10 07:37:57'),
(76, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 07:38:05', '2018-11-10 07:38:05'),
(77, 2, 'admin/auth/menu/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 07:45:02', '2018-11-10 07:45:02'),
(78, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 07:45:17', '2018-11-10 07:45:17'),
(79, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-10 11:52:24', '2018-11-10 11:52:24'),
(80, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:52:30', '2018-11-10 11:52:30'),
(81, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dom rules\",\"icon\":\"fa-compass\",\"uri\":\"\\/dom-rule\",\"roles\":[\"1\",null],\"_token\":\"XdRspJVHIGop3FzMPA4PCBipFxkrmnZY1ZBQtMnL\"}', '2018-11-10 11:53:32', '2018-11-10 11:53:32'),
(82, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-10 11:53:33', '2018-11-10 11:53:33'),
(83, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"XdRspJVHIGop3FzMPA4PCBipFxkrmnZY1ZBQtMnL\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]},{\\\"id\\\":20}]\"}', '2018-11-10 11:53:42', '2018-11-10 11:53:42'),
(84, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:53:43', '2018-11-10 11:53:43'),
(85, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-10 11:53:44', '2018-11-10 11:53:44'),
(86, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dom rules\",\"icon\":\"fa-angle-right\",\"uri\":\"\\/dom-rule\",\"roles\":[\"1\",null],\"_token\":\"XdRspJVHIGop3FzMPA4PCBipFxkrmnZY1ZBQtMnL\"}', '2018-11-10 11:54:18', '2018-11-10 11:54:18'),
(87, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-10 11:54:19', '2018-11-10 11:54:19'),
(88, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:54:27', '2018-11-10 11:54:27'),
(89, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:54:30', '2018-11-10 11:54:30'),
(90, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"20\",\"title\":null,\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"_token\":\"XdRspJVHIGop3FzMPA4PCBipFxkrmnZY1ZBQtMnL\"}', '2018-11-10 11:54:36', '2018-11-10 11:54:36'),
(91, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-10 11:54:37', '2018-11-10 11:54:37'),
(92, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:54:45', '2018-11-10 11:54:45'),
(93, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:54:47', '2018-11-10 11:54:47'),
(94, 2, 'admin/auth/menu/21/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:54:51', '2018-11-10 11:54:51'),
(95, 2, 'admin/auth/menu/21', 'PUT', '127.0.0.1', '{\"parent_id\":\"20\",\"title\":\"Dom rules\",\"icon\":\"fa-angle-right\",\"uri\":\"\\/dom-rule\",\"roles\":[\"1\",null],\"_token\":\"XdRspJVHIGop3FzMPA4PCBipFxkrmnZY1ZBQtMnL\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/auth\\/menu\"}', '2018-11-10 11:54:57', '2018-11-10 11:54:57'),
(96, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-10 11:54:57', '2018-11-10 11:54:57'),
(97, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"XdRspJVHIGop3FzMPA4PCBipFxkrmnZY1ZBQtMnL\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]},{\\\"id\\\":20,\\\"children\\\":[{\\\"id\\\":21}]}]\"}', '2018-11-10 11:55:02', '2018-11-10 11:55:02'),
(98, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:55:03', '2018-11-10 11:55:03'),
(99, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-10 11:55:04', '2018-11-10 11:55:04'),
(100, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:55:10', '2018-11-10 11:55:10'),
(101, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-10 11:55:14', '2018-11-10 11:55:14'),
(102, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:03:39', '2018-11-10 12:03:39'),
(103, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:16:34', '2018-11-10 12:16:34'),
(104, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:19:05', '2018-11-10 12:19:05'),
(105, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:19:28', '2018-11-10 12:19:28'),
(106, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:19:53', '2018-11-10 12:19:53'),
(107, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:20:32', '2018-11-10 12:20:32'),
(108, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:21:07', '2018-11-10 12:21:07'),
(109, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-10 12:22:09', '2018-11-10 12:22:09'),
(110, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 01:54:58', '2018-11-11 01:54:58'),
(111, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 01:55:19', '2018-11-11 01:55:19'),
(112, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-11 01:55:46', '2018-11-11 01:55:46'),
(113, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 01:55:56', '2018-11-11 01:55:56'),
(114, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 01:56:00', '2018-11-11 01:56:00'),
(115, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 02:34:16', '2018-11-11 02:34:16'),
(116, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 02:34:24', '2018-11-11 02:34:24'),
(117, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 02:34:31', '2018-11-11 02:34:31'),
(118, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 02:34:33', '2018-11-11 02:34:33'),
(119, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:05:13', '2018-11-11 03:05:13'),
(120, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:06:14', '2018-11-11 03:06:14'),
(121, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:06:48', '2018-11-11 03:06:48'),
(122, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:07:37', '2018-11-11 03:07:37'),
(123, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:07:54', '2018-11-11 03:07:54'),
(124, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:08:00', '2018-11-11 03:08:00'),
(125, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:08:02', '2018-11-11 03:08:02'),
(126, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:08:30', '2018-11-11 03:08:30'),
(127, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:08:38', '2018-11-11 03:08:38'),
(128, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:08:38', '2018-11-11 03:08:38'),
(129, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:08:39', '2018-11-11 03:08:39'),
(130, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-11 03:17:15', '2018-11-11 03:17:15'),
(131, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-11 03:17:21', '2018-11-11 03:17:21'),
(132, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"20\",\"title\":\"Url craw\",\"icon\":\"fa-link\",\"uri\":\"\\/url-craw\",\"roles\":[\"1\",null],\"_token\":\"ZYqhS6rNRyB4hReyVcjct38jKZNOmth3q3rKKDup\"}', '2018-11-11 03:18:03', '2018-11-11 03:18:03'),
(133, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-11 03:18:04', '2018-11-11 03:18:04'),
(134, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"ZYqhS6rNRyB4hReyVcjct38jKZNOmth3q3rKKDup\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":19}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]},{\\\"id\\\":20,\\\"children\\\":[{\\\"id\\\":21},{\\\"id\\\":22}]}]\"}', '2018-11-11 03:18:10', '2018-11-11 03:18:10'),
(135, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:18:11', '2018-11-11 03:18:11'),
(136, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-11 03:18:15', '2018-11-11 03:18:15'),
(137, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:18:19', '2018-11-11 03:18:19'),
(138, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:18:21', '2018-11-11 03:18:21'),
(139, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-11 03:18:21', '2018-11-11 03:18:21'),
(140, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-11 03:18:38', '2018-11-11 03:18:38'),
(141, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:18:43', '2018-11-11 03:18:43'),
(142, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:21:55', '2018-11-11 03:21:55'),
(143, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:22:28', '2018-11-11 03:22:28'),
(144, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-11 03:22:31', '2018-11-11 03:22:31'),
(145, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:22:38', '2018-11-11 03:22:38'),
(146, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:22:58', '2018-11-11 03:22:58'),
(147, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:25:21', '2018-11-11 03:25:21'),
(148, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:25:26', '2018-11-11 03:25:26'),
(149, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-11 03:25:31', '2018-11-11 03:25:31'),
(150, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-11 03:25:37', '2018-11-11 03:25:37'),
(151, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:25:43', '2018-11-11 03:25:43'),
(152, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:26:12', '2018-11-11 03:26:12'),
(153, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:26:14', '2018-11-11 03:26:14'),
(154, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:26:20', '2018-11-11 03:26:20'),
(155, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-11 03:26:21', '2018-11-11 03:26:21'),
(156, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:26:24', '2018-11-11 03:26:24'),
(157, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:29:36', '2018-11-11 03:29:36'),
(158, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-11 03:29:41', '2018-11-11 03:29:41'),
(159, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-11 03:30:23', '2018-11-11 03:30:23'),
(160, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:30:27', '2018-11-11 03:30:27'),
(161, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:30:44', '2018-11-11 03:30:44'),
(162, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:31:03', '2018-11-11 03:31:03'),
(163, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:31:38', '2018-11-11 03:31:38'),
(164, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:31:39', '2018-11-11 03:31:39'),
(165, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-11 03:32:00', '2018-11-11 03:32:00'),
(166, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:32:03', '2018-11-11 03:32:03'),
(167, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-11 03:32:05', '2018-11-11 03:32:05'),
(168, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-14 12:36:59', '2018-11-14 12:36:59'),
(169, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-14 12:40:10', '2018-11-14 12:40:10'),
(170, 2, 'admin/dom-rule', 'POST', '127.0.0.1', '{\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"title\\\":{\\\"id\\\":\\\"id\\\",\\\"class\\\":\\\"some class\\\",\\\"htmlTag\\\":\\\"h2\\\"},\\\"sortDescription\\\":{\\\"class\\\":\\\"someClass\\\",\\\"htmlTag\\\":\\\"p\\\"},\\\"Content\\\":{\\\"class\\\":\\\"someClass or id\\\",\\\"htmlTag\\\":\\\"div\\\"},\\\"author\\\":\\\"\\\"}\",\"replace_rule\":\"{}\",\"_token\":\"NMyxFd0pwB8TYHl73lrjoHgQiEnZanYPV3XfO7EB\"}', '2018-11-14 12:46:07', '2018-11-14 12:46:07'),
(171, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-14 12:46:10', '2018-11-14 12:46:10'),
(172, 2, 'admin/dom-rule', 'POST', '127.0.0.1', '{\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{}\",\"replace_rule\":\"{}\",\"_token\":\"NMyxFd0pwB8TYHl73lrjoHgQiEnZanYPV3XfO7EB\"}', '2018-11-14 12:49:26', '2018-11-14 12:49:26'),
(173, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-14 12:49:26', '2018-11-14 12:49:26'),
(174, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-14 12:50:23', '2018-11-14 12:50:23'),
(175, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-14 12:50:29', '2018-11-14 12:50:29'),
(176, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"title\\\":{\\\"id\\\":\\\"someId\\\",\\\"class\\\":\\\"soemCLass\\\",\\\"htmlTag\\\":\\\"h3\\\"},\\\"sortDescription\\\":{\\\"id\\\":\\\"someId\\\",\\\"class\\\":\\\"someClass\\\",\\\"htmlTag\\\":\\\"div\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"NMyxFd0pwB8TYHl73lrjoHgQiEnZanYPV3XfO7EB\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/dom-rule\"}', '2018-11-14 12:52:19', '2018-11-14 12:52:19'),
(177, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-14 12:52:19', '2018-11-14 12:52:19'),
(178, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-14 12:52:22', '2018-11-14 12:52:22'),
(179, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-14 12:53:18', '2018-11-14 12:53:18'),
(180, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-14 12:53:50', '2018-11-14 12:53:50'),
(181, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-14 13:04:47', '2018-11-14 13:04:47'),
(182, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-14 13:57:50', '2018-11-14 13:57:50'),
(183, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-14 13:57:52', '2018-11-14 13:57:52'),
(184, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-16 12:16:19', '2018-11-16 12:16:19'),
(185, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-16 12:16:35', '2018-11-16 12:16:35'),
(186, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-16 12:26:16', '2018-11-16 12:26:16'),
(187, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-16 12:29:39', '2018-11-16 12:29:39'),
(188, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-16 12:36:04', '2018-11-16 12:36:04'),
(189, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-16 12:37:26', '2018-11-16 12:37:26'),
(190, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"title\\\":{\\\"id\\\":\\\"someId\\\",\\\"class\\\":\\\"someCLass\\\",\\\"htmlTag\\\":\\\"h3\\\"},\\\"sortDescription\\\":{\\\"id\\\":\\\"someId\\\",\\\"class\\\":\\\"someClass\\\",\\\"htmlTag\\\":\\\"div\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kbtwjUDMISwfIoCIXhnAQwBLxc1EUKvhFjZDcyEr\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/dom-rule\"}', '2018-11-16 12:37:36', '2018-11-16 12:37:36'),
(191, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-16 12:37:37', '2018-11-16 12:37:37'),
(192, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-16 12:37:41', '2018-11-16 12:37:41'),
(193, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-17 07:34:30', '2018-11-17 07:34:30'),
(194, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-17 07:34:40', '2018-11-17 07:34:40'),
(195, 2, 'admin/url-craw', 'POST', '127.0.0.1', '{\"url\":\"https:\\/\\/sohoa.vnexpress.net\\/\",\"domain\":\"vnexpress.net\",\"rule\":null,\"cron_rule\":null,\"status\":null,\"_token\":\"RiXwZLswzqdL8L076e1A19LwTRgj9y4OEpoxh7CJ\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/url-craw\"}', '2018-11-17 07:36:38', '2018-11-17 07:36:38'),
(196, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '[]', '2018-11-17 07:36:39', '2018-11-17 07:36:39'),
(197, 2, 'admin/url-craw', 'POST', '127.0.0.1', '{\"url\":\"https:\\/\\/sohoa.vnexpress.net\\/\",\"domain\":\"vnexpress.net\",\"rule\":null,\"cron_rule\":null,\"status\":null,\"_token\":\"RiXwZLswzqdL8L076e1A19LwTRgj9y4OEpoxh7CJ\"}', '2018-11-17 08:22:06', '2018-11-17 08:22:06'),
(198, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '[]', '2018-11-17 08:22:07', '2018-11-17 08:22:07'),
(199, 2, 'admin/url-craw', 'POST', '127.0.0.1', '{\"url\":\"https:\\/\\/sohoa.vnexpress.net\\/\",\"domain\":\"vnexpress.net\",\"rule\":null,\"cron_rule\":null,\"status\":null,\"_token\":\"RiXwZLswzqdL8L076e1A19LwTRgj9y4OEpoxh7CJ\"}', '2018-11-17 08:22:19', '2018-11-17 08:22:19'),
(200, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-17 08:22:19', '2018-11-17 08:22:19'),
(201, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-17 08:28:11', '2018-11-17 08:28:11'),
(202, 2, 'admin/url-craw/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-17 08:28:14', '2018-11-17 08:28:14'),
(203, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-17 08:28:15', '2018-11-17 08:28:15'),
(204, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-17 08:28:17', '2018-11-17 08:28:17'),
(205, 2, 'admin/api/rules', 'GET', '127.0.0.1', '{\"q\":\"1\"}', '2018-11-17 08:28:21', '2018-11-17 08:28:21'),
(206, 2, 'admin/api/rules', 'GET', '127.0.0.1', '{\"q\":\"bac\"}', '2018-11-17 08:28:35', '2018-11-17 08:28:35'),
(207, 2, 'admin/api/rules', 'GET', '127.0.0.1', '{\"q\":\"ba\"}', '2018-11-17 08:28:36', '2018-11-17 08:28:36'),
(208, 2, 'admin/url-craw/1', 'PUT', '127.0.0.1', '{\"url\":\"https:\\/\\/sohoa.vnexpress.net\\/\",\"domain\":\"vnexpress.net\",\"rule\":\"1\",\"cron_rule\":null,\"status\":null,\"_token\":\"RiXwZLswzqdL8L076e1A19LwTRgj9y4OEpoxh7CJ\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/url-craw\"}', '2018-11-17 08:28:42', '2018-11-17 08:28:42'),
(209, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-17 08:28:43', '2018-11-17 08:28:43'),
(210, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-17 08:31:29', '2018-11-17 08:31:29'),
(211, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-22 13:02:47', '2018-11-22 13:02:47'),
(212, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-22 13:03:38', '2018-11-22 13:03:38'),
(213, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-22 13:06:43', '2018-11-22 13:06:43'),
(214, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-22 13:06:45', '2018-11-22 13:06:45'),
(215, 2, 'admin/tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-22 13:06:46', '2018-11-22 13:06:46'),
(216, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-22 13:06:49', '2018-11-22 13:06:49'),
(217, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2018-11-22 13:10:34', '2018-11-22 13:10:34'),
(218, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2018-11-22 13:11:04', '2018-11-22 13:11:04'),
(219, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2018-11-22 13:11:28', '2018-11-22 13:11:28'),
(220, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-22 13:35:46', '2018-11-22 13:35:46'),
(221, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-22 13:37:57', '2018-11-22 13:37:57'),
(222, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-24 07:33:04', '2018-11-24 07:33:04'),
(223, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-24 08:23:32', '2018-11-24 08:23:32'),
(224, 2, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-24 08:23:34', '2018-11-24 08:23:34'),
(225, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2018-11-24 08:24:48', '2018-11-24 08:24:48'),
(226, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-24 08:25:33', '2018-11-24 08:25:33'),
(227, 2, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-24 08:28:51', '2018-11-24 08:28:51'),
(228, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-24 08:33:41', '2018-11-24 08:33:41'),
(229, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-24 08:33:44', '2018-11-24 08:33:44'),
(230, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-25 22:01:08', '2018-11-25 22:01:08'),
(231, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:01:14', '2018-11-25 22:01:14'),
(232, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:08:50', '2018-11-25 22:08:50'),
(233, 2, 'admin/posts/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:08:52', '2018-11-25 22:08:52'),
(234, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:10:01', '2018-11-25 22:10:01'),
(235, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:18:21', '2018-11-25 22:18:21'),
(236, 2, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:18:24', '2018-11-25 22:18:24'),
(237, 2, 'admin/medias', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:47:16', '2018-11-25 22:47:16'),
(238, 2, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 22:51:45', '2018-11-25 22:51:45'),
(239, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-11-25 23:13:02', '2018-11-25 23:13:02'),
(240, 2, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:14:18', '2018-11-25 23:14:18'),
(241, 2, 'admin/config', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:14:21', '2018-11-25 23:14:21'),
(242, 2, 'admin/scheduling', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:14:26', '2018-11-25 23:14:26'),
(243, 2, 'admin/helpers/scaffold', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:14:29', '2018-11-25 23:14:29'),
(244, 2, 'admin/helpers/terminal/database', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:14:33', '2018-11-25 23:14:33'),
(245, 2, 'admin/helpers/routes', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:14:37', '2018-11-25 23:14:37'),
(246, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:14:50', '2018-11-25 23:14:50'),
(247, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"kqUTXOGgtJ6FACam6wUXa1jiuH0DK6w8E1n5eDfr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":28},{\\\"id\\\":29},{\\\"id\\\":30},{\\\"id\\\":31},{\\\"id\\\":23,\\\"children\\\":[{\\\"id\\\":24},{\\\"id\\\":25},{\\\"id\\\":26},{\\\"id\\\":27}]},{\\\"id\\\":32}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":19}]},{\\\"id\\\":20,\\\"children\\\":[{\\\"id\\\":21},{\\\"id\\\":22}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]}]\"}', '2018-11-25 23:16:03', '2018-11-25 23:16:03'),
(248, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:16:03', '2018-11-25 23:16:03'),
(249, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-25 23:16:08', '2018-11-25 23:16:08'),
(250, 2, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"kqUTXOGgtJ6FACam6wUXa1jiuH0DK6w8E1n5eDfr\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7},{\\\"id\\\":28},{\\\"id\\\":29},{\\\"id\\\":30},{\\\"id\\\":31},{\\\"id\\\":32}]},{\\\"id\\\":23,\\\"children\\\":[{\\\"id\\\":24},{\\\"id\\\":25},{\\\"id\\\":26},{\\\"id\\\":27}]},{\\\"id\\\":8,\\\"children\\\":[{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":12},{\\\"id\\\":13}]},{\\\"id\\\":14},{\\\"id\\\":15,\\\"children\\\":[{\\\"id\\\":19}]},{\\\"id\\\":20,\\\"children\\\":[{\\\"id\\\":21},{\\\"id\\\":22}]},{\\\"id\\\":16,\\\"children\\\":[{\\\"id\\\":17},{\\\"id\\\":18}]}]\"}', '2018-11-25 23:16:46', '2018-11-25 23:16:46'),
(251, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:16:46', '2018-11-25 23:16:46'),
(252, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-11-25 23:16:47', '2018-11-25 23:16:47'),
(253, 2, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:16:59', '2018-11-25 23:16:59'),
(254, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:17:01', '2018-11-25 23:17:01'),
(255, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:17:03', '2018-11-25 23:17:03'),
(256, 2, 'admin/backup', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-25 23:17:15', '2018-11-25 23:17:15'),
(257, 2, 'admin/backup/run', 'POST', '127.0.0.1', '{\"_token\":\"kqUTXOGgtJ6FACam6wUXa1jiuH0DK6w8E1n5eDfr\"}', '2018-11-25 23:17:18', '2018-11-25 23:17:18'),
(258, 2, 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-11-25 23:17:55', '2018-11-25 23:17:55'),
(259, 2, 'admin/backup', 'GET', '127.0.0.1', '[]', '2018-11-26 11:56:25', '2018-11-26 11:56:25'),
(260, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:03:29', '2018-11-26 12:03:29'),
(261, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:08:42', '2018-11-26 12:08:42'),
(262, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-26 12:12:36', '2018-11-26 12:12:36'),
(263, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:12:58', '2018-11-26 12:12:58'),
(264, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:13:00', '2018-11-26 12:13:00'),
(265, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type_rule\":\"detail\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"title\\\":{\\\"id\\\":\\\"someId\\\",\\\"class\\\":\\\"someCLass\\\",\\\"htmlTag\\\":\\\"h3\\\"},\\\"sortDescription\\\":{\\\"id\\\":\\\"someId\\\",\\\"class\\\":\\\"someClass\\\",\\\"htmlTag\\\":\\\"div\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"NSRcL1TQLQB5AQjMn36c7M8znd3XfeGz3uYKN8Li\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/dom-rule\"}', '2018-11-26 12:13:11', '2018-11-26 12:13:11'),
(266, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-26 12:13:11', '2018-11-26 12:13:11'),
(267, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:13:16', '2018-11-26 12:13:16'),
(268, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-26 12:15:12', '2018-11-26 12:15:12'),
(269, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-26 12:15:16', '2018-11-26 12:15:16'),
(270, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:15:20', '2018-11-26 12:15:20'),
(271, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:15:22', '2018-11-26 12:15:22'),
(272, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-26 12:15:57', '2018-11-26 12:15:57'),
(273, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:16:01', '2018-11-26 12:16:01'),
(274, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:16:03', '2018-11-26 12:16:03'),
(275, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-26 12:16:21', '2018-11-26 12:16:21'),
(276, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:16:50', '2018-11-26 12:16:50'),
(277, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:16:57', '2018-11-26 12:16:57'),
(278, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:17:28', '2018-11-26 12:17:28'),
(279, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:17:35', '2018-11-26 12:17:35'),
(280, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2018-11-26 12:18:24', '2018-11-26 12:18:24'),
(281, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-26 12:20:00', '2018-11-26 12:20:00'),
(282, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:32:33', '2018-11-26 12:32:33'),
(283, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-26 12:32:39', '2018-11-26 12:32:39'),
(284, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-11-28 12:05:14', '2018-11-28 12:05:14'),
(285, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-28 12:25:16', '2018-11-28 12:25:16'),
(286, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-28 12:29:47', '2018-11-28 12:29:47'),
(287, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type_rule\":\"detail\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":{\\\"link\\\":{\\\"class\\\":\\\"title_news\\\",\\\"tag\\\":\\\"\\\"}},\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"OZk2RdeyXN5qxC4h8KhAQGtxJZ30DtXv8pQimy88\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/dom-rule\"}', '2018-11-28 12:36:29', '2018-11-28 12:36:29'),
(288, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-11-28 12:36:30', '2018-11-28 12:36:30'),
(289, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-11-28 12:36:36', '2018-11-28 12:36:36'),
(290, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type_rule\":\"list\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":{\\\"link\\\":{\\\"class\\\":\\\"title_news\\\",\\\"tag\\\":\\\"\\\"}},\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"OZk2RdeyXN5qxC4h8KhAQGtxJZ30DtXv8pQimy88\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/dom-rule\"}', '2018-11-28 12:36:42', '2018-11-28 12:36:42'),
(291, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-28 12:36:43', '2018-11-28 12:36:43'),
(292, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-29 14:00:46', '2018-11-29 14:00:46'),
(293, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-11-30 13:25:45', '2018-11-30 13:25:45'),
(294, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-12-08 11:44:52', '2018-12-08 11:44:52'),
(295, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 11:45:02', '2018-12-08 11:45:02'),
(296, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 11:45:12', '2018-12-08 11:45:12'),
(297, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 11:45:27', '2018-12-08 11:45:27'),
(298, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-12-08 12:29:53', '2018-12-08 12:29:53'),
(299, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 12:29:58', '2018-12-08 12:29:58'),
(300, 2, 'admin/auth/menu/13/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 12:30:07', '2018-12-08 12:30:07'),
(301, 2, 'admin/auth/menu/13', 'PUT', '127.0.0.1', '{\"parent_id\":\"8\",\"title\":\"Navigations\",\"icon\":\"fa-compass\",\"uri\":\"\\/navs\",\"roles\":[\"1\",null],\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/auth\\/menu\"}', '2018-12-08 12:30:13', '2018-12-08 12:30:13'),
(302, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-08 12:30:14', '2018-12-08 12:30:14'),
(303, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-08 12:30:19', '2018-12-08 12:30:19'),
(304, 2, 'admin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 12:30:27', '2018-12-08 12:30:27'),
(305, 2, 'admin/navs', 'GET', '127.0.0.1', '[]', '2018-12-08 12:30:29', '2018-12-08 12:30:29'),
(306, 2, 'admin/navs', 'GET', '127.0.0.1', '[]', '2018-12-08 12:30:55', '2018-12-08 12:30:55'),
(307, 2, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2018-12-08 12:31:43', '2018-12-08 12:31:43'),
(308, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 12:41:08', '2018-12-08 12:41:08'),
(309, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 12:41:11', '2018-12-08 12:41:11'),
(310, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 12:52:58', '2018-12-08 12:52:58'),
(311, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type_rule\":\"list\",\"type\":null,\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h1\\\"},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h2\\\"},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h3\\\"}],\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/dom-rule\"}', '2018-12-08 12:55:06', '2018-12-08 12:55:06'),
(312, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-08 12:55:07', '2018-12-08 12:55:07'),
(313, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type_rule\":\"list\",\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":{\\\"link\\\":{\\\"class\\\":\\\"title_news\\\",\\\"tag\\\":\\\"\\\"}},\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2018-12-08 12:56:09', '2018-12-08 12:56:09'),
(314, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-08 12:56:10', '2018-12-08 12:56:10'),
(315, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type_rule\":\"list\",\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":{\\\"link\\\":{\\\"class\\\":\\\"title_news\\\",\\\"tag\\\":\\\"\\\"}},\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"_method\":\"PUT\"}', '2018-12-08 12:56:33', '2018-12-08 12:56:33');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(316, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2018-12-08 12:56:34', '2018-12-08 12:56:34'),
(317, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 12:56:35', '2018-12-08 12:56:35'),
(318, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-08 12:56:36', '2018-12-08 12:56:36'),
(319, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h1\\\"},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h2\\\"},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h3\\\"}],\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2018-12-08 12:57:34', '2018-12-08 12:57:34'),
(320, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-08 12:57:35', '2018-12-08 12:57:35'),
(321, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:00:43', '2018-12-08 13:00:43'),
(322, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:01:17', '2018-12-08 13:01:17'),
(323, 2, 'admin/url-craw/1', 'PUT', '127.0.0.1', '{\"url\":\"https:\\/\\/sohoa.vnexpress.net\\/\",\"domain\":\"vnexpress.net\",\"rule\":\"1\",\"cron_rule\":null,\"status\":\"on\",\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/url-craw\"}', '2018-12-08 13:01:20', '2018-12-08 13:01:20'),
(324, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2018-12-08 13:01:20', '2018-12-08 13:01:20'),
(325, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:02:13', '2018-12-08 13:02:13'),
(326, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:02:16', '2018-12-08 13:02:16'),
(327, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h1\\\",\\\"pos\\\":\\\"parents\\\"},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h2\\\",\\\"pos\\\":\\\"parents\\\"},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h3\\\",\\\"pos\\\":\\\"children\\\"}],\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:4\\/admin\\/dom-rule\"}', '2018-12-08 13:03:07', '2018-12-08 13:03:07'),
(328, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-08 13:03:08', '2018-12-08 13:03:08'),
(329, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h1\\\",\\\"link\\\":{\\\"pos\\\":\\\"parents\\\",\\\"eq\\\":0}},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h2\\\",\\\"link\\\":{\\\"pos\\\":\\\"parents\\\",\\\"eq\\\":0}},{\\\"class\\\":\\\"title_news\\\",\\\"html\\\":\\\"h3\\\",\\\"link\\\":{\\\"pos\\\":\\\"children\\\",\\\"eq\\\":0}}],\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"O7cISleESfme5J5hprkcYkm4v6EEKrS3S9ZnOLMH\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2018-12-08 13:04:40', '2018-12-08 13:04:40'),
(330, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2018-12-08 13:04:40', '2018-12-08 13:04:40'),
(331, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:17:44', '2018-12-08 13:17:44'),
(332, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2018-12-08 13:17:52', '2018-12-08 13:17:52'),
(333, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"3\"}', '2018-12-08 13:17:57', '2018-12-08 13:17:57'),
(334, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"page\":\"3\",\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:19:23', '2018-12-08 13:19:23'),
(335, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"2\"}', '2018-12-08 13:19:27', '2018-12-08 13:19:27'),
(336, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2018-12-08 13:19:33', '2018-12-08 13:19:33'),
(337, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:24:42', '2018-12-08 13:24:42'),
(338, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-08 13:24:46', '2018-12-08 13:24:46'),
(339, 2, 'admin', 'GET', '127.0.0.1', '[]', '2018-12-13 12:37:27', '2018-12-13 12:37:27'),
(340, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:37:37', '2018-12-13 12:37:37'),
(341, 2, 'admin/medias', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:37:46', '2018-12-13 12:37:46'),
(342, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:37:51', '2018-12-13 12:37:51'),
(343, 2, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:39:57', '2018-12-13 12:39:57'),
(344, 2, 'admin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:40:00', '2018-12-13 12:40:00'),
(345, 2, 'admin/tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:40:02', '2018-12-13 12:40:02'),
(346, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:40:04', '2018-12-13 12:40:04'),
(347, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:40:05', '2018-12-13 12:40:05'),
(348, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:40:07', '2018-12-13 12:40:07'),
(349, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 12:40:07', '2018-12-13 12:40:07'),
(350, 2, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2018-12-13 13:13:17', '2018-12-13 13:13:17'),
(351, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-16 12:31:41', '2019-02-16 12:31:41'),
(352, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-16 12:31:47', '2019-02-16 12:31:47'),
(353, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-16 12:31:58', '2019-02-16 12:31:58'),
(354, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-16 12:36:40', '2019-02-16 12:36:40'),
(355, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-16 12:36:47', '2019-02-16 12:36:47'),
(356, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-16 12:36:52', '2019-02-16 12:36:52'),
(357, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-02-16 12:38:13', '2019-02-16 12:38:13'),
(358, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-02-16 12:38:40', '2019-02-16 12:38:40'),
(359, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-02-16 12:38:58', '2019-02-16 12:38:58'),
(360, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-02-16 12:39:16', '2019-02-16 12:39:16'),
(361, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-02-16 12:39:22', '2019-02-16 12:39:22'),
(362, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-02-16 12:39:54', '2019-02-16 12:39:54'),
(363, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-02-16 12:40:03', '2019-02-16 12:40:03'),
(364, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-17 01:44:25', '2019-02-17 01:44:25'),
(365, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-17 01:45:26', '2019-02-17 01:45:26'),
(366, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 01:45:39', '2019-02-17 01:45:39'),
(367, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 01:45:47', '2019-02-17 01:45:47'),
(368, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-17 01:45:49', '2019-02-17 01:45:49'),
(369, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 02:36:39', '2019-02-17 02:36:39'),
(370, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 02:37:01', '2019-02-17 02:37:01'),
(371, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 02:40:19', '2019-02-17 02:40:19'),
(372, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 02:40:21', '2019-02-17 02:40:21'),
(373, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-17 12:08:21', '2019-02-17 12:08:21'),
(374, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 12:11:12', '2019-02-17 12:11:12'),
(375, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 12:43:44', '2019-02-17 12:43:44'),
(376, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"title_filter\":\".featured_home_sh  > h1.title_news\",\"link_filter\":\".featured_home_sh > article > a\",\"cover_filter\":\".featured_home_sh > article >  div > a > img\",\"cover_filter_attr\":\"data-original\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":{\\\"class\\\":\\\"title_news_detail \\\",\\\"tag\\\":\\\"h1\\\"},\\\"description\\\":{\\\"class\\\":\\\"description\\\",\\\"tag\\\":\\\"h2\\\"},\\\"content\\\":{\\\"class\\\":\\\"content_detail\\\",\\\"tag\\\":\\\"article\\\"}}}\",\"replace_rule\":\"{}\",\"_token\":\"1rcg6W3bXgPI3Qmwl55Mgreawl1Ctw7UGnzqXydY\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/dom-rule\"}', '2019-02-17 12:47:50', '2019-02-17 12:47:50'),
(377, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-17 12:47:51', '2019-02-17 12:47:51'),
(378, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-17 12:47:57', '2019-02-17 12:47:57'),
(379, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"title_filter\":\".featured_home_sh  > h1.title_news\",\"link_filter\":\".featured_home_sh > article > a\",\"cover_filter\":\".featured_home_sh > article >  div > a > img\",\"cover_filter_attr\":\"data-original\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"1rcg6W3bXgPI3Qmwl55Mgreawl1Ctw7UGnzqXydY\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-02-17 12:52:09', '2019-02-17 12:52:09'),
(380, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-17 12:52:09', '2019-02-17 12:52:09'),
(381, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Basic parse Html\",\"title_filter\":\".side_featured > article > h4.title_news\",\"link_filter\":\".side_featured > article > div > a\",\"cover_filter\":\".side_featured > article > div > a > img\",\"cover_filter_attr\":\"data-original\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"1rcg6W3bXgPI3Qmwl55Mgreawl1Ctw7UGnzqXydY\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-02-17 12:55:07', '2019-02-17 12:55:07'),
(382, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-02-17 12:55:07', '2019-02-17 12:55:07'),
(383, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 12:55:12', '2019-02-17 12:55:12'),
(384, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 12:55:16', '2019-02-17 12:55:16'),
(385, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"1rcg6W3bXgPI3Qmwl55Mgreawl1Ctw7UGnzqXydY\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/dom-rule\"}', '2019-02-17 12:55:36', '2019-02-17 12:55:36'),
(386, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2019-02-17 12:55:36', '2019-02-17 12:55:36'),
(387, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 12:56:27', '2019-02-17 12:56:27'),
(388, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2019-02-17 12:56:41', '2019-02-17 12:56:41'),
(389, 2, 'admin/options', 'GET', '127.0.0.1', '[]', '2019-02-17 12:58:20', '2019-02-17 12:58:20'),
(390, 2, 'admin/options/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 12:58:54', '2019-02-17 12:58:54'),
(391, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 12:59:14', '2019-02-17 12:59:14'),
(392, 2, 'admin/options', 'POST', '127.0.0.1', '{\"name\":\"default_cron_rule\",\"value\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\"\\\",\\\"link_filter\\\":\\\"\\\",\\\"cover_filter\\\":\\\"\\\",\\\"cover_filter_attr\\\":\\\"\\\"}],\\\"detail\\\":{\\\"title\\\":\\\"\\\",\\\"description\\\":\\\"\\\",\\\"content\\\":\\\"\\\"}}\",\"description\":\"default for cron rule\",\"group\":\"cron_rule\",\"_token\":\"1rcg6W3bXgPI3Qmwl55Mgreawl1Ctw7UGnzqXydY\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/options\"}', '2019-02-17 13:00:20', '2019-02-17 13:00:20'),
(393, 2, 'admin/options', 'GET', '127.0.0.1', '[]', '2019-02-17 13:00:20', '2019-02-17 13:00:20'),
(394, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-17 13:00:29', '2019-02-17 13:00:29'),
(395, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-21 13:15:56', '2019-02-21 13:15:56'),
(396, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:16:11', '2019-02-21 13:16:11'),
(397, 2, 'admin/options', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:16:28', '2019-02-21 13:16:28'),
(398, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:16:35', '2019-02-21 13:16:35'),
(399, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:16:36', '2019-02-21 13:16:36'),
(400, 2, 'admin/options', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:17:14', '2019-02-21 13:17:14'),
(401, 2, 'admin/options/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:17:16', '2019-02-21 13:17:16'),
(402, 2, 'admin/options', 'POST', '127.0.0.1', '{\"name\":\"default_replace_rule\",\"value\":null,\"description\":\"something\",\"group\":\"cron_rule\",\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/options\"}', '2019-02-21 13:17:33', '2019-02-21 13:17:33'),
(403, 2, 'admin/options/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:17:35', '2019-02-21 13:17:35'),
(404, 2, 'admin/options', 'POST', '127.0.0.1', '{\"name\":\"default_replace_rule\",\"value\":\"{}\",\"description\":\"something\",\"group\":\"cron_rule\",\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\"}', '2019-02-21 13:17:42', '2019-02-21 13:17:42'),
(405, 2, 'admin/options', 'GET', '127.0.0.1', '[]', '2019-02-21 13:17:42', '2019-02-21 13:17:42'),
(406, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:17:46', '2019-02-21 13:17:46'),
(407, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:17:47', '2019-02-21 13:17:47'),
(408, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:19:02', '2019-02-21 13:19:02'),
(409, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:19:53', '2019-02-21 13:19:53'),
(410, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:21:08', '2019-02-21 13:21:08'),
(411, 2, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:22:00', '2019-02-21 13:22:00'),
(412, 2, 'admin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:22:16', '2019-02-21 13:22:16'),
(413, 2, 'admin/tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:22:18', '2019-02-21 13:22:18'),
(414, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:22:21', '2019-02-21 13:22:21'),
(415, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:22:22', '2019-02-21 13:22:22'),
(416, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:22:24', '2019-02-21 13:22:24'),
(417, 2, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:22:50', '2019-02-21 13:22:50'),
(418, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"C\\u00f4ng ngh\\u1ec7\",\"slug\":\"cong-nghe\",\"parent\":null,\"description\":null,\"load_pos\":[\"home_cat\",null],\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/categories\"}', '2019-02-21 13:23:02', '2019-02-21 13:23:02'),
(419, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:23:03', '2019-02-21 13:23:03'),
(420, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"C\\u00f4ng ngh\\u1ec7\",\"slug\":\"cong-nghe\",\"parent\":null,\"description\":null,\"load_pos\":[\"home_cat\",null],\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"after-save\":\"2\"}', '2019-02-21 13:23:57', '2019-02-21 13:23:57'),
(421, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:23:57', '2019-02-21 13:23:57'),
(422, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"C\\u00f4ng ngh\\u1ec7\",\"slug\":\"cong-nghe\",\"parent\":null,\"description\":null,\"load_pos\":[\"home_cat\",null],\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\"}', '2019-02-21 13:34:35', '2019-02-21 13:34:35'),
(423, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:34:35', '2019-02-21 13:34:35'),
(424, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"C\\u00f4ng ngh\\u1ec7\",\"slug\":\"cong-nghe\",\"parent\":null,\"description\":null,\"load_pos\":[\"home_cat\",null],\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\"}', '2019-02-21 13:35:39', '2019-02-21 13:35:39'),
(425, 2, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-02-21 13:35:40', '2019-02-21 13:35:40'),
(426, 2, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:36:01', '2019-02-21 13:36:01'),
(427, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Th\\u1eddi s\\u1ef1\",\"slug\":\"thoi-su\",\"parent\":null,\"description\":null,\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/categories\"}', '2019-02-21 13:36:23', '2019-02-21 13:36:23'),
(428, 2, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-02-21 13:36:24', '2019-02-21 13:36:24'),
(429, 2, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:36:26', '2019-02-21 13:36:26'),
(430, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Gi\\u00e1o d\\u1ee5c\",\"slug\":\"giao-duc\",\"parent\":null,\"description\":null,\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/categories\"}', '2019-02-21 13:36:38', '2019-02-21 13:36:38'),
(431, 2, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-02-21 13:36:39', '2019-02-21 13:36:39'),
(432, 2, 'admin/navs', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:36:45', '2019-02-21 13:36:45'),
(433, 2, 'admin/navs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:36:47', '2019-02-21 13:36:47'),
(434, 2, 'admin/navs', 'POST', '127.0.0.1', '{\"status\":\"on\",\"name_display\":\"Home\",\"url\":\"\\/\",\"description\":null,\"type\":\"normal\",\"pos\":\"0\",\"page_title\":\"Vgnews.net\",\"page_keyword\":\"vgnews\",\"page_description\":null,\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/navs\"}', '2019-02-21 13:37:12', '2019-02-21 13:37:12'),
(435, 2, 'admin/navs/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:37:13', '2019-02-21 13:37:13'),
(436, 2, 'admin/navs', 'POST', '127.0.0.1', '{\"status\":\"on\",\"name_display\":\"Home\",\"url\":\"\\/\",\"description\":\"something\",\"type\":\"normal\",\"pos\":\"0\",\"page_title\":\"Vgnews.net\",\"page_keyword\":\"vgnews\",\"page_description\":null,\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\"}', '2019-02-21 13:37:22', '2019-02-21 13:37:22'),
(437, 2, 'admin/navs/create', 'GET', '127.0.0.1', '[]', '2019-02-21 13:37:22', '2019-02-21 13:37:22'),
(438, 2, 'admin/navs', 'POST', '127.0.0.1', '{\"status\":\"on\",\"name_display\":\"Home\",\"url\":\"\\/\",\"description\":\"something\",\"type\":\"normal\",\"pos\":\"0\",\"page_title\":\"Vgnews.net\",\"page_keyword\":\"vgnews\",\"page_description\":\"something\",\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\"}', '2019-02-21 13:37:30', '2019-02-21 13:37:30'),
(439, 2, 'admin/navs', 'GET', '127.0.0.1', '[]', '2019-02-21 13:37:31', '2019-02-21 13:37:31'),
(440, 2, 'admin/navs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:37:33', '2019-02-21 13:37:33'),
(441, 2, 'admin/navs', 'POST', '127.0.0.1', '{\"status\":\"on\",\"name_display\":\"C\\u00f4ng ngh\\u1ec7\",\"url\":\"\\/cong-nghe\",\"description\":null,\"type\":\"normal\",\"pos\":\"0\",\"page_title\":\"C\\u00f4ng ngh\\u1ec7\",\"page_keyword\":\"C\\u00f4ng ngh\\u1ec7\",\"page_description\":\"somwthing\",\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/navs\"}', '2019-02-21 13:37:48', '2019-02-21 13:37:48'),
(442, 2, 'admin/navs', 'GET', '127.0.0.1', '[]', '2019-02-21 13:37:49', '2019-02-21 13:37:49'),
(443, 2, 'admin/navs/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-21 13:37:51', '2019-02-21 13:37:51'),
(444, 2, 'admin/navs', 'POST', '127.0.0.1', '{\"status\":\"on\",\"name_display\":\"Th\\u1eddi s\\u1ef1\",\"url\":\"\\/thoi-su\",\"description\":null,\"type\":\"normal\",\"pos\":\"0\",\"page_title\":\"News\",\"page_keyword\":\"News\",\"page_description\":\"sdsd\",\"_token\":\"Yad5d6gxMTegXt87m7LReE5dg798UJe5CbPbReVZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/navs\"}', '2019-02-21 13:38:05', '2019-02-21 13:38:05'),
(445, 2, 'admin/navs', 'GET', '127.0.0.1', '[]', '2019-02-21 13:38:06', '2019-02-21 13:38:06'),
(446, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-23 12:11:29', '2019-02-23 12:11:29'),
(447, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-23 12:52:06', '2019-02-23 12:52:06'),
(448, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-23 13:14:51', '2019-02-23 13:14:51'),
(449, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-02-25 12:12:12', '2019-02-25 12:12:12'),
(450, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 12:13:00', '2019-02-25 12:13:00'),
(451, 2, 'admin/dom-rule/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 12:13:33', '2019-02-25 12:13:33'),
(452, 2, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 12:16:00', '2019-02-25 12:16:00'),
(453, 2, 'admin/layouts', 'GET', '127.0.0.1', '[]', '2019-02-25 13:07:23', '2019-02-25 13:07:23'),
(454, 2, 'admin/layouts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:11:22', '2019-02-25 13:11:22'),
(455, 2, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:12:22', '2019-02-25 13:12:22'),
(456, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:12:26', '2019-02-25 13:12:26'),
(457, 2, 'admin/media/folder', 'POST', '127.0.0.1', '{\"name\":\"upload\",\"dir\":\"\\/public\",\"_token\":\"Cy9HYhCID4sFJITTP0cLBdL31PvTP6P0HYj8FJvM\"}', '2019-02-25 13:12:34', '2019-02-25 13:12:34'),
(458, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:12:35', '2019-02-25 13:12:35'),
(459, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\\/upload\",\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:12:37', '2019-02-25 13:12:37'),
(460, 2, 'admin/media/upload', 'POST', '127.0.0.1', '{\"dir\":\"\\/public\\/upload\",\"_token\":\"Cy9HYhCID4sFJITTP0cLBdL31PvTP6P0HYj8FJvM\"}', '2019-02-25 13:13:10', '2019-02-25 13:13:10'),
(461, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\\/upload\"}', '2019-02-25 13:13:11', '2019-02-25 13:13:11'),
(462, 2, 'admin/media/download', 'GET', '127.0.0.1', '{\"file\":\"public\\/upload\\/P_20190205_114727_vHDR_On.jpg\"}', '2019-02-25 13:13:14', '2019-02-25 13:13:14'),
(463, 2, 'admin/layouts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:13:33', '2019-02-25 13:13:33'),
(464, 2, 'admin/layouts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:13:35', '2019-02-25 13:13:35'),
(465, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-02-25 13:16:21', '2019-02-25 13:16:21'),
(466, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-07 23:16:26', '2019-03-07 23:16:26'),
(467, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-09 08:36:47', '2019-03-09 08:36:47'),
(468, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 01:34:18', '2019-03-10 01:34:18'),
(469, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-10 09:47:29', '2019-03-10 09:47:29'),
(470, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2019-03-11 14:22:44', '2019-03-11 14:22:44'),
(471, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-03-17 06:33:22', '2019-03-17 06:33:22'),
(472, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:33:34', '2019-03-17 06:33:34'),
(473, 2, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:33:49', '2019-03-17 06:33:49'),
(474, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[null],\"categories\":[\"4\",null],\"comment_allow\":\"on\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\"}', '2019-03-17 06:36:18', '2019-03-17 06:36:18'),
(475, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:36:20', '2019-03-17 06:36:20'),
(476, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[null],\"categories\":[\"4\",null],\"comment_allow\":\"on\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\"}', '2019-03-17 06:41:24', '2019-03-17 06:41:24'),
(477, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:41:25', '2019-03-17 06:41:25'),
(478, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[null],\"categories\":[\"4\",null],\"comment_allow\":\"on\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\"}', '2019-03-17 06:42:13', '2019-03-17 06:42:13'),
(479, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:42:14', '2019-03-17 06:42:14'),
(480, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[null],\"categories\":[\"4\",null],\"cmt_allow\":\"off\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\"}', '2019-03-17 06:45:22', '2019-03-17 06:45:22'),
(481, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:45:23', '2019-03-17 06:45:23'),
(482, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[null],\"categories\":[\"4\",null],\"cmt_allow\":\"off\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\"}', '2019-03-17 06:46:19', '2019-03-17 06:46:19'),
(483, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 06:46:20', '2019-03-17 06:46:20'),
(484, 2, 'admin/posts/3', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[null],\"categories\":[\"4\",null],\"cmt_allow\":\"on\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\\/create\"}', '2019-03-17 06:46:30', '2019-03-17 06:46:30'),
(485, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 06:46:31', '2019-03-17 06:46:31'),
(486, 2, 'admin/tags', 'GET', '127.0.0.1', '[]', '2019-03-17 06:46:42', '2019-03-17 06:46:42'),
(487, 2, 'admin/tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:46:46', '2019-03-17 06:46:46'),
(488, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"\\u0110\\u00e0 L\\u1ea1t\",\"slug\":\"da-lat\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/tags\"}', '2019-03-17 06:46:59', '2019-03-17 06:46:59'),
(489, 2, 'admin/tags', 'GET', '127.0.0.1', '[]', '2019-03-17 06:47:00', '2019-03-17 06:47:00'),
(490, 2, 'admin/tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:47:02', '2019-03-17 06:47:02'),
(491, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t\",\"slug\":\"rap-hat\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/tags\"}', '2019-03-17 06:47:15', '2019-03-17 06:47:15'),
(492, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:47:15', '2019-03-17 06:47:15'),
(493, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Ng\\u01b0\\u1eddi Vi\\u1ec7t\",\"slug\":\"nguoi-viet\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:47:32', '2019-03-17 06:47:32'),
(494, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:47:33', '2019-03-17 06:47:33'),
(495, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"V\\u0103n h\\u00f3a\",\"slug\":\"van-hoa\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:47:44', '2019-03-17 06:47:44'),
(496, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:47:44', '2019-03-17 06:47:44'),
(497, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 06:47:52', '2019-03-17 06:47:52');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(498, 2, 'admin/posts/3', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[\"1\",\"2\",null],\"categories\":[\"4\",null],\"cmt_allow\":\"on\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\",\"_method\":\"PUT\"}', '2019-03-17 06:48:36', '2019-03-17 06:48:36'),
(499, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:48:36', '2019-03-17 06:48:36'),
(500, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Vi\\u1ec7n tr\\u01b0\\u1edfng V\\u0103n ho\\u00e1: \'Ng\\u01b0\\u1eddi Vi\\u1ec7t qu\\u00e1 tin v\\u00e0o may r\\u1ee7i\'\",\"slug\":\"vien-truong-van-hoa--nguoi-viet-qua-tin-vao-may-rui--\",\"description\":\"Ph\\u00f3 gi\\u00e1o s\\u01b0 B\\u00f9i Ho\\u00e0i S\\u01a1n \\u0111\\u00e1nh gi\\u00e1 ng\\u01b0\\u1eddi Vi\\u1ec7t d\\u1ec5 ch\\u00e1n n\\u1ea3n khi g\\u1eb7p kh\\u00f3 kh\\u0103n, kh\\u00f4ng bi\\u1ebft lo xa, t\\u00ednh t\\u1ed5 ch\\u1ee9c k\\u1ef7 lu\\u1eadt k\\u00e9m.\",\"content\":\"<p class=\\\"Normal\\\">S&aacute;ng 16\\/3, t\\u1ea1i h\\u1ed9i th\\u1ea3o &quot;vai tr&ograve; c\\u1ee7a truy\\u1ec1n th&ocirc;ng trong v\\u0103n ho&aacute; \\u1ee9ng x\\u1eed hi\\u1ec7n nay&quot; do B\\u1ed9 V\\u0103n ho&aacute;, Th\\u1ec3 thao v&agrave; du l\\u1ecbch ph\\u1ed1i h\\u1ee3p c&ugrave;ng H\\u1ed9i Nh&agrave; b&aacute;o Vi\\u1ec7t Nam t\\u1ed5 ch\\u1ee9c, Ph&oacute; gi&aacute;o s\\u01b0 B&ugrave;i Ho&agrave;i S\\u01a1n, Vi\\u1ec7n tr\\u01b0\\u1edfng V\\u0103n ho&aacute; ngh\\u1ec7 thu\\u1eadt qu\\u1ed1c gia, ch\\u1ec9 ra nhi\\u1ec1u &quot;th&oacute;i h\\u01b0, t\\u1eadt x\\u1ea5u&quot; c\\u1ee7a ng\\u01b0\\u1eddi Vi\\u1ec7t.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo &ocirc;ng S\\u01a1n, ng\\u01b0\\u1eddi Vi\\u1ec7t qu&aacute; \\u1ec9 l\\u1ea1i v&agrave;o vi\\u1ec7c \\u0111\\u01b0\\u1ee3c thi&ecirc;n nhi&ecirc;n \\u01b0u \\u0111&atilde;i, h&igrave;nh th&agrave;nh l\\u1ed1i s\\u1ed1ng l\\u01b0\\u1eddi bi\\u1ebfng lao \\u0111\\u1ed9ng, khai th&aacute;c t&agrave;i nguy&ecirc;n thi\\u1ebfu &yacute; th\\u1ee9c.&nbsp;&quot;\\u0110&aacute;ng l&yacute; ng\\u01b0\\u1eddi Vi\\u1ec7t ph\\u1ea3i bi\\u1ebft t&igrave;m c&aacute;ch l&agrave;m ch\\u1ee7 v&agrave; t\\u1ef1 do tr\\u01b0\\u1edbc thi&ecirc;n nhi&ecirc;n th&igrave; l\\u1ea1i qu&aacute; l\\u1ec7 thu\\u1ed9c v&agrave;o &quot;tr\\u1eddi&quot;, th\\u01b0\\u1eddng tin v&agrave;o s\\u1ed1 ph\\u1eadn, may r\\u1ee7i d\\u1eabn \\u0111\\u1ebfn d\\u1ec5 ch&aacute;n n\\u1ea3n, ch&ugrave;n b\\u01b0\\u1edbc khi g\\u1eb7p kh&oacute; kh\\u0103n&quot;, &ocirc;ng S\\u01a1n n&oacute;i.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">V&igrave; l\\u1ed1i s\\u1ea3n xu\\u1ea5t, lao \\u0111\\u1ed9ng ch\\u1ee7 y\\u1ebfu d\\u1ef1a tr&ecirc;n kinh nghi\\u1ec7m v\\u1ec1 th\\u1eddi ti\\u1ebft n&ecirc;n ng\\u01b0\\u1eddi Vi\\u1ec7t thi\\u1ebfu &yacute; th\\u1ee9c nghi&ecirc;n c\\u1ee9u khoa h\\u1ecdc \\u1ee9ng d\\u1ee5ng m\\u1ed9t c&aacute;ch nghi&ecirc;m t&uacute;c v&agrave; s&aacute;ng t\\u1ea1o. L\\u1ed1i s\\u1ed1ng v&agrave; t\\u01b0 duy ti\\u1ec3u n&ocirc;ng c&ograve;n d\\u1eabn \\u0111\\u1ebfn s\\u1ef1 tu\\u1ef3 ti\\u1ec7n, manh m&uacute;n, kh&ocirc;ng bi\\u1ebft lo xa, t&iacute;nh t\\u1ed5 ch\\u1ee9c k\\u1ef7 lu\\u1eadt k&eacute;m, n\\u1eb7ng n\\u1ec1 c\\u1ee5c b\\u1ed9 \\u0111\\u1ecba ph\\u01b0\\u01a1ng. Nhi\\u1ec1u ng\\u01b0\\u1eddi \\u0111\\u1ec1 cao th&oacute;i quen &quot;\\u0103n x\\u1ed5i, \\u1edf th&igrave;&quot; v&igrave; l\\u1ee3i &iacute;ch tr\\u01b0\\u1edbc m\\u1eaft ch\\u1ee9 &iacute;t ch&uacute; t&acirc;m l\\u1ee3i &iacute;ch chi\\u1ebfn l\\u01b0\\u1ee3c b\\u1ec1n l&acirc;u.&nbsp;<\\/p>\",\"tags\":[\"3\",\"4\",null],\"categories\":[\"4\",null],\"cmt_allow\":\"on\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\\/3\\/edit\"}', '2019-03-17 06:49:16', '2019-03-17 06:49:16'),
(501, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:49:17', '2019-03-17 06:49:17'),
(502, 2, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-03-17 06:49:24', '2019-03-17 06:49:24'),
(503, 2, 'admin/categories/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:49:32', '2019-03-17 06:49:32'),
(504, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Th\\u1ec3 thao\",\"slug\":\"the-thao\",\"parent\":null,\"description\":\"something about this ***ing shit\",\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/categories\"}', '2019-03-17 06:50:14', '2019-03-17 06:50:14'),
(505, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:50:14', '2019-03-17 06:50:14'),
(506, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Kinh doanh\",\"slug\":\"kinh-doanh\",\"parent\":null,\"description\":\"Kinh CMN doang\",\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:50:42', '2019-03-17 06:50:42'),
(507, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:50:43', '2019-03-17 06:50:43'),
(508, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"\\u0110\\u1eddi s\\u1ed1ng\",\"slug\":\"doi-song\",\"parent\":null,\"description\":\"\\u0110\\u1eddi m\\u00e0\",\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:51:07', '2019-03-17 06:51:07'),
(509, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:51:07', '2019-03-17 06:51:07'),
(510, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Khoa h\\u1ecdc\",\"slug\":\"khoa-hoc\",\"parent\":null,\"description\":\"Khoa h\\u1ecdc th\\u01b0\\u1eddng th\\u1ee9c\",\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:51:31', '2019-03-17 06:51:31'),
(511, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:51:32', '2019-03-17 06:51:32'),
(512, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Du l\\u1ecbch\",\"slug\":\"du-lich\",\"parent\":null,\"description\":\"Du th\\u01b0\\u01a1ng v\\u00e0 l\\u1ecbch\",\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:52:03', '2019-03-17 06:52:03'),
(513, 2, 'admin/categories/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:52:03', '2019-03-17 06:52:03'),
(514, 2, 'admin/categories', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Gi\\u1ea3i tr\\u00ed\",\"slug\":\"giai-tri\",\"parent\":null,\"description\":\"\\u0110i \\u0111\\u00e2u \\u0111\\u1ec3 gi\\u1ea3i tr\\u00ed\",\"load_pos\":[\"sidebar\",\"home_cat\",null],\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\"}', '2019-03-17 06:52:32', '2019-03-17 06:52:32'),
(515, 2, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-03-17 06:52:33', '2019-03-17 06:52:33'),
(516, 2, 'admin/tags', 'GET', '127.0.0.1', '[]', '2019-03-17 06:52:39', '2019-03-17 06:52:39'),
(517, 2, 'admin/tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:52:43', '2019-03-17 06:52:43'),
(518, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"\\u0110\\u1ea5t c\\u00f4ng\",\"slug\":\"dat-cong\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/tags\"}', '2019-03-17 06:53:12', '2019-03-17 06:53:12'),
(519, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:53:12', '2019-03-17 06:53:12'),
(520, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Th\\u01b0\\u01a1ng m\\u1ea1i\",\"slug\":\"thuong-mai\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:53:19', '2019-03-17 06:53:19'),
(521, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:53:20', '2019-03-17 06:53:20'),
(522, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Ti\\u1ec1n\",\"slug\":\"tien\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:53:37', '2019-03-17 06:53:37'),
(523, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:53:37', '2019-03-17 06:53:37'),
(524, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"S\\u1ea3n ph\\u1ea9m\",\"slug\":\"san-pham\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:53:48', '2019-03-17 06:53:48'),
(525, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:53:49', '2019-03-17 06:53:49'),
(526, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"D\\u1ecbch v\\u1ee5\",\"slug\":\"dich-vu\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:53:54', '2019-03-17 06:53:54'),
(527, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:53:54', '2019-03-17 06:53:54'),
(528, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Doanh nghi\\u1ec7p\",\"slug\":\"doanh-nghiep\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:54:10', '2019-03-17 06:54:10'),
(529, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:54:11', '2019-03-17 06:54:11'),
(530, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Th\\u1ecb tr\\u01b0\\u1eddng\",\"slug\":\"thi-truong\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:54:22', '2019-03-17 06:54:22'),
(531, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:54:23', '2019-03-17 06:54:23'),
(532, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"N\\u00f4ng s\\u1ea3n\",\"slug\":\"nong-san\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:54:28', '2019-03-17 06:54:28'),
(533, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:54:28', '2019-03-17 06:54:28'),
(534, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Ch\\u0103n nu\\u00f4i\",\"slug\":\"chan-nuoi\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\"}', '2019-03-17 06:54:33', '2019-03-17 06:54:33'),
(535, 2, 'admin/tags/13/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 06:54:33', '2019-03-17 06:54:33'),
(536, 2, 'admin/tags', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:54:38', '2019-03-17 06:54:38'),
(537, 2, 'admin/tags/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:54:40', '2019-03-17 06:54:40'),
(538, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"\\u0110i\\u1ec7n tho\\u1ea1i\",\"slug\":\"dien-thoai\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/tags\"}', '2019-03-17 06:54:46', '2019-03-17 06:54:46'),
(539, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:54:46', '2019-03-17 06:54:46'),
(540, 2, 'admin/tags', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"L\\u1eadp tr\\u00ecnh\",\"slug\":\"lap-trinh\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"2\"}', '2019-03-17 06:54:53', '2019-03-17 06:54:53'),
(541, 2, 'admin/tags/create', 'GET', '127.0.0.1', '[]', '2019-03-17 06:54:54', '2019-03-17 06:54:54'),
(542, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:56:51', '2019-03-17 06:56:51'),
(543, 2, 'admin/posts/4/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:56:54', '2019-03-17 06:56:54'),
(544, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:57:03', '2019-03-17 06:57:03'),
(545, 2, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 06:57:04', '2019-03-17 06:57:04'),
(546, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 07:13:41', '2019-03-17 07:13:41'),
(547, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-17 07:13:43', '2019-03-17 07:13:43'),
(548, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 07:13:55', '2019-03-17 07:13:55'),
(549, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 07:14:39', '2019-03-17 07:14:39'),
(550, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 07:14:58', '2019-03-17 07:14:58'),
(551, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 07:16:23', '2019-03-17 07:16:23'),
(552, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:16:40', '2019-03-17 07:16:40'),
(553, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:18:28', '2019-03-17 07:18:28'),
(554, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"b\"}', '2019-03-17 07:20:48', '2019-03-17 07:20:48'),
(555, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"s\"}', '2019-03-17 07:20:54', '2019-03-17 07:20:54'),
(556, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"s\"}', '2019-03-17 07:21:16', '2019-03-17 07:21:16'),
(557, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"b\"}', '2019-03-17 07:21:20', '2019-03-17 07:21:20'),
(558, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:21:23', '2019-03-17 07:21:23'),
(559, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"p\"}', '2019-03-17 07:21:26', '2019-03-17 07:21:26'),
(560, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"b\"}', '2019-03-17 07:21:30', '2019-03-17 07:21:30'),
(561, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"s\"}', '2019-03-17 07:22:27', '2019-03-17 07:22:27'),
(562, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"p\"}', '2019-03-17 07:22:32', '2019-03-17 07:22:32'),
(563, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:22:50', '2019-03-17 07:22:50'),
(564, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"b\"}', '2019-03-17 07:26:02', '2019-03-17 07:26:02'),
(565, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:28:22', '2019-03-17 07:28:22'),
(566, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"p\"}', '2019-03-17 07:29:07', '2019-03-17 07:29:07'),
(567, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:29:52', '2019-03-17 07:29:52'),
(568, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"p\"}', '2019-03-17 07:30:09', '2019-03-17 07:30:09'),
(569, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:31:03', '2019-03-17 07:31:03'),
(570, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"p\"}', '2019-03-17 07:31:33', '2019-03-17 07:31:33'),
(571, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 07:31:58', '2019-03-17 07:31:58'),
(572, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"p\"}', '2019-03-17 08:00:26', '2019-03-17 08:00:26'),
(573, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 08:01:30', '2019-03-17 08:01:30'),
(574, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"p\"}', '2019-03-17 08:02:09', '2019-03-17 08:02:09'),
(575, 2, 'admin/api/tags', 'GET', '127.0.0.1', '{\"q\":\"a\"}', '2019-03-17 08:04:49', '2019-03-17 08:04:49'),
(576, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:09:08', '2019-03-17 08:09:08'),
(577, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:10:56', '2019-03-17 08:10:56'),
(578, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:11:37', '2019-03-17 08:11:37'),
(579, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:12:34', '2019-03-17 08:12:34'),
(580, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:13:18', '2019-03-17 08:13:18'),
(581, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:13:42', '2019-03-17 08:13:42'),
(582, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:14:58', '2019-03-17 08:14:58'),
(583, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:15:21', '2019-03-17 08:15:21'),
(584, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:15:51', '2019-03-17 08:15:51'),
(585, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:17:14', '2019-03-17 08:17:14'),
(586, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:18:32', '2019-03-17 08:18:32'),
(587, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:20:19', '2019-03-17 08:20:19'),
(588, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:22:02', '2019-03-17 08:22:02'),
(589, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:23:12', '2019-03-17 08:23:12'),
(590, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:29:45', '2019-03-17 08:29:45'),
(591, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:30:33', '2019-03-17 08:30:33'),
(592, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:30:55', '2019-03-17 08:30:55'),
(593, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:31:33', '2019-03-17 08:31:33'),
(594, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:33:12', '2019-03-17 08:33:12'),
(595, 2, 'admin/posts/3', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"R\\u1ea1p h\\u00e1t H\\u00f2a B\\u00ecnh v\\u00e0 Dinh t\\u1ec9nh tr\\u01b0\\u1edfng \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi\",\"slug\":\"rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-\",\"description\":\"Hai c\\u00f4ng tr\\u00ecnh g\\u1eafn v\\u1edbi l\\u1ecbch s\\u1eed \\u0110\\u00e0 L\\u1ea1t s\\u1ebd b\\u1ecb \\u0111\\u1eadp b\\u1ecf, di d\\u1eddi \\u0111\\u1ec3 x\\u00e2y khu gi\\u1ea3i tr\\u00ed \\u0111a ch\\u1ee9c n\\u0103ng, khu th\\u01b0\\u01a1ng m\\u1ea1i, d\\u1ecbch v\\u1ee5 cao c\\u1ea5p.\",\"content\":\"<p class=\\\"Normal\\\">Quy ho\\u1ea1ch chi ti\\u1ebft v&agrave; thi\\u1ebft k\\u1ebf \\u0111&ocirc; th\\u1ecb t\\u1ef7 l\\u1ec7 1\\/500 khu v\\u1ef1c trung t&acirc;m H&ograve;a B&igrave;nh, TP \\u0110&agrave; L\\u1ea1t&quot; v\\u1eeba \\u0111\\u01b0\\u1ee3c UBND t\\u1ec9nh L&acirc;m \\u0110\\u1ed3ng c&ocirc;ng b\\u1ed1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Theo \\u0111&oacute;, khu v\\u1ef1c \\u0111\\u01b0\\u1ee3c quy ho\\u1ea1ch&nbsp; r\\u1ed9ng 30 ha, thu\\u1ed9c ph\\u01b0\\u1eddng 1, TP \\u0110&agrave; L\\u1ea1t. Ph\\u1ea1m vi t\\u1eeb \\u0111\\u01b0\\u1eddng Tr\\u1ea7n Qu\\u1ed1c To\\u1ea3n, B&ugrave;i Th\\u1ecb Xu&acirc;n, L&yacute; T\\u1ef1 Tr\\u1ecdng, h\\u1ebbm nh&agrave; th\\u1edd Tin l&agrave;nh, Nguy\\u1ec5n V\\u0103n Tr\\u1ed7i \\u0111\\u1ebfn \\u0111\\u1ea7u \\u0111\\u01b0\\u1eddng Ba Th&aacute;ng 2, Nguy\\u1ec5n Ch&iacute; Thanh v&agrave; \\u0111\\u01b0\\u1eddng d\\u1eabn xu\\u1ed1ng L&ecirc; \\u0110\\u1ea1i H&agrave;nh qua v&ograve;ng xoay \\u0111&agrave;i phun n\\u01b0\\u1edbc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy m&ocirc; d&acirc;n s\\u1ed1, hi\\u1ec7n tr\\u1ea1ng kho\\u1ea3ng 5.370 ng\\u01b0\\u1eddi (1.064 h\\u1ed9); v\\u1edbi h\\u1ec7 s\\u1ed1 t\\u0103ng d&acirc;n s\\u1ed1 c\\u01a1 h\\u1ecdc d\\u1ef1 b&aacute;o kho\\u1ea3ng 6.879 ng\\u01b0\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Quy ho\\u1ea1ch \\u0111\\u01b0\\u1ee3c chia l&agrave;m 5 ph&acirc;n khu. Trong \\u0111&oacute;, khu v\\u1ef1c ch\\u1ee3 \\u0110&agrave; L\\u1ea1t - \\u0111\\u01b0\\u1eddng Nguy\\u1ec5n Th\\u1ecb Minh Khai (r\\u1ed9ng 6,95 ha) l&agrave; ch\\u1ee3 truy\\u1ec1n th\\u1ed1ng, k\\u1ebft h\\u1ee3p v\\u1edbi qu\\u1ea3ng tr\\u01b0\\u1eddng, ph\\u1ed1 \\u0111i b\\u1ed9 k\\u1ebft h\\u1ee3p trung t&acirc;m th\\u01b0\\u01a1ng m\\u1ea1i v&agrave; l&agrave; n\\u01a1i c&oacute; b&atilde;i \\u0111\\u1eadu xe ng\\u1ea7m<\\/p>\",\"tags\":[\"1\",\"2\",null],\"categories\":[\"4\",null],\"cmt_allow\":\"on\",\"_token\":\"8EJaC88kDdrMYzpJ5quw0RqUNBBnqNAj7OFJbxhc\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-17 08:33:47', '2019-03-17 08:33:47'),
(596, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:33:47', '2019-03-17 08:33:47'),
(597, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:34:00', '2019-03-17 08:34:00'),
(598, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-17 08:34:11', '2019-03-17 08:34:11'),
(599, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '[]', '2019-03-18 13:13:44', '2019-03-18 13:13:44'),
(600, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-18 13:19:28', '2019-03-18 13:19:28'),
(601, 2, 'admin/posts/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-18 13:24:08', '2019-03-18 13:24:08'),
(602, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"C\\u1ea3nh s\\u00e1t gi\\u1ea3i c\\u1ee9u ng\\u01b0\\u1eddi \\u0111\\u00e0n \\u00f4ng b\\u1ecb cu\\u1ed1n v\\u00e0o g\\u1ea7m t\\u00e0u \\u1edf S\\u00e0i G\\u00f2n\",\"slug\":\"canh-sat-giai-cuu-nguoi-dan-ong-bi-cuon-vao-gam-tau-o-sai-gon-\",\"description\":\"B\\u1ecb t\\u00e0u ho\\u1ea3 t\\u00f4ng tr\\u00fang, k\\u1eb9t d\\u01b0\\u1edbi g\\u1ea7m \\u0111\\u01b0\\u1eddng ray nh\\u01b0ng n\\u1ea1n nh\\u00e2n may m\\u1eafn ch\\u1ec9 b\\u1ecb th\\u01b0\\u01a1ng.\",\"content\":\"<p class=\\\"Normal\\\">Chi\\u1ec1u 18\\/3, t&agrave;u h\\u1ecfa SPT1 ti\\u1ebfn v&agrave;o c\\u1eeda ng&otilde; S&agrave;i G&ograve;n t\\u1eeb ga S&oacute;ng Th\\u1ea7n. V\\u1eeba qua kh\\u1ecfi giao l\\u1ed9 v\\u1edbi \\u0111\\u01b0\\u1eddng B&igrave;nh L\\u1ee3i (thu\\u1ed9c ph\\u01b0\\u1eddng 13, qu\\u1eadn B&igrave;nh Th\\u1ea1nh), t&agrave;u t&ocirc;ng tr&uacute;ng ng\\u01b0\\u1eddi \\u0111&agrave;n &ocirc;ng kho\\u1ea3ng 35 tu\\u1ed5i \\u1edf m&eacute;p \\u0111\\u01b0\\u1eddng ray, cu\\u1ed1n v&agrave;o g\\u1ea7m.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">L&aacute;i t&agrave;u k&eacute;o th\\u1eafng, c&ugrave;ng m\\u1ed9t s\\u1ed1 ng\\u01b0\\u1eddi xu\\u1ed1ng ki\\u1ec3m tra. N\\u1ea1n nh&acirc;n b\\u1ecb th\\u01b0\\u01a1ng n\\u1eb7ng, k\\u1eb9t c\\u1ee9ng kh&ocirc;ng th\\u1ec3 \\u0111\\u01b0a ra ngo&agrave;i.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">C\\u1ea3nh s&aacute;t c\\u1ee9u h\\u1ed9 c\\u1ee9u n\\u1ea1n qu\\u1eadn B&igrave;nh Th\\u1ea1nh \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec1u xu\\u1ed1ng hi\\u1ec7n tr\\u01b0\\u1eddng ngay sau \\u0111&oacute;. N\\u1ea1n nh&acirc;n \\u0111\\u01b0\\u1ee3c x&aacute;c \\u0111\\u1ecbnh k\\u1eb9t c&aacute;nh tay v&agrave;o tr\\u1ee5c b&aacute;nh xe c\\u1ee7a \\u0111\\u1ea7u m&aacute;y. Ph\\u1ea3i m\\u1ea5t 30 ph&uacute;t, c\\u1ea3nh s&aacute;t m\\u1edbi th&aacute;o \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0\\u1eddng ray, \\u0111\\u01b0a n\\u1ea1n nh&acirc;n ra ngo&agrave;i c\\u1ea5p c\\u1ee9u.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">S\\u1ef1 vi\\u1ec7c khi\\u1ebfn giao th&ocirc;ng quanh khu v\\u1ef1c &ugrave;n t\\u1eafc nghi&ecirc;m tr\\u1ecdng. &quot;L\\u1ea7n \\u0111\\u1ea7u t&ocirc;i th\\u1ea5y c&oacute; ng\\u01b0\\u1eddi b\\u1ecb t&agrave;u ho\\u1ea3 t&ocirc;ng m&agrave; may m\\u1eafn v\\u1eady. Kh&ocirc;ng bi\\u1ebft anh ta b\\u0103ng \\u1ea9u qua \\u0111\\u01b0\\u1eddng ray, hay c&oacute; &yacute; \\u0111\\u1ecbnh ti&ecirc;u c\\u1ef1c n\\u1eefa&quot;, m\\u1ed9t ng\\u01b0\\u1eddi d&acirc;n s\\u1ed1ng t\\u1ea1i khu v\\u1ef1c n&oacute;i.<\\/p>\\r\\n\\r\\n<table align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"0\\\" class=\\\"tplCaption\\\" style=\\\"width: 500px;\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td><img alt=\\\"S\\u1ef1 vi\\u1ec7c khi\\u1ebfn giao th\\u00f4ng k\\u1eb9t c\\u1ee9ng. \\u1ea2nh: S\\u01a1n Ho\\u00e0.\\\" data-natural-h=\\\"339\\\" data-natural-width=\\\"500\\\" data-pwidth=\\\"500\\\" data-width=\\\"500\\\" src=\\\"https:\\/\\/i-vnexpress.vnecdn.net\\/2019\\/03\\/18\\/giai-cuu-1-5195-1552911924.jpg\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>\\r\\n\\t\\t\\t<p class=\\\"Image\\\">S\\u1ef1 vi\\u1ec7c khi\\u1ebfn giao th&ocirc;ng k\\u1eb9t c\\u1ee9ng. \\u1ea2nh: <em>S\\u01a1n Ho&agrave;.<\\/em><\\/p>\\r\\n\\t\\t\\t<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\",\"tags\":[null],\"categories\":[\"4\",null],\"cmt_allow\":\"on\",\"_token\":\"DUBgNXEmapJYKMjyjnka3wPKrPrXyMCr4YCoRfzb\",\"after-save\":\"2\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\"}', '2019-03-18 13:27:08', '2019-03-18 13:27:08'),
(603, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-18 13:27:09', '2019-03-18 13:27:09'),
(604, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"13 \\u0111i\\u1ec1u ph\\u1ee5 huynh c\\u1ea7n d\\u1ea1y con tr\\u01b0\\u1edbc khi v\\u00e0o l\\u1edbp 1\",\"slug\":\"13-dieu-phu-huynh-can-day-con-truoc-khi-vao-lop-1-\",\"description\":\"Tr\\u1ebb c\\u1ea7n bi\\u1ebft tr\\u01b0\\u1eddng h\\u1ecdc kh\\u00f4ng ph\\u1ea3i to\\u00e0n b\\u1ed9 cu\\u1ed9c s\\u1ed1ng, kh\\u00f4ng n\\u00ean \\u0111\\u1ec3 k\\u1ef3 thi hay \\u0111i\\u1ec3m s\\u1ed1 \\u1ea3nh h\\u01b0\\u1edfng qu\\u00e1 nhi\\u1ec1u \\u0111\\u1ebfn t\\u00e2m tr\\u1ea1ng.\",\"content\":\"<p class=\\\"Normal\\\">Khi thay \\u0111\\u1ed5i m&ocirc;i tr\\u01b0\\u1eddng t\\u1eeb m\\u1eabu gi&aacute;o v&agrave;o ti\\u1ec3u h\\u1ecdc, m\\u1ecdi th\\u1ee9 \\u0111\\u1ed1i v\\u1edbi tr\\u1ebb \\u0111\\u1ec1u l\\u1ea1 l\\u1eabm, kh&ocirc;ng tho\\u1ea3i m&aacute;i v&agrave; th\\u1eadm ch&iacute; \\u0111&aacute;ng s\\u1ee3. L\\u1ea7n \\u0111\\u1ea7u ti&ecirc;n trong \\u0111\\u1eddi, tr\\u1ebb ph\\u1ea3i ch\\u1ecbu &aacute;p l\\u1ef1c b\\u1edfi b&agrave;i t\\u1eadp v\\u1ec1 nh&agrave; v&agrave; \\u0111i\\u1ec3m s\\u1ed1 trong c&aacute;c b&agrave;i ki\\u1ec3m tra. Do \\u0111&oacute;, ph\\u1ee5 huynh c\\u1ea7n gi&uacute;p tr\\u1ebb s\\u1eb5n s&agrave;ng c\\u1ea3 v\\u1ec1 t&acirc;m l&yacute; l\\u1eabn k\\u1ef9 n\\u0103ng, \\u0111\\u1ec3 th\\u1eddi \\u0111i h\\u1ecdc tr\\u1edf th&agrave;nh giai \\u0111o\\u1ea1n \\u0111&aacute;ng nh\\u1edb v&agrave; &yacute; ngh\\u0129a nh\\u1ea5t.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">D\\u01b0\\u1edbi \\u0111&acirc;y l&agrave; 13 \\u0111i\\u1ec1u quan tr\\u1ecdng ph\\u1ee5 huynh n&ecirc;n d\\u1ea1y tr\\u1ebb tr\\u01b0\\u1edbc khi v&agrave;o l\\u1edbp 1, theo <em>Bright Side<\\/em>:<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">1. S\\u1ee9c kh\\u1ecfe th\\u1ec3 ch\\u1ea5t v&agrave; tinh th\\u1ea7n c\\u1ee7a con quan tr\\u1ecdng h\\u01a1n c&aacute;c b&agrave;i h\\u1ecdc. N\\u1ebfu con c\\u1ea3m th\\u1ea5y kh&ocirc;ng kh\\u1ecfe, h&atilde;y n&oacute;i v\\u1edbi ai \\u0111&oacute; v\\u1ec1 t&igrave;nh tr\\u1ea1ng c\\u1ee7a m&igrave;nh.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">2. \\u0110\\u1eebng so s&aacute;nh b\\u1ea3n th&acirc;n v\\u1edbi nh\\u1eefng ng\\u01b0\\u1eddi kh&aacute;c. Con \\u0111\\u1ebfn tr\\u01b0\\u1eddng \\u0111\\u1ec3 thu n\\u1ea1p ki\\u1ebfn th\\u1ee9c, kh&ocirc;ng ph\\u1ea3i \\u0111\\u1ec3 \\u0111ua tranh \\u0111i\\u1ec3m ch&aacute;c.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">3. Con c\\u1ea7n hi\\u1ec3u n\\u1ed9i dung b&agrave;i gi\\u1ea3ng, \\u0111i\\u1ec3m s\\u1ed1 kh&ocirc;ng qu&aacute; quan tr\\u1ecdng. N\\u1ebfu con b\\u1ecb \\u0111i\\u1ec3m k&eacute;m, b\\u1ed1 m\\u1eb9 s\\u1ebd kh&ocirc;ng ph\\u1ea1t con. Nh\\u01b0ng n\\u1ebfu con \\u0111\\u1ea1t \\u0111i\\u1ec3m A, b\\u1ed1 m\\u1eb9 s\\u1ebd r\\u1ea5t vui.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">4. N\\u1ebfu th\\u1ea5y b&agrave;i n&agrave;o \\u0111&oacute; kh&oacute; hi\\u1ec3u, con h&atilde;y nh\\u1edd gi&aacute;o vi&ecirc;n ho\\u1eb7c b\\u1ed1 m\\u1eb9 gi\\u1ea3i th&iacute;ch.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">5. C\\u1ea3m gi&aacute;c lo l\\u1eafng tr\\u01b0\\u1edbc k\\u1ef3 thi l&agrave; b&igrave;nh th\\u01b0\\u1eddng, nh\\u01b0ng h&atilde;y nh\\u1edb r\\u1eb1ng tr\\u01b0\\u1eddng h\\u1ecdc kh&ocirc;ng ph\\u1ea3i to&agrave;n b\\u1ed9 cu\\u1ed9c s\\u1ed1ng c\\u1ee7a con, \\u0111&oacute; ch\\u1ec9 l&agrave; m\\u1ed9t ph\\u1ea7n nh\\u1ecf. \\u0110\\u1eebng \\u0111\\u1ec3 m\\u1ed9t k\\u1ef3 thi \\u1ea3nh h\\u01b0\\u1edfng qu&aacute; nhi\\u1ec1u \\u0111\\u1ebfn t&acirc;m tr\\u1ea1ng c\\u1ee7a con.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">6. Gi&aacute;o vi&ecirc;n c\\u0169ng l&agrave; con ng\\u01b0\\u1eddi, h\\u1ecd c&oacute; th\\u1ec3 b\\u1ecb \\u1ed1m, m\\u1ec7t m\\u1ecfi hay m\\u1eafc l\\u1ed7i. H&atilde;y ghi nh\\u1edb \\u0111i\\u1ec1u n&agrave;y \\u0111\\u1ec3 t&ocirc;n tr\\u1ecdng th\\u1ea7y c&ocirc; gi&aacute;o, bi\\u1ebft \\u01a1n nh\\u1eefng g&igrave; h\\u1ecd \\u0111&atilde; l&agrave;m cho con.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">7. \\u0110\\u1eebng b\\u1eaft n\\u1ea1t b\\u1ea5t k\\u1ef3 ai. B\\u1eaft n\\u1ea1t l&agrave; h&agrave;nh vi l&agrave;m t\\u1ed5n th\\u01b0\\u01a1ng k\\u1ebb y\\u1ebfu th\\u1ebf h\\u01a1n m&igrave;nh. Khi nh&igrave;n th\\u1ea5y ai \\u0111&oacute; b\\u1ecb b\\u1eaft n\\u1ea1t, con h&atilde;y k\\u1ec3 \\u0111\\u1ec3 b\\u1ed1 m\\u1eb9 xem c&oacute; c&aacute;ch g&igrave; gi&uacute;p b\\u1ea1n kh&ocirc;ng.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">8. N\\u1ebfu con kh&ocirc;ng ph&aacute; v\\u1ee1 c&aacute;c quy t\\u1eafc, kh&ocirc;ng ai c&oacute; quy\\u1ec1n ph\\u1ea1t con. Con c&oacute; th\\u1ec3 ch\\u01a1i game tr&ecirc;n \\u0111i\\u1ec7n tho\\u1ea1i trong gi\\u1edd ra ch\\u01a1i, mi\\u1ec5n l&agrave; vi\\u1ec7c \\u0111&oacute; kh&ocirc;ng \\u1ea3nh h\\u01b0\\u1edfng \\u0111\\u1ebfn vi\\u1ec7c h\\u1ecdc. Con c&oacute; th\\u1ec3 xin ph&eacute;p ra ngo&agrave;i \\u0111i v\\u1ec7 sinh khi \\u0111ang trong gi\\u1edd h\\u1ecdc. Con c\\u0169ng c&oacute; th\\u1ec3 t\\u1eeb ch\\u1ed1i \\u0103n n\\u1ebfu con kh&ocirc;ng mu\\u1ed1n. N\\u1ebfu con ngh\\u0129 gi&aacute;o vi&ecirc;n l&agrave;m sai m\\u1ed9t vi\\u1ec7c g&igrave; \\u0111&oacute; ho\\u1eb7c c\\u01b0 x\\u1eed kh&ocirc;ng \\u0111&uacute;ng m\\u1ef1c, h&atilde;y n&oacute;i v\\u1edbi b\\u1ed1 m\\u1eb9.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">9. N\\u1ebfu con kh&ocirc;ng tu&acirc;n th\\u1ee7 quy \\u0111\\u1ecbnh, gi&aacute;o vi&ecirc;n c&oacute; th\\u1ec3 ph\\u1ea1t con. Nh\\u01b0ng kh&ocirc;ng ai \\u0111\\u01b0\\u1ee3c ph&eacute;p l&agrave;m t\\u1ed5n th\\u01b0\\u01a1ng, h\\u1ea1 nh\\u1ee5c hay nh\\u1ea1o b&aacute;ng con.<\\/p>\\r\\n\\r\\n<table align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"0\\\" class=\\\"tplCaption\\\" style=\\\"width: 500px;\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td><img alt=\\\"13 \\u0111i\\u1ec1u ph\\u1ee5 huynh c\\u1ea7n d\\u1ea1y con tr\\u01b0\\u1edbc khi v\\u00e0o l\\u1edbp 1 - 1\\\" data-natural-h=\\\"423\\\" data-natural-width=\\\"500\\\" data-pwidth=\\\"500\\\" data-width=\\\"500\\\" src=\\\"https:\\/\\/i-vnexpress.vnecdn.net\\/2019\\/03\\/18\\/day-con-2-7626-1552883416.jpg\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td>&nbsp;<\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<p class=\\\"Normal\\\">10. H&atilde;y h\\u1ecdc c&aacute;ch giao ti\\u1ebfp v\\u1edbi m\\u1ecdi ng\\u01b0\\u1eddi. Khi m\\u1ed9t b\\u1ea1n c&ugrave;ng l\\u1edbp khi\\u1ebfn con t\\u1ed5n th\\u01b0\\u01a1ng, \\u0111\\u1ea7u ti&ecirc;n h&atilde;y t\\u1ef1 m&igrave;nh gi\\u1ea3i quy\\u1ebft v\\u1ea5n \\u0111\\u1ec1. N\\u1ebfu kh&ocirc;ng hi\\u1ec7u qu\\u1ea3, con h&atilde;y nh\\u1edd gi&aacute;o vi&ecirc;n ho\\u1eb7c b\\u1ed1 m\\u1eb9 can thi\\u1ec7p.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">11. H&atilde;y n\\u1ed7 l\\u1ef1c h\\u1ebft m&igrave;nh v&agrave; h\\u1ecdc c&aacute;ch t\\u1ef1 suy ngh\\u0129.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">12. H&atilde;y r&egrave;n luy\\u1ec7n k\\u1ef7 lu\\u1eadt. C&aacute;c quy t\\u1eafc \\u0111\\u01b0\\u1ee3c \\u0111\\u1eb7t ra \\u0111\\u1ec3 cu\\u1ed9c s\\u1ed1ng c\\u1ee7a ch&uacute;ng ta tr\\u1edf n&ecirc;n d\\u1ec5 d&agrave;ng h\\u01a1n. Do \\u0111&oacute;, con ph\\u1ea3i l&agrave;m b&agrave;i t\\u1eadp v\\u1ec1 nh&agrave;, v&acirc;ng l\\u1eddi th\\u1ea7y c&ocirc; gi&aacute;o, t\\u1ef1 chu\\u1ea9n b\\u1ecb c\\u1eb7p s&aacute;ch cho ng&agrave;y h&ocirc;m sau v&agrave;o bu\\u1ed5i t\\u1ed1i tr\\u01b0\\u1edbc khi \\u0111i ng\\u1ee7.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">13. Con c&oacute; th\\u1ec3 thu n\\u1ea1p ki\\u1ebfn th\\u1ee9c t\\u1eeb nh\\u1eefng n\\u01a1i kh&aacute;c ngo&agrave;i tr\\u01b0\\u1eddng h\\u1ecdc. N\\u1ebfu mu\\u1ed1n bi\\u1ebft th&ecirc;m \\u0111i\\u1ec1u g&igrave; \\u0111&oacute;, con h&atilde;y \\u0111\\u1eb7t c&acirc;u h\\u1ecfi v&agrave; b\\u1ed1 m\\u1eb9 s\\u1ebd gi&uacute;p con t&igrave;m c&acirc;u tr\\u1ea3 l\\u1eddi.&nbsp;<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"tags\":[null],\"categories\":[\"5\",null],\"cmt_allow\":\"on\",\"_token\":\"DUBgNXEmapJYKMjyjnka3wPKrPrXyMCr4YCoRfzb\",\"after-save\":\"2\"}', '2019-03-18 13:29:11', '2019-03-18 13:29:11'),
(605, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-18 13:29:12', '2019-03-18 13:29:12'),
(606, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Nh\\u1eefng \\u0111i\\u1ec1u b\\u1ed1 m\\u1eb9 n\\u00ean d\\u1ea1y tr\\u1ebb \\u1edf t\\u1eebng giai \\u0111o\\u1ea1n\",\"slug\":\"nhung-dieu-bo-me-nen-day-tre-o-tung-giai-doan-\",\"description\":\"Tr\\u1ebb d\\u01b0\\u1edbi 5 tu\\u1ed5i n\\u00ean \\u0111\\u01b0\\u1ee3c khuy\\u1ebfn kh\\u00edch \\u0111\\u1eb7t c\\u00e2u h\\u1ecfi n\\u1ebfu th\\u1eafc m\\u1eafc, tr\\u1ebb 6-8 tu\\u1ed5i ph\\u1ea3i bi\\u1ebft c\\u00e1ch qua \\u0111\\u01b0\\u1eddng v\\u00e0 tu\\u00e2n th\\u1ee7 lu\\u1eadt giao th\\u00f4ng.\",\"content\":\"<p class=\\\"Normal\\\"><strong>5 tu\\u1ed5i tr\\u1edf xu\\u1ed1ng<\\/strong><\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch \\u0111\\u1ed1i ph&oacute; v\\u1edbi th\\u1ea5t b\\u1ea1i v&agrave; c\\u01a1n gi\\u1eadn d\\u1eef.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch tha th\\u1ee9 cho ng\\u01b0\\u1eddi kh&aacute;c v&agrave; b\\u1ea3n th&acirc;n.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch \\u0111i \\u0111\\u1ebfn th\\u1ecfa thu\\u1eadn v\\u1edbi nh\\u1eefng \\u0111\\u1ee9a tr\\u1ebb kh&aacute;c v&agrave; v\\u1edbi ng\\u01b0\\u1eddi l\\u1edbn.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- T&iacute;nh t\\u1ef1 l\\u1eadp.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- N\\u1eafm r&otilde; \\u0111\\u1ecba ch\\u1ec9 nh&agrave;.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Kh&ocirc;ng n&oacute;i chuy\\u1ec7n ho\\u1eb7c \\u0111i c&ugrave;ng ng\\u01b0\\u1eddi l\\u1ea1.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- \\u0102n th\\u1ef1c ph\\u1ea9m t\\u1ed1t cho s\\u1ee9c kh\\u1ecfe (tr&aacute;nh th\\u1ef1c ph\\u1ea9m g&acirc;y d\\u1ecb \\u1ee9ng).<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Kh&ocirc;ng c\\u1ea3m th\\u1ea5y ng\\u1ea1i ng&ugrave;ng tr\\u01b0\\u1edbc ng\\u01b0\\u1eddi l\\u1edbn v&agrave; ng\\u01b0\\u1eddi gi&agrave;.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Kh&ocirc;ng ng\\u1ea1i \\u0111\\u1eb7t c&acirc;u h\\u1ecfi khi kh&ocirc;ng bi\\u1ebft \\u0111i\\u1ec1u g&igrave; \\u0111&oacute;.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Ch\\u1ecbu tr&aacute;ch nhi\\u1ec7m cho h&agrave;nh \\u0111\\u1ed9ng c\\u1ee7a ch&iacute;nh m&igrave;nh.<\\/p>\\r\\n\\r\\n<article class=\\\"content_detail fck_detail width_common block_ads_connect\\\">\\r\\n<p class=\\\"Normal\\\"><strong>6-8 tu\\u1ed5i<\\/strong><\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch l&agrave;m nh\\u1eefng m&oacute;n \\u0103n \\u0111\\u01a1n gi\\u1ea3n (pha tr&agrave;, k\\u1eb9p b&aacute;nh sandwich).<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Thu\\u1ed9c c&aacute;c s\\u1ed1 kh\\u1ea9n c\\u1ea5p.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- B\\u01a1i.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch x\\u1eed l&yacute; m\\u1ecdi vi\\u1ec7c \\u0111&uacute;ng h\\u1ea1n.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Tu&acirc;n th\\u1ee7 lu\\u1eadt giao th&ocirc;ng khi qua \\u0111\\u01b0\\u1eddng.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch t&igrave;m ki\\u1ebfm th&ocirc;ng tin trong s&aacute;ch v&agrave; tr&ecirc;n Internet.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Kh&ocirc;ng n&oacute;i m\\u1ecdi th\\u1ee9 n\\u1ea3y ra trong \\u0111\\u1ea7u, v&igrave; \\u0111i\\u1ec1u \\u0111&oacute; c&oacute; th\\u1ec3 x&uacute;c ph\\u1ea1m ng\\u01b0\\u1eddi kh&aacute;c.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch b\\u1ea3o v\\u1ec7 m&ocirc;i tr\\u01b0\\u1eddng v&agrave; ch\\u0103m s&oacute;c \\u0111\\u1ed9ng v\\u1eadt.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Thu\\u1ed9c l&ograve;ng s\\u1ed1 \\u0111i\\u1ec7n tho\\u1ea1i c\\u1ee7a b\\u1ed1 m\\u1eb9.<\\/p>\\r\\n\\r\\n<table align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"0\\\" class=\\\"tplCaption\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td><img alt=\\\"Nh\\u1eefng \\u0111i\\u1ec1u b\\u1ed1 m\\u1eb9 n\\u00ean d\\u1ea1y tr\\u1ebb \\u1edf t\\u1eebng giai \\u0111o\\u1ea1n - 1\\\" data-natural-h=\\\"370\\\" data-natural-width=\\\"500\\\" data-pwidth=\\\"500\\\" data-width=\\\"500\\\" src=\\\"https:\\/\\/i-vnexpress.vnecdn.net\\/2019\\/03\\/16\\/day-con-6-8-tuoi-3343-1552729078.jpg\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<p class=\\\"Normal\\\"><strong>9-12 tu\\u1ed5i<\\/strong><\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch ph&acirc;n bi\\u1ec7t nhu c\\u1ea7u v\\u1edbi mong mu\\u1ed1n nh\\u1ea5t th\\u1eddi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch l\\u1ea1c quan nh\\u01b0ng kh&ocirc;ng nh&igrave;n th\\u1ebf gi\\u1edbi qua l\\u0103ng k&iacute;nh m&agrave;u h\\u1ed3ng.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- T&igrave;m m\\u1ed9t s\\u1edf th&iacute;ch v&agrave; bi\\u1ebfn n&oacute; th&agrave;nh s\\u1edf tr\\u01b0\\u1eddng.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- \\u0102n m\\u1eb7c ph&ugrave; h\\u1ee3p.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Bi\\u1ebft nh\\u1eefng \\u0111i\\u1ec1u c\\u01a1 b\\u1ea3n v\\u1ec1 h&agrave;nh vi an to&agrave;n tr&ecirc;n Internet.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Kh&ocirc;ng \\u0111\\u1ec3 qu&ecirc;n ch&igrave;a kh&oacute;a v&agrave; ti\\u1ec1n \\u1edf b\\u1ea5t c\\u1ee9 \\u0111&acirc;u.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- H\\u1ecdc n\\u1ea5u c&aacute;c m&oacute;n \\u0103n ph\\u1ee9c t\\u1ea1p h\\u01a1n, c&aacute;ch trang tr&iacute; v&agrave; g\\u1ecdt rau c\\u1ee7.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- \\u0110\\u1ec3 &yacute; th\\u1eddi gian khi xem TV ho\\u1eb7c ch\\u01a1i game.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- T\\u1eadp th\\u1ec3 d\\u1ee5c.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch \\u0111i \\u0111\\u1ebfn c\\u1eeda h&agrave;ng t\\u1ea1p h&oacute;a.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch s\\u1eed d\\u1ee5ng la b&agrave;n v&agrave; d\\u1ef1ng l\\u1ec1u.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Nh\\u1edb ng&agrave;y sinh nh\\u1eadt c\\u1ee7a ng\\u01b0\\u1eddi th&acirc;n.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\"><strong>13-15 tu\\u1ed5i<\\/strong><\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Nh\\u1eadn th\\u1ee9c \\u0111\\u01b0\\u1ee3c r\\u1eb1ng r\\u01b0\\u1ee3u bia v&agrave; ch\\u1ea5t k&iacute;ch th&iacute;ch g&acirc;y h\\u1ea1i cho c\\u01a1 th\\u1ec3.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- \\u0110\\u1ecbnh h\\u01b0\\u1edbng \\u0111\\u01b0\\u1ee3c c&aacute;c khu v\\u1ef1c trong th&agrave;nh ph\\u1ed1 v&agrave; tr&aacute;nh nh\\u1eefng n\\u01a1i nguy hi\\u1ec3m.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- T\\u1ef1 s\\u1eed d\\u1ee5ng ph\\u01b0\\u01a1ng ti\\u1ec7n giao th&ocirc;ng c&ocirc;ng c\\u1ed9ng.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Ch\\u1ea5p nh\\u1eadn v\\u1ebb b\\u1ec1 ngo&agrave;i v&agrave; kh&ocirc;ng t\\u1ef1 ti v&igrave; nh\\u1eefng \\u0111i\\u1ec3m kh&ocirc;ng ho&agrave;n h\\u1ea3o.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch nu&ocirc;i d\\u01b0\\u1ee1ng t&igrave;nh b\\u1ea1n.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch th\\u1ec3 hi\\u1ec7n t&igrave;nh c\\u1ea3m v\\u1edbi ng\\u01b0\\u1eddi kh&aacute;c gi\\u1edbi.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- N&oacute;i xin l\\u1ed7i khi l&agrave;m sai.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Ti\\u1ebft ki\\u1ec7m ti\\u1ec1n v&agrave; chi ti&ecirc;u h\\u1ee3p l&yacute;.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- T\\u1ef1 tin nh\\u01b0ng kh&ocirc;ng l\\u1ea5n &aacute;t ng\\u01b0\\u1eddi kh&aacute;c.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- \\u0110\\u1ed1i x\\u1eed t&ocirc;n tr\\u1ecdng v\\u1edbi nh&acirc;n vi&ecirc;n ph\\u1ee5c v\\u1ee5.&nbsp;<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Hi\\u1ec3u ngu\\u1ed3n g\\u1ed1c, h\\u1eadu qu\\u1ea3 v&agrave; c&aacute;ch ch\\u1ed1ng l\\u1ea1i c\\u01a1n tr\\u1ea7m c\\u1ea3m.<\\/p>\\r\\n\\r\\n<table align=\\\"center\\\" border=\\\"0\\\" cellpadding=\\\"3\\\" cellspacing=\\\"0\\\" class=\\\"tplCaption\\\">\\r\\n\\t<tbody>\\r\\n\\t\\t<tr>\\r\\n\\t\\t\\t<td><img alt=\\\"Nh\\u1eefng \\u0111i\\u1ec1u b\\u1ed1 m\\u1eb9 n\\u00ean d\\u1ea1y tr\\u1ebb \\u1edf t\\u1eebng giai \\u0111o\\u1ea1n - 2\\\" data-natural-h=\\\"556\\\" data-natural-width=\\\"350\\\" data-pwidth=\\\"500\\\" data-width=\\\"350\\\" src=\\\"https:\\/\\/i-vnexpress.vnecdn.net\\/2019\\/03\\/16\\/day-con-15-tuoi-8086-1552729078.jpg\\\" \\/><\\/td>\\r\\n\\t\\t<\\/tr>\\r\\n\\t<\\/tbody>\\r\\n<\\/table>\\r\\n\\r\\n<p class=\\\"Normal\\\"><strong>16-18 tu\\u1ed5i<\\/strong><\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Suy ngh\\u0129 tr\\u01b0\\u1edbc khi \\u0111\\u01b0a ra quy\\u1ebft \\u0111\\u1ecbnh quan tr\\u1ecdng.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch gi\\u1ea3i quy\\u1ebft xung \\u0111\\u1ed9t.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch t&igrave;m ki\\u1ebfm s\\u1ef1 th\\u1ecfa hi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- D&aacute;m m\\u1ea1o hi\\u1ec3m m\\u1ed9t c&aacute;ch kh&ocirc;n ngoan.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Ki\\u1ec3m so&aacute;t tr\\u1ecdng l\\u01b0\\u1ee3ng c\\u01a1 th\\u1ec3.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- T\\u1ef1 \\u0111o l\\u01b0\\u1eddng v&agrave; hi\\u1ec3u bi\\u1ebft v\\u1ec1 s\\u1ee9c kh\\u1ecfe c\\u1ee7a m&igrave;nh.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch \\u0111\\u1ed1i ph&oacute; v\\u1edbi kh\\u1ed1i l\\u01b0\\u1ee3ng b&agrave;i v\\u1edf v&agrave; c\\u1ea3m x&uacute;c m\\u1ed9t c&aacute;ch \\u0111\\u1ed9c l\\u1eadp.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- N\\u1eafm \\u0111i\\u1ec3m m\\u1ea1nh v&agrave; \\u0111i\\u1ec3m y\\u1ebfu c\\u1ee7a b\\u1ea3n th&acirc;n.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Ngh\\u0129 \\u0111\\u1ebfn t\\u01b0\\u01a1ng lai v&agrave; ngh\\u1ec1 nghi\\u1ec7p.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C\\u1ed1 g\\u1eafng tham gia t&igrave;nh nguy\\u1ec7n ngo&agrave;i th\\u1eddi gian h\\u1ecdc t\\u1eadp.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- C&aacute;ch hi\\u1ec3u c\\u1ea3m x&uacute;c c\\u1ee7a b\\u1ea3n th&acirc;n v&agrave; c\\u1ee7a ng\\u01b0\\u1eddi kh&aacute;c.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">- Bi\\u1ebft c&aacute;c quy t\\u1eafc an to&agrave;n khi quan h\\u1ec7 t&igrave;nh d\\u1ee5c.<\\/p>\\r\\n<\\/article>\\r\\n\\r\\n<p class=\\\"author_mail\\\"><strong>Th&ugrave;y Linh - Theo Bright Side<\\/strong><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"tags\":[null],\"categories\":[\"5\",null],\"cmt_allow\":\"on\",\"_token\":\"DUBgNXEmapJYKMjyjnka3wPKrPrXyMCr4YCoRfzb\",\"after-save\":\"2\"}', '2019-03-18 13:30:15', '2019-03-18 13:30:15'),
(607, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-18 13:30:16', '2019-03-18 13:30:16');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(608, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"C\\u00e1ch gi\\u00fap tr\\u1ebb y\\u00eau \\u0111\\u1ecdc s\\u00e1ch ti\\u1ebfng Anh\",\"slug\":\"cach-giup-tre-yeu-doc-sach-tieng-anh-\",\"description\":\"C\\u00f9ng con h\\u1ecdc ch\\u1eef A B C qua tr\\u00f2 ch\\u01a1i, r\\u1ed3i t\\u1eadp \\u0111\\u1ecdc t\\u1eebng ch\\u1eef trong c\\u00e2u, th\\u1ea7y gi\\u00e1o Quang Nguyen \\u0111\\u00e3 khi\\u1ebfn con g\\u00e1i nh\\u1ecf th\\u00edch \\u0111\\u1ecdc s\\u00e1ch h\\u01a1n.\",\"content\":\"<p class=\\\"Normal\\\">Trong vi\\u1ec7c h\\u01b0\\u1edbng con \\u0111\\u1ecdc s&aacute;ch, vi\\u1ec7c kh&oacute; nh\\u1ea5t kh&ocirc;ng ph\\u1ea3i l&agrave; l&agrave;m th\\u1ebf n&agrave;o \\u0111\\u1ec3 con \\u0111\\u1ecdc \\u0111\\u01b0\\u1ee3c, m&agrave; l&agrave; nu&ocirc;i d\\u01b0\\u1ee1ng v&agrave; gi\\u1eef \\u0111\\u01b0\\u1ee3c t&igrave;nh y&ecirc;u \\u0111\\u1ecdc s&aacute;ch trong con.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">M&igrave;nh \\u0111\\u1ecdc s&aacute;ch c&ugrave;ng c\\u1ea3 hai con, \\u0111\\u1ee9a l\\u1edbn h\\u1ecdc r\\u1ea5t nhanh, t\\u1eeb nh&igrave;n qua m\\u1ed9t l\\u1ea7n \\u0111&atilde; nh\\u1edb v&agrave; ch\\u1ec9 sau m\\u1ed9t th\\u1eddi gian ng\\u1eafn \\u0111\\u1ecdc s&aacute;ch c&ugrave;ng b\\u1ed1, ch&agrave;ng trai \\u0111&atilde; h&ograve;a nh\\u1eadp v&agrave; \\u0111\\u1ee9ng trong nh&oacute;m h\\u1ecdc sinh \\u0111\\u1ecdc s&aacute;ch t\\u1ed1t \\u1edf tr\\u01b0\\u1eddng c\\u1ee7a M\\u1ef9. Ng\\u01b0\\u1ee3c l\\u1ea1i, c&ocirc; con g&aacute;i b&eacute; t&ecirc;n Suzie l\\u1ea1i \\u0111\\u1ecdc r\\u1ea5t ch\\u1eadm v&agrave; hay qu&ecirc;n.&nbsp;D\\u01b0\\u1edbi \\u0111&acirc;y l&agrave; nh\\u1eefng kinh nghi\\u1ec7m \\u0111\\u1ecdc s&aacute;ch c&ugrave;ng c&ocirc; b&eacute; &quot;ch\\u1eadm \\u0111\\u1ecdc&quot; n&agrave;y.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Suzie g\\u1eb7p kh&oacute; kh\\u0103n ngay t\\u1eeb nh\\u1eefng ng&agrave;y \\u0111\\u1ea7u h\\u1ecdc ch\\u1eef. M&igrave;nh mua m\\u1ed9t b\\u1ed9 \\u0111\\u1ed3 ch\\u01a1i h&igrave;nh ch\\u1eef c&aacute;i A B C \\u0111\\u1ec3 con l&agrave;m quen v\\u1edbi m\\u1eb7t ch\\u1eef. R\\u1ed3i b\\u1eaft \\u0111\\u1ea7u b\\u1eb1ng ba ch\\u1eef c&aacute;i A B C, m&igrave;nh cho con&nbsp;v\\u1eeba h\\u1ecdc v\\u1eeba ch\\u01a1i \\u0111\\u1ed1, m\\u1ed7i ng&agrave;y t\\u0103ng th&ecirc;m m\\u1ed9t v&agrave;i ch\\u1eef.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Sau khi Suzie \\u0111&atilde; thu\\u1ed9c s\\u01a1 s&agrave;i, m&igrave;nh vi\\u1ebft b\\u1ea3ng ch\\u1eef c&aacute;i l&ecirc;n t\\u01b0\\u1eddng v&agrave; b\\u1eaft \\u0111\\u1ea7u ch\\u01a1i m\\u1ed9t tr&ograve; kh&aacute;c: ch\\u1ec9 v&agrave;o b\\u1ea3ng ch\\u1eef c&aacute;i v&agrave; h\\u1ecfi. N\\u1ebfu tr\\u1ea3 l\\u1eddi \\u0111&uacute;ng, con \\u0111\\u01b0\\u1ee3c 1 \\u0111i\\u1ec3m, tr\\u1ea3 l\\u1eddi sai, b\\u1ed1 \\u0111\\u01b0\\u1ee3c \\u0111i\\u1ec3m. R&ograve;ng r&atilde; th&ecirc;m v&agrave;i tu\\u1ea7n th&igrave; con c\\u0169ng n\\u1eafm \\u0111\\u01b0\\u1ee3c s\\u01a1 s\\u01a1 ch\\u1eef c&aacute;i.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">\\u0110\\u1ebfn ph\\u1ea7n \\u0111\\u1ecdc, vi\\u1ec7c \\u0111\\u1ea7u ti&ecirc;n l&agrave; l&agrave;m quen v\\u1edbi ch\\u1eef vi\\u1ebft th\\u01b0\\u1eddng (lower case), v&agrave; &acirc;m c\\u1ee7a t\\u1eebng ch\\u1eef. C&aacute;c b&agrave;i &quot;phonics song&quot; t\\u01b0\\u01a1ng \\u0111\\u1ed1i hi\\u1ec7u qu\\u1ea3, l&agrave; m\\u1ed9t kh\\u1edfi \\u0111\\u1ea7u t\\u1ed1t. V&igrave; con h\\u1ecdc trong m&ocirc;i tr\\u01b0\\u1eddng ESL (\\u1edf M\\u1ef9), m&igrave;nh kh&ocirc;ng c\\u1ea7n ph\\u1ea3i d\\u1ea1y ph&aacute;t &acirc;m n\\u1eefa, vi\\u1ec7c d\\u1ea1y theo &quot;phonics&quot; nh&agrave;n h\\u01a1n. V\\u1edbi tr\\u1ebb \\u1edf Vi\\u1ec7t Nam, c\\u1ea7n l\\u01b0u &yacute;, ph\\u01b0\\u01a1ng ph&aacute;p &quot;phonics&quot; kh&oacute; &aacute;p d\\u1ee5ng h\\u01a1n r\\u1ea5t nhi\\u1ec1u v&igrave; gi&aacute;o vi&ecirc;n v&agrave; h\\u1ecdc sinh \\u0111\\u1ec1u c&oacute; th\\u1ec3 ph&aacute;t &acirc;m kh&ocirc;ng chu\\u1ea9n, d\\u1eabn \\u0111\\u1ebfn \\u0111\\u1ecdc sai<\\/p>\\r\\n\\r\\n<article class=\\\"content_detail fck_detail width_common block_ads_connect\\\">\\r\\n<p class=\\\"Normal\\\">Sau khi nh\\u1eadn di\\u1ec7n \\u0111\\u01b0\\u1ee3c ch\\u1eef c&aacute;i v&agrave; &acirc;m, m&igrave;nh b\\u1eaft \\u0111\\u1ea7u \\u0111\\u1ecdc s&aacute;ch c&ugrave;ng con. Khi ch\\u1ecdn s&aacute;ch, c\\u1ea7n l\\u01b0u &yacute; ch\\u1ecdn nh\\u1eefng cu\\u1ed1n ph&ugrave; h\\u1ee3p v\\u1edbi kh\\u1ea3 n\\u0103ng \\u0111\\u1ecdc v&agrave; s\\u1edf th&iacute;ch c\\u1ee7a b&eacute;. V\\u1edbi Suzie, m&igrave;nh ch\\u1ecdn s&aacute;ch \\u0111\\u01a1n gi\\u1ea3n (m\\u1ed7i trang ch\\u1ec9 1-6 ch\\u1eef), c&oacute; n\\u1ed9i dung li&ecirc;n quan \\u0111\\u1ebfn Elsa, Pony hay \\u0111\\u1ed9ng v\\u1eadt.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Khi \\u0111\\u1ecdc s&aacute;ch, m&igrave;nh &aacute;p d\\u1ee5ng ba ph\\u01b0\\u01a1ng ph&aacute;p: phonics (v\\u1edbi nh\\u1eefng t\\u1eeb d&ugrave;ng \\u0111\\u01b0\\u1ee3c nh\\u01b0 &quot;dog&quot;), &quot;whole-word&quot; (v\\u1edbi nh\\u1eefng t\\u1eeb kh&ocirc;ng d&ugrave;ng &quot;phonics&quot; \\u0111\\u01b0\\u1ee3c nh\\u01b0: &quot;he&quot;) v&agrave; b\\u1ed1i c\\u1ea3nh (v&iacute; d\\u1ee5 khi trang s&aacute;ch c&oacute; h&igrave;nh con ch&oacute; m&agrave;u tr\\u1eafng v&agrave; \\u1edf d\\u01b0\\u1edbi l&agrave; &quot;white dog&quot;). C\\u1ea7n nh\\u1edb, m\\u1ee5c \\u0111&iacute;ch l&agrave; \\u0111\\u1ec3 tr\\u1ebb &quot;gi\\u1ea3i m&atilde;&quot; \\u0111\\u01b0\\u1ee3c ch\\u1eef c&aacute;i, ph\\u01b0\\u01a1ng ph&aacute;p n&agrave;o gi&uacute;p tr\\u1ebb nh\\u1edb \\u0111\\u01b0\\u1ee3c ch\\u1eef \\u0111\\u1ec1u l&agrave; hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">M&igrave;nh b\\u1eaft \\u0111\\u1ea7u \\u0111\\u1ecdc s&aacute;ch c&ugrave;ng con b\\u1eb1ng ch\\u1eef &quot;the&quot; (ph\\u01b0\\u01a1ng ph&aacute;p &quot;whole-word&quot;) v&igrave; \\u0111&acirc;y l&agrave; ch\\u1eef xu\\u1ea5t hi\\u1ec7n nhi\\u1ec1u nh\\u1ea5t trong ti\\u1ebfng Anh. M&igrave;nh y&ecirc;u c\\u1ea7u Suzie nh\\u1edb m\\u1eb7t ch\\u1eef &quot;the&quot;, v&agrave; \\u0111\\u1ecdc m\\u1ed7i khi ch\\u1eef &quot;the&quot; xu\\u1ea5t hi\\u1ec7n - ph\\u1ea7n c&ograve;n l\\u1ea1i l&agrave; b\\u1ed1 \\u0111\\u1ecdc. V&iacute; d\\u1ee5, &quot;a dog eats THE bone&quot; th&igrave; con \\u0111\\u1ecdc ch\\u1eef &quot;the&quot;, c&ograve;n l\\u1ea1i b\\u1ed1 \\u0111\\u1ecdc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Sau \\u0111&oacute;, m&igrave;nh d\\u1ea1y con \\u0111\\u1ecdc ch\\u1eef &quot;dog&quot; b\\u1eb1ng &quot;phonics&quot; (v&igrave; trong cu\\u1ed1n s&aacute;ch c&oacute; nhi\\u1ec1u ch\\u1eef n&agrave;y), r\\u1ed3i t\\u0103ng d\\u1ea7n s\\u1ed1 t\\u1eeb con t\\u1ef1 \\u0111\\u1ecdc \\u0111\\u1ebfn l&uacute;c n&agrave;ng c&oacute; th\\u1ec3 t\\u1ef1 m&igrave;nh \\u0111\\u1ecdc c\\u1ea3 cu\\u1ed1n.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">B&acirc;y gi\\u1edd Suzie bi\\u1ebft \\u0111&aacute;nh v\\u1ea7n nh\\u1eefng ch\\u1eef c\\u01a1 b\\u1ea3n b\\u1eb1ng &quot;phonics&quot; (nh\\u01b0 &quot;bed&quot;, &quot;meet&quot;), nh\\u1edb m\\u1eb7t ch\\u1eef \\u0111\\u01a1n gi\\u1ea3n (nh\\u01b0 &quot;he&quot;, &quot;do&quot;), v&agrave; bi\\u1ebft c&aacute;ch &quot;nh&igrave;n h&igrave;nh \\u0111o&aacute;n ch\\u1eef&quot; (nh\\u01b0 &quot;big dog, little dog&quot;). Nh\\u01b0ng quan tr\\u1ecdng nh\\u1ea5t, con r\\u1ea5t th&iacute;ch \\u0111\\u1ecdc s&aacute;ch.<br \\/>\\r\\nNg&agrave;y x\\u01b0a, m\\u1ed7i s&aacute;ng, g\\u1ecdi con g&aacute;i d\\u1eady \\u0111i h\\u1ecdc l&agrave; m\\u1ed9t c\\u1ef1c h&igrave;nh v\\u1edbi b\\u1ed1. Gi\\u1edd th&igrave; \\u0111\\u01a1n gi\\u1ea3n r\\u1ed3i, ch\\u1ec9 c\\u1ea7n \\u0111\\u1ecdc th\\u1ea7n ch&uacute;: &quot;Suzie, do you wanna read a book?&quot; l&agrave; n&agrave;ng v&ugrave;ng ch\\u0103n d\\u1eady ngay.<\\/p>\\r\\n<\\/article>\\r\\n\\r\\n<p class=\\\"author_mail\\\"><strong>Quang Nguyen<\\/strong><\\/p>\",\"tags\":[null],\"categories\":[\"5\",null],\"cmt_allow\":\"on\",\"_token\":\"DUBgNXEmapJYKMjyjnka3wPKrPrXyMCr4YCoRfzb\",\"after-save\":\"2\"}', '2019-03-18 14:34:57', '2019-03-18 14:34:57'),
(609, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-18 14:34:59', '2019-03-18 14:34:59'),
(610, 2, 'admin/posts', 'POST', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Tr\\u01b0\\u1eddng Trung Qu\\u1ed1c c\\u1ea5m h\\u1ecdc sinh n\\u1eafm tay nhau\",\"slug\":\"truong-trung-quoc-cam-hoc-sinh-nam-tay-nhau-\",\"description\":\"C\\u1ea5m \\u0111i d\\u1ea1o hai ng\\u01b0\\u1eddi, c\\u1ea5m ng\\u1ed3i \\u0103n chung... m\\u1ed9t tr\\u01b0\\u1eddng trung h\\u1ecdc \\u1edf H\\u00e0 Nam mu\\u1ed1n ng\\u0103n ch\\u1eb7n h\\u1ecdc sinh t\\u00e1n t\\u1ec9nh nhau.\",\"content\":\"<p class=\\\"Normal\\\">Gi\\u1eefa tu\\u1ea7n qua, nhi\\u1ec1u h\\u1ecdc sinh tr\\u01b0\\u1eddng trung h\\u1ecdc s\\u1ed1 1 Suiping, t\\u1ec9nh H&agrave; Nam (Trung Qu\\u1ed1c) \\u0111&atilde; l&ecirc;n m\\u1ea1ng x&atilde; h\\u1ed9i \\u0111\\u1ec3 chia s\\u1ebb vi\\u1ec7c nh&agrave; tr\\u01b0\\u1eddng \\u0111\\u01b0a ra m\\u1ed9t lo\\u1ea1t bi\\u1ec7n ph&aacute;p nh\\u1eb1m ng\\u0103n ch\\u1eb7n nam sinh v&agrave; n\\u1eef sinh t&aacute;n t\\u1ec9nh nhau. Theo \\u0111&oacute;, c&aacute;c nam sinh kh&ocirc;ng \\u0111\\u01b0\\u1ee3c ng\\u1ed3i chung v\\u1edbi n\\u1eef sinh \\u1edf canteen tr\\u01b0\\u1eddng. C&aacute;c em c\\u0169ng kh&ocirc;ng \\u0111\\u01b0\\u1ee3c c&oacute; th\\u1eddi gian ri&ecirc;ng t\\u01b0 v\\u1edbi nhau, <em>SCMP<\\/em> ng&agrave;y 14\\/3 \\u0111\\u01b0a tin.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">&quot;N\\u1ebfu h\\u1ecdc sinh c&oacute; \\u0111\\u1ee5ng ch\\u1ea1m nh\\u01b0 c\\u1ea7m tay, ho\\u1eb7c d\\u1ea1o b\\u1ed9 hai ng\\u01b0\\u1eddi, d&ugrave; c&ugrave;ng gi\\u1edbi hay kh&aacute;c gi\\u1edbi \\u0111\\u1ec1u b\\u1ecb coi l&agrave; c&oacute; m\\u1ed1i quan h\\u1ec7 l&atilde;ng m\\u1ea1n&quot;, m\\u1ed9t h\\u1ecdc sinh c\\u1ee7a tr\\u01b0\\u1eddng k\\u1ec3.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Th&agrave;nh vi&ecirc;n c\\u1ee7a ph&ograve;ng gi&aacute;o d\\u1ee5c \\u0111\\u1ecba ph\\u01b0\\u01a1ng x&aacute;c nh\\u1eadn tr\\u01b0\\u1eddng \\u0111\\u1eb7t ra quy t\\u1eafc tr&ecirc;n \\u0111\\u1ec3 ng\\u0103n ch\\u1eb7n t&igrave;nh y&ecirc;u tu\\u1ed5i h\\u1ecdc tr&ograve;. Tuy nhi&ecirc;n, tr\\u01b0\\u1eddng kh&ocirc;ng l&ecirc;n ti\\u1ebfng v\\u1ec1 vi\\u1ec7c n&agrave;y.<\\/p>\\r\\n\\r\\n<article class=\\\"content_detail fck_detail width_common block_ads_connect\\\">\\r\\n<p class=\\\"Normal\\\">M\\u1ed9t h\\u1ecdc sinh th&ocirc;ng tin nh&agrave; tr\\u01b0\\u1eddng \\u0111&atilde; ban h&agrave;nh hai danh s&aacute;ch g\\u1ed3m nh\\u1eefng h&agrave;nh vi \\u0111\\u01b0\\u1ee3c khuy\\u1ebfn kh&iacute;ch v&agrave; nh\\u1eefng h&agrave;nh vi b\\u1ecb c\\u1ea5m. N\\u1ebfu kh&ocirc;ng tu&acirc;n th\\u1ee7 quy \\u0111\\u1ecbnh, c&aacute;c em s\\u1ebd b\\u1ecb tr\\u1eeb \\u0111i\\u1ec3m cho \\u0111\\u1ebfn khi \\u0111\\u1ee7 \\u0111\\u1ec3 \\u0111u\\u1ed5i h\\u1ecdc.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Danh s&aacute;ch h&agrave;nh vi b\\u1ecb c\\u1ea5m \\u0111\\u01b0\\u1ee3c ban h&agrave;nh v&agrave;o th&aacute;ng tr\\u01b0\\u1edbc, th\\u1eddi \\u0111i\\u1ec3m \\u0111\\u1ea7u h\\u1ecdc k\\u1ef3. Ngo&agrave;i vi\\u1ec7c ng\\u0103n nam n\\u1eef g\\u1ea7n nhau, tr\\u01b0\\u1eddng c\\u0169ng c\\u1ea5m h\\u1ecdc sinh mang t&uacute;i x&aacute;ch trong khu&ocirc;n vi&ecirc;n nh\\u01b0 m\\u1ed9t ph\\u1ea7n c\\u1ee7a l\\u1ec7nh c\\u1ea5m c&aacute;c thi\\u1ebft b\\u1ecb \\u0111i\\u1ec7n t\\u1eed v&agrave; \\u0111\\u1ed3 \\u0103n nh\\u1eb9 m&agrave; tr\\u01b0\\u1eddng cho l&agrave; kh&ocirc;ng ph&ugrave; h\\u1ee3p.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Nhi\\u1ec1u ng\\u01b0\\u1eddi \\u0111&atilde; ch\\u1ec9 tr&iacute;ch gay g\\u1eaft nh\\u1eefng quy \\u0111\\u1ecbnh tr&ecirc;n v&igrave; cho r\\u1eb1ng n&oacute; kh&ocirc;ng c\\u1ea7n thi\\u1ebft v&agrave; kh&ocirc;ng hi\\u1ec7u qu\\u1ea3.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">&quot;M\\u1ed9t m\\u1ed1i t&igrave;nh ch\\u1edbm n\\u1edf \\u1edf tu\\u1ed5i h\\u1ecdc tr&ograve; c&oacute; g&igrave; sai&quot;, &quot;M\\u1ed9t \\u0111\\u1ee9a tr\\u1ebb b&igrave;nh th\\u01b0\\u1eddng kh&ocirc;ng n&ecirc;n c&oacute; c\\u1ea3m x&uacute;c trong qu&aacute; tr&igrave;nh tr\\u01b0\\u1edfng th&agrave;nh c\\u1ee7a ch&uacute;ng sao? B\\u1ea1n n&ecirc;n tr&ograve; chuy\\u1ec7n v&agrave; \\u0111\\u01b0a ra l\\u1eddi khuy&ecirc;n, \\u0111\\u1eebng l&agrave;m t\\u1ed5n h\\u1ea1i s\\u1ef1 ph&aacute;t tri\\u1ec3n t\\u1ef1 nhi&ecirc;n b\\u1eb1ng c&aacute;ch c\\u1ef1c \\u0111oan nh\\u01b0 v\\u1eady&quot;, nhi\\u1ec1u ng\\u01b0\\u1eddi b&igrave;nh lu\\u1eadn tr&ecirc;n Weibo.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">C&oacute; ng\\u01b0\\u1eddi cho r\\u1eb1ng n\\u1ebfu \\u0111&atilde; mu\\u1ed1n ng\\u0103n c\\u1ea3n h\\u1ecdc sinh y&ecirc;u nhau, tr\\u01b0\\u1eddng n&ecirc;n chia th&agrave;nh hai c\\u01a1 s\\u1edf, m\\u1ed9t d&agrave;nh cho nam, m\\u1ed9t cho n\\u1eef. &quot;\\u0110i\\u1ec1u n&agrave;y ch\\u1eafc ch\\u1eafn s\\u1ebd hi\\u1ec7u qu\\u1ea3 h\\u01a1n&quot;, ng\\u01b0\\u1eddi n&agrave;y g\\u1ee3i &yacute;.<\\/p>\\r\\n\\r\\n<p class=\\\"Normal\\\">Tr\\u01b0\\u1edbc tr\\u01b0\\u1eddng Suiping, n\\u0103m 2016, m\\u1ed9t tr\\u01b0\\u1eddng trung h\\u1ecdc \\u1edf Ruyang, c\\u0169ng thu\\u1ed9c t\\u1ec9nh H&agrave; Nam \\u0111&atilde; g&acirc;y tranh c&atilde;i khi t&aacute;ch ri&ecirc;ng nam v\\u1edbi n\\u1eef trong c&aacute;c qu&aacute;n \\u0103n t\\u1ef1 ph\\u1ee5c v\\u1ee5. Hi\\u1ec7u tr\\u01b0\\u1edfng chia s\\u1ebb v\\u1edbi b&aacute;o ch&iacute; \\u0111\\u1ecba ph\\u01b0\\u01a1ng r\\u1eb1ng quy t\\u1eafc \\u0111\\u01b0\\u1ee3c \\u0111\\u01b0a ra \\u0111\\u1ec3 ng\\u0103n ch\\u1eb7n h\\u1ecdc sinh t&aacute;n t\\u1ec9nh nhau t\\u1eeb vi\\u1ec7c b&oacute;n cho nhau \\u0103n, m\\u1ed9t h&agrave;nh vi r\\u1ea5t ph\\u1ed5 bi\\u1ebfn.<\\/p>\\r\\n<\\/article>\\r\\n\\r\\n<p class=\\\"author_mail\\\"><strong>D\\u01b0\\u01a1ng T&acirc;m<\\/strong><\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"tags\":[null],\"categories\":[\"5\",null],\"cmt_allow\":\"on\",\"_token\":\"DUBgNXEmapJYKMjyjnka3wPKrPrXyMCr4YCoRfzb\",\"after-save\":\"2\"}', '2019-03-18 14:35:41', '2019-03-18 14:35:41'),
(611, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-18 14:35:42', '2019-03-18 14:35:42'),
(612, 2, 'admin/posts/create', 'GET', '127.0.0.1', '[]', '2019-03-19 22:16:29', '2019-03-19 22:16:29'),
(613, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-19 22:23:00', '2019-03-19 22:23:00'),
(614, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-03-22 12:35:36', '2019-03-22 12:35:36'),
(615, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 14:05:11', '2019-03-22 14:05:11'),
(616, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-22 14:05:17', '2019-03-22 14:05:17'),
(617, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2019-03-24 08:25:50', '2019-03-24 08:25:50'),
(618, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-03-24 08:33:33', '2019-03-24 08:33:33'),
(619, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/dom-rule\"}', '2019-03-24 08:41:41', '2019-03-24 08:41:41'),
(620, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:41:43', '2019-03-24 08:41:43'),
(621, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-24 08:42:12', '2019-03-24 08:42:12'),
(622, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:42:13', '2019-03-24 08:42:13'),
(623, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:42:41', '2019-03-24 08:42:41'),
(624, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/dom-rule\"}', '2019-03-24 08:42:47', '2019-03-24 08:42:47'),
(625, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:42:47', '2019-03-24 08:42:47'),
(626, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"_method\":\"PUT\"}', '2019-03-24 08:43:59', '2019-03-24 08:43:59'),
(627, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:43:59', '2019-03-24 08:43:59'),
(628, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-24 08:44:26', '2019-03-24 08:44:26'),
(629, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:44:26', '2019-03-24 08:44:26'),
(630, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-24 08:44:52', '2019-03-24 08:44:52'),
(631, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:44:53', '2019-03-24 08:44:53'),
(632, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-24 08:45:05', '2019-03-24 08:45:05'),
(633, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:45:05', '2019-03-24 08:45:05'),
(634, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-24 08:45:32', '2019-03-24 08:45:32'),
(635, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:45:33', '2019-03-24 08:45:33'),
(636, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"title_filter\":null,\"link_filter\":null,\"cover_filter\":null,\"cover_filter_attr\":\"src\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\".featured_home_sh  > h1.title_news\\\",\\\"link_filter\\\":\\\".featured_home_sh > article > a\\\",\\\"cover_filter\\\":\\\".featured_home_sh > article >  div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".side_featured > article > h4.title_news\\\",\\\"link_filter\\\":\\\".side_featured > article > div > a\\\",\\\"cover_filter\\\":\\\".side_featured > article > div > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"},{\\\"title_filter\\\":\\\".list_news > h4.title_news\\\",\\\"link_filter\\\":\\\".list_news > h4.title_news > a\\\",\\\"cover_filter\\\":\\\".list_news > div.thumb_art > a > img\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"kISZBZJhsFWHCVbnpNimuHfFlpwE1pmIjxj0rZ2R\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-24 08:46:19', '2019-03-24 08:46:19'),
(637, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-24 08:46:20', '2019-03-24 08:46:20'),
(638, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-30 07:29:02', '2019-03-30 07:29:02'),
(639, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-30 07:44:02', '2019-03-30 07:44:02'),
(640, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-30 07:44:19', '2019-03-30 07:44:19'),
(641, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-30 09:40:17', '2019-03-30 09:40:17'),
(642, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-31 07:28:23', '2019-03-31 07:28:23'),
(643, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-31 08:40:31', '2019-03-31 08:40:31'),
(644, 2, 'admin/dom-rule/1', 'PUT', '127.0.0.1', '{\"type\":\"list\",\"rule_name\":\"Rule for sohoa.vnexpress.net\",\"list_element\":\"section.container > section.sidebar_1 > article.list_news\",\"title_filter\":\"h4.title_news\",\"link_filter\":\"h4.title_news > a@href\",\"cover_filter\":\"div.thumb_art > a > img@data-original\",\"cover_filter_attr\":\"data-original\",\"dom_parse_rule\":\"{\\\"list\\\":[{\\\"title_filter\\\":\\\"div.thumb_big > a.thumb > h1.title_news\\\",\\\"link_filter\\\":\\\"div.thumb_big > a.thumb@href\\\",\\\"cover_filter\\\":\\\"div.thumb_big > a.thumb > img.vne_lazy_image@data-original\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\",\\\"list_element\\\":\\\"section.featured_home_sh > article\\\"},{\\\"title_filter\\\":\\\"div.thumb_big a.thumb > h4.title_news\\\",\\\"link_filter\\\":\\\"div.thumb_big > a.thumb@href\\\",\\\"cover_filter\\\":\\\"div.thumb_big > a.thumb > img.vne_lazy_image@data-original\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\",\\\"list_element\\\":\\\"div.side_featured > article\\\"},{\\\"title_filter\\\":\\\"h4.title_news\\\",\\\"link_filter\\\":\\\"h4.title_news > a@href\\\",\\\"cover_filter\\\":\\\"div.thumb_art > a > img@data-original\\\",\\\"cover_filter_attr\\\":\\\"data-original\\\",\\\"list_element\\\":\\\"section.container > section.sidebar_1 > article.list_news\\\"}],\\\"detail\\\":{\\\"title\\\":\\\".sidebar_1 > h1.title_news_detail \\\",\\\"description\\\":\\\".sidebar_1 > p.description\\\",\\\"content\\\":\\\".sidebar_1 > article.content_detail\\\"}}\",\"replace_rule\":\"{}\",\"_token\":\"Vtt8u7NZejsunaP1q28z4d21pyYWvOH4CdMya0W8\",\"after-save\":\"1\",\"_method\":\"PUT\"}', '2019-03-31 08:50:46', '2019-03-31 08:50:46'),
(645, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-03-31 08:50:46', '2019-03-31 08:50:46'),
(646, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-07 03:32:53', '2019-04-07 03:32:53'),
(647, 2, 'admin/dom-rule/1/edit', 'GET', '127.0.0.1', '[]', '2019-04-08 13:38:06', '2019-04-08 13:38:06'),
(648, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-08 13:40:30', '2019-04-08 13:40:30'),
(649, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-08 13:40:51', '2019-04-08 13:40:51'),
(650, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2019-04-12 23:36:43', '2019-04-12 23:36:43'),
(651, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 00:10:37', '2019-04-13 00:10:37'),
(652, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 00:10:41', '2019-04-13 00:10:41'),
(653, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 00:14:56', '2019-04-13 00:14:56'),
(654, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 00:15:00', '2019-04-13 00:15:00'),
(655, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 00:15:18', '2019-04-13 00:15:18'),
(656, 2, 'admin/dom-rule', 'GET', '127.0.0.1', '[]', '2019-04-13 00:15:22', '2019-04-13 00:15:22'),
(657, 2, 'admin/posts/18/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 00:15:56', '2019-04-13 00:15:56'),
(658, 2, 'admin/posts/18', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"B\\u1ed9 ba laptop Acer Swift v\\u1ec1 Vi\\u1ec7t Nam, gi\\u00e1 t\\u1eeb 10 tri\\u1ec7u \\u0111\\u1ed3ng \\u00a0\",\"slug\":\"bo-ba-laptop-acer-swift-ve-viet-nam-gia-tu-10-trieu-dong-\",\"description\":\"Swift 1, Swift 3, Swift 5 Air Edition h\\u01b0\\u1edbng \\u0111\\u1ebfn nhu c\\u1ea7u kh\\u00e1c nhau c\\u1ee7a ng\\u01b0\\u1eddi d\\u00f9ng, t\\u1eeb s\\u1ef1 t\\u1ed1i gi\\u1ea3n, gi\\u00e1 t\\u1ed1t \\u0111\\u1ebfn c\\u1ea5u h\\u00ecnh m\\u1ea1nh, hi\\u1ec7u n\\u0103ng cao.\",\"content\":\"<p>Ra m\\u1eaft \\u0111\\u1ea7u 2019, b\\u1ed9 ba laptop m\\u1edbi g\\u1ed3m&nbsp;Swift 1 (ngo&agrave;i c&ugrave;ng b&ecirc;n tr&aacute;i), Swift 3 (\\u1edf gi\\u1eefa), Swift 5 Air Edition (ngo&agrave;i c&ugrave;ng b&ecirc;n ph\\u1ea3i) nhanh ch&oacute;ng c&oacute; m\\u1eb7t t\\u1ea1i Vi\\u1ec7t Nam. B\\u1ed9 ba l&agrave; b\\u1ea3n n&acirc;ng c\\u1ea5p cho c&aacute;c thi\\u1ebft b\\u1ecb c&ugrave;ng t&ecirc;n tr\\u01b0\\u1edbc \\u0111&oacute;. Trong s\\u1ed1 \\u0111&oacute;,&nbsp;Swift 1 l&agrave; s\\u1ea3n ph\\u1ea9m c&oacute; gi&aacute; ph\\u1ea3i ch\\u0103ng nh\\u1ea5t v\\u1edbi 9,99 tri\\u1ec7u \\u0111\\u1ed3ng, h\\u01b0\\u1edbng \\u0111\\u1ebfn s\\u1ef1 t\\u1ed1i gi\\u1ea3n, ch\\u1ee7 y\\u1ebfu ph\\u1ee5c v\\u1ee5 ng\\u01b0\\u1eddi d&ugrave;ng \\u1edf nhu c\\u1ea7u c\\u01a1 b\\u1ea3n. M&aacute;y c&oacute; thi\\u1ebft k\\u1ebf v\\u1ecf nh&ocirc;m nguy&ecirc;n kh\\u1ed1i, d&agrave;y 14,95 mm, m&agrave;n h&igrave;nh&nbsp;14 inch \\u0111\\u1ed9 ph&acirc;n gi\\u1ea3i Full HD, vi\\u1ec1n m\\u1ecfng ch\\u1ec9 6,3 mm, hi\\u1ec3n th\\u1ecb s\\u1eafc n&eacute;t nh\\u01b0ng kh&aacute; t\\u1ed1i trong \\u0111i\\u1ec1u ki\\u1ec7n &aacute;nh s&aacute;ng m\\u1ea1nh. Swift 1 \\u0111\\u01b0\\u1ee3c trang b\\u1ecb c\\u1ea5u h&igrave;nh c\\u01a1 b\\u1ea3n, ch\\u1ee7 y\\u1ebfu cho ng\\u01b0\\u1eddi d&ugrave;ng v\\u0103n ph&ograve;ng ho\\u1eb7c h\\u1ecdc sinh sinh vi&ecirc;n, g\\u1ed3m chip x\\u1eed l&yacute; Intel Pentium Silver N5000\\/Celeron Silver N4000 , b\\u1ed9 nh\\u1edb RAM 4 GB, \\u1ed5 c\\u1ee9ng SSD 64 GB (c&oacute; th\\u1ec3 n&acirc;ng c\\u1ea5p t\\u1ed1i \\u0111a l&ecirc;n 512 GB). So v\\u1edbi t\\u1ea7m gi&aacute;, th&ocirc;ng s\\u1ed1 thi\\u1ebft b\\u1ecb c&oacute; ph\\u1ea7n y\\u1ebfu h\\u01a1n HP 15-da0051TU hay Lenovo Ideapad 330-15IKB v\\u1ed1n c&oacute; m&agrave;n h&igrave;nh 15,6 inch, chip Core i3, HDD 500 GB.&nbsp;\\u0110\\u1ed5i l\\u1ea1i, Swift 1 h\\u1ed7 tr\\u1ee3 SSD, thi\\u1ebft k\\u1ebf m&agrave;n h&igrave;nh vi\\u1ec1n m\\u1ecfng, c\\u1ea3m bi\\u1ebfn v&acirc;n tay c\\u0169ng nh\\u01b0 ngu\\u1ed3n pin cho th\\u1eddi gian s\\u1eed d\\u1ee5ng l&ecirc;n \\u0111\\u1ebfn 20 gi\\u1edd li&ecirc;n t\\u1ee5c. M&aacute;y c&oacute; hai m&agrave;u l&agrave; Luxury Gold v&agrave; Aqua Green. Trong khi \\u0111&oacute;, Swift 3 h\\u01b0\\u1edbng \\u0111\\u1ebfn ph&acirc;n kh&uacute;c t\\u1ea7m trung. Thi\\u1ebft b\\u1ecb c&oacute; thi\\u1ebft k\\u1ebf nh&ocirc;m nguy&ecirc;n kh\\u1ed1i,&nbsp;tr\\u1ecdng l\\u01b0\\u1ee3ng 1,5 kg v&agrave; kh&aacute; d&agrave;y v\\u1edbi 18,7 mm. Laptop c\\u1ee7a Acer c&oacute; hai l\\u1ef1a ch\\u1ecdn k&iacute;ch c\\u1ee1 m&agrave;n h&igrave;nh l&agrave; 14 inch v&agrave; 15 inch. M&agrave;n h&igrave;nh m&aacute;y c&oacute; vi\\u1ec1n m\\u1ecfng 6,3 mm, \\u0111\\u1ed9 ph&acirc;n gi\\u1ea3i Full HD v&agrave; d&ugrave;ng t\\u1ea5m n\\u1ec1n IPS t\\u01b0\\u01a1ng t\\u1ef1 Swift 1. Vi\\u1ec7c hi\\u1ec3n th\\u1ecb ngo&agrave;i tr\\u1eddi ch\\u01b0a th\\u1ef1c s\\u1ef1 t\\u1ed1t. B&ugrave; l\\u1ea1i, trong nh&agrave;, h&igrave;nh \\u1ea3nh tr&ecirc;n m&agrave;n h&igrave;nh kh&aacute; \\u0111\\u1eb9p, m&agrave;u s\\u1eafc s\\u1eb7c s\\u1ee1 v&agrave; \\u0111\\u1ed9 t\\u01b0\\u01a1ng ph\\u1ea3n cao. Tuy nhi&ecirc;n, Swift 3 c&oacute; c\\u1ea5u h&igrave;nh m\\u1ea1nh h\\u01a1n Swift 1 kh&aacute; nhi\\u1ec1u, v\\u1edbi x\\u1eed l&yacute; Intel th\\u1ebf h\\u1ec7 th\\u1ee9 8, l\\u01b0u tr\\u1eef k&eacute;p HDD\\/SDD (n&acirc;ng c\\u1ea5p t\\u1ed1i \\u0111a 2TB HDD, 512GB SSD), RAM t\\u1ed1i \\u0111a 16 GB. \\u0110&acirc;y l&agrave; c\\u1ea5u h&igrave;nh kh&aacute; t\\u1ed1t trong t\\u1ea7m gi&aacute; 15 tri\\u1ec7u \\u0111\\u1ed3ng, c\\u1ea1nh tranh tr\\u1ef1c ti\\u1ebfp v\\u1edbi HP Pavilion 14-ce1008TU (15,3 tri\\u1ec7u \\u0111\\u1ed3ng) hay Dell Inspiron N3576 (14,99 tri\\u1ec7u \\u0111\\u1ed3ng). M&aacute;y c&oacute; b&agrave;n ph&iacute;m full-size chiclet cho kh\\u1ea3 n\\u0103ng g&otilde; kh&aacute; t\\u1ed1t, c\\u1ed9ng th&ecirc;m \\u0111&egrave;n b&agrave;n ph&iacute;m gi&uacute;p thao t&aacute;c trong \\u0111&ecirc;m t\\u1ed1t h\\u01a1n. Trackpad r\\u1ed9ng gi&uacute;p thao t&aacute;c d\\u1ec5 d&agrave;ng, nh\\u01b0ng \\u0111\\u1ed9 nh\\u1ea1y ch\\u01b0a cao v&agrave; ph\\u1ea7n m\\u1ec1m h\\u1ed7 tr\\u1ee3 ch\\u01b0a th\\u1ef1c s\\u1ef1 \\u1ed5n \\u0111\\u1ecbnh. Ri&ecirc;ng pin c\\u1ee7a Swift 3 cho th\\u1eddi gian s\\u1eed d\\u1ee5ng kho\\u1ea3ng 10 ti\\u1ebfng. Swift 5 Air Edition l&agrave; phi&ecirc;n b\\u1ea3n m\\u1ea1nh nh\\u1ea5t v&agrave; c\\u0169ng l&agrave; thi\\u1ebft b\\u1ecb \\u0111\\u1eaft ti\\u1ec1n nh\\u1ea5t trong d&ograve;ng Swift m\\u1edbi ra m\\u1eaft t\\u1ea1i Vi\\u1ec7t Nam c\\u1ee7a Acer, v\\u1edbi gi&aacute; 25,69 tri\\u1ec7u \\u0111\\u1ed3ng. M&aacute;y c&oacute; tr\\u1ecdng l\\u01b0\\u1ee3ng 940 gram, nh\\u1eb9 h\\u01a1n c\\u1ea3 LG Gram (970 gram) hay Asus Zenbook UX333FA-A4011T (1,19 kg). \\u0110\\u1ec3 c&oacute; tr\\u1ecdng l\\u01b0\\u1ee3ng \\u0111&oacute;, Acer \\u0111&atilde; \\u0111\\u01b0a v&agrave;o h\\u1ee3p kim Magie Lithium thay v&igrave; nh&ocirc;m \\u0111\\u1ec3 l&agrave;m v\\u1ecf m&aacute;y. Tuy nhi&ecirc;n, s\\u1ea3n ph\\u1ea9m v\\u1eabn kh&aacute; d&agrave;y v\\u1edbi 14,9 mm. Swift 5 Air Edition \\u0111\\u01b0\\u1ee3c trang b\\u1ecb m&agrave;n h&igrave;nh c\\u1ea3m \\u1ee9ng \\u0111a \\u0111i\\u1ec3m \\u0111\\u1ed9 ph&acirc;n gi\\u1ea3i Full HD, t\\u1ea5m n\\u1ec1n IPS, vi\\u1ec1n d&agrave;y 8,9mm v&agrave; c&oacute; th\\u1ec3 g\\u1eadp ng\\u1eeda 180 \\u0111\\u1ed9. V\\u1ec1 c\\u1ea5u h&igrave;nh, laptop Acer ch\\u1ea1y x\\u1eed l&yacute; Intel Core i5\\/i7 m\\u1edbi nh\\u1ea5t, RAM 8 GB, \\u1ed5 c\\u1ee9ng SSD 256 GB (c&oacute; th\\u1ec3 n&acirc;ng c\\u1ea5p t\\u1ed1i \\u0111a 512 GB SSD). C&aacute;c thi\\u1ebft b\\u1ecb \\u0111\\u1ed1i th\\u1ee7 c&oacute; c\\u1ea5u h&igrave;nh t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng c&oacute; th\\u1ec3 k\\u1ec3 \\u0111\\u1ebfn Dell N5570A, Lenovo Legion Y530-15ICH (c&ugrave;ng 25 tri\\u1ec7u \\u0111\\u1ed3ng) hay HP Envy X360 (26,9 tri\\u1ec7u \\u0111\\u1ed3ng). D&ograve;ng laptop Swift \\u0111\\u01b0\\u1ee3c trang b\\u1ecb \\u0111\\u1ea7y \\u0111\\u1ee7 c\\u1ed5ng k\\u1ebft n\\u1ed1i c\\u01a1 b\\u1ea3n nh\\u01b0&nbsp;USB 3.1, USB Type C, HDMI, khe \\u0111\\u1ecdc th\\u1ebb nh\\u1edb. Ngo&agrave;i ra, ch&uacute;ng c\\u0169ng c&oacute; c&aacute;c k\\u1ebft n\\u1ed1i kh&ocirc;ng d&acirc;y ph\\u1ed5 bi\\u1ebfn nh\\u01b0 Wi-Fi, Bluetooth. B\\u1ea3o L&acirc;m<\\/p>\",\"tags\":[null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"tAyjKUhn9oJW3a12WqxmISkUoykzaAJrL0T3e3HN\",\"after-save\":\"1\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 00:16:46', '2019-04-13 00:16:46'),
(659, 2, 'admin/posts/18/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 00:16:46', '2019-04-13 00:16:46'),
(660, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 00:17:39', '2019-04-13 00:17:39'),
(661, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 00:18:24', '2019-04-13 00:18:24'),
(662, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:07:06', '2019-04-13 08:07:06'),
(663, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:28:51', '2019-04-13 08:28:51'),
(664, 2, 'admin/posts/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:28:53', '2019-04-13 08:28:53'),
(665, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:28:56', '2019-04-13 08:28:56'),
(666, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-13 08:30:38', '2019-04-13 08:30:38'),
(667, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:30:42', '2019-04-13 08:30:42'),
(668, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:30:46', '2019-04-13 08:30:46'),
(669, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:30:46', '2019-04-13 08:30:46'),
(670, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:31:16', '2019-04-13 08:31:16'),
(671, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:31:21', '2019-04-13 08:31:21'),
(672, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:31:22', '2019-04-13 08:31:22'),
(673, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:33:00', '2019-04-13 08:33:00'),
(674, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:33:01', '2019-04-13 08:33:01'),
(675, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:33:39', '2019-04-13 08:33:39'),
(676, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:33:43', '2019-04-13 08:33:43'),
(677, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:33:44', '2019-04-13 08:33:44'),
(678, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:34:45', '2019-04-13 08:34:45'),
(679, 2, 'admin/url-craw/1', 'PUT', '127.0.0.1', '{\"url\":\"https:\\/\\/sohoa.vnexpress.net\\/\",\"domain\":\"vnexpress.net\",\"categories\":[\"3\",null],\"rule\":\"1\",\"cron_rule\":null,\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/url-craw\"}', '2019-04-13 08:34:52', '2019-04-13 08:34:52'),
(680, 2, 'admin/url-craw', 'GET', '127.0.0.1', '[]', '2019-04-13 08:34:53', '2019-04-13 08:34:53'),
(681, 2, 'admin/url-craw/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:34:55', '2019-04-13 08:34:55'),
(682, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:38:18', '2019-04-13 08:38:18'),
(683, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-13 08:38:33', '2019-04-13 08:38:33'),
(684, 2, 'admin/url-craw', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:38:42', '2019-04-13 08:38:42'),
(685, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:43:47', '2019-04-13 08:43:47'),
(686, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:43:54', '2019-04-13 08:43:54'),
(687, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:46:48', '2019-04-13 08:46:48'),
(688, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:46:58', '2019-04-13 08:46:58'),
(689, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:47:12', '2019-04-13 08:47:12'),
(690, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:48:02', '2019-04-13 08:48:02'),
(691, 2, 'admin/posts/20', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\"}', '2019-04-13 08:48:37', '2019-04-13 08:48:37'),
(692, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:48:38', '2019-04-13 08:48:38'),
(693, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:51:25', '2019-04-13 08:51:25'),
(694, 2, 'admin/posts/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:51:36', '2019-04-13 08:51:36'),
(695, 2, 'admin/posts/17', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"title\":\"Asus s\\u1eafp ra \\u0111i\\u1ec7n tho\\u1ea1i tr\\u01b0\\u1ee3t hai \\u0111\\u1ea7u \\u00a0\",\"slug\":\"asus-sap-ra-dien-thoai-truot-hai-dau-\",\"description\":\"Smartphone c\\u1ee7a Asus c\\u00f3 th\\u1ec3 tr\\u01b0\\u1ee3t l\\u00ean \\u0111\\u1ec3 m\\u1edf camera tr\\u01b0\\u1edbc, tr\\u01b0\\u1ee3t xu\\u1ed1ng \\u0111\\u1ec3 b\\u1eadt loa ch\\u1ea5t l\\u01b0\\u1ee3ng cao.\",\"content\":\"<p>&quot;&Ocirc;ng tr&ugrave;m tin \\u0111\\u1ed3n&quot; Evan Blass \\u0111\\u0103ng tr&ecirc;n Twitter lo\\u1ea1t thi\\u1ebft b\\u1ecb m\\u1edbi \\u0111ang \\u0111\\u01b0\\u1ee3c Asus th\\u1eed nghi\\u1ec7m. M\\u1ed9t trong s\\u1ed1 n&agrave;y l&agrave; m\\u1eabu \\u0111i\\u1ec7n tho\\u1ea1i m&agrave;n h&igrave;nh tr&agrave;n vi\\u1ec1n, kh&ocirc;ng c&oacute; &quot;tai th\\u1ecf&quot;. Khi tr\\u01b0\\u1ee3t m&agrave;n h&igrave;nh c\\u1ee7a m&aacute;y xu\\u1ed1ng s\\u1ebd \\u0111\\u1ec3 l\\u1ed9 ra c\\u1ee5m camera selfie k&eacute;p v\\u1edbi m\\u1ed9t \\u1ed1ng k&iacute;nh g&oacute;c r\\u1ed9ng 120 \\u0111\\u1ed9. Smartphone Asus c&oacute; th\\u1ec3 tr\\u01b0\\u1ee3t \\u0111\\u1ec3 l\\u1ed9 ra&nbsp;camera selfie v&agrave; loa. C&ograve;n khi tr\\u01b0\\u1ee3t m&agrave;n h&igrave;nh l&ecirc;n, loa &quot;h&agrave;ng hi\\u1ec7u&quot; Harman Kardon s\\u1ebd \\u0111\\u01b0\\u1ee3c k&iacute;ch ho\\u1ea1t. \\u0110i\\u1ec7n tho\\u1ea1i n&agrave;y c\\u1ee7a Asus \\u0111\\u01b0\\u1ee3c cho l&agrave; h\\u1ed7 tr\\u1ee3 m\\u1ea1ng 5G, c&oacute; m&aacute;y qu&eacute;t v&acirc;n tay trong m&agrave;n h&igrave;nh. Theo Blass, ng\\u01b0\\u1eddi r&ograve; r\\u1ec9 th&ocirc;ng tin l&agrave; th&agrave;nh vi&ecirc;n trong nh&oacute;m ph&aacute;t tri\\u1ec3n ZenFone 5. M\\u1ed9t thi\\u1ebft b\\u1ecb kh&aacute;c c\\u1ee7a Asus c\\u0169ng c&oacute; c\\u01a1 ch\\u1ebf tr\\u01b0\\u1ee3t hai \\u0111\\u1ea7u v\\u1edbi ph\\u1ea7n tr&ecirc;n l&agrave; camera selfie k&eacute;p. C\\u1ea1nh d\\u01b0\\u1edbi l&agrave; m\\u1ed9t m&agrave;n h&igrave;nh ph\\u1ee5, s\\u1ebd hi\\u1ec3n th\\u1ecb c&aacute;c ch\\u1ee9c n\\u0103ng t\\u01b0\\u01a1ng \\u1ee9ng v\\u1edbi \\u1ee9ng d\\u1ee5ng \\u0111ang ch\\u1ea1y tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh. H&igrave;nh \\u1ea3nh render xu\\u1ea5t hi\\u1ec7n v\\u1edbi t&iacute;nh n\\u0103ng camera th&igrave; m&agrave;n h&igrave;nh ph\\u1ee5 c&oacute; c&aacute;c n&uacute;t \\u0111i\\u1ec1u ch\\u1ec9nh EV, ph&iacute;m ch\\u1ee5p. Thi\\u1ebft b\\u1ecb n&agrave;y t&iacute;ch h\\u1ee3p m&aacute;y qu&eacute;t v&acirc;n tay \\u1edf m\\u1eb7t sau m&aacute;y. Thi\\u1ebft b\\u1ecb Asus kh&aacute;c v\\u1edbi m&agrave;n h&igrave;nh ph\\u1ee5. G\\u1ea7n \\u0111&acirc;y, c&aacute;c nh&agrave; s\\u1ea3n xu\\u1ea5t t&igrave;m c&aacute;c gi\\u1ea3i ph&aacute;p kh&aacute;c nhau nh\\u1eb1m t\\u0103ng t\\u1ef7 l\\u1ec7 m&agrave;n h&igrave;nh so v\\u1edbi m\\u1eb7t tr\\u01b0\\u1edbc m&agrave; kh&ocirc;ng c\\u1ea7n &quot;tai th\\u1ecf&quot; hay &quot;n\\u1ed1t ru\\u1ed3i&quot;. Oppo hay Vivo \\u0111\\u1ec1u \\u0111&atilde; ra smartphone c&oacute; camera tr\\u01b0\\u1edbc &quot;th&ograve; th\\u1ee5t&quot;. Trong khi \\u0111&oacute; Reno (th\\u01b0\\u01a1ng hi\\u1ec7u con c\\u1ee7a Oppo) s\\u1eafp ra \\u0111i\\u1ec7n tho\\u1ea1i c&oacute; camera tr\\u01b0\\u1edbc b\\u1eadt l&ecirc;n. B\\u1ea3o Anh (theo PhoneArena)<\\/p>\",\"tags\":[\"14\",null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:51:50', '2019-04-13 08:51:50'),
(696, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:51:51', '2019-04-13 08:51:51'),
(697, 2, 'admin/posts/16/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 08:51:56', '2019-04-13 08:51:56'),
(698, 2, 'admin/posts/15/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 08:51:58', '2019-04-13 08:51:58'),
(699, 2, 'admin/posts/14/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 08:51:59', '2019-04-13 08:51:59'),
(700, 2, 'admin/posts/13/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 08:52:01', '2019-04-13 08:52:01'),
(701, 2, 'admin/posts/12/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 08:52:02', '2019-04-13 08:52:02'),
(702, 2, 'admin/posts/11/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 08:52:04', '2019-04-13 08:52:04'),
(703, 2, 'admin/posts/10/edit', 'GET', '127.0.0.1', '[]', '2019-04-13 08:52:05', '2019-04-13 08:52:05');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(704, 2, 'admin/posts/16', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"title\":\"C\\u00f4ng nh\\u00e2n v\\u1ec7 sinh Trung Qu\\u1ed1c ph\\u1ea3i \\u0111eo m\\u00e1y GPS \\u00a0\",\"slug\":\"cong-nhan-ve-sinh-trung-quoc-phai-deo-may-gps-\",\"description\":\"N\\u1ebfu kh\\u00f4ng di chuy\\u1ec3n qu\\u00e1 20 ph\\u00fat, chi\\u1ebfc v\\u00f2ng th\\u00f4ng minh m\\u00e0 c\\u00e1c c\\u00f4ng nh\\u00e2n \\u0111eo \\u1edf tay s\\u1ebd ph\\u00e1t gi\\u1ecdng n\\u00f3i nh\\u1eafc nh\\u1edf h\\u1ecd ph\\u1ea3i ti\\u1ebfp t\\u1ee5c l\\u00e0m vi\\u1ec7c.\",\"content\":\"<p>M\\u1ed9t c&ocirc;ng ty d\\u1ecbch v\\u1ee5 m&ocirc;i tr\\u01b0\\u1eddng \\u1edf t\\u1ec9nh Giang T&ocirc;, mi\\u1ec1n \\u0111&ocirc;ng Trung Qu\\u1ed1c \\u0111&atilde; b\\u1eaft \\u0111\\u1ea7u s\\u1eed d\\u1ee5ng v&ograve;ng \\u0111eo tay th&ocirc;ng minh \\u0111\\u1ec3 gi&aacute;m s&aacute;t nh&acirc;n vi&ecirc;n c\\u1ee7a m&igrave;nh t\\u1eeb th&aacute;ng 3.&nbsp;C&aacute;c thi\\u1ebft b\\u1ecb s\\u1ebd g\\u1eedi th&ocirc;ng b&aacute;o v\\u1ec1 h\\u1ec7 th\\u1ed1ng khi ph&aacute;t hi\\u1ec7n c&oacute; ng\\u01b0\\u1eddi kh&ocirc;ng chuy\\u1ec3n \\u0111\\u1ed9ng trong h\\u01a1n 20 ph&uacute;t. M\\u1ed9t th&ocirc;ng b&aacute;o nh\\u1eafc nh\\u1edf b\\u1eb1ng gi\\u1ecdng n&oacute;i c\\u0169ng \\u0111\\u01b0\\u1ee3c g\\u1eedi t\\u1edbi nh&acirc;n vi&ecirc;n \\u0111\\u1ec3 y&ecirc;u c\\u1ea7u h\\u1ecd ti\\u1ebfp t\\u1ee5c l&agrave;m vi\\u1ec7c ch\\u0103m ch\\u1ec9 h\\u01a1n. V&ograve;ng \\u0111eo tay c\\u1ee7a c&ocirc;ng nh&acirc;n c&ocirc;ng ty m&ocirc;i tr\\u01b0\\u1eddng Trung Qu\\u1ed1c. \\u1ea2nh: Thecover.cn. Ph&oacute; ch\\u1ee7 t\\u1ecbch c&ocirc;ng ty Zhang Dongzhong cho bi\\u1ebft, ban \\u0111\\u1ea7u, ch\\u01b0\\u01a1ng tr&igrave;nh n&agrave;y \\u0111\\u01b0\\u1ee3c tri\\u1ec3n khai v\\u1edbi m\\u1ee5c \\u0111&iacute;ch gi\\u1ea3m chi ph&iacute; qu\\u1ea3n l&yacute;, t\\u0103ng n\\u0103ng su\\u1ea5t l&agrave;m vi\\u1ec7c. Tuy nhi&ecirc;n, ch\\u1ee9c n\\u0103ng nh\\u1eafc vi\\u1ec7c c\\u1ee7a n&oacute; \\u0111&atilde; b\\u1ecb g\\u1ee1 b\\u1ecf v&agrave;o ng&agrave;y 4\\/4 do v\\u1ea5p ph\\u1ea3i s\\u1ef1 ph\\u1ea3n \\u0111\\u1ed1i m\\u1ea1nh m\\u1ebd c\\u1ee7a c&aacute;c c&ocirc;ng nh&acirc;n v&agrave; ng\\u01b0\\u1eddi d&ugrave;ng tr&ecirc;n m\\u1ea1ng Internet. &quot;Ch\\u01b0\\u01a1ng tr&igrave;nh n&agrave;y \\u0111&atilde; c\\u1ea3i thi\\u1ec7n \\u0111&aacute;ng k\\u1ec3 hi\\u1ec7u qu\\u1ea3 c\\u1ee7a vi\\u1ec7c v\\u1ec7 sinh th&agrave;nh ph\\u1ed1&quot;, &ocirc;ng Zhang n&oacute;i. M\\u1eb7c d&ugrave; c&aacute;c thi\\u1ebft b\\u1ecb kh&ocirc;ng c&ograve;n nh\\u1eafc nh\\u1edf c&ocirc;ng nh&acirc;n ti\\u1ebfp t\\u1ee5c di chuy\\u1ec3n v&agrave; l&agrave;m vi\\u1ec7c, ch&uacute;ng v\\u1eabn \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng nh\\u01b0 m\\u1ed9t c&aacute;ch \\u0111\\u1ec3 ph&aacute;t hi\\u1ec7n v\\u1ecb tr&iacute; c\\u1ee7a c&ocirc;ng nh&acirc;n v\\u1ec7 sinh v&agrave; \\u0111\\u1ea3m b\\u1ea3o h\\u1ecd v\\u1eabn \\u1edf trong khu v\\u1ef1c l&agrave;m vi\\u1ec7c \\u0111\\u01b0\\u1ee3c ch\\u1ec9 \\u0111\\u1ecbnh. Tr\\u01b0\\u1edbc \\u0111&oacute;, trong m\\u1ed9t video \\u0111\\u01b0\\u1ee3c th\\u1ef1c hi\\u1ec7n h&ocirc;m 3\\/4 b\\u1edfi \\u0110&agrave;i truy\\u1ec1n h&igrave;nh Giang T&ocirc;, h&igrave;nh \\u1ea3nh t\\u1eeb trung t&acirc;m ch\\u1ec9 huy c\\u1ee7a c&ocirc;ng ty cho th\\u1ea5y h\\u1ecd c&oacute; m\\u1ed9t m&agrave;n h&igrave;nh l\\u1edbn treo tr&ecirc;n t\\u01b0\\u1eddng \\u0111\\u1ec3 theo d&otilde;i c&aacute;c c&ocirc;ng nh&acirc;n v\\u1ec7 sinh d\\u01b0\\u1edbi bi\\u1ec3u t\\u01b0\\u1ee3ng c\\u1ee7a m\\u1ed9t d\\u1ea5u ch\\u1ea5m. Thi\\u1ebft b\\u1ecb n&agrave;y c&oacute;&nbsp;ba ch\\u1ee9c n\\u0103ng v&agrave; khi \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng c&ugrave;ng l&uacute;c, cho ph&eacute;p gi&aacute;m s&aacute;t to&agrave;n b\\u1ed9 nh&acirc;n vi&ecirc;n c\\u1ee7a c&ocirc;ng ty. B\\u1ea3n \\u0111\\u1ed3 hi\\u1ec3n th\\u1ecb s\\u1ed1 c&ocirc;ng nh&acirc;n v\\u1ec7 sinh trong c&ocirc;ng ty m&ocirc;i tr\\u01b0\\u1eddng. M\\u1ed9t s\\u1ed1 c&ocirc;ng nh&acirc;n v\\u1ec7 sinh gi\\u1ea5u t&ecirc;n cho bi\\u1ebft kh&ocirc;ng \\u1ee7ng h\\u1ed9 bi\\u1ec7n ph&aacute;p m\\u1edbi n&agrave;y.&nbsp;&quot;T&ocirc;i th\\u1ea5y r&aacute;c tr&ecirc;n \\u0111\\u01b0\\u1eddng ph\\u1ed1 v&agrave; t&ocirc;i nh\\u1eb7t n&oacute; l&ecirc;n. Th\\u1eadt \\u0111i&ecirc;n r\\u1ed3 khi \\u0111\\u01b0\\u1eddng ph\\u1ed1 s\\u1ea1ch s\\u1ebd r\\u1ed3i m&agrave; v\\u1eabn b\\u1eaft ch&uacute;ng t&ocirc;i \\u0111i qua \\u0111i l\\u1ea1i&quot;, m\\u1ed9t c&ocirc;ng nh&acirc;n n&oacute;i. C&ograve;n theo nhi\\u1ec1u ng\\u01b0\\u1eddi d&ugrave;ng tr&ecirc;n trang m\\u1ea1ng x&atilde; h\\u1ed9i Weibo, h\\u1ecd kh&ocirc;ng ch\\u1ec9 mu\\u1ed1n lo\\u1ea1i b\\u1ecf ch\\u1ee9c n\\u0103ng nh\\u1eafc vi\\u1ec7c m&agrave; c&ograve;n k&ecirc;u g\\u1ecdi ch\\u1ea5m d\\u1ee9t to&agrave;n b\\u1ed9 ch\\u01b0\\u01a1ng tr&igrave;nh. &quot;T\\u1ea1i sao kh&ocirc;ng d&ugrave;ng s\\u1ed1 ti\\u1ec1n tri\\u1ec3n khai ch\\u01b0\\u01a1ng tr&igrave;nh n&agrave;y \\u0111\\u1ec3 tr\\u1ea3 cho ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng? T\\u1ea5t c\\u1ea3 c&aacute;c bi\\u1ec7n ph&aacute;p \\u0111\\u1ec1u hi v\\u1ecdng mang l\\u1ea1i m\\u1ed9t k\\u1ebft qu\\u1ea3 duy nh\\u1ea5t \\u0111&uacute;ng kh&ocirc;ng&quot;, m\\u1ed9t ng\\u01b0\\u1eddi d&ugrave;ng \\u0111\\u1ebfn t\\u1eeb Thi\\u1ec3m T&acirc;y vi\\u1ebft. Trung Qu\\u1ed1c ng&agrave;y c&agrave;ng &aacute;p d\\u1ee5ng nhi\\u1ec1u c&ocirc;ng ngh\\u1ec7 kh&aacute;c nhau \\u0111\\u1ec3 gi&aacute;m s&aacute;t c&ocirc;ng d&acirc;n v&agrave; c&ocirc;ng nh&acirc;n lao \\u0111\\u1ed9ng. M\\u1ed9t s\\u1ed1 ch\\u01b0\\u01a1ng tr&igrave;nh \\u0111&atilde; \\u0111\\u01b0\\u1ee3c c&ocirc;ng khai trong n\\u0103m qua bao g\\u1ed3m s\\u1eed d\\u1ee5ng m&aacute;y \\u1ea3nh \\u0111\\u1ec3 theo d&otilde;i c\\u01b0 d&acirc;n t\\u1ea1i nh&agrave; \\u1edf c&ocirc;ng c\\u1ed9ng, h\\u1ecdc sinh m\\u1eb7c \\u0111\\u1ed3ng ph\\u1ee5c c&oacute; t&iacute;ch h\\u1ee3p thi\\u1ebft b\\u1ecb theo d&otilde;i v\\u1ecb tr&iacute;, \\u1ee9ng d\\u1ee5ng cho ph&eacute;p m\\u1ecdi ng\\u01b0\\u1eddi b&aacute;o c&aacute;o c&aacute;c giao d\\u1ecbch mua s\\u1eafm l&atilde;ng ph&iacute; c\\u1ee7a quan ch\\u1ee9c ch&iacute;nh ph\\u1ee7. B\\u1ea3o Nam (theo SCMP)<\\/p>\",\"tags\":[null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:52:39', '2019-04-13 08:52:39'),
(705, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:52:40', '2019-04-13 08:52:40'),
(706, 2, 'admin/posts/15', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"title\":\"Loa kh\\u00f4ng d\\u00e2y h\\u00ecnh b\\u00e1nh xe gi\\u00e1 105 tri\\u1ec7u \\u0111\\u1ed3ng  \\u00a0\",\"slug\":\"loa-khong-day-hinh-banh-xe-gia-105-trieu-dong--\",\"description\":\"Loa Edge c\\u1ee7a Bang & Olufsen c\\u00f3 thi\\u1ebft k\\u1ebf kh\\u1ed1i tr\\u1ee5 \\u0111\\u1eb7t ngang, cho ph\\u00e9p l\\u0103n qua l\\u0103n l\\u1ea1i \\u0111\\u1ec3 \\u0111i\\u1ec1u ch\\u1ec9nh \\u00e2m l\\u01b0\\u1ee3ng.\",\"content\":\"<p>Xu\\u1ea5t hi\\u1ec7n l\\u1ea7n \\u0111\\u1ea7u t\\u1ea1i IFA 2018, B&amp;O Edge \\u0111\\u01b0\\u1ee3c ch&uacute; &yacute; b\\u1edfi thi\\u1ebft k\\u1ebf \\u0111\\u1ed9c \\u0111&aacute;o, c&aacute;ch s\\u1eed d\\u1ee5ng m\\u1edbi l\\u1ea1. M\\u1eabu loa c\\u1ee7a nh&agrave; s\\u1ea3n xu\\u1ea5t \\u0110an M\\u1ea1ch l\\u1ea5y c\\u1ea3m h\\u1ee9ng t\\u1eeb \\u0111\\u1ed3ng ti\\u1ec1n xu v\\u1edbi th&acirc;n l&agrave; v&ograve;ng kim lo\\u1ea1i phay x\\u01b0\\u1edbc. V\\u1edbi \\u0111\\u01b0\\u1eddng k&iacute;nh kho\\u1ea3ng 50 cm, s\\u1ea3n ph\\u1ea9m l\\u1edbn nh\\u01b0 m\\u1ed9t chi\\u1ebfc b&aacute;nh xe &ocirc;t&ocirc;. Edge c&oacute; th\\u1ec3 \\u0111\\u1eb7t tr&ecirc;n b&agrave;n ho\\u1eb7c treo t\\u01b0\\u1eddng, ph\\u1ea7n \\u0111\\u1ebf c&oacute; d&acirc;y \\u0111\\u1ec3 n\\u1ed1i v\\u1edbi ngu\\u1ed3n \\u0111i\\u1ec7n. Loa h\\u1ed7 tr\\u1ee3 AirPlay 2,&nbsp;Chromecast v&agrave; Bluetooth, cho ph&eacute;p gh&eacute;p v\\u1edbi smartphone, m&aacute;y t&iacute;nh b\\u1ea3ng hay c&aacute;c ngu\\u1ed3n ph&aacute;t kh&ocirc;ng d&acirc;y kh&aacute;c. &nbsp; &nbsp; Loa kh&ocirc;ng d&acirc;y h&igrave;nh b&aacute;nh xe gi&aacute; 105 tri\\u1ec7u \\u0111\\u1ed3ng \\u0110i\\u1ec3m \\u0111\\u1ed9c \\u0111&aacute;o c&ograve;n \\u1edf c&aacute;ch s\\u1eed d\\u1ee5ng khi loa c\\u1ee7a B&amp;O cho ph&eacute;p l\\u0103n qua hai b&ecirc;n \\u0111\\u1ec3 t\\u0103ng, gi\\u1ea3m &acirc;m l\\u01b0\\u1ee3ng. Th&ocirc;ng qua h\\u1ec7 th\\u1ed1ng c\\u1ea3m bi\\u1ebfn, ti\\u1ebfng nh\\u1ea1c ph&aacute;t ra s\\u1ebd thay \\u0111\\u1ed5i \\u1edf m\\u1ee9c v\\u1eeba ph\\u1ea3i n\\u1ebfu l\\u0103n nh\\u1eb9 v&agrave; t\\u0103ng gi\\u1ea3m nhi\\u1ec1u h\\u01a1n n\\u1ebfu l\\u0103n m\\u1ea1nh. Sau \\u0111&oacute;, Edge s\\u1ebd t\\u1ef1 c&acirc;n b\\u1eb1ng v\\u1ec1 v\\u1ecb tr&iacute; ban \\u0111\\u1ea7u. \\u1ede \\u0111\\u1ec9nh loa, B&amp;O s\\u1eed d\\u1ee5ng k\\u1ef9 thu\\u1eadt kh\\u1eafc laser \\u0111\\u1ec3 l&agrave;m nh\\u1eefng l\\u1ed7 si&ecirc;u nh\\u1ecf m&agrave; m\\u1eaft ng\\u01b0\\u1eddi kh&ocirc;ng nh&igrave;n th\\u1ea5y nh\\u01b0ng &aacute;nh s&aacute;ng c&oacute; th\\u1ec3 xuy&ecirc;n qua, t\\u1ea1o th&agrave;nh n&uacute;t c\\u1ea3m \\u1ee9ng \\u0111i\\u1ec1u khi\\u1ec3n nh\\u1ea1c. B&igrave;nh&nbsp;th\\u01b0\\u1eddng, c&aacute;c ph&iacute;m n&agrave;y &quot;t&agrave;ng h&igrave;nh&quot; nh\\u01b0ng s\\u1ebd t\\u1ef1 \\u0111\\u1ed9ng s&aacute;ng l&ecirc;n khi ng\\u01b0\\u1eddi d&ugrave;ng \\u0111\\u01b0a tay l\\u1ea1i g\\u1ea7n. Edge ph&aacute;t &acirc;m thanh 360 \\u0111\\u1ed9 th&ocirc;ng qua c\\u1eb7p driver midrange 4 inch, c\\u1eb7p tweeter 3\\/4 inch cho m\\u1eb7t tr\\u01b0\\u1edbc v&agrave; m\\u1eb7t sau, m\\u1ed9t loa si&ecirc;u tr\\u1ea7m 10 inch. Loa tr&igrave;nh di\\u1ec5n ch\\u1ea5t &acirc;m trong tr\\u1ebbo, lan t\\u1ecfa, c&oacute; chi\\u1ec1u s&acirc;u v&agrave; &ecirc;m d\\u1ecbu theo \\u0111\\u1eb7c tr\\u01b0ng c\\u1ee7a B&amp;O. \\u0110\\u1ec3 x\\u1eed l&yacute; &acirc;m tr\\u1ea7m tr&ecirc;n m\\u1ed9t chi\\u1ebfc loa t&iacute;ch h\\u1ee3p, B&amp;O \\u0111&atilde; thi\\u1ebft k\\u1ebf &quot;c\\u1ed5ng bass ch\\u1ee7 \\u0111\\u1ed9ng&quot;, \\u0111\\u01b0\\u1ee3c v&iacute; nh\\u01b0 c&aacute;nh gi&oacute; tr&ecirc;n nh\\u1eefng chi\\u1ebfc si&ecirc;u xe. Khi ph&aacute;t \\u1edf &acirc;m l\\u01b0\\u1ee3ng v\\u1eeba ph\\u1ea3i, mi\\u1ec7ng l\\u1ed7 tho&aacute;t &acirc;m \\u0111\\u01b0\\u1ee3c \\u0111&oacute;ng l\\u1ea1i, c&ograve;n khi m\\u1edf nh\\u1ea1c l\\u1edbn th&igrave; c\\u1ed5ng bass s\\u1ebd m\\u1edf \\u0111\\u1ec3 &acirc;m tr\\u1ea7m c&oacute; l\\u1ef1c h\\u01a1n. Thi\\u1ebft k\\u1ebf \\u0111\\u1eb9p, \\u0111\\u1ed9c c&ugrave;ng c&aacute;ch s\\u1eed d\\u1ee5ng m\\u1edbi l\\u1ea1, m\\u1ee9c gi&aacute; cho Edge l&ecirc;n \\u0111\\u1ebfn 105 tri\\u1ec7u \\u0111\\u1ed3ng. &Acirc;m thanh hay nh\\u01b0ng ch\\u01b0a ph\\u1ea3i xu\\u1ea5t s\\u1eafc trong t\\u1ea7m ti\\u1ec1n, m\\u1eabu loa \\u0111\\u1ebfn t\\u1eeb \\u0110an M\\u1ea1ch h\\u01b0\\u1edbng t\\u1edbi ng\\u01b0\\u1eddi d&ugrave;ng ch&uacute; tr\\u1ecdng h&igrave;nh th\\u1ee9c, th&iacute;ch c&aacute;ch s\\u1eed d\\u1ee5ng \\u0111\\u01a1n gi\\u1ea3n v&agrave; k\\u1ebft n\\u1ed1i \\u0111a ph&ograve;ng v\\u1edbi c&aacute;c thi\\u1ebft b\\u1ecb kh&aacute;c c\\u1ee7a B&amp;O.<\\/p>\",\"tags\":[\"8\",null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:52:55', '2019-04-13 08:52:55'),
(707, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:52:56', '2019-04-13 08:52:56'),
(708, 2, 'admin/posts/14', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Lo\\u1ea1n gi\\u00e1 smartphone cao c\\u1ea5p \\u1edf Vi\\u1ec7t Nam\",\"slug\":\"loan-gia-smartphone-cao-cap-o-viet-nam\",\"description\":\"Gi\\u00e1 c\\u00e1c model cao c\\u1ea5p nh\\u01b0 Galaxy S10, S10+ c\\u1ee7a Samsung hay P30, P30 Pro c\\u1ee7a Huawei \\u1edf nhi\\u1ec1u c\\u1eeda h\\u00e0ng ch\\u00eanh nhau h\\u00e0ng tri\\u1ec7u \\u0111\\u1ed3ng.\",\"content\":\"<p>B\\u1ed9 \\u0111&ocirc;i smartphone chuy&ecirc;n ch\\u1ee5p h&igrave;nh v\\u1eeba ra m\\u1eaft c\\u1ee7a Huawei l&agrave; v&iacute; d\\u1ee5 \\u0111i\\u1ec3n h&igrave;nh cho t&igrave;nh tr\\u1ea1ng lo\\u1ea1n gi&aacute; \\u0111i\\u1ec7n tho\\u1ea1i cao c\\u1ea5p \\u1edf Vi\\u1ec7t Nam. P30 v&agrave; P30 Pro c&oacute; m\\u1ee9c ni&ecirc;m y\\u1ebft l\\u1ea7n l\\u01b0\\u1ee3t 16,99 v&agrave; 22,99 tri\\u1ec7u \\u0111\\u1ed3ng t\\u1ea1i nhi\\u1ec1u h\\u1ec7 th\\u1ed1ng si&ecirc;u th\\u1ecb v&agrave; c\\u1eeda h&agrave;ng l\\u1edbn. Nh\\u01b0ng t\\u1ea1i m\\u1ed9t s\\u1ed1 c\\u1eeda h&agrave;ng \\u1edf H&agrave; N\\u1ed9i v&agrave; TP HCM, hai s\\u1ea3n ph\\u1ea9m n&agrave;y l\\u1ea1i \\u0111\\u01b0\\u1ee3c ch&agrave;o b&aacute;n r\\u1ebb h\\u01a1n h&agrave;ng tri\\u1ec7u \\u0111\\u1ed3ng, kho\\u1ea3ng 17 \\u0111\\u1ebfn 18 tri\\u1ec7u \\u0111\\u1ed3ng cho P30 Pro v&agrave; h\\u01a1n 14 tri\\u1ec7u \\u0111\\u1ed3ng cho P30. T\\u1ea5t c\\u1ea3 \\u0111\\u1ec1u l&agrave; s\\u1ea3n ph\\u1ea9m m\\u1edbi v&agrave; \\u0111\\u01b0\\u1ee3c ph&acirc;n ph\\u1ed1i ch&iacute;nh h&atilde;ng. Huawei P30 v&agrave; P30 Pro m\\u1edbi ch\\u1ec9 nh\\u1eadn \\u0111\\u1eb7t h&agrave;ng nh\\u01b0ng \\u0111&atilde; lo\\u1ea1n gi&aacute;. \\u1ea2nh: T.R. Hi\\u1ec7n t\\u01b0\\u1ee3ng c&ugrave;ng m\\u1ed9t smartphone nh\\u01b0ng gi&aacute; ch&ecirc;nh l\\u1ec7ch t\\u1edbi h&agrave;ng tri\\u1ec7u \\u0111\\u1ed3ng \\u1edf c&aacute;c c\\u1eeda h&agrave;ng kh&ocirc;ng hi\\u1ebfm g\\u1eb7p \\u1edf Vi\\u1ec7t Nam. C&aacute;c m\\u1eabu iPhone hay nhi\\u1ec1u m\\u1eabu Galaxy c\\u1ee7a Samsung c\\u0169ng g\\u1eb7p t&igrave;nh tr\\u1ea1ng t\\u01b0\\u01a1ng t\\u1ef1.&nbsp;B\\u1ed9 \\u0111&ocirc;i Galaxy S10, S10+ \\u0111\\u01b0\\u1ee3c Samsung b&aacute;n ra ch\\u01b0a l&acirc;u nh\\u01b0ng gi&aacute; b&aacute;n \\u1edf m\\u1ed7i c\\u1eeda h&agrave;ng c\\u0169ng c&oacute; nhi\\u1ec1u kh&aacute;c bi\\u1ec7t, t\\u1ea1o ra m\\u1ee9c ch&ecirc;nh l\\u1ec7ch v&agrave;i tri\\u1ec7u \\u0111\\u1ed3ng so v\\u1edbi m\\u1ee9c c&ocirc;ng b\\u1ed1 c\\u1ee7a h&atilde;ng.&nbsp; V&iacute; d\\u1ee5, t\\u1ea1i hai h\\u1ec7 th\\u1ed1ng si&ecirc;u th\\u1ecb c&oacute; th\\u1ecb ph\\u1ea7n l\\u1edbn nh\\u1ea5t Vi\\u1ec7t Nam hi\\u1ec7n gi\\u1edd, Galaxy S10 \\u0111\\u01b0\\u1ee3c b&aacute;n ra v\\u1edbi gi&aacute; 20,99 tri\\u1ec7u \\u0111\\u1ed3ng. Nh\\u01b0ng c&ugrave;ng model n&agrave;y, t\\u1ea1i m\\u1ed9t c\\u1eeda h&agrave;ng kh&aacute;c \\u1edf Th&aacute;i H&agrave; (H&agrave; N\\u1ed9i), gi&aacute; l\\u1ea1i ch\\u1ec9 c&ograve;n 17,8 tri\\u1ec7u - ch&ecirc;nh l\\u1ec7ch t\\u1edbi h\\u01a1n 3 tri\\u1ec7u \\u0111\\u1ed3ng. Hay Galaxy S10+ phi&ecirc;n b\\u1ea3n 128 GB c&oacute; m\\u1ee9c ni&ecirc;m y\\u1ebft 23 tri\\u1ec7u \\u0111\\u1ed3ng, nh\\u01b0ng t\\u1ea1i m\\u1ed9t s\\u1ed1 c\\u1eeda h&agrave;ng nh\\u1ecf l\\u1ea1i ch\\u1ec9 c&ograve;n g\\u1ea7n 21 tri\\u1ec7u \\u0111\\u1ed3ng. Th\\u1eadm ch&iacute;, tr\\u01b0\\u1edbc th&aacute;ng 4, b\\u1ed9 \\u0111&ocirc;i n&agrave;y t\\u1ea1i m\\u1ed9t s\\u1ed1 n\\u01a1i c&ograve;n th\\u1ea5p h\\u01a1n m\\u1ee9c ni&ecirc;m y\\u1ebft 3 \\u0111\\u1ebfn 4 tri\\u1ec7u \\u0111\\u1ed3ng, d&ugrave; t\\u1eeb khi ra m\\u1eaft \\u1edf Vi\\u1ec7t Nam, Samsung ch\\u01b0a t\\u1eebng h\\u1ea1 gi&aacute; s\\u1ea3n ph\\u1ea9m n&agrave;y. Tr\\u1ecbnh V\\u0169, qu\\u1ea3n l&yacute; m\\u1ed9t h\\u1ec7 th\\u1ed1ng b&aacute;n l\\u1ebb \\u1edf H&agrave; N\\u1ed9i gi\\u1ea3i th&iacute;ch, c&ugrave;ng m\\u1ed9t smartphone nh\\u01b0ng gi&aacute; m\\u1ed7i n\\u01a1i m\\u1ed9t kh&aacute;c, ch&ecirc;nh l\\u1ec7ch h&agrave;ng tri\\u1ec7u \\u0111\\u1ed3ng, l&agrave; do ch\\u01b0\\u01a1ng tr&igrave;nh khuy\\u1ebfn m\\u1ea1i. H\\u1ea7u h\\u1ebft smartphone m\\u1edbi ra hi\\u1ec7n nay \\u0111\\u1ec1u \\u0111i k&egrave;m v\\u1edbi l\\u01b0\\u1ee3ng l\\u1edbn qu&agrave; t\\u1eb7ng. Ngo&agrave;i bao da, \\u1ed1p l\\u01b0ng, g&oacute;i b\\u1ea3o h&agrave;nh m\\u1edf r\\u1ed9ng, h\\u1ea7u h\\u1ebft c&aacute;c m\\u1eabu \\u0111i\\u1ec7n tho\\u1ea1i c&ograve;n \\u0111\\u01b0\\u1ee3c b&aacute;n k&egrave;m v\\u1edbi \\u0111\\u1ed3ng h\\u1ed3 th&ocirc;ng minh, v&ograve;ng \\u0111eo s\\u1ee9c kho\\u1ebb, loa kh&ocirc;ng d&acirc;y, pin, s\\u1ea1c... gi&aacute; tr\\u1ecb t\\u1eeb v&agrave;i tr\\u0103m cho t\\u1edbi h&agrave;ng tri\\u1ec7u \\u0111\\u1ed3ng. M\\u1ed9t s\\u1ed1 c\\u1eeda h&agrave;ng ch\\u1ea5p nh\\u1eadn cho kh&aacute;ch tr\\u1eeb ti\\u1ec1n mua n\\u1ebfu kh&ocirc;ng nh\\u1eadn qu&agrave;, t\\u1eeb \\u0111&oacute; t\\u1ea1o ra m\\u1ee9c ch&ecirc;nh l\\u1ec7ch l\\u1edbn gi\\u1eefa ni&ecirc;m y\\u1ebft v\\u1edbi gi&aacute; b&aacute;n th\\u1ef1c t\\u1ebf. S\\u1ef1 kh&ocirc;ng th\\u1ed1ng nh\\u1ea5t v\\u1ec1 ch&iacute;nh s&aacute;ch \\u0111&atilde; t\\u1ea1o ra hi\\u1ec7n t\\u01b0\\u1ee3ng lo\\u1ea1n gi&aacute;. V&iacute; d\\u1ee5, Huawei&nbsp;P30 Pro \\u0111\\u01b0\\u1ee3c b&aacute;n ra t\\u1eeb gi\\u1eefa th&aacute;ng 4 s\\u1ebd \\u0111i k&egrave;m v\\u1edbi \\u0111\\u1ed3ng h\\u1ed3 th&ocirc;ng minh Watch GT c&oacute; gi&aacute; ni&ecirc;m y\\u1ebft g\\u1ea7n 5 tri\\u1ec7u \\u0111\\u1ed3ng. M\\u1ed9t s\\u1ed1 c\\u1eeda h&agrave;ng s\\u1ebd tr\\u1eeb \\u0111i s\\u1ed1 ti\\u1ec1n t\\u01b0\\u01a1ng \\u0111\\u01b0\\u01a1ng n\\u1ebfu ng\\u01b0\\u1eddi mua kh&ocirc;ng nh\\u1eadn qu&agrave; khuy\\u1ebfn m&atilde;i n&agrave;y.&nbsp; Gi&aacute; smartphone cao c\\u1ea5p \\u1edf Vi\\u1ec7t Nam ng&agrave;y c&agrave;ng cao v&agrave; d\\u1ea7n v\\u01b0\\u1ee3t xa m\\u1ee9c 15 tri\\u1ec7u \\u0111\\u1ed3ng c\\u1ee7a 2, 3 n\\u0103m tr\\u01b0\\u1edbc. \\u1ea2nh: Cnet. Tuy nhi&ecirc;n, nhi\\u1ec1u ng\\u01b0\\u1eddi d&ugrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng v\\u1edbi c&aacute;ch b&aacute;n h&agrave;ng c\\u1ee7a nh\\u1eefng m\\u1eabu smartphone \\u0111\\u1eddi m\\u1edbi. Xu&acirc;n Qu&yacute; (\\u0110\\u1ed1ng \\u0110a, H&agrave; N\\u1ed9i) v&iacute; von c&aacute;ch b&aacute;n h&agrave;ng c\\u1ee7a \\u0111i\\u1ec7n tho\\u1ea1i cao c\\u1ea5p gi\\u1edd kh&ocirc;ng kh&aacute;c g&igrave; hi\\u1ec7n t\\u01b0\\u1ee3ng mua bia k&egrave;m l\\u1ea1c nh\\u01b0 v\\u1edbi m\\u1ed9t s\\u1ed1 m\\u1eabu xe h\\u01a1i \\u0103n kh&aacute;ch \\u1edf Vi\\u1ec7t Nam. Thay v&igrave; \\u0111\\u01b0a gi&aacute; th\\u1ea5p h\\u01a1n ngay t\\u1eeb ban \\u0111\\u1ea7u, ng\\u01b0\\u1eddi mua ph\\u1ea3i b\\u1ecf ra nhi\\u1ec1u ti\\u1ec1n h\\u01a1n cho c&aacute;c m&oacute;n \\u0111\\u1ed3 nh\\u01b0 s\\u1ea1c kh&ocirc;ng d&acirc;y, loa di \\u0111\\u1ed9ng hay \\u0111\\u1ed3ng h\\u1ed3 th&ocirc;ng minh... m&agrave; c&oacute; khi kh&ocirc;ng c\\u1ea7n d&ugrave;ng \\u0111\\u1ebfn.&nbsp; Tu\\u1ea5n Anh<\\/p>\",\"tags\":[\"14\",null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:53:07', '2019-04-13 08:53:07'),
(709, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:53:08', '2019-04-13 08:53:08'),
(710, 2, 'admin/posts/13', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"HTC - s\\u1ef1 s\\u1ee5p \\u0111\\u1ed5 c\\u1ee7a m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u smartphone \\u0111\\u1ea7y h\\u1ee9a h\\u1eb9n\",\"slug\":\"htc---su-sup-do-cua-mot-thuong-hieu-smartphone-day-hua-hen\",\"description\":\"T\\u1eebng \\u0111\\u01b0\\u1ee3c \\u0111\\u00e1nh gi\\u00e1 cao nh\\u1edd lo\\u1ea1t s\\u1ea3n ph\\u1ea9m thi\\u1ebft k\\u1ebf \\u0111\\u1eb9p, nhi\\u1ec1u t\\u00ednh n\\u0103ng nh\\u01b0ng HTC gi\\u1edd \\u0111\\u00e2y ch\\u1ec9 c\\u00f2n l\\u00e0 c\\u00e1i b\\u00f3ng c\\u1ee7a ch\\u00ednh m\\u00ecnh.\",\"content\":\"<p>C&aacute;ch \\u0111&acirc;y kho\\u1ea3ng 10 n\\u0103m, HTC \\u0111\\u01b0\\u1ee3c xem l&agrave; th\\u1ebf l\\u1ef1c trong l&agrave;ng di \\u0111\\u1ed9ng. C&ocirc;ng ty \\u0110&agrave;i Loan c\\u0169ng ch&iacute;nh l&agrave; c&aacute;i t&ecirc;n \\u0111\\u1ea7u ti&ecirc;n mang smartphone Android t\\u1edbi ng\\u01b0\\u1eddi d&ugrave;ng, tr\\u01b0\\u1edbc khi h\\u1ec7 \\u0111i\\u1ec1u h&agrave;nh Google l\\u1edbn m\\u1ea1nh nh\\u01b0 ng&agrave;y nay. HTC Dream - chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i ch\\u1ea1y Android th\\u01b0\\u01a1ng m\\u1ea1i h&oacute;a&nbsp;\\u0111\\u1ea7u ti&ecirc;n&nbsp;tr&ecirc;n th\\u1ebf gi\\u1edbi v\\u1eabn \\u0111\\u01b0\\u1ee3c nh\\u1eafc \\u0111\\u1ebfn nh\\u01b0 m\\u1ed9t ph\\u1ea7n l\\u1ecbch s\\u1eed c\\u1ee7a h\\u1ec7 \\u0111i\\u1ec1u h&agrave;nh di \\u0111\\u1ed9ng ph\\u1ed5 bi\\u1ebfn nh\\u1ea5t th\\u1ebf gi\\u1edbi. HTC One t\\u1eebng nh\\u1eadn nhi\\u1ec1u l\\u1eddi khen t\\u1eeb chuy&ecirc;n gia l\\u1eabn ng\\u01b0\\u1eddi d&ugrave;ng. \\u1ea2nh: Slashgear. Th\\u1ecb tr\\u01b0\\u1eddng smartphone nh\\u1eefng n\\u0103m g\\u1ea7n \\u0111&acirc;y c&oacute; xu h\\u01b0\\u1edbng v\\u1ec1 m\\u1ed9t thi\\u1ebft b\\u1ecb c&agrave;ng \\u0111\\u01a1n gi\\u1ea3n c&agrave;ng t\\u1ed1t: m&agrave;n h&igrave;nh vi\\u1ec1n m\\u1ecfng, nguy&ecirc;n kh\\u1ed1i, t&iacute;ch h\\u1ee3p s\\u1ea1c kh&ocirc;ng d&acirc;y... C&aacute;c chi ti\\u1ebft n&agrave;y th\\u01b0\\u1eddng \\u0111\\u01b0\\u1ee3c nh&agrave; s\\u1ea3n xu\\u1ea5t nh\\u1ea5n m\\u1ea1nh l&agrave; \\u01b0u \\u0111i\\u1ec3m trong cu\\u1ed9c \\u0111ua gi&agrave;nh danh hi\\u1ec7u chi\\u1ebfc \\u0111i\\u1ec7n tho\\u1ea1i ho&agrave;n h\\u1ea3o nh\\u1ea5t. Tuy nhi&ecirc;n, n\\u1ebfu nh&igrave;n l\\u1ea1i qu&aacute; kh\\u1ee9, c&oacute; th\\u1ec3 b\\u1ea1n s\\u1ebd gi\\u1eadt m&igrave;nh khi HTC t\\u1eebng c&oacute; nhi\\u1ec1u &yacute; t\\u01b0\\u1edfng l\\u1edbn t\\u01b0\\u01a1ng t\\u1ef1 v\\u1eady. Ch\\u1eb3ng h\\u1ea1n, HTC One ra m\\u1eaft 2013 d&ugrave;ng nh&ocirc;m nguy&ecirc;n kh\\u1ed1i khi iPhone v\\u1eabn d&ugrave;ng k&iacute;nh, hay b\\u1eaft tay Beats Audio \\u0111\\u1ec3 trang b\\u1ecb loa k&eacute;p m\\u1eb7t tr\\u01b0\\u1edbc cho tr\\u1ea3i nghi\\u1ec7m &acirc;m thanh b\\u1eb1ng loa ngo&agrave;i v\\u01b0\\u1ee3t tr\\u1ed9i. Ho\\u1eb7c HTC Hero l&agrave; smartphone \\u0111\\u1ea7u ti&ecirc;n c&oacute; c\\u1ed5ng gi\\u1eafc 3,5mm. N\\u0103m 2018, m&aacute;y \\u1ea3nh k&eacute;p v\\u1edbi ch\\u1ebf \\u0111\\u1ed9 ch&acirc;n dung l&agrave; &quot;c\\u01a1n s\\u1ed1t&quot;, nh\\u01b0ng One (2014) \\u0111&atilde; c&oacute;. D&ugrave; thi\\u1ebft k\\u1ebf ch\\u01b0a \\u0111\\u1eb9p, &iacute;t t&iacute;nh n\\u0103ng, kh\\u1ea3 n\\u0103ng ch\\u1ee5p h\\u1ea1n ch\\u1ebf, kh&ocirc;ng th\\u1ec3 ph\\u1ee7 nh\\u1eadn HTC \\u0111i tr\\u01b0\\u1edbc th\\u1eddi \\u0111\\u1ea1i qua smartphone n&agrave;y. HTC One (2014) c&oacute; camera k&eacute;p. \\u1ea2nh: Techcrunch. Nh\\u01b0ng HTC c\\u0169ng l&agrave; n\\u1ea1n nh&acirc;n c\\u1ee7a vi\\u1ec7c ti\\u1ebfp th\\u1ecb k&eacute;m. Apple v&agrave; Samsung l&agrave; hai h&atilde;ng c&ugrave;ng th\\u1eddi v\\u1edbi c&ocirc;ng ty \\u0110&agrave;i Loan, c\\u0169ng c&oacute; nh\\u1eefng s\\u1ea3n ph\\u1ea9m \\u0111i tr\\u01b0\\u1edbc th\\u1eddi \\u0111\\u1ea1i. V\\u1eady t\\u1ea1i sao HTC kh&ocirc;ng ph\\u1ea3i l&agrave; vua c\\u1ee7a th\\u1ebf gi\\u1edbi \\u0111i\\u1ec7n tho\\u1ea1i th&ocirc;ng minh, ho\\u1eb7c &iacute;t nh\\u1ea5t l&agrave; m\\u1ed9t trong ba th\\u01b0\\u01a1ng hi\\u1ec7u h&agrave;ng \\u0111\\u1ea7u? M\\u1ed9t s\\u1ed1 chuy&ecirc;n gia sau khi nghi&ecirc;n c\\u1ee9u v\\u1ec1 tr\\u01b0\\u1eddng h\\u1ee3p c\\u1ee7a HTC \\u0111\\u1ec1u cho r\\u1eb1ng, &yacute; t\\u01b0\\u1edfng tuy\\u1ec7t v\\u1eddi kh&ocirc;ng c&oacute; ngh\\u0129a l&agrave; s\\u1ebd th&agrave;nh c&ocirc;ng n\\u1ebfu ch&uacute;ng kh&ocirc;ng \\u0111\\u01b0\\u1ee3c truy\\u1ec1n b&aacute; t\\u1ed1t. C\\u1ea1nh tranh v\\u1ec1 s\\u1ea3n ph\\u1ea9m c&ocirc;ng ngh\\u1ec7 ng&agrave;y nay l&agrave; m\\u1ed9t &quot;tr&ograve; ch\\u01a1i ti\\u1ebfp th\\u1ecb&quot;. L\\u1ecbch s\\u1eed ch\\u1ee9ng minh ti\\u1ebfp th\\u1ecb c&oacute; l\\u1ebd l&agrave; \\u0111i\\u1ec3m y\\u1ebfu l\\u1edbn nh\\u1ea5t c\\u1ee7a HTC. Kh\\u1ea9u hi\\u1ec7u ban \\u0111\\u1ea7u c\\u1ee7a h&atilde;ng l&agrave; &quot;Quietly Brilliant&quot; (t\\u1ea1m d\\u1ecbch: To\\u1ea3 s&aacute;ng th\\u1ea7m l\\u1eb7ng) kh&ocirc;ng c&ograve;n bi\\u1ec3u \\u0111\\u1ea1t tham v\\u1ecdng c\\u0169ng nh\\u01b0 s\\u1ef1 \\u0111\\u1ed5i m\\u1edbi. B&ecirc;n c\\u1ea1nh \\u0111&oacute;, nh\\u1eefng chi\\u1ebfn d\\u1ecbch c&oacute; ph\\u1ea7n k\\u1ef3 l\\u1ea1, \\u0111i\\u1ec3n h&igrave;nh Robert Downey Jr. qu\\u1ea3ng b&aacute; M9 b\\u1ecb nh\\u1eadn x&eacute;t l&agrave; kh&oacute; hi\\u1ec3u v&igrave; r\\u1ea5t &iacute;t li&ecirc;n quan \\u0111\\u1ebfn s\\u1ea3n ph\\u1ea9m. Trong th\\u1eddi k\\u1ef3 \\u0111\\u1ec9nh cao (2009), HTC ph&aacute;t h&agrave;nh h\\u01a1n 100 \\u0111i\\u1ec7n tho\\u1ea1i c&aacute;c lo\\u1ea1i. \\u0110i\\u1ec1u \\u0111&oacute; th\\u1ec3 hi\\u1ec7n s\\u1ef1 ti\\u1ebfn b\\u1ed9, c\\u0169ng nh\\u01b0 n\\u1eafm b\\u1eaft th\\u1ecb tr\\u01b0\\u1eddng t\\u1ed1t. Tuy v\\u1eady, vi\\u1ec7c ra qu&aacute; nhi\\u1ec1u s\\u1ea3n ph\\u1ea9m trong th\\u1eddi gian ng\\u1eafn khi\\u1ebfn ng\\u01b0\\u1eddi d&ugrave;ng cho kh&ocirc;ng th\\u1ec3 t&igrave;m ra \\u0111&acirc;u l&agrave; cao c\\u1ea5p, t\\u1ea7m trung v&agrave; gi&aacute; r\\u1ebb. H\\u1eadu qu\\u1ea3 t\\u1ea5t y\\u1ebfu l&agrave; s\\u1ea3n ph\\u1ea9m b&atilde;o h&ograve;a. HTC l&agrave; m\\u1ed9t trong nh\\u1eefng h&atilde;ng smartphone \\u0111i \\u0111\\u1ea7u v\\u1ec1 tr&agrave;o l\\u01b0u \\u0111\\u1ed5i m&agrave;u m\\u1eb7t l\\u01b0ng. \\u1ea2nh: DigitalTrends. Ng\\u01b0\\u1ee3c l\\u1ea1i, c&aacute;c \\u0111\\u1ed1i th\\u1ee7 \\u0111ang l&ecirc;n khi \\u0111&oacute; nh\\u01b0 Apple, Samsung ra m\\u1ed7i n\\u0103m ch\\u1ec9 m\\u1ed9t ho\\u1eb7c hai s\\u1ea3n ph\\u1ea9m, gi&uacute;p \\u0111\\u01a1n gi\\u1ea3n h&oacute;a trong vi\\u1ec7c l\\u1ef1a ch\\u1ecdn thi\\u1ebft b\\u1ecb cao c\\u1ea5p m&agrave; kh&ocirc;ng ph\\u1ea3i lo l\\u1eafng v\\u1ec1 th&ocirc;ng s\\u1ed1 k\\u1ef9 thu\\u1eadt. C&oacute; th\\u1ec3 c&ocirc;ng ty iPhone b\\u1ecb nh\\u1eadn x&eacute;t l&agrave; c\\u1ed1 ch\\u1ea5p, c\\u1ee9ng nh\\u1eafc, nh\\u01b0ng r&otilde; r&agrave;ng n&oacute; mang l\\u1ea1i hi\\u1ec7u qu\\u1ea3 h\\u01a1n nh\\u1eefng g&igrave; HTC \\u0111&atilde; l&agrave;m. HTC c\\u0169ng \\u0111\\u1eb7t t&ecirc;n kh&aacute; k\\u1ef3 l\\u1ea1 v&agrave; kh&ocirc;ng h\\u1ec1 theo tr&igrave;nh t\\u1ef1 khi\\u1ebfn ng\\u01b0\\u1eddi d&ugrave;ng kh&oacute; nh\\u1edb, ch\\u1eb3ng h\\u1ea1n Salsa, Pyramid, Sensation, ChaCha (\\u0111i\\u1ec7n tho\\u1ea1i d&agrave;nh ri&ecirc;ng cho Facebook)... Trong khi \\u0111&oacute;, Samsung l\\u1ea1i r\\u1ea5t r\\u1ea1ch r&ograve;i v\\u1ec1 v\\u1ea5n \\u0111\\u1ec1 \\u0111\\u1eb7t t&ecirc;n: Galaxy S, Note l&agrave; thi\\u1ebft b\\u1ecb cao c\\u1ea5p, Galaxy A thu\\u1ed9c t\\u1ea7m trung hay Galaxy J gi&aacute; r\\u1ebb. &quot;N&oacute; gi&uacute;p ng\\u01b0\\u1eddi d&ugrave;ng ph&acirc;n bi\\u1ec7t t\\u1eebng lo\\u1ea1i s\\u1ea3n ph\\u1ea9m m&agrave; kh&ocirc;ng c\\u1ea7n nh&igrave;n th&ocirc;ng s\\u1ed1 k\\u1ef9 thu\\u1eadt&quot;, m\\u1ed9t chuy&ecirc;n gia nh\\u1eadn x&eacute;t. C&ocirc;ng ty \\u0110&agrave;i Loan c\\u0169ng kh&aacute; b\\u1ea3o th\\u1ee7 trong vi\\u1ec7c h\\u1ee3p t&aacute;c v\\u1edbi nh&agrave; m\\u1ea1ng. N\\u1ebfu nh\\u01b0 c&aacute;c h&atilde;ng kh&aacute;c xem \\u0111&acirc;y l&agrave; m\\u1ed9t trong nh\\u1eefng k&ecirc;nh ph&acirc;n ph\\u1ed1i quan tr\\u1ecdng, HTC l\\u1ea1i kh&aacute; nh\\u1eadp nh\\u1eb1ng. Ch\\u1eb3ng h\\u1ea1n, U11 \\u0111\\u01b0\\u1ee3c \\u0111&aacute;nh gi&aacute; t\\u1ed1t t\\u1eeb c&aacute;c nh&agrave; ph&ecirc; b&igrave;nh, nh\\u01b0ng ch\\u1ec9 ph&acirc;n ph\\u1ed1i b\\u1edfi Sprint. \\u0110\\u1ed3ng th\\u1eddi, vi\\u1ec7c lo\\u1ea1t s\\u1ea3n ph\\u1ea9m v\\u1ec1 sau ng&agrave;y c&agrave;ng k&eacute;m h\\u1ea5p d\\u1eabn c\\u0169ng l&agrave; l&yacute; do khi\\u1ebfn nh&agrave; m\\u1ea1ng th\\u1edd \\u01a1 kh&ocirc;ng ph&acirc;n ph\\u1ed1i n\\u1eefa, k\\u1ec3 c\\u1ea3 khi HTC c&oacute; \\u0111\\u1ed9ng th&aacute;i \\u01b0u ti&ecirc;n. Ngo&agrave;i ra, c&oacute; th\\u1ec3 xem HTC l&agrave; n\\u1ea1n nh&acirc;n c\\u1ee7a Google, khi nh\\u1eefng tinh hoa v\\u1ec1 b\\u1ed9 ph\\u1eadn di \\u0111\\u1ed9ng c\\u1ee7a h&atilde;ng v\\u1ec1 tay c&ocirc;ng ty t&igrave;m ki\\u1ebfm. N\\u0103m 2017, HTC \\u0111\\u1ed3ng &yacute; b&aacute;n \\u0111\\u1ed9i ng\\u0169 thi\\u1ebft k\\u1ebf v&agrave; ph\\u1ea7n l\\u1edbn b\\u1eb1ng s&aacute;ng ch\\u1ebf cho Google v\\u1edbi gi&aacute; 1,1 t\\u1ef7 USD. 2.000 nh&acirc;n vi&ecirc;n thi\\u1ebft k\\u1ebf HTC sau \\u0111&oacute; c\\u0169ng v\\u1ec1 l&agrave;m vi\\u1ec7c trong b\\u1ed9 ph\\u1eadn ph&aacute;t tri\\u1ec3n \\u0111i\\u1ec7n tho\\u1ea1i Pixel. Gi\\u1edd \\u0111&acirc;y, Pixel b\\u1eaft \\u0111\\u1ea7u c&oacute; ch\\u1ed7 \\u0111\\u1ee9ng tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng v&agrave; \\u0111i\\u1ec1u n&agrave;y c&oacute; c&ocirc;ng r\\u1ea5t l\\u1edbn c\\u1ee7a HTC c\\u1ed9ng th&ecirc;m kh\\u1ea3 n\\u0103ng ti\\u1ebfp th\\u1ecb t\\u1ed1t. K&iacute;nh th\\u1ef1c t\\u1ebf \\u1ea3o Vive c&oacute; th\\u1ec3 xem l&agrave; t\\u01b0\\u01a1ng lai c\\u1ee7a HTC. \\u1ea2nh: PCMag. Sau m\\u1ed9t th\\u1eadp k\\u1ef7 ho\\u1ea1t \\u0111\\u1ed9ng t\\u1ed1t, gi&aacute; c\\u1ed5 phi\\u1ebfu HTC \\u0111&atilde; gi\\u1ea3m t\\u1edbi 75% trong 5 n\\u0103m tr\\u1edf l\\u1ea1i \\u0111&acirc;y, cho th\\u1ea5y s\\u1ef1 th\\u1ee5t l&ugrave;i c\\u1ee7a m\\u1ed9t th\\u01b0\\u01a1ng hi\\u1ec7u \\u0111\\u01b0\\u1ee3c k\\u1ef3 v\\u1ecdng. H&atilde;ng v\\u1eabn l&agrave; c&ocirc;ng ty c&ocirc;ng ngh\\u1ec7, nh\\u01b0ng c&oacute; th\\u1ec3 kh&ocirc;ng c&ograve;n l&agrave; m\\u1ed9t nh&agrave; s\\u1ea3n xu\\u1ea5t \\u0111i\\u1ec7n tho\\u1ea1i th\\u1ef1c th\\u1ee5. Th\\u1ef1c t\\u1ebf, ngu\\u1ed3n s\\u1ed1ng c\\u1ee7a doanh nghi\\u1ec7p \\u0110&agrave;i Loan \\u0111\\u1ebfn t\\u1eeb Vive - thi\\u1ebft b\\u1ecb \\u0111i \\u0111\\u1ea7u cho tr\\u1ea3i nghi\\u1ec7m th\\u1ef1c t\\u1ebf \\u1ea3o (VR) cao c\\u1ea5p - thay v&igrave; m\\u1ed9t smartphone n&agrave;o \\u0111&oacute;. Vive \\u0111&atilde; t\\u1ea1o ra doanh thu ban \\u0111\\u1ea7u cho HTC v&agrave; chi\\u1ebfm 35,7% th\\u1ecb tr\\u01b0\\u1eddng VR t&iacute;nh \\u0111\\u1ebfn h\\u1ebft 2018. B\\u1ea3o L&acirc;m (theo Slashgear)<\\/p>\",\"tags\":[\"14\",null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:56:03', '2019-04-13 08:56:03'),
(711, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:56:04', '2019-04-13 08:56:04'),
(712, 2, 'admin/posts/12', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"30% ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng s\\u1ebd s\\u1edbm m\\u1ea5t vi\\u1ec7c v\\u00ec AI\",\"slug\":\"30-nguoi-lao-dong-se-som-mat-viec-vi-ai\",\"description\":\"Tr\\u00ed tu\\u1ec7 nh\\u00e2n t\\u1ea1o c\\u00f3 th\\u1ec3 t\\u1ea1o ra vi\\u1ec7c l\\u00e0m v\\u00e0 c\\u00e1c ng\\u00e0nh kinh doanh m\\u1edbi ho\\u1eb7c s\\u1ebd \\u0111\\u1ea9y ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng v\\u00e0o t\\u00ecnh tr\\u1ea1ng th\\u1ea5t nghi\\u1ec7p kh\\u00f4ng l\\u1ed1i tho\\u00e1t.\",\"content\":\"<p>Theo c&aacute;c s\\u1ed1 li\\u1ec7u v&agrave; tin t\\u1ee9c \\u0111\\u01b0\\u1ee3c c&ocirc;ng b\\u1ed1 g\\u1ea7n \\u0111&acirc;y, ng&agrave;y c&agrave;ng nhi\\u1ec1u c&ocirc;ng ty ch\\u1ea5p nh\\u1eadn d&agrave;nh nh\\u1eefng kho\\u1ea3n ti\\u1ec1n l\\u1edbn \\u0111\\u1ec3 \\u0111\\u1ea7u t\\u01b0 v&agrave;o tr&iacute; tu\\u1ec7 nh&acirc;n t\\u1ea1o (AI). \\u0110i\\u1ec1u \\u0111&oacute; ph\\u1ea7n n&agrave;o cho th\\u1ea5y c&ocirc;ng ngh\\u1ec7 n&agrave;y \\u0111ang h\\u01b0\\u1edbng t\\u1edbi vi\\u1ec7c tr\\u1edf th&agrave;nh c&ocirc;ng c\\u1ee5 s\\u1eed d\\u1ee5ng m\\u1ed9t c&aacute;ch ch\\u1ee7 \\u0111\\u1ea1o. \\u0110\\u01a1n c\\u1eed c&ocirc;ng ty c&ocirc;ng ngh\\u1ec7 DocuSign \\u0111&atilde; \\u0111\\u1ea7u t\\u01b0 15 tri\\u1ec7u USD v&agrave;o m\\u1ed9t c&ocirc;ng ty kh\\u1edfi nghi\\u1ec7p l\\u0129nh v\\u1ef1c AI, Apple thu mua m\\u1ed9t nh&agrave; ph&aacute;t tri\\u1ec3n camera gia \\u0111&igrave;nh d\\u1ef1a tr&ecirc;n AI hay b&aacute;o c&aacute;o c\\u1ee7a CIO cho bi\\u1ebft c&aacute;c ng&acirc;n h&agrave;ng d\\u1ef1 ki\\u1ebfn&nbsp;chi 5,6 t\\u1ef7 USD cho c&aacute;c gi\\u1ea3i ph&aacute;p AI v&agrave;o n\\u0103m 2019. C&oacute; th\\u1ec3 n&oacute;i nh\\u1eefng d\\u1ef1 &aacute;n v\\u1ec1 AI xu\\u1ea5t hi\\u1ec7n \\u1edf kh\\u1eafp m\\u1ecdi n\\u01a1i. M\\u1eb7c d&ugrave; c&oacute; nhi\\u1ec1u lo ng\\u1ea1i v\\u1ec1 m\\u1eb7t \\u0111\\u1ea1o \\u0111\\u1ee9c, c&aacute;c chuy&ecirc;n gia v&agrave; nh\\u1eefng nh&agrave; khoa h\\u1ecdc h&agrave;ng \\u0111\\u1ea7u t\\u1ea1i thung l\\u0169ng Silicon v\\u1eabn khuy\\u1ebfn kh&iacute;ch c&aacute;c c&ocirc;ng ty nh\\u1ea3y v&agrave;o l\\u0129nh v\\u1ef1c n&agrave;y v&agrave; s\\u1eed d\\u1ee5ng AI. R\\u1ea5t nhi\\u1ec1u c&ocirc;ng ty \\u0111&atilde; v&agrave; \\u0111ang th\\u1ef1c hi\\u1ec7n vi\\u1ec7c \\u0111&oacute;.&nbsp;KPMG, m\\u1ed9t trong b\\u1ed1n &ocirc;ng l\\u1edbn (Big Four) c\\u1ee7a ng&agrave;nh ki\\u1ec3m to&aacute;n,&nbsp;tuy&ecirc;n b\\u1ed1 h\\u01a1n m\\u1ed9t n\\u1eeda s\\u1ed1 gi&aacute;m \\u0111\\u1ed1c \\u0111i\\u1ec1u h&agrave;nh doanh nghi\\u1ec7p c&oacute; k\\u1ebf ho\\u1ea1ch tri\\u1ec3n khai m\\u1ed9t s\\u1ed1 h&igrave;nh th\\u1ee9c AI trong v&ograve;ng 12 th&aacute;ng t\\u1edbi. Trong nh\\u1eefng cu\\u1ed9c th\\u1ea3o lu\\u1eadn v\\u1ec1 s\\u1ef1 ph\\u1ed5 bi\\u1ebfn c\\u1ee7a AI, t&aacute;c \\u0111\\u1ed9ng ti\\u1ec1m n\\u0103ng c\\u1ee7a c&ocirc;ng ngh\\u1ec7 n&agrave;y trong vi\\u1ec7c ho&agrave;n th&agrave;nh c&aacute;c c&ocirc;ng vi\\u1ec7c lu&ocirc;n l&agrave; v\\u1ea5n \\u0111\\u1ec1 g&acirc;y nhi\\u1ec1u ch&uacute; &yacute;. Tuy r\\u1ea5t kh&oacute; \\u0111\\u1ec3 h&igrave;nh dung, m\\u1ed9t s\\u1ed1 ng\\u01b0\\u1eddi \\u0111&atilde; c\\u1ed1 g\\u1eafng \\u01b0\\u1edbc t&iacute;nh n&oacute;. Ch\\u1eb3ng h\\u1ea1n nh\\u01b0 Gartner, c&ocirc;ng ty nghi&ecirc;n c\\u1ee9u v&agrave; t\\u01b0 v\\u1ea5n n\\u1ed5i ti\\u1ebfng to&agrave;n c\\u1ea7u, tin r\\u1eb1ng AI s\\u1ebd t\\u1ea1o ra nhi\\u1ec1u vi\\u1ec7c l&agrave;m h\\u01a1n l&agrave; ph&aacute; h\\u1ee7y ch&uacute;ng t\\u1eeb nay \\u0111\\u1ebfn n\\u0103m 2025. C&aacute;c cu\\u1ed9c c&aacute;ch m\\u1ea1ng c&ocirc;ng ngh\\u1ec7 tr\\u01b0\\u1edbc \\u0111&acirc;y \\u0111&atilde; khi\\u1ebfn khi\\u1ebfn nhi\\u1ec1u ng\\u01b0\\u1eddi m\\u1ea5t vi\\u1ec7c, nh\\u01b0ng cu\\u1ed1i c&ugrave;ng ch&uacute;ng \\u0111\\u1ec1u t\\u1ea1o ra c&aacute;c vi\\u1ec7c l&agrave;m v&agrave; ng&agrave;nh c&ocirc;ng nghi\\u1ec7p m\\u1edbi. M&ocirc; h&igrave;nh \\u0111&oacute; \\u0111&atilde; x\\u1ea3y ra nhi\\u1ec1u l\\u1ea7n v&agrave; d\\u1ea7n d\\u1ea7n \\u0111&atilde; tr\\u1edf th&agrave;nh m\\u1ed9t s\\u1ef1 l\\u1ef1a ch\\u1ecdn kh&ocirc;n ngoan, \\u0111\\u01b0\\u1ee3c nhi\\u1ec1u ng\\u01b0\\u1eddi ch\\u1ea5p nh\\u1eadn. Nh\\u01b0ng kh&ocirc;ng ph\\u1ea3i ai c\\u0169ng l\\u1ea1c quan khi n&oacute;i \\u0111\\u1ebfn t&aacute;c \\u0111\\u1ed9ng c\\u1ee7a AI. Trong m\\u1ed9t cu\\u1ed9c ph\\u1ecfng v\\u1ea5n, Kai-Fu Lee, chuy&ecirc;n gia h&agrave;ng \\u0111\\u1ea7u th\\u1ebf gi\\u1edbi v\\u1ec1 tr&iacute; tu\\u1ec7 nh&acirc;n t\\u1ea1o, tuy&ecirc;n b\\u1ed1 ch\\u1ec9 sau 15 n\\u0103m, c&ocirc;ng ngh\\u1ec7 AI c&oacute; th\\u1ec3 thay th\\u1ebf kho\\u1ea3ng 40% c&ocirc;ng vi\\u1ec7c tr&ecirc;n to&agrave;n th\\u1ebf gi\\u1edbi. C&ograve;n trong b&aacute;o c&aacute;o c\\u1ee7a KPMG, 75% c&aacute;c t\\u1ed5 ch\\u1ee9c \\u0111\\u01b0\\u1ee3c kh\\u1ea3o s&aacute;t c\\u0169ng hy v\\u1ecdng t\\u1ef1 \\u0111\\u1ed9ng h&oacute;a v&agrave; AI s\\u1ebd t&aacute;c \\u0111\\u1ed9ng \\u0111&aacute;ng k\\u1ec3, t\\u1eeb 10% \\u0111\\u1ebfn 50% nh&acirc;n vi&ecirc;n c\\u1ee7a h\\u1ecd trong hai n\\u0103m t\\u1edbi. M\\u1ed9t gi&aacute;m \\u0111\\u1ed1c \\u0111i\\u1ec1u h&agrave;nh c\\u1ee7a Citigroup n&oacute;i n\\u1ebfu ti\\u1ebfp t\\u1ee5c c\\u1ea3i ti\\u1ebfn, AI c&oacute; th\\u1ec3 gi&uacute;p gi\\u1ea3m 30% s\\u1ed1 l\\u01b0\\u1ee3ng nh&acirc;n vi&ecirc;n t\\u1ea1i ng&acirc;n h&agrave;ng. Trong khi nhi\\u1ec1u c&ocirc;ng ty tuy&ecirc;n b\\u1ed1 AI s\\u1ebd lo\\u1ea1i b\\u1ecf m\\u1ed9t s\\u1ed1 c&ocirc;ng vi\\u1ec7c bu\\u1ed3n t\\u1ebb v&agrave; l\\u1eb7p \\u0111i l\\u1eb7p l\\u1ea1i, khi\\u1ebfn m\\u1ecdi ng\\u01b0\\u1eddi c&oacute; th\\u1ec3 t\\u1eadp trung v&agrave;o l&agrave;m nh\\u1eefng c&ocirc;ng vi\\u1ec7c c&oacute; tr&igrave;nh \\u0111\\u1ed9 cao h\\u01a1n th&igrave; m\\u1ed9t nh&agrave; \\u0111\\u1ea7u t\\u01b0 m\\u1ea1o hi\\u1ec3m gi\\u1ea5u t&ecirc;n l\\u1ea1i cho r\\u1eb1ng s\\u1ef1 th\\u1eadt c&oacute; th\\u1ec3 r\\u1ea5t th\\u1ea3m kh\\u1ed1c. Theo &ocirc;ng, kh&ocirc;ng ch\\u1ec9 nh\\u1eefng c&ocirc;ng vi\\u1ec7c c&oacute; tay ngh\\u1ec1 th\\u1ea5p m&agrave; th\\u1eadm ch&iacute; c\\u1ea3 c&aacute;c v\\u1ecb tr&iacute; \\u0111&ograve;i h\\u1ecfi tr&igrave;nh \\u0111\\u1ed9 cao c\\u0169ng c&oacute; th\\u1ec3 b\\u1ecb thay th\\u1ebf.&nbsp;C&aacute;c nh&agrave; ph&acirc;n t&iacute;ch c\\u1ee7a Gartner g\\u1ea7n \\u0111&acirc;y \\u0111&atilde; b&aacute;o c&aacute;o AI s\\u1ebd lo\\u1ea1i b\\u1ecf 80% nhi\\u1ec7m v\\u1ee5 qu\\u1ea3n l&yacute; d\\u1ef1 &aacute;n. Theo m\\u1ed9t b&agrave;i vi\\u1ebft tr&ecirc;n New York Times, nhi\\u1ec1u CEO c\\u1ee7a c&aacute;c c&ocirc;ng ty ch\\u1ea5p nh\\u1eadn tr\\u1ea3 ti\\u1ec1n cho vi\\u1ec7c ph&aacute;t tri\\u1ec3n AI, ch\\u1ea1y \\u0111ua t\\u1ef1 \\u0111\\u1ed9ng h&oacute;a m&agrave; r\\u1ea5t &iacute;t quan t&acirc;m \\u0111\\u1ebfn t&aacute;c \\u0111\\u1ed9ng t\\u1edbi ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng.&nbsp;B&agrave;i b&aacute;o c\\u0169ng tr&iacute;ch d\\u1eabn m\\u1ed9t cu\\u1ed9c kh\\u1ea3o s&aacute;t c\\u1ee7a Deloitte t\\u1eeb n\\u0103m 2017, cho th\\u1ea5y 53% c&aacute;c c&ocirc;ng ty \\u0111&atilde; b\\u1eaft \\u0111\\u1ea7u s\\u1eed d\\u1ee5ng m&aacute;y m&oacute;c \\u0111\\u1ec3 th\\u1ef1c hi\\u1ec7n nh\\u1eefng nhi\\u1ec7m v\\u1ee5 tr\\u01b0\\u1edbc \\u0111&acirc;y c\\u1ee7a con ng\\u01b0\\u1eddi. Con s\\u1ed1 n&agrave;y d\\u1ef1 ki\\u1ebfn&nbsp;t\\u0103ng l&ecirc;n 72% v&agrave;o n\\u0103m t\\u1edbi. Nhi\\u1ec1u c&ocirc;ng ty c\\u0169ng s\\u1edbm nh\\u1eadn ra nguy c\\u01a1 c&oacute; th\\u1ec3&nbsp;t\\u1ee5t l\\u1ea1i ph&iacute;a sau do thua k&eacute;m trong cu\\u1ed9c ch\\u1ea1y \\u0111ua c&ocirc;ng ngh\\u1ec7. M\\u1ed9t b&aacute;o c&aacute;o&nbsp;c\\u1ee7a Harvard Business Review \\u0111&aacute;nh gi&aacute;&nbsp;nh\\u1eefng ng\\u01b0\\u1eddi \\u0111i tr\\u01b0\\u1edbc v\\u1ec1 AI c&oacute; xu h\\u01b0\\u1edbng thu \\u0111\\u01b0\\u1ee3c l\\u1ee3i nhu\\u1eadn l\\u1edbn. C&aacute;c c&ocirc;ng ty n&agrave;y s\\u1ebd \\u0111\\u01b0\\u1ee3c h\\u01b0\\u1edfng l\\u1ee3i t\\u1eeb s\\u1ef1 \\u0111\\u1ed5i m\\u1edbi, cho ph&eacute;p h\\u1ecd ph\\u1ee5c v\\u1ee5 v&agrave; th\\u1eadm ch&iacute; c&oacute; th\\u1ec3 t\\u1ea1o ra th\\u1ecb tr\\u01b0\\u1eddng m\\u1edbi, \\u0111\\u1ed3ng th\\u1eddi gi&agrave;nh \\u0111\\u01b0\\u1ee3c th\\u1ecb ph\\u1ea7n t\\u1eeb nh\\u1eefng \\u0111\\u1ed1i th\\u1ee7 kh&ocirc;ng ch\\u1ea5p nh\\u1eadn s\\u1eed d\\u1ee5ng AI \\u1edf th\\u1ecb tr\\u01b0\\u1eddng hi\\u1ec7n t\\u1ea1i. Kho\\u1ea3ng c&aacute;ch gi\\u1eefa nh\\u1eefng ng\\u01b0\\u1eddi \\u0111\\u1ea7u t\\u01b0 v&agrave; kh&ocirc;ng \\u0111\\u1ea7u t\\u01b0 v&agrave;o c&ocirc;ng ngh\\u1ec1 n&agrave;y s\\u1ebd ng&agrave;y c&agrave;ng l\\u1edbn, \\u0111\\u1eb7c bi\\u1ec7t trong c&aacute;c th\\u1ecb tr\\u01b0\\u1eddng c&oacute; t&iacute;nh c\\u1ea1nh tranh kh\\u1ed1c li\\u1ec7t. Kh\\u1ea3o s&aacute;t v\\u1ec1 AI c\\u1ee7a c&ocirc;ng ty quan h\\u1ec7 c&ocirc;ng ch&uacute;ng Edelman c\\u0169ng cho th\\u1ea5y c&oacute; m\\u1ed9t quan \\u0111i\\u1ec3m chung v\\u1ec1 vi\\u1ec7c AI ph&aacute;t tri\\u1ec3n s\\u1ebd d\\u1eabn \\u0111\\u1ebfn t&igrave;nh tr\\u1ea1ng m\\u1ea5t vi\\u1ec7c l&agrave;m ng\\u1eafn h\\u1ea1n, b&ecirc;n c\\u1ea1nh t&igrave;nh h&igrave;nh x&atilde; h\\u1ed9i c&oacute; th\\u1ec3 b\\u1ecb gi&aacute;n \\u0111o\\u1ea1n. C&ocirc;ng ngh\\u1ec7 n&agrave;y c\\u0169ng \\u0111\\u01b0\\u1ee3c \\u0111&aacute;nh gi&aacute; s\\u1ebd c&oacute; l\\u1ee3i cho ng\\u01b0\\u1eddi gi&agrave;u v&agrave; l&agrave;m t\\u1ed5n th\\u01b0\\u01a1ng ng\\u01b0\\u1eddi ngh&egrave;o. D\\u1eabu v\\u1eady, r\\u1ea5t &iacute;t ng\\u01b0\\u1eddi ph\\u1ee7 nh\\u1eadn vi\\u1ec7c xu h\\u01b0\\u1edbng v\\u1ec1 AI l&agrave; kh&ocirc;ng th\\u1ec3 tr&aacute;nh kh\\u1ecfi, d&ugrave;&nbsp;c&aacute;c v\\u1ea5n \\u0111\\u1ec1 ph&aacute;t sinh c&oacute; th\\u1ec3 s\\u1ebd l&agrave;m ch\\u1eadm qu&aacute; tr&igrave;nh n&agrave;y nh\\u01b0 m\\u1ed1i quan t&acirc;m v\\u1ec1 \\u0111\\u1ea1o \\u0111\\u1ee9c hay s\\u1ef1 ph\\u1ea3n \\u1ee9ng c\\u1ee7a ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng.&nbsp;Nh\\u1eefng &aacute;p l\\u1ef1c \\u0111\\u1ed1i kh&aacute;ng n&agrave;y d&ugrave; t\\u1ed3n t\\u1ea1i c\\u0169ng kh&ocirc;ng c&oacute; kh\\u1ea3 n\\u0103ng thay \\u0111\\u1ed5i \\u0111&aacute;ng k\\u1ec3 t\\u1edbi qu\\u1ef9 \\u0111\\u1ea1o c\\u1ee7a vi\\u1ec7c &aacute;p d\\u1ee5ng AI, b\\u1edfi l\\u1ee3i &iacute;ch kinh doanh m&agrave; n&oacute; \\u0111em l\\u1ea1i \\u0111\\u01a1n gi\\u1ea3n l&agrave; qu&aacute; l\\u1edbn. M\\u1ed9t robot t&iacute;ch h\\u1ee3p&nbsp;AI c&oacute; th\\u1ec3 thay th\\u1ebf c&ocirc;ng vi\\u1ec7c c\\u1ee7a r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi. Theo c&aacute;c chuy&ecirc;n gia, AI c&oacute; th\\u1ec3 l&agrave; s\\u1ef1 thay \\u0111\\u1ed5i m&ocirc; h&igrave;nh nhanh nh\\u1ea5t trong l\\u1ecbch s\\u1eed c&ocirc;ng ngh\\u1ec7. Tr\\u01b0\\u1edbc \\u0111&oacute;, c&aacute;c ti\\u1ebfn b\\u1ed9 c&ocirc;ng ngh\\u1ec7 l\\u1edbn kh&aacute;c nh\\u01b0 tr&igrave;nh duy\\u1ec7t web, di \\u0111\\u1ed9ng, d\\u1eef li\\u1ec7u \\u0111&aacute;m m&acirc;y v&agrave; Big Data \\u0111\\u1ec3 \\u0111\\u1ea1t \\u0111\\u01b0\\u1ee3c m\\u1ee9c \\u0111\\u1ed9 tri\\u1ec3n khai \\u0111&aacute;ng k\\u1ec3 c\\u1ea7n kho\\u1ea3ng th\\u1eddi gian kh&ocirc;ng nh\\u1ecf. Trong khi \\u0111&oacute; AI c&oacute; th\\u1ec3 ch\\u1ec9 t\\u1ed1n &iacute;t h\\u01a1n m\\u1ed9t n\\u1eeda qu&atilde;ng th\\u1eddi gian n&agrave;y. C&aacute;c nh&agrave; nghi&ecirc;n c\\u1ee9u t\\u1ea1i vi\\u1ec7n Brookings (M\\u1ef9) l\\u01b0u &yacute; r\\u1eb1ng trong&nbsp;30 n\\u0103m qua, c&ocirc;ng ngh\\u1ec7 l&agrave; m\\u1ed9t ngu\\u1ed3n \\u0111&aacute;ng k\\u1ec3 \\u0111\\u1ec3 t\\u1ea1o ra c&ocirc;ng vi\\u1ec7c v&agrave; c\\u01a1 h\\u1ed9i m\\u1edbi. Tuy nhi&ecirc;n, h\\u1ecd tin r\\u1eb1ng c&aacute;c ch&iacute;nh ph\\u1ee7 c\\u1ea7n gi&uacute;p ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng v&agrave; c\\u1ed9ng \\u0111\\u1ed3ng \\u0111i\\u1ec1u ch\\u1ec9nh l\\u1ea1i vi\\u1ec7c ph&acirc;n ph\\u1ed1i vi\\u1ec7c l&agrave;m, c\\u0169ng nh\\u01b0 gi\\u1ea3m b\\u1edbt kh&oacute; kh\\u0103n cho nh\\u1eefng ng\\u01b0\\u1eddi c&oacute; thu nh\\u1eadp th\\u1ea5p. Ngo&agrave;i c&aacute;c ch\\u01b0\\u01a1ng tr&igrave;nh \\u0111&agrave;o t\\u1ea1o ngh\\u1ec1 truy\\u1ec1n th\\u1ed1ng, Brookings k&ecirc;u g\\u1ecdi s\\u1ef1 \\u0111i\\u1ec1u ch\\u1ec9nh v\\u1ec1 quy\\u1ec1n l\\u1ee3i tr&ecirc;n ph\\u1ea1m vi to&agrave;n c\\u1ea7u. C\\u1ee5 th\\u1ec3, n&oacute; bao g\\u1ed3m vi\\u1ec7c t\\u0103ng th&ecirc;m thu nh\\u1eadp cho ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c \\u0111&agrave;o t\\u1ea1o \\u0111\\u1ed3ng th\\u1eddi x&acirc;y d\\u1ef1ng ch\\u1ebf \\u0111\\u1ed9 thu nh\\u1eadp c\\u01a1 b\\u1ea3n tr&ecirc;n ph\\u1ea1m vi to&agrave;n c\\u1ea7u, g\\u1ecdi t\\u1eaft l&agrave; UBI. \\u0110&oacute; l&agrave; m\\u1ed9t kho\\u1ea3n thanh to&aacute;n ti\\u1ec1n m\\u1eb7t \\u0111\\u1ecbnh k\\u1ef3 v&agrave; v&ocirc; \\u0111i\\u1ec1u ki\\u1ec7n cho m\\u1ecdi ng\\u01b0\\u1eddi b\\u1ea5t k\\u1ec3 h\\u1ecd c&oacute; l&agrave;m vi\\u1ec7c hay kh&ocirc;ng. Nguy&ecirc;n nh&acirc;n b\\u1edfi v\\u1edbi s\\u1ef1 ti\\u1ebfn b\\u1ed9 c\\u1ee7a AI, r\\u1ea5t nhi\\u1ec1u ng\\u01b0\\u1eddi c&oacute; th\\u1ec3 b\\u1ecb b\\u1ecf l\\u1ea1i ph&iacute;a sau v&agrave; h\\u1ecd c\\u1ea7n t\\u1edbi s\\u1ef1 h\\u1ed7 tr\\u1ee3 \\u0111\\u1eb7c bi\\u1ec7t. Nh&agrave; s\\u1eed h\\u1ecdc, tri\\u1ebft gia ki&ecirc;m gi&aacute;o s\\u01b0 khoa h\\u1ecdc n\\u1ed5i ti\\u1ebfng Yuval Noah Harari tin AI ho&agrave;n to&agrave;n c&oacute; th\\u1ec3 s\\u1ebd d\\u1eabn \\u0111\\u1ebfn s\\u1ef1 ph&aacute;t tri\\u1ec3n c\\u1ee7a m\\u1ed9t t\\u1ea7ng l\\u1edbp ng\\u01b0\\u1eddi th\\u1ea5t nghi\\u1ec7p m\\u1edbi. &Ocirc;ng c\\u0169ng cho r\\u1eb1ng thung l\\u0169ng Silicon n&ecirc;n \\u1ee7ng h\\u1ed9 UBI, b\\u1edfi th&ocirc;ng \\u0111i\\u1ec7p \\u1edf \\u0111&acirc;y l&agrave;:&nbsp;&quot;Ch&uacute;ng t&ocirc;i kh&ocirc;ng c\\u1ea7n b\\u1ea1n. Nh\\u01b0ng ch&uacute;ng t&ocirc;i r\\u1ea5t t\\u1ed1t, v&igrave; v\\u1eady ch&uacute;ng t&ocirc;i s\\u1ebd ch\\u0103m s&oacute;c b\\u1ea1n&quot;. \\u0110\\u1ed1i m\\u1eb7t v\\u1edbi hai quan \\u0111i\\u1ec3m v\\u1ec1 \\u1ee7ng h\\u1ed9 v&agrave; ph\\u1ea3n \\u0111\\u1ed1i tr&iacute; tu\\u1ec7 nh&acirc;n t\\u1ea1o, ng\\u01b0\\u1eddi lao \\u0111\\u1ed9ng g\\u1ea7n nh\\u01b0 ch\\u1ec9 c&oacute; hai l\\u1ef1a ch\\u1ecdn. M\\u1ed9t l&agrave;&nbsp;li&ecirc;n t\\u1ee5c n&acirc;ng c\\u1ea5p ki\\u1ebfn th\\u1ee9c v&agrave; k\\u1ef9 n\\u0103ng c\\u1ee7a m&igrave;nh \\u0111\\u1ec3 ch&uacute;ng tr\\u1edf n&ecirc;n nhanh h\\u01a1n, nhi\\u1ec1u h\\u01a1n so tr\\u01b0\\u1edbc kia. Ho\\u1eb7c hy v\\u1ecdng UBI s\\u1ebd tr\\u1edf th&agrave;nh hi\\u1ec7n th\\u1ef1c, k\\u1ecbp th\\u1eddi ng\\u0103n ch\\u1eb7n h\\u1ecd r\\u01a1i xu\\u1ed1ng v\\u1ef1c th\\u1eb3m \\u0111\\u01b0\\u1ee3c t\\u1ea1o ra b\\u1edfi c&ocirc;ng ngh\\u1ec7 AI. B\\u1ea3o Nam (theo VentureBeat)<\\/p>\",\"tags\":[\"11\",null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:56:23', '2019-04-13 08:56:23'),
(713, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:56:24', '2019-04-13 08:56:24'),
(714, 2, 'admin/posts/11', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"L\\u00f2 s\\u01b0\\u1edfi b\\u1eb1ng \\u0111\\u00e8n LED cho ch\\u1ea1m tay v\\u00e0o l\\u1eeda\",\"slug\":\"lo-suoi-bang-den-led-cho-cham-tay-vao-lua\",\"description\":\"Ng\\u01b0\\u1eddi d\\u00f9ng c\\u00f3 th\\u1ec3 ch\\u1ea1m tay, thay \\u0111\\u1ed5i \\u0111\\u1ed9 cao ho\\u1eb7c m\\u00e0u s\\u1eafc c\\u1ee7a nh\\u1eefng ng\\u1ecdn l\\u1eeda th\\u00f4ng qua \\u0111i\\u1ec1u khi\\u1ec3n t\\u1eeb xa.\",\"content\":\"<p>&nbsp; &nbsp; L&ograve; s\\u01b0\\u1edfi b\\u1eb1ng \\u0111&egrave;n LED B\\u1ea3o Nam (theo GIGadgets)<\\/p>\",\"tags\":[\"15\",null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:56:43', '2019-04-13 08:56:43'),
(715, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:56:44', '2019-04-13 08:56:44');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(716, 2, 'admin/posts/10', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"title\":\"Qualcomm: \'N\\u1ebfu Apple g\\u1ecdi, ch\\u00fang t\\u00f4i s\\u1ebd h\\u1ed7 tr\\u1ee3\'\",\"slug\":\"qualcomm-\'neu-apple-goi-chung-toi-se-ho-tro\'\",\"description\":\"D\\u00f9 cu\\u1ed9c chi\\u1ebfn ph\\u00e1p l\\u00fd gi\\u1eefa hai \\u0111\\u1ea1i gia c\\u00f4ng ngh\\u1ec7 M\\u1ef9 \\u0111ang di\\u1ec5n ra, Qualcomm cho bi\\u1ebft v\\u1eabn s\\u1eb5n s\\u00e0ng h\\u1ee3p t\\u00e1c v\\u1edbi Apple.\",\"content\":\"<p>Tu\\u1ea7n tr\\u01b0\\u1edbc, chuy&ecirc;n gia ph&acirc;n t&iacute;ch Timothy Arcuri c\\u1ee7a UBS d\\u1ef1 \\u0111o&aacute;n &quot;iPhone 5G c&oacute; th\\u1ec3 kh&ocirc;ng k\\u1ecbp c&oacute; m\\u1eb7t trong n\\u0103m 2020&quot; do thi\\u1ebfu b\\u1ed9 x\\u1eed l&yacute; 5G v&agrave; bu\\u1ed9c Apple ph\\u1ea3i t&igrave;m c&aacute;ch t\\u1ef1 ph&aacute;t tri\\u1ec3n chip m\\u1ea1ng 5G \\u0111\\u1ec3 d&ugrave;ng tr&ecirc;n iPhone 2021. Trong cu\\u1ed9c ph\\u1ecfng v\\u1ea5n v\\u1edbi Axios, Cristiano Amon, Ch\\u1ee7 t\\u1ecbch Qualcomm, n&oacute;i &ocirc;ng &quot;kh&ocirc;ng b&igrave;nh lu\\u1eadn v\\u1ec1 nh\\u1eefng g&igrave; Apple \\u0111ang l&agrave;m, nh\\u01b0ng c&agrave;ng tr&igrave; ho&atilde;n tri\\u1ec3n khai 5G, th&aacute;ch th\\u1ee9c m&agrave; c&ocirc;ng ty ph\\u1ea3i \\u0111\\u1ed1i m\\u1eb7t s\\u1ebd c&agrave;ng l\\u1edbn&quot;. Khi \\u0111\\u01b0\\u1ee3c h\\u1ecfi li\\u1ec7u c&oacute; kh\\u1ea3 n\\u0103ng Qualcomm s\\u1ebd h\\u1ee3p t&aacute;c v\\u1edbi Apple b\\u1ea5t ch\\u1ea5p v\\u1ee5 ki\\u1ec7n dai d\\u1eb3ng gi\\u1eefa hai b&ecirc;n, &ocirc;ng Amon n&oacute;i th\\u1eb3ng: &quot;Ch&uacute;ng t&ocirc;i v\\u1eabn \\u1edf San Diego, h\\u1ecd c&oacute; s\\u1ed1 c\\u1ee7a ch&uacute;ng t&ocirc;i. N\\u1ebfu h\\u1ecd g\\u1ecdi, ch&uacute;ng t&ocirc;i s\\u1ebd h\\u1ed7 tr\\u1ee3&quot;. \\u1ea2nh: 9to5mac. V\\u1ecb \\u0111\\u1ea1i di\\u1ec7n Qualcomm nh\\u1ea5n m\\u1ea1nh: &quot;4G \\u0111&atilde; ho&agrave;n to&agrave;n thay \\u0111\\u1ed5i &acirc;m nh\\u1ea1c. Ch&uacute;ng ta gi\\u1edd c&oacute; th\\u1ec3 ph&aacute;t tr\\u1ef1c ti\\u1ebfp (stream) &acirc;m nh\\u1ea1c. B\\u1ea1n kh&ocirc;ng c\\u1ea7n mua \\u0111\\u0129a CD hay t\\u1ea3i c&aacute;c b&agrave;i h&aacute;t v\\u1ec1 m&aacute;y. V\\u1edbi 5G, \\u0111i\\u1ec1u t\\u01b0\\u01a1ng t\\u1ef1 s\\u1ebd di\\u1ec5n ra v\\u1edbi video. 5G s\\u1ebd t\\u1ea1o ra \\u0111i\\u1ec7n to&aacute;n theo nhu c\\u1ea7u&quot;. H\\u1ed3i th&aacute;ng 11\\/2018, CEO Steve Mollenkopf c\\u1ee7a Qualcomm c\\u0169ng n&oacute;i h\\u1ecd &quot;l\\u01b0\\u1ee1ng l\\u1ef1&quot; trong vi\\u1ec7c gi\\u1ea3i quy\\u1ebft tranh ch\\u1ea5p v\\u1edbi Apple, ng\\u1ee5 &yacute; c\\u1ea3 hai c&oacute; th\\u1ec3 \\u0111&agrave;m ph&aacute;n ri&ecirc;ng. Tuy nhi&ecirc;n, Apple t\\u1eeb ch\\u1ed1i v&agrave; mu\\u1ed1n gi\\u1ea3i quy\\u1ebft m&acirc;u thu\\u1eabn t\\u1ea1i t&ograve;a. Trong khi \\u0111&oacute;, gi\\u1edbi ph&acirc;n t&iacute;ch nh\\u1eadn \\u0111\\u1ecbnh, Apple \\u0111ang ch\\u1eadt v\\u1eadt t&igrave;m gi\\u1ea3i ph&aacute;p 5G cho iPhone do c&oacute; qu&aacute; &iacute;t l\\u1ef1a ch\\u1ecdn. Chip c\\u1ee7a Intel \\u0111\\u01b0\\u1ee3c cho l&agrave; kh&ocirc;ng \\u0111&aacute;p \\u1ee9ng ti&ecirc;u chu\\u1ea9n. Vi\\u1ec7c h\\u1ee3p t&aacute;c v\\u1edbi Samsung kh&ocirc;ng \\u0111\\u01b0\\u1ee3c \\u01b0u ti&ecirc;n do Samsung l&agrave; \\u0111\\u1ed1i th\\u1ee7 l\\u1edbn nh\\u1ea5t tr&ecirc;n th\\u1ecb tr\\u01b0\\u1eddng di \\u0111\\u1ed9ng v&agrave; s\\u1ebd \\u0111\\u01b0a ra nh\\u1eefng \\u0111i\\u1ec1u kho\\u1ea3n g&acirc;y kh&oacute; cho Apple, c&ograve;n c&aacute;c h&atilde;ng Trung Qu\\u1ed1c l\\u1ea1i kh&oacute; \\u0111&aacute;p \\u1ee9ng y&ecirc;u c\\u1ea7u cao v\\u1ec1 th\\u1eddi gian, l\\u1ed9 tr&igrave;nh xu\\u1ea5t x\\u01b0\\u1edfng c\\u1ee7a Apple... Phi&ecirc;n t&ograve;a gi\\u1eefa Apple v&agrave; Qualcomm s\\u1ebd b\\u1eaft \\u0111\\u1ea7u t\\u1eeb ng&agrave;y 15\\/4 t\\u1ea1i San Diego, c&oacute; s\\u1ef1 tham gia c\\u1ee7a Apple CEO Tim Cook v&agrave; nhi\\u1ec1u l&atilde;nh \\u0111\\u1ea1o kh&aacute;c, li&ecirc;n quan t\\u1edbi kho\\u1ea3n ti\\u1ec1n m\\u1ed9t t\\u1ef7 USD m&agrave; Apple cho l&agrave; \\u0111&atilde; &quot;b\\u1ecb Qualcomm t&iacute;nh ph&iacute; b\\u1ea3n quy\\u1ec1n m\\u1ed9t c&aacute;ch v&ocirc; l&yacute;&quot;. M&acirc;u thu\\u1eabn gi\\u1eefa hai h&atilde;ng b\\u1eaft \\u0111\\u1ea7u di\\u1ec5n ra t\\u1eeb th&aacute;ng 1\\/2017 khi Qualcomm b\\u1ecb \\u1ee6y ban Th\\u01b0\\u01a1ng m\\u1ea1i M\\u1ef9 FTC c&aacute;o bu\\u1ed9c vi ph\\u1ea1m nghi&ecirc;m tr\\u1ecdng lu\\u1eadt c\\u1ea1nh tranh c&ocirc;ng b\\u1eb1ng khi &quot;mua chu\\u1ed9c&quot; c&aacute;c c&ocirc;ng ty \\u0111i\\u1ec7n tho\\u1ea1i, \\u0111\\u1eb7c bi\\u1ec7t l&agrave; Apple, d&ugrave;ng \\u0111\\u1ed9c quy\\u1ec1n chip c\\u1ee7a m&igrave;nh. Ch\\u1ec9 sau v&agrave;i ng&agrave;y, Apple ki\\u1ec7n h&atilde;ng s\\u1ea3n xu\\u1ea5t chip v&agrave; \\u0111&ograve;i b\\u1ed3i th\\u01b0\\u1eddng m\\u1ed9t t\\u1ef7 USD. Qualcomm c\\u0169ng t\\u1ed1 Apple vi ph\\u1ea1m b\\u1ea3n quy\\u1ec1n v&agrave; y&ecirc;u c\\u1ea7u c\\u1ea5m b&aacute;n m\\u1ed9t s\\u1ed1 m\\u1eabu iPhone t\\u1ea1i M\\u1ef9, Trung Qu\\u1ed1c v&agrave; \\u0110\\u1ee9c. Ng&agrave;y 26\\/10\\/2018, Qualcomm cho bi\\u1ebft Apple \\u0111ang n\\u1ee3 7 t\\u1ef7 USD ti\\u1ec1n b\\u1ea3n quy\\u1ec1n b\\u1eb1ng s&aacute;ng ch\\u1ebf chip di \\u0111\\u1ed9ng \\u0111\\u01b0\\u1ee3c s\\u1eed d\\u1ee5ng tr&ecirc;n iPhone. Ch&acirc;u An<\\/p>\",\"tags\":[\"9\",null],\"categories\":[\"3\",null],\"cmt_allow\":\"off\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts?&_sort%5Bcolumn%5D=id&_sort%5Btype%5D=desc\"}', '2019-04-13 08:57:05', '2019-04-13 08:57:05'),
(717, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-13 08:57:06', '2019-04-13 08:57:06'),
(718, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:57:13', '2019-04-13 08:57:13'),
(719, 2, 'admin/posts/17', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:21', '2019-04-13 08:57:21'),
(720, 2, 'admin/posts/16', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:22', '2019-04-13 08:57:22'),
(721, 2, 'admin/posts/15', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:24', '2019-04-13 08:57:24'),
(722, 2, 'admin/posts/19', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:27', '2019-04-13 08:57:27'),
(723, 2, 'admin/posts/21', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:28', '2019-04-13 08:57:28'),
(724, 2, 'admin/posts/22', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:29', '2019-04-13 08:57:29'),
(725, 2, 'admin/posts/23', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:30', '2019-04-13 08:57:30'),
(726, 2, 'admin/posts/24', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:31', '2019-04-13 08:57:31'),
(727, 2, 'admin/posts/25', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:33', '2019-04-13 08:57:33'),
(728, 2, 'admin/posts/26', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:34', '2019-04-13 08:57:34'),
(729, 2, 'admin/posts/27', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:35', '2019-04-13 08:57:35'),
(730, 2, 'admin/posts/28', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:36', '2019-04-13 08:57:36'),
(731, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"soTCp73hlyt39eJSAg6hEctsPQiZdYwqX9KshqDs\",\"_method\":\"PUT\"}', '2019-04-13 08:57:37', '2019-04-13 08:57:37'),
(732, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:57:38', '2019-04-13 08:57:38'),
(733, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\"}', '2019-04-13 08:57:44', '2019-04-13 08:57:44'),
(734, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"}}', '2019-04-14 08:53:00', '2019-04-14 08:53:00'),
(735, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-14 08:54:02', '2019-04-14 08:54:02'),
(736, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\"}', '2019-04-14 08:54:52', '2019-04-14 08:54:52'),
(737, 2, 'admin/posts/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 08:54:58', '2019-04-14 08:54:58'),
(738, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\"}', '2019-04-15 01:23:54', '2019-04-15 01:23:54'),
(739, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\"}', '2019-04-15 01:27:02', '2019-04-15 01:27:02'),
(740, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\"}', '2019-04-15 01:27:26', '2019-04-15 01:27:26'),
(741, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:27:34', '2019-04-15 01:27:34'),
(742, 2, 'admin/posts/7', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:27:35', '2019-04-15 01:27:35'),
(743, 2, 'admin/posts/6', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:27:38', '2019-04-15 01:27:38'),
(744, 2, 'admin/posts/5', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:27:38', '2019-04-15 01:27:38'),
(745, 2, 'admin/posts/4', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:27:43', '2019-04-15 01:27:43'),
(746, 2, 'admin/posts/3', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:27:44', '2019-04-15 01:27:44'),
(747, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:27:51', '2019-04-15 01:27:51'),
(748, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:27:58', '2019-04-15 01:27:58'),
(749, 2, 'admin/posts/24', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:28:00', '2019-04-15 01:28:00'),
(750, 2, 'admin/posts/25', 'PUT', '127.0.0.1', '{\"newsflash\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:28:01', '2019-04-15 01:28:01'),
(751, 2, 'admin/posts/23', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:28:03', '2019-04-15 01:28:03'),
(752, 2, 'admin/posts/21', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:28:05', '2019-04-15 01:28:05'),
(753, 2, 'admin/posts/22', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:28:07', '2019-04-15 01:28:07'),
(754, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"1\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:28:20', '2019-04-15 01:28:20'),
(755, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"1\"}', '2019-04-15 01:30:00', '2019-04-15 01:30:00'),
(756, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:30:16', '2019-04-15 01:30:16'),
(757, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:30:23', '2019-04-15 01:30:23'),
(758, 2, 'admin/posts/7', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:30:24', '2019-04-15 01:30:24'),
(759, 2, 'admin/posts/6', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:30:26', '2019-04-15 01:30:26'),
(760, 2, 'admin/posts/5', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:30:27', '2019-04-15 01:30:27'),
(761, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:31:23', '2019-04-15 01:31:23'),
(762, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\"}', '2019-04-15 01:31:50', '2019-04-15 01:31:50'),
(763, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:31:57', '2019-04-15 01:31:57'),
(764, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\"}', '2019-04-15 01:32:02', '2019-04-15 01:32:02'),
(765, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:32:09', '2019-04-15 01:32:09'),
(766, 2, 'admin/posts/7', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:32:10', '2019-04-15 01:32:10'),
(767, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:32:16', '2019-04-15 01:32:16'),
(768, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"newsflash\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:32:27', '2019-04-15 01:32:27'),
(769, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:32:28', '2019-04-15 01:32:28'),
(770, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:32:45', '2019-04-15 01:32:45'),
(771, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:32:51', '2019-04-15 01:32:51'),
(772, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:33:08', '2019-04-15 01:33:08'),
(773, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:33:15', '2019-04-15 01:33:15'),
(774, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:33:18', '2019-04-15 01:33:18'),
(775, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\"}', '2019-04-15 01:34:48', '2019-04-15 01:34:48'),
(776, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"feature\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:34:55', '2019-04-15 01:34:55'),
(777, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:34:57', '2019-04-15 01:34:57'),
(778, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:35:02', '2019-04-15 01:35:02'),
(779, 2, 'admin/posts/6', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:35:07', '2019-04-15 01:35:07'),
(780, 2, 'admin/posts/7', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:35:08', '2019-04-15 01:35:08'),
(781, 2, 'admin/posts/5', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:35:10', '2019-04-15 01:35:10'),
(782, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:35:13', '2019-04-15 01:35:13'),
(783, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_sort\":{\"column\":\"id\",\"type\":\"desc\"},\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-04-15 01:35:17', '2019-04-15 01:35:17'),
(784, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:35:40', '2019-04-15 01:35:40'),
(785, 2, 'admin/posts/25', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:35:47', '2019-04-15 01:35:47'),
(786, 2, 'admin/posts/24', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:35:48', '2019-04-15 01:35:48'),
(787, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:35:50', '2019-04-15 01:35:50'),
(788, 2, 'admin/posts/23', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:35:58', '2019-04-15 01:35:58'),
(789, 2, 'admin/posts/22', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:35:59', '2019-04-15 01:35:59'),
(790, 2, 'admin/posts/21', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:00', '2019-04-15 01:36:00'),
(791, 2, 'admin/posts/19', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:02', '2019-04-15 01:36:02'),
(792, 2, 'admin/posts/18', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:04', '2019-04-15 01:36:04'),
(793, 2, 'admin/posts/17', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:06', '2019-04-15 01:36:06'),
(794, 2, 'admin/posts/15', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:08', '2019-04-15 01:36:08'),
(795, 2, 'admin/posts/16', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:09', '2019-04-15 01:36:09'),
(796, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:36:11', '2019-04-15 01:36:11'),
(797, 2, 'admin/posts/14', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:24', '2019-04-15 01:36:24'),
(798, 2, 'admin/posts/13', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:26', '2019-04-15 01:36:26'),
(799, 2, 'admin/posts/13', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:30', '2019-04-15 01:36:30'),
(800, 2, 'admin/posts/13', 'PUT', '127.0.0.1', '{\"newsflash\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:31', '2019-04-15 01:36:31'),
(801, 2, 'admin/posts/13', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:32', '2019-04-15 01:36:32'),
(802, 2, 'admin/posts/12', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:33', '2019-04-15 01:36:33'),
(803, 2, 'admin/posts/12', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:34', '2019-04-15 01:36:34'),
(804, 2, 'admin/posts/12', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:35', '2019-04-15 01:36:35'),
(805, 2, 'admin/posts/13', 'PUT', '127.0.0.1', '{\"newsflash\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:35', '2019-04-15 01:36:35'),
(806, 2, 'admin/posts/13', 'PUT', '127.0.0.1', '{\"feature\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:36', '2019-04-15 01:36:36'),
(807, 2, 'admin/posts/12', 'PUT', '127.0.0.1', '{\"recommended\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:38', '2019-04-15 01:36:38'),
(808, 2, 'admin/posts/12', 'PUT', '127.0.0.1', '{\"feature\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:39', '2019-04-15 01:36:39'),
(809, 2, 'admin/posts/11', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:41', '2019-04-15 01:36:41'),
(810, 2, 'admin/posts/10', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:42', '2019-04-15 01:36:42'),
(811, 2, 'admin/posts/10', 'PUT', '127.0.0.1', '{\"newsflash\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:50', '2019-04-15 01:36:50'),
(812, 2, 'admin/posts/9', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:36:52', '2019-04-15 01:36:52'),
(813, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:37:52', '2019-04-15 01:37:52'),
(814, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:38:09', '2019-04-15 01:38:09'),
(815, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:38:12', '2019-04-15 01:38:12'),
(816, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:38:44', '2019-04-15 01:38:44'),
(817, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:39:20', '2019-04-15 01:39:20'),
(818, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:39:49', '2019-04-15 01:39:49'),
(819, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:39:57', '2019-04-15 01:39:57'),
(820, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:40:16', '2019-04-15 01:40:16'),
(821, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:41:55', '2019-04-15 01:41:55'),
(822, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:42:10', '2019-04-15 01:42:10'),
(823, 2, 'admin/posts/28', 'PUT', '127.0.0.1', '{\"newsflash\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:42:28', '2019-04-15 01:42:28'),
(824, 2, 'admin/posts/28', 'PUT', '127.0.0.1', '{\"newsflash\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:42:29', '2019-04-15 01:42:29'),
(825, 2, 'admin/posts/28', 'PUT', '127.0.0.1', '{\"newsflash\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:42:30', '2019-04-15 01:42:30'),
(826, 2, 'admin/posts/28', 'PUT', '127.0.0.1', '{\"newsflash\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:42:31', '2019-04-15 01:42:31'),
(827, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:42:38', '2019-04-15 01:42:38'),
(828, 2, 'admin/posts/25', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:42:49', '2019-04-15 01:42:49'),
(829, 2, 'admin/posts/26', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:43:35', '2019-04-15 01:43:35'),
(830, 2, 'admin/posts/26', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:43:37', '2019-04-15 01:43:37'),
(831, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:43:51', '2019-04-15 01:43:51'),
(832, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:43:56', '2019-04-15 01:43:56'),
(833, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:43:57', '2019-04-15 01:43:57'),
(834, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:44:01', '2019-04-15 01:44:01'),
(835, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:44:03', '2019-04-15 01:44:03'),
(836, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:44:11', '2019-04-15 01:44:11'),
(837, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:44:14', '2019-04-15 01:44:14'),
(838, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:44:23', '2019-04-15 01:44:23'),
(839, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:44:26', '2019-04-15 01:44:26'),
(840, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:44:39', '2019-04-15 01:44:39'),
(841, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:44:41', '2019-04-15 01:44:41'),
(842, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:45:25', '2019-04-15 01:45:25'),
(843, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:45:28', '2019-04-15 01:45:28'),
(844, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:45:57', '2019-04-15 01:45:57'),
(845, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:46:09', '2019-04-15 01:46:09'),
(846, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:47:23', '2019-04-15 01:47:23'),
(847, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:48:20', '2019-04-15 01:48:20'),
(848, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:48:26', '2019-04-15 01:48:26'),
(849, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"recommended\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:48:40', '2019-04-15 01:48:40'),
(850, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:48:42', '2019-04-15 01:48:42'),
(851, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:52:14', '2019-04-15 01:52:14'),
(852, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:52:24', '2019-04-15 01:52:24'),
(853, 2, 'admin/posts/25', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:52:37', '2019-04-15 01:52:37'),
(854, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:52:41', '2019-04-15 01:52:41'),
(855, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 01:52:50', '2019-04-15 01:52:50'),
(856, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"feature\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:52:57', '2019-04-15 01:52:57'),
(857, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"editor_pick\":\"off\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:52:58', '2019-04-15 01:52:58'),
(858, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"bgyLt924mkrUwaCMwweERvRsvVFhBI1atadC5WwA\",\"_method\":\"PUT\"}', '2019-04-15 01:53:00', '2019-04-15 01:53:00'),
(859, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 01:53:01', '2019-04-15 01:53:01'),
(860, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 02:19:21', '2019-04-15 02:19:21'),
(861, 2, 'admin', 'GET', '127.0.0.1', '[]', '2019-04-14 20:56:50', '2019-04-14 20:56:50'),
(862, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 20:56:54', '2019-04-14 20:56:54'),
(863, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-14 20:57:05', '2019-04-14 20:57:05'),
(864, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-14 20:57:36', '2019-04-14 20:57:36'),
(865, 2, 'admin/posts/29/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 20:57:43', '2019-04-14 20:57:43'),
(866, 2, 'admin/posts/29/edit', 'GET', '127.0.0.1', '[]', '2019-04-14 20:58:38', '2019-04-14 20:58:38'),
(867, 2, 'admin/posts/29/edit', 'GET', '127.0.0.1', '[]', '2019-04-14 20:59:00', '2019-04-14 20:59:00'),
(868, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 20:59:10', '2019-04-14 20:59:10'),
(869, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-14 20:59:40', '2019-04-14 20:59:40'),
(870, 2, 'admin/auth/setting', 'GET', '127.0.0.1', '[]', '2019-04-14 20:59:53', '2019-04-14 20:59:53'),
(871, 2, 'admin/medias', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 20:59:57', '2019-04-14 20:59:57'),
(872, 2, 'admin/medias', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 21:00:02', '2019-04-14 21:00:02'),
(873, 2, 'admin/media', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 21:00:10', '2019-04-14 21:00:10'),
(874, 2, 'admin/media', 'GET', '127.0.0.1', '{\"path\":\"\\/public\",\"_pjax\":\"#pjax-container\"}', '2019-04-14 21:00:12', '2019-04-14 21:00:12'),
(875, 2, 'admin/medias', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 21:00:32', '2019-04-14 21:00:32'),
(876, 2, 'admin/categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 21:00:34', '2019-04-14 21:00:34'),
(877, 2, 'admin/categories', 'GET', '127.0.0.1', '[]', '2019-04-14 21:01:07', '2019-04-14 21:01:07'),
(878, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-14 21:01:10', '2019-04-14 21:01:10'),
(879, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 04:04:39', '2019-04-15 04:04:39'),
(880, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:04:44', '2019-04-15 04:04:44'),
(881, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 04:04:46', '2019-04-15 04:04:46'),
(882, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:04:49', '2019-04-15 04:04:49'),
(883, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 04:04:51', '2019-04-15 04:04:51'),
(884, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:04', '2019-04-15 04:05:04'),
(885, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 04:05:05', '2019-04-15 04:05:05'),
(886, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:07', '2019-04-15 04:05:07'),
(887, 2, 'admin/posts/28', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:08', '2019-04-15 04:05:08'),
(888, 2, 'admin/posts/27', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:10', '2019-04-15 04:05:10'),
(889, 2, 'admin/posts/26', 'PUT', '127.0.0.1', '{\"status\":\"off\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:11', '2019-04-15 04:05:11'),
(890, 2, 'admin/posts/27', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:19', '2019-04-15 04:05:19'),
(891, 2, 'admin/posts/28', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:20', '2019-04-15 04:05:20'),
(892, 2, 'admin/posts/26', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:21', '2019-04-15 04:05:21'),
(893, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:05:24', '2019-04-15 04:05:24'),
(894, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 04:08:16', '2019-04-15 04:08:16'),
(895, 2, 'admin/posts/29', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:20', '2019-04-15 04:08:20'),
(896, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 04:08:22', '2019-04-15 04:08:22'),
(897, 2, 'admin/posts/25', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:31', '2019-04-15 04:08:31'),
(898, 2, 'admin/posts/24', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:31', '2019-04-15 04:08:31'),
(899, 2, 'admin/posts/24', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:32', '2019-04-15 04:08:32'),
(900, 2, 'admin/posts/23', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:34', '2019-04-15 04:08:34'),
(901, 2, 'admin/posts/23', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:35', '2019-04-15 04:08:35'),
(902, 2, 'admin/posts/21', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:38', '2019-04-15 04:08:38'),
(903, 2, 'admin/posts/21', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:38', '2019-04-15 04:08:38'),
(904, 2, 'admin/posts/19', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:39', '2019-04-15 04:08:39'),
(905, 2, 'admin/posts/18', 'PUT', '127.0.0.1', '{\"editor_pick\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:40', '2019-04-15 04:08:40'),
(906, 2, 'admin/posts/17', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:43', '2019-04-15 04:08:43'),
(907, 2, 'admin/posts/16', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:44', '2019-04-15 04:08:44'),
(908, 2, 'admin/posts/15', 'PUT', '127.0.0.1', '{\"recommended\":\"on\",\"_token\":\"SxNtp8dWg20vEKbSF5dKjjUrPyPBBCdex4QlaGCY\",\"_method\":\"PUT\"}', '2019-04-15 04:08:45', '2019-04-15 04:08:45'),
(909, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 06:40:33', '2019-04-15 06:40:33'),
(910, 2, 'admin/posts/26/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:01:12', '2019-04-15 07:01:12'),
(911, 2, 'admin/posts/26', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"feature\":\"off\",\"title\":\"8 \\u0111\\u1ed9i thi v\\u00e0o chung k\\u1ebft cu\\u1ed9c thi L\\u1eadp tr\\u00ecnh xe t\\u1ef1 h\\u00e0nh \\u00a0\",\"slug\":\"8-doi-thi-vao-chung-ket-cuoc-thi-lap-trinh-xe-tu-hanh-\",\"description\":\"V\\u00f2ng b\\u00e1n k\\u1ebft Cu\\u1ed9c \\u0111ua s\\u1ed1 2018-2019 \\u0111\\u00e3 di\\u1ec5n ra trong ng\\u00e0y 7\\/4 t\\u1ea1i TP HCM v\\u00e0 ng\\u00e0y 11\\/4 t\\u1ea1i H\\u00e0 N\\u1ed9i.\",\"content\":\"<p>Cu\\u1ed9c \\u0111ua s\\u1ed1 l&agrave; cu\\u1ed9c thi v\\u1ec1 c&ocirc;ng ngh\\u1ec7 t\\u1ef1 h&agrave;nh ti&ecirc;n phong t\\u1ea1i \\u0110&ocirc;ng Nam &Aacute;, g&oacute;p ph\\u1ea7n \\u0111&agrave;o t\\u1ea1o ngu\\u1ed3n nh&acirc;n l\\u1ef1c s\\u1ed1. T\\u1eeb 16 \\u0111\\u1ed9i thu\\u1ed9c 10 tr\\u01b0\\u1eddng \\u0111\\u1ea1i h\\u1ecdc, v&ograve;ng b&aacute;n k\\u1ebft cu\\u1ed9c thi v\\u1edbi ch\\u1ee7 \\u0111\\u1ec1 &quot;L\\u1eadp tr&igrave;nh Xe t\\u1ef1 h&agrave;nh&quot; do FPT v&agrave; VTV \\u0111\\u1ed3ng t\\u1ed5 ch\\u1ee9c \\u0111&atilde; ch\\u1ecdn ra 8 \\u0111\\u1ea1i di\\u1ec7n xu\\u1ea5t s\\u1eafc v&agrave;o chung k\\u1ebft, d\\u1ef1 ki\\u1ebfn di\\u1ec5n ra th&aacute;ng 5\\/2019. Kh&aacute;c v\\u1edbi v&ograve;ng lo\\u1ea1i, \\u1edf v&ograve;ng b&aacute;n k\\u1ebft, \\u0111\\u1ed9i thi l\\u1eadp tr&igrave;nh thu\\u1eadt to&aacute;n tr&ecirc;n xe m&ocirc; h&igrave;nh c&oacute; t\\u1ef7 l\\u1ec7 b\\u1eb1ng 1\\/7 k&iacute;ch th\\u01b0\\u1edbc th\\u1eadt \\u0111\\u1ec3 gi&uacute;p xe t\\u1ef1 di chuy\\u1ec3n tr&ecirc;n sa h&igrave;nh v\\u1edbi t\\u1ed1c \\u0111\\u1ed9 cao nh\\u1ea5t trong th\\u1eddi gian nhanh nh\\u1ea5t c\\u0169ng nh\\u01b0 x&aacute;c \\u0111\\u1ecbnh, tr&aacute;nh \\u0111\\u01b0\\u1ee3c v\\u1eadt c\\u1ea3n xu\\u1ea5t hi\\u1ec7n tr&ecirc;n \\u0111\\u01b0\\u1eddng; nh\\u1eadn d\\u1ea1ng v&agrave; \\u0111i \\u0111&uacute;ng theo ch\\u1ec9 d\\u1eabn c\\u1ee7a bi\\u1ec3n b&aacute;o. \\u0110\\u1eb7c bi\\u1ec7t, c&aacute;c bi\\u1ec3n b&aacute;o r\\u1ebd t\\u1ef1 \\u0111\\u1ed9ng thay \\u0111\\u1ed5i ng\\u1eabu nhi&ecirc;n. Ban t\\u1ed5 ch\\u1ee9c c\\u0169ng b\\u1ed5 sung c&aacute;c y\\u1ebfu t\\u1ed1 nh\\u01b0 thay \\u0111\\u1ed5i \\u0111i\\u1ec1u ki\\u1ec7n &aacute;nh s&aacute;ng, h&igrave;nh d&aacute;ng v\\u1eadt c\\u1ea3n... \\u0111\\u1ec3 th\\u1eed th&aacute;ch th&iacute; sinh. &Ocirc;ng \\u0110&agrave;o Ng\\u1ecdc Chi\\u1ebfn, Ph&oacute; V\\u1ee5 tr\\u01b0\\u1edfng V\\u1ee5 C&ocirc;ng ngh\\u1ec7 cao - B\\u1ed9 Khoa h\\u1ecdc C&ocirc;ng ngh\\u1ec7, cho bi\\u1ebft: &quot;Tr\\u1ea3i qua ba m&ugrave;a thi, ch\\u1ea5t l\\u01b0\\u1ee3ng c&aacute;c \\u0111\\u1ed9i thi ng&agrave;y c&agrave;ng t\\u0103ng l&ecirc;n. Vi\\u1ec7c \\u1ee9ng d\\u1ee5ng c&aacute;c c&ocirc;ng ngh\\u1ec7 m\\u1edbi, c&ocirc;ng ngh\\u1ec7 c\\u1ed1t l&otilde;i c\\u1ee7a cu\\u1ed9c c&aacute;ch m\\u1ea1ng 4.0 l&agrave; m\\u1ed9t th&aacute;ch th\\u1ee9c nh\\u01b0ng c&aacute;c \\u0111\\u1ed9i thi v\\u1ec1 c\\u01a1 b\\u1ea3n \\u0111&atilde; k\\u1ebft h\\u1ee3p t\\u1ed1t. T&ocirc;i ngh\\u0129 v\\u1edbi \\u0111\\u1ed9i ng\\u0169 sinh vi&ecirc;n \\u0111&ocirc;ng \\u0111\\u1ea3o v&agrave; ham h\\u1ecdc h\\u1ecfi c&aacute;i m\\u1edbi n\\u1ebfu c&oacute; nh\\u1eefng ch\\u01b0\\u01a1ng tr&igrave;nh \\u0111&agrave;o t\\u1ea1o ph&ugrave; h\\u1ee3p nh\\u01b0 cu\\u1ed9c thi n&agrave;y th&igrave; kh&ocirc;ng l&acirc;u n\\u1eefa, \\u0111\\u1ed9i ng\\u0169 nh&acirc;n l\\u1ef1c cho ng&agrave;nh c&ocirc;ng ngh\\u1ec7 &ocirc;t&ocirc; s\\u1ebd \\u0111\\u01b0\\u1ee3c \\u0111&aacute;p \\u1ee9ng&quot;. V\\u1edbi chi\\u1ebfn thu\\u1eadt ch\\u1ec9nh g&oacute;c quay c\\u1ee7a camera \\u0111\\u1ec3 nh&igrave;n l&agrave;n \\u0111\\u01b0\\u1eddng r&otilde; h\\u01a1n, \\u0111\\u1ed9i UET Fastest d\\u1eabn \\u0111\\u1ea7u v\\u1ec1 t\\u1ed1c \\u0111\\u1ed9 xe ch\\u1ea1y trong s\\u1ed1 b\\u1ed1n \\u0111\\u1ed9i xu\\u1ea5t s\\u1eafc khu v\\u1ef1c mi\\u1ec1n B\\u1eafc. Nguy\\u1ec5n V\\u0103n T&ugrave;ng, th&agrave;nh vi&ecirc;n c\\u1ee7a \\u0110\\u1ed9i UET Fastest, chia s\\u1ebb: &quot;Kh&oacute; kh\\u0103n l\\u1edbn nh\\u1ea5t c\\u1ee7a v&ograve;ng b&aacute;n k\\u1ebft ch&iacute;nh l&agrave; l&agrave;n \\u0111\\u01b0\\u1eddng r\\u1ed9ng h\\u01a1n nh\\u01b0ng g&oacute;c nh&igrave;n c\\u1ee7a camera kh&ocirc;ng thay \\u0111\\u1ed5i v&agrave; h&agrave;ng c&acirc;y che m\\u1ea5t l&agrave;n \\u0111\\u01b0\\u1eddng, n&ecirc;n \\u0111\\u1ed9i em \\u0111&atilde; c&oacute; chi\\u1ebfn thu\\u1eadt l&agrave; ch\\u1ec9nh g&oacute;c quay c\\u1ee7a camera&quot;. M\\u1ed9t \\u0111\\u1ed9i \\u0111ang thi \\u0111\\u1ea5u t\\u1ea1i v&ograve;ng b&aacute;n k\\u1ebft Cu\\u1ed9c \\u0111ua s\\u1ed1 ng&agrave;y 11\\/4 t\\u1ea1i H&agrave; N\\u1ed9i. T&aacute;m \\u0111\\u1ed9i xu\\u1ea5t s\\u1eafc v&agrave;o v&agrave;o v&ograve;ng chung k\\u1ebft g\\u1ed3m: UET Fastest (\\u0110\\u1ea1i h\\u1ecdc C&ocirc;ng ngh\\u1ec7 - \\u0110\\u1ea1i h\\u1ecdc Qu\\u1ed1c gia H&agrave; N\\u1ed9i); MTA_R4F (H\\u1ecdc vi\\u1ec7n K\\u1ef9 thu\\u1eadt qu&acirc;n s\\u1ef1), Fast and Fiery (H\\u1ecdc vi\\u1ec7n C&ocirc;ng ngh\\u1ec7 b\\u01b0u ch&iacute;nh vi\\u1ec5n th&ocirc;ng), PTIT Word.Exe (H\\u1ecdc vi\\u1ec7n C&ocirc;ng ngh\\u1ec7 b\\u01b0u ch&iacute;nh vi\\u1ec5n th&ocirc;ng), SQ26 (\\u0110\\u1ea1i h\\u1ecdc Th&ocirc;ng tin li&ecirc;n l\\u1ea1c), CDS-NTU2 (\\u0110\\u1ea1i h\\u1ecdc Nha Trang), Dateh IT (\\u0110\\u1ea1i h\\u1ecdc Khoa h\\u1ecdc T\\u1ef1 nhi&ecirc;n - \\u0110\\u1ea1i h\\u1ecdc Qu\\u1ed1c gia TP HCM) v&agrave; LHU The Walkers (\\u0110\\u1ea1i h\\u1ecdc L\\u1ea1c H\\u1ed3ng). T\\u1ea1i v&ograve;ng chung k\\u1ebft, c&aacute;c \\u0111\\u1ed9i thi s\\u1ebd ph\\u1ea3i l\\u1eadp tr&igrave;nh \\u0111\\u1ec3 xe c&oacute; th\\u1ec3 di chuy\\u1ec3n tr&ecirc;n cung \\u0111\\u01b0\\u1eddng kh&ocirc;ng \\u0111\\u01b0\\u1ee3c bi\\u1ebft tr\\u01b0\\u1edbc v\\u1edbi t\\u1ed1c \\u0111\\u1ed9 cao nh\\u1ea5t trong \\u0111i\\u1ec1u ki\\u1ec7n &aacute;nh s&aacute;ng thay \\u0111\\u1ed5i; ph\\u1ea3i di chuy\\u1ec3n qua h\\u1ea7m, khoanh v&ugrave;ng, x&aacute;c \\u0111\\u1ecbnh v&agrave; tr&aacute;nh \\u0111\\u01b0\\u1ee3c v\\u1eadt c\\u1ea3n; t\\u1ef1 \\u0111\\u1ecbnh v\\u1ecb \\u0111\\u1ec3 t&igrave;m ki\\u1ebfm \\u0111\\u01b0\\u1eddng \\u0111i ng\\u1eafn nh\\u1ea5t. \\u0110\\u1ed9i v&ocirc; \\u0111\\u1ecbch s\\u1ebd nh\\u1eadn ph\\u1ea7n th\\u01b0\\u1edfng c&oacute; gi&aacute; tr\\u1ecb kho\\u1ea3ng 1,2 t\\u1ef7 \\u0111\\u1ed3ng, trong \\u0111&oacute; c&oacute; m\\u1ed9t chuy\\u1ebfn tr\\u1ea3i nghi\\u1ec7m, t&igrave;m hi\\u1ec3u v\\u1ec1 c&ocirc;ng ngh\\u1ec7 m\\u1edbi t\\u1ea1i M\\u1ef9 ho\\u1eb7c Nh\\u1eadt B\\u1ea3n, 15 tri\\u1ec7u \\u0111\\u1ed3ng ti\\u1ec1n m\\u1eb7t v&agrave; m\\u1ed9t su\\u1ea5t h\\u1ecdc b\\u1ed5ng Ti\\u1ebfn s\\u0129 v\\u1ec1 ng&agrave;nh Tr&iacute; tu\\u1ec7 nh&acirc;n t\\u1ea1o tr\\u1ecb gi&aacute; 700 tri\\u1ec7u \\u0111\\u1ed3ng cho th&iacute; sinh xu\\u1ea5t s\\u1eafc.&nbsp; Cu\\u1ed9c \\u0111ua s\\u1ed1 2018-2019 di\\u1ec5n ra t\\u1eeb th&aacute;ng 10\\/2018 \\u0111\\u1ebfn th&aacute;ng 5\\/2019 t\\u1ea1i H&agrave; N\\u1ed9i v&agrave; TP HCM.&nbsp;&Ocirc;ng L&ecirc; H\\u1ed3ng Vi\\u1ec7t, Gi&aacute;m \\u0111\\u1ed1c C&ocirc;ng ngh\\u1ec7 FPT, cho bi\\u1ebft m\\u1ee5c \\u0111&iacute;ch c\\u1ee7a cu\\u1ed9c thi l&agrave; sau kho\\u1ea3ng 5 n\\u0103m, sinh vi&ecirc;n Vi\\u1ec7t Nam s\\u1ebd c&oacute; \\u0111\\u1ee7 ki\\u1ebfn th\\u1ee9c v&agrave; n\\u0103ng l\\u1ef1c \\u0111\\u1ec3 t\\u1ef1 l\\u1eadp tr&igrave;nh xe t\\u1ef1 h&agrave;nh ch\\u1ea1y \\u0111\\u01b0\\u1ee3c trong c&aacute;c nh&agrave; m&aacute;y hay khu&ocirc;n vi&ecirc;n c&aacute;c khu du l\\u1ecbch. Ch&acirc;u An<\\/p>\",\"tags\":[null],\"categories\":[\"3\",\"5\",null],\"cmt_allow\":\"off\",\"recommended\":\"off\",\"editor_pick\":\"off\",\"newsflash\":\"on\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\"}', '2019-04-15 07:01:25', '2019-04-15 07:01:25'),
(912, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 07:01:26', '2019-04-15 07:01:26'),
(913, 2, 'admin/posts/25/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:01:33', '2019-04-15 07:01:33');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(914, 2, 'admin/posts/25', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"feature\":\"off\",\"title\":\"CEO Samsung: \'Gi\\u1edbi tr\\u1ebb Vi\\u1ec7t Nam thay \\u0111\\u1ed5i qu\\u00e1 nhanh\' \\u00a0\",\"slug\":\"ceo-samsung-\'gioi-tre-viet-nam-thay-doi-qua-nhanh\'-\",\"description\":\"\\u00d4ng DJ Koh \\u1ea5n t\\u01b0\\u1ee3ng v\\u1edbi s\\u1ef1 th\\u00edch nghi v\\u00e0 c\\u1eadp nh\\u1eadt nhanh s\\u1ef1 bi\\u1ebfn \\u0111\\u1ed5i c\\u00f4ng ngh\\u1ec7 c\\u1ee7a ng\\u01b0\\u1eddi d\\u00f9ng smartphone tr\\u1ebb tu\\u1ed5i.\",\"content\":\"<p>Galaxy A80, ra m\\u1eaft ng&agrave;y 10\\/4, l&agrave; smartphone \\u0111\\u1ea7u ti&ecirc;n tr&ecirc;n th\\u1ebf gi\\u1edbi s\\u1eed d\\u1ee5ng c\\u1ee5m ba camera sau c&oacute; th\\u1ec3 tr\\u01b0\\u1ee3t l&ecirc;n v&agrave; l\\u1eadt ng\\u01b0\\u1ee3c ra ph&iacute;a tr\\u01b0\\u1edbc. S\\u1ea3n ph\\u1ea9m n\\u1eb1m trong ph&acirc;n kh&uacute;c t\\u1ea7m trung v&agrave; h\\u01b0\\u1edbng t\\u1edbi gi\\u1edbi tr\\u1ebb - nh\\u1eefng ng\\u01b0\\u1eddi th&iacute;ch ch\\u1ee5p \\u1ea3nh selfie c\\u0169ng nh\\u01b0 nh\\u1eefng s\\u1ef1 m\\u1edbi m\\u1ebb, \\u0111\\u1ed9c \\u0111&aacute;o.&nbsp; Trong bu\\u1ed5i ph\\u1ecfng v\\u1ea5n tr\\u01b0\\u1edbc l\\u1ec5 ra m\\u1eaft, &ocirc;ng Koh, CEO ph\\u1ee5 tr&aacute;ch m\\u1ea3ng di \\u0111\\u1ed9ng v&agrave; IT c\\u1ee7a Samsung, cho bi\\u1ebft&nbsp;h&atilde;ng lu&ocirc;n n\\u1ed7 l\\u1ef1c \\u0111&aacute;p \\u1ee9ng nhu c\\u1ea7u c\\u1ee7a ng\\u01b0\\u1eddi d&ugrave;ng tr\\u1ebb. &quot;Nh\\u01b0ng c&aacute;c b\\u1ea1n thay \\u0111\\u1ed5i qu&aacute; nhanh n&ecirc;n ch&uacute;ng t&ocirc;i c\\u0169ng g\\u1eb7p kh&oacute; kh\\u0103n trong vi\\u1ec7c th&iacute;ch nghi v\\u1edbi t\\u1ed1c \\u0111\\u1ed9 thay \\u0111\\u1ed5i c\\u1ee7a gi\\u1edbi tr\\u1ebb Vi\\u1ec7t Nam&quot;, &ocirc;ng Koh th\\u1eeba nh\\u1eadn v&agrave; \\u0111&aacute;nh gi&aacute; Vi\\u1ec7t Nam&nbsp;l&agrave; m\\u1ed9t th\\u1ecb tr\\u01b0\\u1eddng ti\\u1ec1m n\\u0103ng v\\u1edbi d&acirc;n s\\u1ed1 tr\\u1ebb d\\u01b0\\u1edbi 30 tu\\u1ed5i chi\\u1ebfm kho\\u1ea3ng 50% d&acirc;n s\\u1ed1.&nbsp; Ng\\u01b0\\u1eddi \\u0111\\u1ee9ng \\u0111\\u1ea7u Samsung Mobile n&oacute;i &ocirc;ng&nbsp;kh&ocirc;ng ng\\u1eebng tr\\u0103n tr\\u1edf l&agrave;m th\\u1ebf n&agrave;o \\u0111\\u1ec3 ti\\u1ebfp c\\u1eadn c&aacute;c b\\u1ea1n tr\\u1ebb. &Ocirc;ng c&oacute; hai con trai 28 v&agrave; 21 tu\\u1ed5i v&agrave; qua vi\\u1ec7c&nbsp;tr&ograve; chuy\\u1ec7n v\\u1edbi con, &ocirc;ng \\u0111&atilde; ch\\u1ecdn&nbsp;m\\u1eb7c qu\\u1ea7n b&ograve; \\u0111\\u1ebfn s\\u1ef1 ki\\u1ec7n.&nbsp;&quot;Th\\u1eadt ra, \\u0111&acirc;y l&agrave; b\\u1ed9 qu\\u1ea7n &aacute;o m&agrave; trong 30 n\\u0103m qua t&ocirc;i kh&ocirc;ng h\\u1ec1 m\\u1eb7c&quot;, &ocirc;ng n&oacute;i v&agrave; c\\u01b0\\u1eddi l\\u1edbn. &quot;G\\u1ea7n \\u0111&acirc;y t&ocirc;i m\\u1edbi th\\u1eed m\\u1eb7c qu\\u1ea7n b&ograve; m\\u1ed9t - hai l\\u1ea7n, t&ocirc;i v\\u1eabn ch\\u01b0a quen l\\u1eafm. V&agrave; \\u0111\\u1ec3 quen v\\u1edbi vi\\u1ec7c n&agrave;y, t&ocirc;i c\\u0169ng \\u0111&atilde; gi\\u1ea3m c&acirc;n&quot;. CEO Samsung ch\\u1ecdn trang ph\\u1ee5c &aacute;o vest v&agrave; qu\\u1ea7n b&ograve; \\u0111\\u1ec3 &quot;\\u0111i\\u1ec1u h&ograve;a cho s\\u1ef1 ch&ecirc;nh l\\u1ec7ch gi\\u1eefa c&aacute;c th\\u1ebf h\\u1ec7&nbsp;tr&ecirc;n 40 v&agrave; t\\u1eeb 17 \\u0111\\u1ebfn 39&quot;. \\u1ea2nh: Samsung. &Ocirc;ng Koh c\\u0169ng ti\\u1ebft l\\u1ed9 m\\u1ed7i ng&agrave;y &ocirc;ng nh\\u1eadn \\u0111\\u01b0\\u1ee3c trung b&igrave;nh 10 email t\\u1eeb ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng b&igrave;nh th\\u01b0\\u1eddng, chia s\\u1ebb c\\u1ea3m nh\\u1eadn c\\u1ee7a h\\u1ecd v\\u1ec1 s\\u1ea3n ph\\u1ea9m. &quot;R\\u1ea5t nhi\\u1ec1u b\\u1ea1n tr\\u1ebb \\u0111&atilde; th\\u01b0\\u1eddng xuy&ecirc;n n&oacute;i h\\u1ecd mong mu\\u1ed1n camera tr\\u01b0\\u1edbc c&oacute; th\\u1ec3 ch\\u1ee5p \\u1ea3nh \\u0111\\u1eb9p nh\\u01b0 camera sau, hay camera sau c&oacute; th\\u1ec3 chuy\\u1ec3n th&agrave;nh camera tr\\u01b0\\u1edbc. V&agrave; Galaxy A80 l&agrave; s\\u1ea3n ph\\u1ea9m \\u0111\\u1ea7u ti&ecirc;n ch&uacute;ng t&ocirc;i hi\\u1ec7n th\\u1ef1c h&oacute;a \\u0111i\\u1ec1u \\u0111&oacute;&quot;, \\u0111\\u1ea1i di\\u1ec7n Samsung nh\\u1ea5n m\\u1ea1nh. &quot;Th\\u1eadm ch&iacute; ki\\u1ec3u camera n&agrave;y ch\\u01b0a c&oacute; tr&ecirc;n c&aacute;c d&ograve;ng flagship&quot;. B&ecirc;n c\\u1ea1nh s\\u1ef1 thay \\u0111\\u1ed5i nhanh c\\u1ee7a ng\\u01b0\\u1eddi d&ugrave;ng tr\\u1ebb, &ocirc;ng Koh c\\u0169ng n&ecirc;u m\\u1ed9t s\\u1ed1 v\\u1ea5n \\u0111\\u1ec1 kh&aacute;c khi chinh ph\\u1ee5c th\\u1ecb tr\\u01b0\\u1eddng Vi\\u1ec7t Nam. &Ocirc;ng \\u0111&aacute;nh gi&aacute; Vi\\u1ec7t Nam l&agrave; n\\u01b0\\u1edbc c&oacute; l&atilde;nh th\\u1ed5 tr\\u1ea3i d&agrave;i n&ecirc;n c&ocirc;ng t&aacute;c v\\u1eadn chuy\\u1ec3n h&agrave;ng h&oacute;a, logistic kh&aacute; kh&oacute; kh\\u0103n. V&igrave; v\\u1eady, kho\\u1ea3ng 4&nbsp;n\\u0103m tr\\u01b0\\u1edbc, h&atilde;ng \\u0111&atilde; x&acirc;y d\\u1ef1ng h\\u1ec7 th\\u1ed1ng chia s\\u1ebb th&ocirc;ng tin nhanh gi\\u1eefa c&aacute;c \\u0111\\u1ea1i l&yacute; b&aacute;n h&agrave;ng, nh\\u01b0 s\\u1ea3n ph\\u1ea9m c&ograve;n bao nhi&ecirc;u, c&oacute; nh\\u1eefng model n&agrave;o... Samsung \\u0111\\u1eb7t nh&agrave; m&aacute;y \\u1edf Vi\\u1ec7t Nam, n&ecirc;n model n&agrave;o&nbsp;h\\u1ebft h&agrave;ng c&oacute; th\\u1ec3 d&ugrave;ng tr\\u1ef1c ti\\u1ebfp xe m&aacute;y \\u0111\\u1ec3 chuy\\u1ec3n s\\u1ea3n ph\\u1ea9m t\\u1eeb kho... &quot;\\u0110&acirc;y l&agrave; m\\u1ed9t v&iacute; d\\u1ee5 trong vi\\u1ec7c v\\u01b0\\u1ee3t qua kh&oacute; kh\\u0103n t\\u1ea1i th\\u1ecb tr\\u01b0\\u1eddng Vi\\u1ec7t Nam v&agrave; \\u0111&atilde; tr\\u1edf th&agrave;nh v&iacute; d\\u1ee5 \\u0111i\\u1ec3n h&igrave;nh khi kh\\u1eafc ph\\u1ee5c c&aacute;c kh&oacute; kh\\u0103n kh&aacute;c \\u1edf th\\u1ecb tr\\u01b0\\u1eddng th\\u1ebf gi\\u1edbi&quot;, &ocirc;ng Koh cho bi\\u1ebft. Hi\\u1ec7n 50% s\\u1ea3n l\\u01b0\\u1ee3ng smartphone tr&ecirc;n to&agrave;n c\\u1ea7u c\\u1ee7a Samsung \\u0111\\u01b0\\u1ee3c s\\u1ea3n xu\\u1ea5t t\\u1eeb nh&agrave; m&aacute;y t\\u1ea1i Vi\\u1ec7t Nam. &quot;T&ocirc;i xin g\\u1eedi l\\u1eddi c\\u1ea3m \\u01a1n \\u0111\\u1ebfn Vi\\u1ec7t Nam v&igrave; 10 n\\u0103m qua, d&ograve;ng s\\u1ea3n ph\\u1ea9m Galaxy \\u0111&atilde; \\u0111\\u01b0\\u1ee3c ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng Vi\\u1ec7t Nam \\u01b0a chu\\u1ed9ng v&agrave; tin d&ugrave;ng. C&aacute;c thi\\u1ebft b\\u1ecb di \\u0111\\u1ed9ng c\\u1ee7a Samsung \\u0111\\u01b0\\u1ee3c b&aacute;n tr&ecirc;n to&agrave;n c\\u1ea7u c\\u0169ng \\u0111\\u01b0\\u1ee3c l\\u1eafp r&aacute;p t\\u1ea1i Vi\\u1ec7t Nam. C&oacute; th\\u1ec3 th\\u1ea5y m\\u1ed1i quan h\\u1ec7 gi\\u1eefa Samsung v&agrave; Vi\\u1ec7t Nam l&agrave; m\\u1ed1i quan h\\u1ec7 \\u0111\\u1ed1i t&aacute;c - ng\\u01b0\\u1eddi \\u0111\\u1ed3ng h&agrave;nh chi\\u1ebfn l\\u01b0\\u1ee3c kh&ocirc;ng th\\u1ec3 t&aacute;ch r\\u1eddi&quot;, CEO Samsung chia s\\u1ebb. Ch&acirc;u An<\\/p>\",\"tags\":[null],\"categories\":[\"3\",\"4\",null],\"cmt_allow\":\"off\",\"recommended\":\"off\",\"editor_pick\":\"on\",\"newsflash\":\"off\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\"}', '2019-04-15 07:01:40', '2019-04-15 07:01:40'),
(915, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 07:01:41', '2019-04-15 07:01:41'),
(916, 2, 'admin/posts/23', 'PUT', '127.0.0.1', '{\"feature\":\"off\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\"}', '2019-04-15 07:01:52', '2019-04-15 07:01:52'),
(917, 2, 'admin/posts/22', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\"}', '2019-04-15 07:01:57', '2019-04-15 07:01:57'),
(918, 2, 'admin/posts/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:02:16', '2019-04-15 07:02:16'),
(919, 2, 'admin/posts/22', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"feature\":\"on\",\"title\":\"Samsung ng\\u1eebng nh\\u1eadn \\u0111\\u1eb7t h\\u00e0ng Galaxy Fold v\\u00ec qu\\u00e1 t\\u1ea3i\",\"slug\":\"samsung-ngung-nhan-dat-hang-galaxy-fold-vi-qua-tai\",\"description\":\"\\u0110\\u01a1n h\\u00e0ng smartphone m\\u00e0n h\\u00ecnh g\\u1eadp c\\u1ee7a Samsung qu\\u00e1 l\\u1edbn n\\u00ean ch\\u01b0\\u01a1ng tr\\u00ecnh \\u0111\\u1eb7t tr\\u01b0\\u1edbc t\\u1ea1i M\\u1ef9 ph\\u1ea3i t\\u1ea1m ng\\u1eebng ch\\u1ec9 sau v\\u00e0i gi\\u1edd ho\\u1ea1t \\u0111\\u1ed9ng.\\u00a0\",\"content\":\"<p>&quot;Danh s&aacute;ch \\u0111\\u1eb7t tr\\u01b0\\u1edbc Galaxy Fold \\u0111&atilde; k&iacute;n. V&igrave; nhu c\\u1ea7u qu&aacute; l\\u1edbn, ch&uacute;ng t&ocirc;i kh&ocirc;ng th\\u1ec3 ti\\u1ebfp nh\\u1eadn th&ecirc;m b\\u1ea5t k\\u1ef3 \\u0111\\u01a1n h&agrave;ng n&agrave;o n\\u1eefa. Ch\\u01b0\\u01a1ng tr&igrave;nh ti\\u1ebfp t\\u1ee5c s\\u1ebd \\u0111\\u01b0\\u1ee3c th&ocirc;ng b&aacute;o sau&quot;. Th&ocirc;ng b&aacute;o xu\\u1ea5t hi\\u1ec7n tr&ecirc;n trang web c\\u1ee7a Samsung M\\u1ef9 ch\\u1ec9 v&agrave;i gi\\u1edd sau khi Galaxy Fold b\\u1eaft \\u0111\\u1ea7u nh\\u1eadn \\u0111\\u1eb7t h&agrave;ng t\\u1ea1i M\\u1ef9 h&ocirc;m 12\\/4.&nbsp; Th&ocirc;ng b&aacute;o qu&aacute; t\\u1ea3i \\u0111\\u01a1n h&agrave;ng c\\u1ee7a Samsung Galaxy Fold. Galaxy Fold l&agrave; smartphone \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a Samsung c&oacute; m&agrave;n h&igrave;nh g\\u1eadp, cho ph&eacute;p chuy\\u1ec3n \\u0111\\u1ed5i k&iacute;ch c\\u1ee1 t\\u1eeb m&aacute;y t&iacute;nh b\\u1ea3ng th&agrave;nh \\u0111i\\u1ec7n tho\\u1ea1i v&agrave; ng\\u01b0\\u1ee3c l\\u1ea1i khi c\\u1ea7n. \\u0110i\\u1ec3m thu h&uacute;t ch&uacute; &yacute; \\u1edf s\\u1ea3n ph\\u1ea9m ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh l\\u1edbn 7,3 inch s\\u1eed d\\u1ee5ng t\\u1ea5m n\\u1ec1n OLED d\\u1ebbo, c&oacute; th\\u1ec3 g\\u1eadp \\u0111&ocirc;i l\\u1ea1i. Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; m\\u1ed9t m&agrave;n h&igrave;nh th\\u1ee9 hai \\u1edf m\\u1eb7t \\u0111\\u1ed1i di\\u1ec7n v\\u1edbi k&iacute;ch th\\u01b0\\u1edbc 4,6 inch, s\\u1eed d\\u1ee5ng khi \\u1edf tr\\u1ea1ng th&aacute;i \\u0111i\\u1ec7n tho\\u1ea1i. Galaxy Fold ra m\\u1eaft t\\u1eeb 20\\/2 c&ugrave;ng v\\u1edbi Galaxy S10 v&agrave; S10+ nh\\u01b0ng ph\\u1ea3i t\\u1edbi 12\\/4, s\\u1ea3n ph\\u1ea9m n&agrave;y b\\u1eaft \\u0111\\u1ea7u \\u0111\\u01b0\\u1ee3c c&aacute;c nh&agrave; m\\u1ea1ng l\\u1edbn t\\u1ea1i M\\u1ef9 nh\\u01b0 AT&amp;T, T-Mobile cho ph&eacute;p \\u0111\\u1eb7t h&agrave;ng. Theo k\\u1ebf ho\\u1ea1ch, m&aacute;y s\\u1ebd \\u0111\\u01b0\\u1ee3c b&aacute;n ra th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9 v\\u1edbi gi&aacute; 1.980 USD t\\u1eeb 25\\/4. Tuy gi&aacute; cao \\u0111\\u1ebfn g\\u1ea5p r\\u01b0\\u1ee1i Galaxy S10, Galaxy Fold v\\u1eabn b\\u1ecb ch&aacute;y h&agrave;ng ch\\u1ec9 sau &iacute;t gi\\u1edd. T\\u1ea1i Vi\\u1ec7t Nam, Galaxy Fold ch\\u01b0a \\u0111\\u01b0\\u1ee3c gi\\u1edbi thi\\u1ec7u v&agrave; ch\\u01b0a c&oacute; k\\u1ebf ho\\u1ea1ch b&aacute;n ch&iacute;nh h&atilde;ng.&nbsp; &nbsp; &nbsp; Video c\\u1eadn c\\u1ea3nh Samsung Galaxy Fold Tu\\u1ea5n Anh<\\/p>\",\"tags\":[null],\"categories\":[\"3\",\"7\",null],\"cmt_allow\":\"off\",\"recommended\":\"off\",\"editor_pick\":\"off\",\"newsflash\":\"off\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\"}', '2019-04-15 07:02:22', '2019-04-15 07:02:22'),
(920, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 07:02:23', '2019-04-15 07:02:23'),
(921, 2, 'admin/posts/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:06:11', '2019-04-15 07:06:11'),
(922, 2, 'admin/posts/22', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"feature\":\"on\",\"title\":\"Samsung ng\\u1eebng nh\\u1eadn \\u0111\\u1eb7t h\\u00e0ng Galaxy Fold v\\u00ec qu\\u00e1 t\\u1ea3i\",\"slug\":\"samsung-ngung-nhan-dat-hang-galaxy-fold-vi-qua-tai\",\"description\":\"\\u0110\\u01a1n h\\u00e0ng smartphone m\\u00e0n h\\u00ecnh g\\u1eadp c\\u1ee7a Samsung qu\\u00e1 l\\u1edbn n\\u00ean ch\\u01b0\\u01a1ng tr\\u00ecnh \\u0111\\u1eb7t tr\\u01b0\\u1edbc t\\u1ea1i M\\u1ef9 ph\\u1ea3i t\\u1ea1m ng\\u1eebng ch\\u1ec9 sau v\\u00e0i gi\\u1edd ho\\u1ea1t \\u0111\\u1ed9ng.\\u00a0\",\"content\":\"<p>&quot;Danh s&aacute;ch \\u0111\\u1eb7t tr\\u01b0\\u1edbc Galaxy Fold \\u0111&atilde; k&iacute;n. V&igrave; nhu c\\u1ea7u qu&aacute; l\\u1edbn, ch&uacute;ng t&ocirc;i kh&ocirc;ng th\\u1ec3 ti\\u1ebfp nh\\u1eadn th&ecirc;m b\\u1ea5t k\\u1ef3 \\u0111\\u01a1n h&agrave;ng n&agrave;o n\\u1eefa. Ch\\u01b0\\u01a1ng tr&igrave;nh ti\\u1ebfp t\\u1ee5c s\\u1ebd \\u0111\\u01b0\\u1ee3c th&ocirc;ng b&aacute;o sau&quot;. Th&ocirc;ng b&aacute;o xu\\u1ea5t hi\\u1ec7n tr&ecirc;n trang web c\\u1ee7a Samsung M\\u1ef9 ch\\u1ec9 v&agrave;i gi\\u1edd sau khi Galaxy Fold b\\u1eaft \\u0111\\u1ea7u nh\\u1eadn \\u0111\\u1eb7t h&agrave;ng t\\u1ea1i M\\u1ef9 h&ocirc;m 12\\/4.&nbsp; Th&ocirc;ng b&aacute;o qu&aacute; t\\u1ea3i \\u0111\\u01a1n h&agrave;ng c\\u1ee7a Samsung Galaxy Fold. Galaxy Fold l&agrave; smartphone \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a Samsung c&oacute; m&agrave;n h&igrave;nh g\\u1eadp, cho ph&eacute;p chuy\\u1ec3n \\u0111\\u1ed5i k&iacute;ch c\\u1ee1 t\\u1eeb m&aacute;y t&iacute;nh b\\u1ea3ng th&agrave;nh \\u0111i\\u1ec7n tho\\u1ea1i v&agrave; ng\\u01b0\\u1ee3c l\\u1ea1i khi c\\u1ea7n. \\u0110i\\u1ec3m thu h&uacute;t ch&uacute; &yacute; \\u1edf s\\u1ea3n ph\\u1ea9m ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh l\\u1edbn 7,3 inch s\\u1eed d\\u1ee5ng t\\u1ea5m n\\u1ec1n OLED d\\u1ebbo, c&oacute; th\\u1ec3 g\\u1eadp \\u0111&ocirc;i l\\u1ea1i. Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; m\\u1ed9t m&agrave;n h&igrave;nh th\\u1ee9 hai \\u1edf m\\u1eb7t \\u0111\\u1ed1i di\\u1ec7n v\\u1edbi k&iacute;ch th\\u01b0\\u1edbc 4,6 inch, s\\u1eed d\\u1ee5ng khi \\u1edf tr\\u1ea1ng th&aacute;i \\u0111i\\u1ec7n tho\\u1ea1i. Galaxy Fold ra m\\u1eaft t\\u1eeb 20\\/2 c&ugrave;ng v\\u1edbi Galaxy S10 v&agrave; S10+ nh\\u01b0ng ph\\u1ea3i t\\u1edbi 12\\/4, s\\u1ea3n ph\\u1ea9m n&agrave;y b\\u1eaft \\u0111\\u1ea7u \\u0111\\u01b0\\u1ee3c c&aacute;c nh&agrave; m\\u1ea1ng l\\u1edbn t\\u1ea1i M\\u1ef9 nh\\u01b0 AT&amp;T, T-Mobile cho ph&eacute;p \\u0111\\u1eb7t h&agrave;ng. Theo k\\u1ebf ho\\u1ea1ch, m&aacute;y s\\u1ebd \\u0111\\u01b0\\u1ee3c b&aacute;n ra th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9 v\\u1edbi gi&aacute; 1.980 USD t\\u1eeb 25\\/4. Tuy gi&aacute; cao \\u0111\\u1ebfn g\\u1ea5p r\\u01b0\\u1ee1i Galaxy S10, Galaxy Fold v\\u1eabn b\\u1ecb ch&aacute;y h&agrave;ng ch\\u1ec9 sau &iacute;t gi\\u1edd. T\\u1ea1i Vi\\u1ec7t Nam, Galaxy Fold ch\\u01b0a \\u0111\\u01b0\\u1ee3c gi\\u1edbi thi\\u1ec7u v&agrave; ch\\u01b0a c&oacute; k\\u1ebf ho\\u1ea1ch b&aacute;n ch&iacute;nh h&atilde;ng.&nbsp; &nbsp; &nbsp; Video c\\u1eadn c\\u1ea3nh Samsung Galaxy Fold Tu\\u1ea5n Anh<\\/p>\",\"tags\":[null],\"categories\":[\"7\",null],\"cmt_allow\":\"off\",\"recommended\":\"off\",\"editor_pick\":\"off\",\"newsflash\":\"off\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\"}', '2019-04-15 07:06:29', '2019-04-15 07:06:29'),
(923, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 07:06:29', '2019-04-15 07:06:29'),
(924, 2, 'admin/posts/22/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:06:34', '2019-04-15 07:06:34'),
(925, 2, 'admin/posts/22', 'PUT', '127.0.0.1', '{\"status\":\"on\",\"feature\":\"on\",\"title\":\"Samsung ng\\u1eebng nh\\u1eadn \\u0111\\u1eb7t h\\u00e0ng Galaxy Fold v\\u00ec qu\\u00e1 t\\u1ea3i\",\"slug\":\"samsung-ngung-nhan-dat-hang-galaxy-fold-vi-qua-tai\",\"description\":\"\\u0110\\u01a1n h\\u00e0ng smartphone m\\u00e0n h\\u00ecnh g\\u1eadp c\\u1ee7a Samsung qu\\u00e1 l\\u1edbn n\\u00ean ch\\u01b0\\u01a1ng tr\\u00ecnh \\u0111\\u1eb7t tr\\u01b0\\u1edbc t\\u1ea1i M\\u1ef9 ph\\u1ea3i t\\u1ea1m ng\\u1eebng ch\\u1ec9 sau v\\u00e0i gi\\u1edd ho\\u1ea1t \\u0111\\u1ed9ng.\\u00a0\",\"content\":\"<p>&quot;Danh s&aacute;ch \\u0111\\u1eb7t tr\\u01b0\\u1edbc Galaxy Fold \\u0111&atilde; k&iacute;n. V&igrave; nhu c\\u1ea7u qu&aacute; l\\u1edbn, ch&uacute;ng t&ocirc;i kh&ocirc;ng th\\u1ec3 ti\\u1ebfp nh\\u1eadn th&ecirc;m b\\u1ea5t k\\u1ef3 \\u0111\\u01a1n h&agrave;ng n&agrave;o n\\u1eefa. Ch\\u01b0\\u01a1ng tr&igrave;nh ti\\u1ebfp t\\u1ee5c s\\u1ebd \\u0111\\u01b0\\u1ee3c th&ocirc;ng b&aacute;o sau&quot;. Th&ocirc;ng b&aacute;o xu\\u1ea5t hi\\u1ec7n tr&ecirc;n trang web c\\u1ee7a Samsung M\\u1ef9 ch\\u1ec9 v&agrave;i gi\\u1edd sau khi Galaxy Fold b\\u1eaft \\u0111\\u1ea7u nh\\u1eadn \\u0111\\u1eb7t h&agrave;ng t\\u1ea1i M\\u1ef9 h&ocirc;m 12\\/4.&nbsp; Th&ocirc;ng b&aacute;o qu&aacute; t\\u1ea3i \\u0111\\u01a1n h&agrave;ng c\\u1ee7a Samsung Galaxy Fold. Galaxy Fold l&agrave; smartphone \\u0111\\u1ea7u ti&ecirc;n c\\u1ee7a Samsung c&oacute; m&agrave;n h&igrave;nh g\\u1eadp, cho ph&eacute;p chuy\\u1ec3n \\u0111\\u1ed5i k&iacute;ch c\\u1ee1 t\\u1eeb m&aacute;y t&iacute;nh b\\u1ea3ng th&agrave;nh \\u0111i\\u1ec7n tho\\u1ea1i v&agrave; ng\\u01b0\\u1ee3c l\\u1ea1i khi c\\u1ea7n. \\u0110i\\u1ec3m thu h&uacute;t ch&uacute; &yacute; \\u1edf s\\u1ea3n ph\\u1ea9m ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh l\\u1edbn 7,3 inch s\\u1eed d\\u1ee5ng t\\u1ea5m n\\u1ec1n OLED d\\u1ebbo, c&oacute; th\\u1ec3 g\\u1eadp \\u0111&ocirc;i l\\u1ea1i. Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; m\\u1ed9t m&agrave;n h&igrave;nh th\\u1ee9 hai \\u1edf m\\u1eb7t \\u0111\\u1ed1i di\\u1ec7n v\\u1edbi k&iacute;ch th\\u01b0\\u1edbc 4,6 inch, s\\u1eed d\\u1ee5ng khi \\u1edf tr\\u1ea1ng th&aacute;i \\u0111i\\u1ec7n tho\\u1ea1i. Galaxy Fold ra m\\u1eaft t\\u1eeb 20\\/2 c&ugrave;ng v\\u1edbi Galaxy S10 v&agrave; S10+ nh\\u01b0ng ph\\u1ea3i t\\u1edbi 12\\/4, s\\u1ea3n ph\\u1ea9m n&agrave;y b\\u1eaft \\u0111\\u1ea7u \\u0111\\u01b0\\u1ee3c c&aacute;c nh&agrave; m\\u1ea1ng l\\u1edbn t\\u1ea1i M\\u1ef9 nh\\u01b0 AT&amp;T, T-Mobile cho ph&eacute;p \\u0111\\u1eb7t h&agrave;ng. Theo k\\u1ebf ho\\u1ea1ch, m&aacute;y s\\u1ebd \\u0111\\u01b0\\u1ee3c b&aacute;n ra th\\u1ecb tr\\u01b0\\u1eddng M\\u1ef9 v\\u1edbi gi&aacute; 1.980 USD t\\u1eeb 25\\/4. Tuy gi&aacute; cao \\u0111\\u1ebfn g\\u1ea5p r\\u01b0\\u1ee1i Galaxy S10, Galaxy Fold v\\u1eabn b\\u1ecb ch&aacute;y h&agrave;ng ch\\u1ec9 sau &iacute;t gi\\u1edd. T\\u1ea1i Vi\\u1ec7t Nam, Galaxy Fold ch\\u01b0a \\u0111\\u01b0\\u1ee3c gi\\u1edbi thi\\u1ec7u v&agrave; ch\\u01b0a c&oacute; k\\u1ebf ho\\u1ea1ch b&aacute;n ch&iacute;nh h&atilde;ng.&nbsp; &nbsp; &nbsp; Video c\\u1eadn c\\u1ea3nh Samsung Galaxy Fold Tu\\u1ea5n Anh<\\/p>\",\"tags\":[null],\"categories\":[\"3\",\"7\",null],\"cmt_allow\":\"off\",\"recommended\":\"off\",\"editor_pick\":\"off\",\"newsflash\":\"off\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:69\\/admin\\/posts\"}', '2019-04-15 07:06:41', '2019-04-15 07:06:41'),
(926, 2, 'admin/posts', 'GET', '127.0.0.1', '[]', '2019-04-15 07:06:41', '2019-04-15 07:06:41'),
(927, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"page\":\"2\",\"_pjax\":\"#pjax-container\"}', '2019-04-15 07:12:21', '2019-04-15 07:12:21'),
(928, 2, 'admin/posts/8', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\"}', '2019-04-15 07:14:15', '2019-04-15 07:14:15'),
(929, 2, 'admin/posts/5', 'PUT', '127.0.0.1', '{\"feature\":\"on\",\"_token\":\"fvVvzQUB7bTmfc0uGltOsKqXP067n0op6G2iODpt\",\"_method\":\"PUT\"}', '2019-04-15 07:14:19', '2019-04-15 07:14:19'),
(930, 2, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"page\":\"1\"}', '2019-04-15 07:14:23', '2019-04-15 07:14:23');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL),
(6, 'Admin helpers', 'ext.helpers', NULL, '/helpers/*', '2018-11-25 23:06:22', '2018-11-25 23:06:22'),
(7, 'Scheduling', 'ext.scheduling', NULL, '/scheduling*', '2018-11-25 23:07:08', '2018-11-25 23:07:08'),
(8, 'Admin Config', 'ext.config', NULL, '/config*', '2018-11-25 23:10:53', '2018-11-25 23:10:53'),
(9, 'Logs', 'ext.log-viewer', NULL, '/logs*', '2018-11-25 23:12:11', '2018-11-25 23:12:11'),
(10, 'Media manager', 'ext.media-manager', NULL, '/media*', '2018-11-25 23:12:50', '2018-11-25 23:12:50'),
(11, 'Backup', 'ext.backup', NULL, '/backup*', '2018-11-25 23:14:09', '2018-11-25 23:14:09');

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
(1, 'Administrator', 'administrator', '2018-08-26 01:10:59', '2018-08-26 01:10:59');

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
(1, 9, NULL, NULL),
(1, 10, NULL, NULL),
(1, 11, NULL, NULL),
(1, 12, NULL, NULL),
(1, 13, NULL, NULL),
(1, 14, NULL, NULL),
(1, 15, NULL, NULL),
(1, 16, NULL, NULL),
(1, 17, NULL, NULL),
(1, 18, NULL, NULL),
(1, 19, NULL, NULL),
(1, 20, NULL, NULL),
(1, 21, NULL, NULL),
(1, 22, NULL, NULL);

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
(1, 1, NULL, NULL);

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
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'giang', '$2y$10$gtP9Z2jVnkZL4.a37UbdZeAjfuiGxz2p99IAeosJCSLXk/Q/GhvV.', 'Vincent Giang', 'images/10250235_380399995499573_6762210913799752451_n.jpg', 'eBX5NnKefGyxmLTXrDWxHEDBydl3v7X7SPBFNdBKyLEOE09cBNhVK2VEEfJ8', '2018-08-27 07:47:42', '2018-08-27 07:47:42');

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

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `pos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent`, `pos`, `status`, `type`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, NULL, NULL, 'publish', NULL, 'en', '2019-02-21 13:35:39', '2019-02-21 13:35:39', NULL),
(4, NULL, NULL, 'publish', NULL, 'en', '2019-02-21 13:36:24', '2019-02-21 13:36:24', NULL),
(5, NULL, NULL, 'publish', NULL, 'en', '2019-02-21 13:36:38', '2019-02-21 13:36:38', NULL),
(6, NULL, NULL, 'publish', NULL, 'en', '2019-03-17 06:50:14', '2019-03-17 06:50:14', NULL),
(7, NULL, NULL, 'publish', NULL, 'en', '2019-03-17 06:50:42', '2019-03-17 06:50:42', NULL),
(8, NULL, NULL, 'publish', NULL, 'en', '2019-03-17 06:51:07', '2019-03-17 06:51:07', NULL),
(9, NULL, NULL, 'publish', NULL, 'en', '2019-03-17 06:51:32', '2019-03-17 06:51:32', NULL),
(10, NULL, NULL, 'publish', NULL, 'en', '2019-03-17 06:52:03', '2019-03-17 06:52:03', NULL),
(11, NULL, NULL, 'publish', NULL, 'en', '2019-03-17 06:52:32', '2019-03-17 06:52:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_post`
--

CREATE TABLE `category_post` (
  `category_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_post`
--

INSERT INTO `category_post` (`category_id`, `post_id`) VALUES
(4, 3),
(4, 4),
(4, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(3, 18),
(3, 19),
(3, 21),
(3, 23),
(3, 24),
(3, 25),
(3, 26),
(3, 27),
(3, 28),
(3, 29),
(3, 17),
(3, 16),
(3, 15),
(3, 14),
(3, 13),
(3, 12),
(3, 11),
(3, 10),
(5, 26),
(4, 25),
(7, 22),
(3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `category_translations`
--

CREATE TABLE `category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `load_pos` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_translations`
--

INSERT INTO `category_translations` (`id`, `category_id`, `title`, `slug`, `description`, `load_pos`, `locale`) VALUES
(1, 3, 'Công nghệ', 'cong-nghe', NULL, 'home_cat', 'vi'),
(2, 4, 'Thời sự', 'thoi-su', NULL, 'sidebar,home_cat', 'vi'),
(3, 5, 'Giáo dục', 'giao-duc', NULL, 'sidebar,home_cat', 'vi'),
(4, 6, 'Thể thao', 'the-thao', 'something about this ***ing shit', 'sidebar,home_cat', 'vi'),
(5, 7, 'Kinh doanh', 'kinh-doanh', 'Kinh CMN doang', 'sidebar,home_cat', 'vi'),
(6, 8, 'Đời sống', 'doi-song', 'Đời mà', 'sidebar,home_cat', 'vi'),
(7, 9, 'Khoa học', 'khoa-hoc', 'Khoa học thường thức', 'sidebar,home_cat', 'vi'),
(8, 10, 'Du lịch', 'du-lich', 'Du thương và lịch', 'sidebar,home_cat', 'vi'),
(9, 11, 'Giải trí', 'giai-tri', 'Đi đâu để giải trí', 'sidebar,home_cat', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `category_url_craw`
--

CREATE TABLE `category_url_craw` (
  `category_id` int(11) NOT NULL,
  `url_craw_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_url_craw`
--

INSERT INTO `category_url_craw` (`category_id`, `url_craw_id`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comment_translations`
--

CREATE TABLE `comment_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_id` int(11) NOT NULL,
  `data_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_parses`
--

CREATE TABLE `history_parses` (
  `id` int(10) UNSIGNED NOT NULL,
  `url_external` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `result_parse` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_parse` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `html_dom_rules`
--

CREATE TABLE `html_dom_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `rule_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `dom_parse_rule` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `replace_rule` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `html_dom_rules`
--

INSERT INTO `html_dom_rules` (`id`, `rule_name`, `dom_parse_rule`, `replace_rule`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Rule for sohoa.vnexpress.net', '{\"list\":[{\"title_filter\":\"div.thumb_big > a.thumb > h1.title_news\",\"link_filter\":\"div.thumb_big > a.thumb@href\",\"cover_filter\":\"div.thumb_big > a.thumb > img.vne_lazy_image@data-original\",\"cover_filter_attr\":\"data-original\",\"list_element\":\"section.featured_home_sh > article\"},{\"title_filter\":\"div.thumb_big a.thumb > h4.title_news\",\"link_filter\":\"div.thumb_big > a.thumb@href\",\"cover_filter\":\"div.thumb_big > a.thumb > img.vne_lazy_image@data-original\",\"cover_filter_attr\":\"data-original\",\"list_element\":\"div.side_featured > article\"},{\"title_filter\":\"h4.title_news\",\"link_filter\":\"h4.title_news > a@href\",\"cover_filter\":\"div.thumb_art > a > img@data-original\",\"cover_filter_attr\":\"data-original\",\"list_element\":\"section.container > section.sidebar_1 > article.list_news\"}],\"detail\":{\"title\":\".sidebar_1 > h1.title_news_detail \",\"description\":\".sidebar_1 > p.description\",\"content\":\".sidebar_1 > article.content_detail\"}}', '{}', 'list', '2018-11-14 12:49:26', '2019-03-31 08:50:46');

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `infomations`
--

CREATE TABLE `infomations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adr` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layouts`
--

CREATE TABLE `layouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `pos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `layout_translations`
--

CREATE TABLE `layout_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `meta_id` int(11) DEFAULT NULL,
  `meta_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_post`
--

CREATE TABLE `media_post` (
  `media_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_translations`
--

CREATE TABLE `media_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `media_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_thumb` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2018_08_20_130815_create_posts_table', 1),
(5, '2018_08_20_130939_create_categories_table', 1),
(6, '2018_08_20_131456_create_tags_table', 1),
(7, '2018_08_20_131523_create_media_table', 1),
(8, '2018_08_20_131547_create_layouts_table', 1),
(9, '2018_08_20_131618_create_navigations_table', 1),
(10, '2018_08_20_131709_create_data_table', 1),
(11, '2018_08_20_131723_create_options_table', 1),
(12, '2018_08_20_131809_create_infomations_table', 1),
(13, '2018_08_20_131835_create_comments_table', 1),
(14, '2018_08_20_131908_create_inboxes_table', 1),
(15, '2018_08_20_132107_create_post_translations_table', 1),
(16, '2018_08_20_132147_create_category_translations_table', 1),
(17, '2018_08_20_132159_create_tag_translations_table', 1),
(18, '2018_08_20_132254_create_media_translations_table', 1),
(19, '2018_08_20_132306_create_layout_translations_table', 1),
(20, '2018_08_20_132319_create_navigation_translations_table', 1),
(21, '2018_08_26_074953_create_comment_translations_table', 1),
(22, '2018_10_28_153339_create_html_dom_rules_table', 2),
(23, '2018_10_28_155159_create_history_parses_table', 2),
(24, '2018_11_04_105325_pivot_table_for_posts', 3),
(25, '2018_11_11_094911_create_url_craws_table', 4),
(26, '2018_11_24_145904_add_media_to_post', 5),
(27, '2017_07_17_040159_create_config_table', 6),
(28, '2019_01_05_145511_add_is_child_to_navigation', 7),
(29, '2019_01_05_162431_create_reactions_table', 7),
(30, '2019_01_05_163154_count_react_on_post', 7),
(31, '2019_01_05_195051_add_count_view_post', 8),
(32, '2019_01_05_214445_add_category_load_position', 8),
(33, '2019_01_11_194512_update_post', 8),
(34, '2019_02_17_094455_modification_on_post_translation', 8),
(35, '2019_02_17_102627_create_viewer_logs_table', 8),
(36, '2019_04_13_151538_add_category_to_urlcrawl', 9);

-- --------------------------------------------------------

--
-- Table structure for table `navigations`
--

CREATE TABLE `navigations` (
  `id` int(10) UNSIGNED NOT NULL,
  `pos` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'normal',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_parent` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigations`
--

INSERT INTO `navigations` (`id`, `pos`, `type`, `status`, `code`, `created_at`, `updated_at`, `is_parent`) VALUES
(3, '0', 'normal', 'publish', 'en', '2019-02-21 13:37:30', '2019-02-21 13:37:30', 1),
(4, '0', 'normal', 'publish', 'en', '2019-02-21 13:37:48', '2019-02-21 13:37:48', 1),
(5, '0', 'normal', 'publish', 'en', '2019-02-21 13:38:05', '2019-02-21 13:38:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `navigation_translations`
--

CREATE TABLE `navigation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `navigation_id` int(10) UNSIGNED NOT NULL,
  `name_display` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_keyword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `navigation_translations`
--

INSERT INTO `navigation_translations` (`id`, `navigation_id`, `name_display`, `url`, `description`, `page_title`, `page_keyword`, `page_description`, `locale`) VALUES
(1, 3, 'Home', '/', 'something', 'Vgnews.net', 'vgnews', 'something', 'vi'),
(2, 4, 'Công nghệ', '/cong-nghe', NULL, 'Công nghệ', 'Công nghệ', 'somwthing', 'vi'),
(3, 5, 'Thời sự', '/thoi-su', NULL, 'News', 'News', 'sdsd', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `name`, `description`, `value`, `group`, `created_at`, `updated_at`) VALUES
(1, 'default_cron_rule', 'default for cron rule', '{\"list\":[{\"title_filter\":\"\",\"link_filter\":\"\",\"cover_filter\":\"\",\"cover_filter_attr\":\"\"}],\"detail\":{\"title\":\"\",\"description\":\"\",\"content\":\"\"}}', 'cron_rule', '2019-02-17 13:00:20', '2019-02-17 13:00:20'),
(2, 'default_replace_rule', 'something', '{}', 'cron_rule', '2019-02-21 13:17:42', '2019-02-21 13:17:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `code`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'blog', 'en', '2019-03-17 06:46:20', '2019-03-17 06:46:20', NULL),
(4, 'blog', 'en', '2019-03-17 06:49:16', '2019-03-17 06:49:16', NULL),
(5, 'blog', 'en', '2019-03-18 13:27:09', '2019-03-18 13:27:09', NULL),
(6, 'blog', 'en', '2019-03-18 13:29:11', '2019-03-18 13:29:11', NULL),
(7, 'blog', 'en', '2019-03-18 13:30:15', '2019-03-18 13:30:15', NULL),
(8, 'blog', 'en', '2019-03-18 14:34:57', '2019-03-18 14:34:57', NULL),
(9, 'blog', 'en', '2019-03-18 14:35:41', '2019-03-18 14:35:41', NULL),
(10, 'blog', 'en', '2019-04-13 00:14:29', '2019-04-13 00:14:29', NULL),
(11, 'blog', 'en', '2019-04-13 00:14:29', '2019-04-13 00:14:29', NULL),
(12, 'blog', 'en', '2019-04-13 00:14:29', '2019-04-13 00:14:29', NULL),
(13, 'blog', 'en', '2019-04-13 00:14:30', '2019-04-13 00:14:30', NULL),
(14, 'blog', 'en', '2019-04-13 00:14:30', '2019-04-13 00:14:30', NULL),
(15, 'blog', 'en', '2019-04-13 00:14:30', '2019-04-13 00:14:30', NULL),
(16, 'blog', 'en', '2019-04-13 00:14:30', '2019-04-13 00:14:30', NULL),
(17, 'blog', 'en', '2019-04-13 00:14:30', '2019-04-13 00:14:30', NULL),
(18, 'blog', 'en', '2019-04-13 00:14:31', '2019-04-13 00:14:31', NULL),
(19, 'blog', 'en', '2019-04-13 08:44:03', '2019-04-13 08:44:03', NULL),
(21, 'blog', 'en', '2019-04-13 08:51:14', '2019-04-13 08:51:14', NULL),
(22, 'blog', 'en', '2019-04-13 08:51:14', '2019-04-13 08:51:14', NULL),
(23, 'blog', 'en', '2019-04-13 08:51:15', '2019-04-13 08:51:15', NULL),
(24, 'blog', 'en', '2019-04-13 08:51:15', '2019-04-13 08:51:15', NULL),
(25, 'blog', 'en', '2019-04-13 08:51:15', '2019-04-13 08:51:15', NULL),
(26, 'blog', 'en', '2019-04-13 08:51:16', '2019-04-13 08:51:16', NULL),
(27, 'blog', 'en', '2019-04-13 08:51:16', '2019-04-13 08:51:16', NULL),
(28, 'blog', 'en', '2019-04-13 08:51:16', '2019-04-13 08:51:16', NULL),
(29, 'blog', 'en', '2019-04-13 08:51:17', '2019-04-13 08:51:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(3, 1),
(3, 2),
(4, 3),
(4, 4),
(17, 14),
(15, 8),
(14, 14),
(13, 14),
(12, 11),
(11, 15),
(10, 9);

-- --------------------------------------------------------

--
-- Table structure for table `post_translations`
--

CREATE TABLE `post_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `feature` tinyint(1) NOT NULL DEFAULT '0',
  `editor_pick` tinyint(1) NOT NULL DEFAULT '0',
  `recommended` tinyint(1) NOT NULL DEFAULT '0',
  `newsflash` tinyint(1) NOT NULL DEFAULT '1',
  `cmt_allow` tinyint(1) NOT NULL DEFAULT '0',
  `author` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `count_share` int(11) NOT NULL DEFAULT '0',
  `source_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_click` int(11) DEFAULT NULL,
  `count_vote` int(11) NOT NULL DEFAULT '0',
  `count_comment` int(11) NOT NULL DEFAULT '0',
  `count_view` int(11) NOT NULL DEFAULT '0',
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_translations`
--

INSERT INTO `post_translations` (`id`, `post_id`, `title`, `slug`, `description`, `content`, `media`, `status`, `feature`, `editor_pick`, `recommended`, `newsflash`, `cmt_allow`, `author`, `count_share`, `source_link`, `source_click`, `count_vote`, `count_comment`, `count_view`, `locale`) VALUES
(1, 3, 'Rạp hát Hòa Bình và Dinh tỉnh trưởng Đà Lạt sẽ bị đập bỏ, di dời', 'rap-hat-hoa-binh-va-dinh-tinh-truong-da-lat-se-bi-dap-bo-di-doi-', 'Hai công trình gắn với lịch sử Đà Lạt sẽ bị đập bỏ, di dời để xây khu giải trí đa chức năng, khu thương mại, dịch vụ cao cấp.', '<p class=\"Normal\">Quy hoạch chi tiết v&agrave; thiết kế đ&ocirc; thị tỷ lệ 1/500 khu vực trung t&acirc;m H&ograve;a B&igrave;nh, TP Đ&agrave; Lạt&quot; vừa được UBND tỉnh L&acirc;m Đồng c&ocirc;ng bố.</p>\r\n\r\n<p class=\"Normal\">Theo đ&oacute;, khu vực được quy hoạch&nbsp; rộng 30 ha, thuộc phường 1, TP Đ&agrave; Lạt. Phạm vi từ đường Trần Quốc Toản, B&ugrave;i Thị Xu&acirc;n, L&yacute; Tự Trọng, hẻm nh&agrave; thờ Tin l&agrave;nh, Nguyễn Văn Trỗi đến đầu đường Ba Th&aacute;ng 2, Nguyễn Ch&iacute; Thanh v&agrave; đường dẫn xuống L&ecirc; Đại H&agrave;nh qua v&ograve;ng xoay đ&agrave;i phun nước.</p>\r\n\r\n<p class=\"Normal\">Quy m&ocirc; d&acirc;n số, hiện trạng khoảng 5.370 người (1.064 hộ); với hệ số tăng d&acirc;n số cơ học dự b&aacute;o khoảng 6.879 người.</p>\r\n\r\n<p class=\"Normal\">Quy hoạch được chia l&agrave;m 5 ph&acirc;n khu. Trong đ&oacute;, khu vực chợ Đ&agrave; Lạt - đường Nguyễn Thị Minh Khai (rộng 6,95 ha) l&agrave; chợ truyền thống, kết hợp với quảng trường, phố đi bộ kết hợp trung t&acirc;m thương mại v&agrave; l&agrave; nơi c&oacute; b&atilde;i đậu xe ngầm</p>', 'images/8592394df51cd58cf553d9f10e2a532a.jpg', 'publish', 0, 0, 0, 0, 1, 2, 0, NULL, NULL, 0, 0, 0, 'vi'),
(2, 4, 'Viện trưởng Văn hoá: \'Người Việt quá tin vào may rủi\'', 'vien-truong-van-hoa--nguoi-viet-qua-tin-vao-may-rui--', 'Phó giáo sư Bùi Hoài Sơn đánh giá người Việt dễ chán nản khi gặp khó khăn, không biết lo xa, tính tổ chức kỷ luật kém.', '<p class=\"Normal\">S&aacute;ng 16/3, tại hội thảo &quot;vai tr&ograve; của truyền th&ocirc;ng trong văn ho&aacute; ứng xử hiện nay&quot; do Bộ Văn ho&aacute;, Thể thao v&agrave; du lịch phối hợp c&ugrave;ng Hội Nh&agrave; b&aacute;o Việt Nam tổ chức, Ph&oacute; gi&aacute;o sư B&ugrave;i Ho&agrave;i Sơn, Viện trưởng Văn ho&aacute; nghệ thuật quốc gia, chỉ ra nhiều &quot;th&oacute;i hư, tật xấu&quot; của người Việt.</p>\r\n\r\n<p class=\"Normal\">Theo &ocirc;ng Sơn, người Việt qu&aacute; ỉ lại v&agrave;o việc được thi&ecirc;n nhi&ecirc;n ưu đ&atilde;i, h&igrave;nh th&agrave;nh lối sống lười biếng lao động, khai th&aacute;c t&agrave;i nguy&ecirc;n thiếu &yacute; thức.&nbsp;&quot;Đ&aacute;ng l&yacute; người Việt phải biết t&igrave;m c&aacute;ch l&agrave;m chủ v&agrave; tự do trước thi&ecirc;n nhi&ecirc;n th&igrave; lại qu&aacute; lệ thuộc v&agrave;o &quot;trời&quot;, thường tin v&agrave;o số phận, may rủi dẫn đến dễ ch&aacute;n nản, ch&ugrave;n bước khi gặp kh&oacute; khăn&quot;, &ocirc;ng Sơn n&oacute;i.&nbsp;</p>\r\n\r\n<p class=\"Normal\">V&igrave; lối sản xuất, lao động chủ yếu dựa tr&ecirc;n kinh nghiệm về thời tiết n&ecirc;n người Việt thiếu &yacute; thức nghi&ecirc;n cứu khoa học ứng dụng một c&aacute;ch nghi&ecirc;m t&uacute;c v&agrave; s&aacute;ng tạo. Lối sống v&agrave; tư duy tiểu n&ocirc;ng c&ograve;n dẫn đến sự tuỳ tiện, manh m&uacute;n, kh&ocirc;ng biết lo xa, t&iacute;nh tổ chức kỷ luật k&eacute;m, nặng nề cục bộ địa phương. Nhiều người đề cao th&oacute;i quen &quot;ăn xổi, ở th&igrave;&quot; v&igrave; lợi &iacute;ch trước mắt chứ &iacute;t ch&uacute; t&acirc;m lợi &iacute;ch chiến lược bền l&acirc;u.&nbsp;</p>', 'images/DSC-0788-JPG-7368-1548050352-9446-1552723322.jpg', 'publish', 0, 0, 0, 0, 1, 2, 0, NULL, NULL, 0, 0, 0, 'vi'),
(3, 5, 'Cảnh sát giải cứu người đàn ông bị cuốn vào gầm tàu ở Sài Gòn', 'canh-sat-giai-cuu-nguoi-dan-ong-bi-cuon-vao-gam-tau-o-sai-gon-', 'Bị tàu hoả tông trúng, kẹt dưới gầm đường ray nhưng nạn nhân may mắn chỉ bị thương.', '<p class=\"Normal\">Chiều 18/3, t&agrave;u hỏa SPT1 tiến v&agrave;o cửa ng&otilde; S&agrave;i G&ograve;n từ ga S&oacute;ng Thần. Vừa qua khỏi giao lộ với đường B&igrave;nh Lợi (thuộc phường 13, quận B&igrave;nh Thạnh), t&agrave;u t&ocirc;ng tr&uacute;ng người đ&agrave;n &ocirc;ng khoảng 35 tuổi ở m&eacute;p đường ray, cuốn v&agrave;o gầm.</p>\r\n\r\n<p class=\"Normal\">L&aacute;i t&agrave;u k&eacute;o thắng, c&ugrave;ng một số người xuống kiểm tra. Nạn nh&acirc;n bị thương nặng, kẹt cứng kh&ocirc;ng thể đưa ra ngo&agrave;i.</p>\r\n\r\n<p class=\"Normal\">Cảnh s&aacute;t cứu hộ cứu nạn quận B&igrave;nh Thạnh được điều xuống hiện trường ngay sau đ&oacute;. Nạn nh&acirc;n được x&aacute;c định kẹt c&aacute;nh tay v&agrave;o trục b&aacute;nh xe của đầu m&aacute;y. Phải mất 30 ph&uacute;t, cảnh s&aacute;t mới th&aacute;o được đường ray, đưa nạn nh&acirc;n ra ngo&agrave;i cấp cứu.</p>\r\n\r\n<p class=\"Normal\">Sự việc khiến giao th&ocirc;ng quanh khu vực &ugrave;n tắc nghi&ecirc;m trọng. &quot;Lần đầu t&ocirc;i thấy c&oacute; người bị t&agrave;u hoả t&ocirc;ng m&agrave; may mắn vậy. Kh&ocirc;ng biết anh ta băng ẩu qua đường ray, hay c&oacute; &yacute; định ti&ecirc;u cực nữa&quot;, một người d&acirc;n sống tại khu vực n&oacute;i.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"width: 500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Sự việc khiến giao thông kẹt cứng. Ảnh: Sơn Hoà.\" data-natural-h=\"339\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2019/03/18/giai-cuu-1-5195-1552911924.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p class=\"Image\">Sự việc khiến giao th&ocirc;ng kẹt cứng. Ảnh: <em>Sơn Ho&agrave;.</em></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', 'images/giai-cuu-4243-1552911924.jpg', 'publish', 1, 0, 0, 0, 1, 2, 0, NULL, NULL, 0, 0, 0, 'vi'),
(4, 6, '13 điều phụ huynh cần dạy con trước khi vào lớp 1', '13-dieu-phu-huynh-can-day-con-truoc-khi-vao-lop-1-', 'Trẻ cần biết trường học không phải toàn bộ cuộc sống, không nên để kỳ thi hay điểm số ảnh hưởng quá nhiều đến tâm trạng.', '<p class=\"Normal\">Khi thay đổi m&ocirc;i trường từ mẫu gi&aacute;o v&agrave;o tiểu học, mọi thứ đối với trẻ đều lạ lẫm, kh&ocirc;ng thoải m&aacute;i v&agrave; thậm ch&iacute; đ&aacute;ng sợ. Lần đầu ti&ecirc;n trong đời, trẻ phải chịu &aacute;p lực bởi b&agrave;i tập về nh&agrave; v&agrave; điểm số trong c&aacute;c b&agrave;i kiểm tra. Do đ&oacute;, phụ huynh cần gi&uacute;p trẻ sẵn s&agrave;ng cả về t&acirc;m l&yacute; lẫn kỹ năng, để thời đi học trở th&agrave;nh giai đoạn đ&aacute;ng nhớ v&agrave; &yacute; nghĩa nhất.</p>\r\n\r\n<p class=\"Normal\">Dưới đ&acirc;y l&agrave; 13 điều quan trọng phụ huynh n&ecirc;n dạy trẻ trước khi v&agrave;o lớp 1, theo <em>Bright Side</em>:</p>\r\n\r\n<p class=\"Normal\">1. Sức khỏe thể chất v&agrave; tinh thần của con quan trọng hơn c&aacute;c b&agrave;i học. Nếu con cảm thấy kh&ocirc;ng khỏe, h&atilde;y n&oacute;i với ai đ&oacute; về t&igrave;nh trạng của m&igrave;nh.</p>\r\n\r\n<p class=\"Normal\">2. Đừng so s&aacute;nh bản th&acirc;n với những người kh&aacute;c. Con đến trường để thu nạp kiến thức, kh&ocirc;ng phải để đua tranh điểm ch&aacute;c.&nbsp;</p>\r\n\r\n<p class=\"Normal\">3. Con cần hiểu nội dung b&agrave;i giảng, điểm số kh&ocirc;ng qu&aacute; quan trọng. Nếu con bị điểm k&eacute;m, bố mẹ sẽ kh&ocirc;ng phạt con. Nhưng nếu con đạt điểm A, bố mẹ sẽ rất vui.</p>\r\n\r\n<p class=\"Normal\">4. Nếu thấy b&agrave;i n&agrave;o đ&oacute; kh&oacute; hiểu, con h&atilde;y nhờ gi&aacute;o vi&ecirc;n hoặc bố mẹ giải th&iacute;ch.&nbsp;</p>\r\n\r\n<p class=\"Normal\">5. Cảm gi&aacute;c lo lắng trước kỳ thi l&agrave; b&igrave;nh thường, nhưng h&atilde;y nhớ rằng trường học kh&ocirc;ng phải to&agrave;n bộ cuộc sống của con, đ&oacute; chỉ l&agrave; một phần nhỏ. Đừng để một kỳ thi ảnh hưởng qu&aacute; nhiều đến t&acirc;m trạng của con.&nbsp;</p>\r\n\r\n<p class=\"Normal\">6. Gi&aacute;o vi&ecirc;n cũng l&agrave; con người, họ c&oacute; thể bị ốm, mệt mỏi hay mắc lỗi. H&atilde;y ghi nhớ điều n&agrave;y để t&ocirc;n trọng thầy c&ocirc; gi&aacute;o, biết ơn những g&igrave; họ đ&atilde; l&agrave;m cho con.&nbsp;</p>\r\n\r\n<p class=\"Normal\">7. Đừng bắt nạt bất kỳ ai. Bắt nạt l&agrave; h&agrave;nh vi l&agrave;m tổn thương kẻ yếu thế hơn m&igrave;nh. Khi nh&igrave;n thấy ai đ&oacute; bị bắt nạt, con h&atilde;y kể để bố mẹ xem c&oacute; c&aacute;ch g&igrave; gi&uacute;p bạn kh&ocirc;ng.&nbsp;</p>\r\n\r\n<p class=\"Normal\">8. Nếu con kh&ocirc;ng ph&aacute; vỡ c&aacute;c quy tắc, kh&ocirc;ng ai c&oacute; quyền phạt con. Con c&oacute; thể chơi game tr&ecirc;n điện thoại trong giờ ra chơi, miễn l&agrave; việc đ&oacute; kh&ocirc;ng ảnh hưởng đến việc học. Con c&oacute; thể xin ph&eacute;p ra ngo&agrave;i đi vệ sinh khi đang trong giờ học. Con cũng c&oacute; thể từ chối ăn nếu con kh&ocirc;ng muốn. Nếu con nghĩ gi&aacute;o vi&ecirc;n l&agrave;m sai một việc g&igrave; đ&oacute; hoặc cư xử kh&ocirc;ng đ&uacute;ng mực, h&atilde;y n&oacute;i với bố mẹ.</p>\r\n\r\n<p class=\"Normal\">9. Nếu con kh&ocirc;ng tu&acirc;n thủ quy định, gi&aacute;o vi&ecirc;n c&oacute; thể phạt con. Nhưng kh&ocirc;ng ai được ph&eacute;p l&agrave;m tổn thương, hạ nhục hay nhạo b&aacute;ng con.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\" style=\"width: 500px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"13 điều phụ huynh cần dạy con trước khi vào lớp 1 - 1\" data-natural-h=\"423\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2019/03/18/day-con-2-7626-1552883416.jpg\" /></td>\r\n		</tr>\r\n		<tr>\r\n			<td>&nbsp;</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p class=\"Normal\">10. H&atilde;y học c&aacute;ch giao tiếp với mọi người. Khi một bạn c&ugrave;ng lớp khiến con tổn thương, đầu ti&ecirc;n h&atilde;y tự m&igrave;nh giải quyết vấn đề. Nếu kh&ocirc;ng hiệu quả, con h&atilde;y nhờ gi&aacute;o vi&ecirc;n hoặc bố mẹ can thiệp.&nbsp;</p>\r\n\r\n<p class=\"Normal\">11. H&atilde;y nỗ lực hết m&igrave;nh v&agrave; học c&aacute;ch tự suy nghĩ.</p>\r\n\r\n<p class=\"Normal\">12. H&atilde;y r&egrave;n luyện kỷ luật. C&aacute;c quy tắc được đặt ra để cuộc sống của ch&uacute;ng ta trở n&ecirc;n dễ d&agrave;ng hơn. Do đ&oacute;, con phải l&agrave;m b&agrave;i tập về nh&agrave;, v&acirc;ng lời thầy c&ocirc; gi&aacute;o, tự chuẩn bị cặp s&aacute;ch cho ng&agrave;y h&ocirc;m sau v&agrave;o buổi tối trước khi đi ngủ.&nbsp;</p>\r\n\r\n<p class=\"Normal\">13. Con c&oacute; thể thu nạp kiến thức từ những nơi kh&aacute;c ngo&agrave;i trường học. Nếu muốn biết th&ecirc;m điều g&igrave; đ&oacute;, con h&atilde;y đặt c&acirc;u hỏi v&agrave; bố mẹ sẽ gi&uacute;p con t&igrave;m c&acirc;u trả lời.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'images/day-con-1-8242-1552883416.jpg', 'publish', 0, 0, 0, 0, 1, 2, 0, NULL, NULL, 0, 0, 0, 'vi'),
(5, 7, 'Những điều bố mẹ nên dạy trẻ ở từng giai đoạn', 'nhung-dieu-bo-me-nen-day-tre-o-tung-giai-doan-', 'Trẻ dưới 5 tuổi nên được khuyến khích đặt câu hỏi nếu thắc mắc, trẻ 6-8 tuổi phải biết cách qua đường và tuân thủ luật giao thông.', '<p class=\"Normal\"><strong>5 tuổi trở xuống</strong></p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch đối ph&oacute; với thất bại v&agrave; cơn giận dữ.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch tha thứ cho người kh&aacute;c v&agrave; bản th&acirc;n.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch đi đến thỏa thuận với những đứa trẻ kh&aacute;c v&agrave; với người lớn.</p>\r\n\r\n<p class=\"Normal\">- T&iacute;nh tự lập.</p>\r\n\r\n<p class=\"Normal\">- Nắm r&otilde; địa chỉ nh&agrave;.</p>\r\n\r\n<p class=\"Normal\">- Kh&ocirc;ng n&oacute;i chuyện hoặc đi c&ugrave;ng người lạ.</p>\r\n\r\n<p class=\"Normal\">- Ăn thực phẩm tốt cho sức khỏe (tr&aacute;nh thực phẩm g&acirc;y dị ứng).</p>\r\n\r\n<p class=\"Normal\">- Kh&ocirc;ng cảm thấy ngại ng&ugrave;ng trước người lớn v&agrave; người gi&agrave;.</p>\r\n\r\n<p class=\"Normal\">- Kh&ocirc;ng ngại đặt c&acirc;u hỏi khi kh&ocirc;ng biết điều g&igrave; đ&oacute;.</p>\r\n\r\n<p class=\"Normal\">- Chịu tr&aacute;ch nhiệm cho h&agrave;nh động của ch&iacute;nh m&igrave;nh.</p>\r\n\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\"><strong>6-8 tuổi</strong></p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch l&agrave;m những m&oacute;n ăn đơn giản (pha tr&agrave;, kẹp b&aacute;nh sandwich).</p>\r\n\r\n<p class=\"Normal\">- Thuộc c&aacute;c số khẩn cấp.</p>\r\n\r\n<p class=\"Normal\">- Bơi.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch xử l&yacute; mọi việc đ&uacute;ng hạn.</p>\r\n\r\n<p class=\"Normal\">- Tu&acirc;n thủ luật giao th&ocirc;ng khi qua đường.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch t&igrave;m kiếm th&ocirc;ng tin trong s&aacute;ch v&agrave; tr&ecirc;n Internet.</p>\r\n\r\n<p class=\"Normal\">- Kh&ocirc;ng n&oacute;i mọi thứ nảy ra trong đầu, v&igrave; điều đ&oacute; c&oacute; thể x&uacute;c phạm người kh&aacute;c.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch bảo vệ m&ocirc;i trường v&agrave; chăm s&oacute;c động vật.</p>\r\n\r\n<p class=\"Normal\">- Thuộc l&ograve;ng số điện thoại của bố mẹ.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Những điều bố mẹ nên dạy trẻ ở từng giai đoạn - 1\" data-natural-h=\"370\" data-natural-width=\"500\" data-pwidth=\"500\" data-width=\"500\" src=\"https://i-vnexpress.vnecdn.net/2019/03/16/day-con-6-8-tuoi-3343-1552729078.jpg\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p class=\"Normal\"><strong>9-12 tuổi</strong></p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch ph&acirc;n biệt nhu cầu với mong muốn nhất thời.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch lạc quan nhưng kh&ocirc;ng nh&igrave;n thế giới qua lăng k&iacute;nh m&agrave;u hồng.</p>\r\n\r\n<p class=\"Normal\">- T&igrave;m một sở th&iacute;ch v&agrave; biến n&oacute; th&agrave;nh sở trường.</p>\r\n\r\n<p class=\"Normal\">- Ăn mặc ph&ugrave; hợp.</p>\r\n\r\n<p class=\"Normal\">- Biết những điều cơ bản về h&agrave;nh vi an to&agrave;n tr&ecirc;n Internet.</p>\r\n\r\n<p class=\"Normal\">- Kh&ocirc;ng để qu&ecirc;n ch&igrave;a kh&oacute;a v&agrave; tiền ở bất cứ đ&acirc;u.</p>\r\n\r\n<p class=\"Normal\">- Học nấu c&aacute;c m&oacute;n ăn phức tạp hơn, c&aacute;ch trang tr&iacute; v&agrave; gọt rau củ.</p>\r\n\r\n<p class=\"Normal\">- Để &yacute; thời gian khi xem TV hoặc chơi game.</p>\r\n\r\n<p class=\"Normal\">- Tập thể dục.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch đi đến cửa h&agrave;ng tạp h&oacute;a.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch sử dụng la b&agrave;n v&agrave; dựng lều.</p>\r\n\r\n<p class=\"Normal\">- Nhớ ng&agrave;y sinh nhật của người th&acirc;n.</p>\r\n\r\n<p class=\"Normal\"><strong>13-15 tuổi</strong></p>\r\n\r\n<p class=\"Normal\">- Nhận thức được rằng rượu bia v&agrave; chất k&iacute;ch th&iacute;ch g&acirc;y hại cho cơ thể.</p>\r\n\r\n<p class=\"Normal\">- Định hướng được c&aacute;c khu vực trong th&agrave;nh phố v&agrave; tr&aacute;nh những nơi nguy hiểm.</p>\r\n\r\n<p class=\"Normal\">- Tự sử dụng phương tiện giao th&ocirc;ng c&ocirc;ng cộng.</p>\r\n\r\n<p class=\"Normal\">- Chấp nhận vẻ bề ngo&agrave;i v&agrave; kh&ocirc;ng tự ti v&igrave; những điểm kh&ocirc;ng ho&agrave;n hảo.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch nu&ocirc;i dưỡng t&igrave;nh bạn.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch thể hiện t&igrave;nh cảm với người kh&aacute;c giới.</p>\r\n\r\n<p class=\"Normal\">- N&oacute;i xin lỗi khi l&agrave;m sai.</p>\r\n\r\n<p class=\"Normal\">- Tiết kiệm tiền v&agrave; chi ti&ecirc;u hợp l&yacute;.</p>\r\n\r\n<p class=\"Normal\">- Tự tin nhưng kh&ocirc;ng lấn &aacute;t người kh&aacute;c.</p>\r\n\r\n<p class=\"Normal\">- Đối xử t&ocirc;n trọng với nh&acirc;n vi&ecirc;n phục vụ.&nbsp;</p>\r\n\r\n<p class=\"Normal\">- Hiểu nguồn gốc, hậu quả v&agrave; c&aacute;ch chống lại cơn trầm cảm.</p>\r\n\r\n<table align=\"center\" border=\"0\" cellpadding=\"3\" cellspacing=\"0\" class=\"tplCaption\">\r\n	<tbody>\r\n		<tr>\r\n			<td><img alt=\"Những điều bố mẹ nên dạy trẻ ở từng giai đoạn - 2\" data-natural-h=\"556\" data-natural-width=\"350\" data-pwidth=\"500\" data-width=\"350\" src=\"https://i-vnexpress.vnecdn.net/2019/03/16/day-con-15-tuoi-8086-1552729078.jpg\" /></td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p class=\"Normal\"><strong>16-18 tuổi</strong></p>\r\n\r\n<p class=\"Normal\">- Suy nghĩ trước khi đưa ra quyết định quan trọng.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch giải quyết xung đột.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch t&igrave;m kiếm sự thỏa hiệp.</p>\r\n\r\n<p class=\"Normal\">- D&aacute;m mạo hiểm một c&aacute;ch kh&ocirc;n ngoan.</p>\r\n\r\n<p class=\"Normal\">- Kiểm so&aacute;t trọng lượng cơ thể.</p>\r\n\r\n<p class=\"Normal\">- Tự đo lường v&agrave; hiểu biết về sức khỏe của m&igrave;nh.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch đối ph&oacute; với khối lượng b&agrave;i vở v&agrave; cảm x&uacute;c một c&aacute;ch độc lập.</p>\r\n\r\n<p class=\"Normal\">- Nắm điểm mạnh v&agrave; điểm yếu của bản th&acirc;n.</p>\r\n\r\n<p class=\"Normal\">- Nghĩ đến tương lai v&agrave; nghề nghiệp.</p>\r\n\r\n<p class=\"Normal\">- Cố gắng tham gia t&igrave;nh nguyện ngo&agrave;i thời gian học tập.</p>\r\n\r\n<p class=\"Normal\">- C&aacute;ch hiểu cảm x&uacute;c của bản th&acirc;n v&agrave; của người kh&aacute;c.</p>\r\n\r\n<p class=\"Normal\">- Biết c&aacute;c quy tắc an to&agrave;n khi quan hệ t&igrave;nh dục.</p>\r\n</article>\r\n\r\n<p class=\"author_mail\"><strong>Th&ugrave;y Linh - Theo Bright Side</strong></p>\r\n\r\n<p>&nbsp;</p>', 'images/day-con-1-1552706524-8913-1552729078.jpg', 'publish', 0, 0, 0, 0, 1, 2, 0, NULL, NULL, 0, 0, 0, 'vi'),
(6, 8, 'Cách giúp trẻ yêu đọc sách tiếng Anh', 'cach-giup-tre-yeu-doc-sach-tieng-anh-', 'Cùng con học chữ A B C qua trò chơi, rồi tập đọc từng chữ trong câu, thầy giáo Quang Nguyen đã khiến con gái nhỏ thích đọc sách hơn.', '<p class=\"Normal\">Trong việc hướng con đọc s&aacute;ch, việc kh&oacute; nhất kh&ocirc;ng phải l&agrave; l&agrave;m thế n&agrave;o để con đọc được, m&agrave; l&agrave; nu&ocirc;i dưỡng v&agrave; giữ được t&igrave;nh y&ecirc;u đọc s&aacute;ch trong con.</p>\r\n\r\n<p class=\"Normal\">M&igrave;nh đọc s&aacute;ch c&ugrave;ng cả hai con, đứa lớn học rất nhanh, từ nh&igrave;n qua một lần đ&atilde; nhớ v&agrave; chỉ sau một thời gian ngắn đọc s&aacute;ch c&ugrave;ng bố, ch&agrave;ng trai đ&atilde; h&ograve;a nhập v&agrave; đứng trong nh&oacute;m học sinh đọc s&aacute;ch tốt ở trường của Mỹ. Ngược lại, c&ocirc; con g&aacute;i b&eacute; t&ecirc;n Suzie lại đọc rất chậm v&agrave; hay qu&ecirc;n.&nbsp;Dưới đ&acirc;y l&agrave; những kinh nghiệm đọc s&aacute;ch c&ugrave;ng c&ocirc; b&eacute; &quot;chậm đọc&quot; n&agrave;y.</p>\r\n\r\n<p class=\"Normal\">Suzie gặp kh&oacute; khăn ngay từ những ng&agrave;y đầu học chữ. M&igrave;nh mua một bộ đồ chơi h&igrave;nh chữ c&aacute;i A B C để con l&agrave;m quen với mặt chữ. Rồi bắt đầu bằng ba chữ c&aacute;i A B C, m&igrave;nh cho con&nbsp;vừa học vừa chơi đố, mỗi ng&agrave;y tăng th&ecirc;m một v&agrave;i chữ.</p>\r\n\r\n<p class=\"Normal\">Sau khi Suzie đ&atilde; thuộc sơ s&agrave;i, m&igrave;nh viết bảng chữ c&aacute;i l&ecirc;n tường v&agrave; bắt đầu chơi một tr&ograve; kh&aacute;c: chỉ v&agrave;o bảng chữ c&aacute;i v&agrave; hỏi. Nếu trả lời đ&uacute;ng, con được 1 điểm, trả lời sai, bố được điểm. R&ograve;ng r&atilde; th&ecirc;m v&agrave;i tuần th&igrave; con cũng nắm được sơ sơ chữ c&aacute;i.</p>\r\n\r\n<p class=\"Normal\">Đến phần đọc, việc đầu ti&ecirc;n l&agrave; l&agrave;m quen với chữ viết thường (lower case), v&agrave; &acirc;m của từng chữ. C&aacute;c b&agrave;i &quot;phonics song&quot; tương đối hiệu quả, l&agrave; một khởi đầu tốt. V&igrave; con học trong m&ocirc;i trường ESL (ở Mỹ), m&igrave;nh kh&ocirc;ng cần phải dạy ph&aacute;t &acirc;m nữa, việc dạy theo &quot;phonics&quot; nh&agrave;n hơn. Với trẻ ở Việt Nam, cần lưu &yacute;, phương ph&aacute;p &quot;phonics&quot; kh&oacute; &aacute;p dụng hơn rất nhiều v&igrave; gi&aacute;o vi&ecirc;n v&agrave; học sinh đều c&oacute; thể ph&aacute;t &acirc;m kh&ocirc;ng chuẩn, dẫn đến đọc sai</p>\r\n\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">Sau khi nhận diện được chữ c&aacute;i v&agrave; &acirc;m, m&igrave;nh bắt đầu đọc s&aacute;ch c&ugrave;ng con. Khi chọn s&aacute;ch, cần lưu &yacute; chọn những cuốn ph&ugrave; hợp với khả năng đọc v&agrave; sở th&iacute;ch của b&eacute;. Với Suzie, m&igrave;nh chọn s&aacute;ch đơn giản (mỗi trang chỉ 1-6 chữ), c&oacute; nội dung li&ecirc;n quan đến Elsa, Pony hay động vật.</p>\r\n\r\n<p class=\"Normal\">Khi đọc s&aacute;ch, m&igrave;nh &aacute;p dụng ba phương ph&aacute;p: phonics (với những từ d&ugrave;ng được như &quot;dog&quot;), &quot;whole-word&quot; (với những từ kh&ocirc;ng d&ugrave;ng &quot;phonics&quot; được như: &quot;he&quot;) v&agrave; bối cảnh (v&iacute; dụ khi trang s&aacute;ch c&oacute; h&igrave;nh con ch&oacute; m&agrave;u trắng v&agrave; ở dưới l&agrave; &quot;white dog&quot;). Cần nhớ, mục đ&iacute;ch l&agrave; để trẻ &quot;giải m&atilde;&quot; được chữ c&aacute;i, phương ph&aacute;p n&agrave;o gi&uacute;p trẻ nhớ được chữ đều l&agrave; hiệu quả.</p>\r\n\r\n<p class=\"Normal\">M&igrave;nh bắt đầu đọc s&aacute;ch c&ugrave;ng con bằng chữ &quot;the&quot; (phương ph&aacute;p &quot;whole-word&quot;) v&igrave; đ&acirc;y l&agrave; chữ xuất hiện nhiều nhất trong tiếng Anh. M&igrave;nh y&ecirc;u cầu Suzie nhớ mặt chữ &quot;the&quot;, v&agrave; đọc mỗi khi chữ &quot;the&quot; xuất hiện - phần c&ograve;n lại l&agrave; bố đọc. V&iacute; dụ, &quot;a dog eats THE bone&quot; th&igrave; con đọc chữ &quot;the&quot;, c&ograve;n lại bố đọc.</p>\r\n\r\n<p class=\"Normal\">Sau đ&oacute;, m&igrave;nh dạy con đọc chữ &quot;dog&quot; bằng &quot;phonics&quot; (v&igrave; trong cuốn s&aacute;ch c&oacute; nhiều chữ n&agrave;y), rồi tăng dần số từ con tự đọc đến l&uacute;c n&agrave;ng c&oacute; thể tự m&igrave;nh đọc cả cuốn.</p>\r\n\r\n<p class=\"Normal\">B&acirc;y giờ Suzie biết đ&aacute;nh vần những chữ cơ bản bằng &quot;phonics&quot; (như &quot;bed&quot;, &quot;meet&quot;), nhớ mặt chữ đơn giản (như &quot;he&quot;, &quot;do&quot;), v&agrave; biết c&aacute;ch &quot;nh&igrave;n h&igrave;nh đo&aacute;n chữ&quot; (như &quot;big dog, little dog&quot;). Nhưng quan trọng nhất, con rất th&iacute;ch đọc s&aacute;ch.<br />\r\nNg&agrave;y xưa, mỗi s&aacute;ng, gọi con g&aacute;i dậy đi học l&agrave; một cực h&igrave;nh với bố. Giờ th&igrave; đơn giản rồi, chỉ cần đọc thần ch&uacute;: &quot;Suzie, do you wanna read a book?&quot; l&agrave; n&agrave;ng v&ugrave;ng chăn dậy ngay.</p>\r\n</article>\r\n\r\n<p class=\"author_mail\"><strong>Quang Nguyen</strong></p>', 'images/ss-2986-1552790869.jpg', 'publish', 1, 0, 0, 0, 1, 2, 0, NULL, NULL, 0, 0, 0, 'vi'),
(7, 9, 'Trường Trung Quốc cấm học sinh nắm tay nhau', 'truong-trung-quoc-cam-hoc-sinh-nam-tay-nhau-', 'Cấm đi dạo hai người, cấm ngồi ăn chung... một trường trung học ở Hà Nam muốn ngăn chặn học sinh tán tỉnh nhau.', '<p class=\"Normal\">Giữa tuần qua, nhiều học sinh trường trung học số 1 Suiping, tỉnh H&agrave; Nam (Trung Quốc) đ&atilde; l&ecirc;n mạng x&atilde; hội để chia sẻ việc nh&agrave; trường đưa ra một loạt biện ph&aacute;p nhằm ngăn chặn nam sinh v&agrave; nữ sinh t&aacute;n tỉnh nhau. Theo đ&oacute;, c&aacute;c nam sinh kh&ocirc;ng được ngồi chung với nữ sinh ở canteen trường. C&aacute;c em cũng kh&ocirc;ng được c&oacute; thời gian ri&ecirc;ng tư với nhau, <em>SCMP</em> ng&agrave;y 14/3 đưa tin.</p>\r\n\r\n<p class=\"Normal\">&quot;Nếu học sinh c&oacute; đụng chạm như cầm tay, hoặc dạo bộ hai người, d&ugrave; c&ugrave;ng giới hay kh&aacute;c giới đều bị coi l&agrave; c&oacute; mối quan hệ l&atilde;ng mạn&quot;, một học sinh của trường kể.</p>\r\n\r\n<p class=\"Normal\">Th&agrave;nh vi&ecirc;n của ph&ograve;ng gi&aacute;o dục địa phương x&aacute;c nhận trường đặt ra quy tắc tr&ecirc;n để ngăn chặn t&igrave;nh y&ecirc;u tuổi học tr&ograve;. Tuy nhi&ecirc;n, trường kh&ocirc;ng l&ecirc;n tiếng về việc n&agrave;y.</p>\r\n\r\n<article class=\"content_detail fck_detail width_common block_ads_connect\">\r\n<p class=\"Normal\">Một học sinh th&ocirc;ng tin nh&agrave; trường đ&atilde; ban h&agrave;nh hai danh s&aacute;ch gồm những h&agrave;nh vi được khuyến kh&iacute;ch v&agrave; những h&agrave;nh vi bị cấm. Nếu kh&ocirc;ng tu&acirc;n thủ quy định, c&aacute;c em sẽ bị trừ điểm cho đến khi đủ để đuổi học.</p>\r\n\r\n<p class=\"Normal\">Danh s&aacute;ch h&agrave;nh vi bị cấm được ban h&agrave;nh v&agrave;o th&aacute;ng trước, thời điểm đầu học kỳ. Ngo&agrave;i việc ngăn nam nữ gần nhau, trường cũng cấm học sinh mang t&uacute;i x&aacute;ch trong khu&ocirc;n vi&ecirc;n như một phần của lệnh cấm c&aacute;c thiết bị điện tử v&agrave; đồ ăn nhẹ m&agrave; trường cho l&agrave; kh&ocirc;ng ph&ugrave; hợp.</p>\r\n\r\n<p class=\"Normal\">Nhiều người đ&atilde; chỉ tr&iacute;ch gay gắt những quy định tr&ecirc;n v&igrave; cho rằng n&oacute; kh&ocirc;ng cần thiết v&agrave; kh&ocirc;ng hiệu quả.</p>\r\n\r\n<p class=\"Normal\">&quot;Một mối t&igrave;nh chớm nở ở tuổi học tr&ograve; c&oacute; g&igrave; sai&quot;, &quot;Một đứa trẻ b&igrave;nh thường kh&ocirc;ng n&ecirc;n c&oacute; cảm x&uacute;c trong qu&aacute; tr&igrave;nh trưởng th&agrave;nh của ch&uacute;ng sao? Bạn n&ecirc;n tr&ograve; chuyện v&agrave; đưa ra lời khuy&ecirc;n, đừng l&agrave;m tổn hại sự ph&aacute;t triển tự nhi&ecirc;n bằng c&aacute;ch cực đoan như vậy&quot;, nhiều người b&igrave;nh luận tr&ecirc;n Weibo.</p>\r\n\r\n<p class=\"Normal\">C&oacute; người cho rằng nếu đ&atilde; muốn ngăn cản học sinh y&ecirc;u nhau, trường n&ecirc;n chia th&agrave;nh hai cơ sở, một d&agrave;nh cho nam, một cho nữ. &quot;Điều n&agrave;y chắc chắn sẽ hiệu quả hơn&quot;, người n&agrave;y gợi &yacute;.</p>\r\n\r\n<p class=\"Normal\">Trước trường Suiping, năm 2016, một trường trung học ở Ruyang, cũng thuộc tỉnh H&agrave; Nam đ&atilde; g&acirc;y tranh c&atilde;i khi t&aacute;ch ri&ecirc;ng nam với nữ trong c&aacute;c qu&aacute;n ăn tự phục vụ. Hiệu trưởng chia sẻ với b&aacute;o ch&iacute; địa phương rằng quy tắc được đưa ra để ngăn chặn học sinh t&aacute;n tỉnh nhau từ việc b&oacute;n cho nhau ăn, một h&agrave;nh vi rất phổ biến.</p>\r\n</article>\r\n\r\n<p class=\"author_mail\"><strong>Dương T&acirc;m</strong></p>\r\n\r\n<p>&nbsp;</p>', 'images/tinh-yeu-3489-1552788638.jpg', 'publish', 0, 0, 0, 0, 1, 2, 0, NULL, NULL, 0, 0, 0, 'vi'),
(8, 10, 'Qualcomm: \'Nếu Apple gọi, chúng tôi sẽ hỗ trợ\'', 'qualcomm-\'neu-apple-goi-chung-toi-se-ho-tro\'', 'Dù cuộc chiến pháp lý giữa hai đại gia công nghệ Mỹ đang diễn ra, Qualcomm cho biết vẫn sẵn sàng hợp tác với Apple.', '<p>Tuần trước, chuy&ecirc;n gia ph&acirc;n t&iacute;ch Timothy Arcuri của UBS dự đo&aacute;n &quot;iPhone 5G c&oacute; thể kh&ocirc;ng kịp c&oacute; mặt trong năm 2020&quot; do thiếu bộ xử l&yacute; 5G v&agrave; buộc Apple phải t&igrave;m c&aacute;ch tự ph&aacute;t triển chip mạng 5G để d&ugrave;ng tr&ecirc;n iPhone 2021. Trong cuộc phỏng vấn với Axios, Cristiano Amon, Chủ tịch Qualcomm, n&oacute;i &ocirc;ng &quot;kh&ocirc;ng b&igrave;nh luận về những g&igrave; Apple đang l&agrave;m, nhưng c&agrave;ng tr&igrave; ho&atilde;n triển khai 5G, th&aacute;ch thức m&agrave; c&ocirc;ng ty phải đối mặt sẽ c&agrave;ng lớn&quot;. Khi được hỏi liệu c&oacute; khả năng Qualcomm sẽ hợp t&aacute;c với Apple bất chấp vụ kiện dai dẳng giữa hai b&ecirc;n, &ocirc;ng Amon n&oacute;i thẳng: &quot;Ch&uacute;ng t&ocirc;i vẫn ở San Diego, họ c&oacute; số của ch&uacute;ng t&ocirc;i. Nếu họ gọi, ch&uacute;ng t&ocirc;i sẽ hỗ trợ&quot;. Ảnh: 9to5mac. Vị đại diện Qualcomm nhấn mạnh: &quot;4G đ&atilde; ho&agrave;n to&agrave;n thay đổi &acirc;m nhạc. Ch&uacute;ng ta giờ c&oacute; thể ph&aacute;t trực tiếp (stream) &acirc;m nhạc. Bạn kh&ocirc;ng cần mua đĩa CD hay tải c&aacute;c b&agrave;i h&aacute;t về m&aacute;y. Với 5G, điều tương tự sẽ diễn ra với video. 5G sẽ tạo ra điện to&aacute;n theo nhu cầu&quot;. Hồi th&aacute;ng 11/2018, CEO Steve Mollenkopf của Qualcomm cũng n&oacute;i họ &quot;lưỡng lự&quot; trong việc giải quyết tranh chấp với Apple, ngụ &yacute; cả hai c&oacute; thể đ&agrave;m ph&aacute;n ri&ecirc;ng. Tuy nhi&ecirc;n, Apple từ chối v&agrave; muốn giải quyết m&acirc;u thuẫn tại t&ograve;a. Trong khi đ&oacute;, giới ph&acirc;n t&iacute;ch nhận định, Apple đang chật vật t&igrave;m giải ph&aacute;p 5G cho iPhone do c&oacute; qu&aacute; &iacute;t lựa chọn. Chip của Intel được cho l&agrave; kh&ocirc;ng đ&aacute;p ứng ti&ecirc;u chuẩn. Việc hợp t&aacute;c với Samsung kh&ocirc;ng được ưu ti&ecirc;n do Samsung l&agrave; đối thủ lớn nhất tr&ecirc;n thị trường di động v&agrave; sẽ đưa ra những điều khoản g&acirc;y kh&oacute; cho Apple, c&ograve;n c&aacute;c h&atilde;ng Trung Quốc lại kh&oacute; đ&aacute;p ứng y&ecirc;u cầu cao về thời gian, lộ tr&igrave;nh xuất xưởng của Apple... Phi&ecirc;n t&ograve;a giữa Apple v&agrave; Qualcomm sẽ bắt đầu từ ng&agrave;y 15/4 tại San Diego, c&oacute; sự tham gia của Apple CEO Tim Cook v&agrave; nhiều l&atilde;nh đạo kh&aacute;c, li&ecirc;n quan tới khoản tiền một tỷ USD m&agrave; Apple cho l&agrave; đ&atilde; &quot;bị Qualcomm t&iacute;nh ph&iacute; bản quyền một c&aacute;ch v&ocirc; l&yacute;&quot;. M&acirc;u thuẫn giữa hai h&atilde;ng bắt đầu diễn ra từ th&aacute;ng 1/2017 khi Qualcomm bị Ủy ban Thương mại Mỹ FTC c&aacute;o buộc vi phạm nghi&ecirc;m trọng luật cạnh tranh c&ocirc;ng bằng khi &quot;mua chuộc&quot; c&aacute;c c&ocirc;ng ty điện thoại, đặc biệt l&agrave; Apple, d&ugrave;ng độc quyền chip của m&igrave;nh. Chỉ sau v&agrave;i ng&agrave;y, Apple kiện h&atilde;ng sản xuất chip v&agrave; đ&ograve;i bồi thường một tỷ USD. Qualcomm cũng tố Apple vi phạm bản quyền v&agrave; y&ecirc;u cầu cấm b&aacute;n một số mẫu iPhone tại Mỹ, Trung Quốc v&agrave; Đức. Ng&agrave;y 26/10/2018, Qualcomm cho biết Apple đang nợ 7 tỷ USD tiền bản quyền bằng s&aacute;ng chế chip di động được sử dụng tr&ecirc;n iPhone. Ch&acirc;u An</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/Apple-8300-1554715305_300x180.jpg', 'publish', 0, 0, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/qualcomm-neu-apple-goi-chung-toi-se-ho-tro-3906435.html', NULL, 0, 0, 0, 'vi'),
(9, 11, 'Lò sưởi bằng đèn LED cho chạm tay vào lửa', 'lo-suoi-bang-den-led-cho-cham-tay-vao-lua', 'Người dùng có thể chạm tay, thay đổi độ cao hoặc màu sắc của những ngọn lửa thông qua điều khiển từ xa.', '<p>&nbsp; &nbsp; L&ograve; sưởi bằng đ&egrave;n LED Bảo Nam (theo GIGadgets)</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/ezgif3430345bc7c5b-1554720478-8456-1554720486_300x180.gif', 'publish', 0, 0, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/lo-suoi-bang-den-led-cho-cham-tay-vao-lua-3906500.html', NULL, 0, 0, 0, 'vi'),
(10, 12, '30% người lao động sẽ sớm mất việc vì AI', '30-nguoi-lao-dong-se-som-mat-viec-vi-ai', 'Trí tuệ nhân tạo có thể tạo ra việc làm và các ngành kinh doanh mới hoặc sẽ đẩy người lao động vào tình trạng thất nghiệp không lối thoát.', '<p>Theo c&aacute;c số liệu v&agrave; tin tức được c&ocirc;ng bố gần đ&acirc;y, ng&agrave;y c&agrave;ng nhiều c&ocirc;ng ty chấp nhận d&agrave;nh những khoản tiền lớn để đầu tư v&agrave;o tr&iacute; tuệ nh&acirc;n tạo (AI). Điều đ&oacute; phần n&agrave;o cho thấy c&ocirc;ng nghệ n&agrave;y đang hướng tới việc trở th&agrave;nh c&ocirc;ng cụ sử dụng một c&aacute;ch chủ đạo. Đơn cử c&ocirc;ng ty c&ocirc;ng nghệ DocuSign đ&atilde; đầu tư 15 triệu USD v&agrave;o một c&ocirc;ng ty khởi nghiệp lĩnh vực AI, Apple thu mua một nh&agrave; ph&aacute;t triển camera gia đ&igrave;nh dựa tr&ecirc;n AI hay b&aacute;o c&aacute;o của CIO cho biết c&aacute;c ng&acirc;n h&agrave;ng dự kiến&nbsp;chi 5,6 tỷ USD cho c&aacute;c giải ph&aacute;p AI v&agrave;o năm 2019. C&oacute; thể n&oacute;i những dự &aacute;n về AI xuất hiện ở khắp mọi nơi. Mặc d&ugrave; c&oacute; nhiều lo ngại về mặt đạo đức, c&aacute;c chuy&ecirc;n gia v&agrave; những nh&agrave; khoa học h&agrave;ng đầu tại thung lũng Silicon vẫn khuyến kh&iacute;ch c&aacute;c c&ocirc;ng ty nhảy v&agrave;o lĩnh vực n&agrave;y v&agrave; sử dụng AI. Rất nhiều c&ocirc;ng ty đ&atilde; v&agrave; đang thực hiện việc đ&oacute;.&nbsp;KPMG, một trong bốn &ocirc;ng lớn (Big Four) của ng&agrave;nh kiểm to&aacute;n,&nbsp;tuy&ecirc;n bố hơn một nửa số gi&aacute;m đốc điều h&agrave;nh doanh nghiệp c&oacute; kế hoạch triển khai một số h&igrave;nh thức AI trong v&ograve;ng 12 th&aacute;ng tới. Trong những cuộc thảo luận về sự phổ biến của AI, t&aacute;c động tiềm năng của c&ocirc;ng nghệ n&agrave;y trong việc ho&agrave;n th&agrave;nh c&aacute;c c&ocirc;ng việc lu&ocirc;n l&agrave; vấn đề g&acirc;y nhiều ch&uacute; &yacute;. Tuy rất kh&oacute; để h&igrave;nh dung, một số người đ&atilde; cố gắng ước t&iacute;nh n&oacute;. Chẳng hạn như Gartner, c&ocirc;ng ty nghi&ecirc;n cứu v&agrave; tư vấn nổi tiếng to&agrave;n cầu, tin rằng AI sẽ tạo ra nhiều việc l&agrave;m hơn l&agrave; ph&aacute; hủy ch&uacute;ng từ nay đến năm 2025. C&aacute;c cuộc c&aacute;ch mạng c&ocirc;ng nghệ trước đ&acirc;y đ&atilde; khiến khiến nhiều người mất việc, nhưng cuối c&ugrave;ng ch&uacute;ng đều tạo ra c&aacute;c việc l&agrave;m v&agrave; ng&agrave;nh c&ocirc;ng nghiệp mới. M&ocirc; h&igrave;nh đ&oacute; đ&atilde; xảy ra nhiều lần v&agrave; dần dần đ&atilde; trở th&agrave;nh một sự lựa chọn kh&ocirc;n ngoan, được nhiều người chấp nhận. Nhưng kh&ocirc;ng phải ai cũng lạc quan khi n&oacute;i đến t&aacute;c động của AI. Trong một cuộc phỏng vấn, Kai-Fu Lee, chuy&ecirc;n gia h&agrave;ng đầu thế giới về tr&iacute; tuệ nh&acirc;n tạo, tuy&ecirc;n bố chỉ sau 15 năm, c&ocirc;ng nghệ AI c&oacute; thể thay thế khoảng 40% c&ocirc;ng việc tr&ecirc;n to&agrave;n thế giới. C&ograve;n trong b&aacute;o c&aacute;o của KPMG, 75% c&aacute;c tổ chức được khảo s&aacute;t cũng hy vọng tự động h&oacute;a v&agrave; AI sẽ t&aacute;c động đ&aacute;ng kể, từ 10% đến 50% nh&acirc;n vi&ecirc;n của họ trong hai năm tới. Một gi&aacute;m đốc điều h&agrave;nh của Citigroup n&oacute;i nếu tiếp tục cải tiến, AI c&oacute; thể gi&uacute;p giảm 30% số lượng nh&acirc;n vi&ecirc;n tại ng&acirc;n h&agrave;ng. Trong khi nhiều c&ocirc;ng ty tuy&ecirc;n bố AI sẽ loại bỏ một số c&ocirc;ng việc buồn tẻ v&agrave; lặp đi lặp lại, khiến mọi người c&oacute; thể tập trung v&agrave;o l&agrave;m những c&ocirc;ng việc c&oacute; tr&igrave;nh độ cao hơn th&igrave; một nh&agrave; đầu tư mạo hiểm giấu t&ecirc;n lại cho rằng sự thật c&oacute; thể rất thảm khốc. Theo &ocirc;ng, kh&ocirc;ng chỉ những c&ocirc;ng việc c&oacute; tay nghề thấp m&agrave; thậm ch&iacute; cả c&aacute;c vị tr&iacute; đ&ograve;i hỏi tr&igrave;nh độ cao cũng c&oacute; thể bị thay thế.&nbsp;C&aacute;c nh&agrave; ph&acirc;n t&iacute;ch của Gartner gần đ&acirc;y đ&atilde; b&aacute;o c&aacute;o AI sẽ loại bỏ 80% nhiệm vụ quản l&yacute; dự &aacute;n. Theo một b&agrave;i viết tr&ecirc;n New York Times, nhiều CEO của c&aacute;c c&ocirc;ng ty chấp nhận trả tiền cho việc ph&aacute;t triển AI, chạy đua tự động h&oacute;a m&agrave; rất &iacute;t quan t&acirc;m đến t&aacute;c động tới người lao động.&nbsp;B&agrave;i b&aacute;o cũng tr&iacute;ch dẫn một cuộc khảo s&aacute;t của Deloitte từ năm 2017, cho thấy 53% c&aacute;c c&ocirc;ng ty đ&atilde; bắt đầu sử dụng m&aacute;y m&oacute;c để thực hiện những nhiệm vụ trước đ&acirc;y của con người. Con số n&agrave;y dự kiến&nbsp;tăng l&ecirc;n 72% v&agrave;o năm tới. Nhiều c&ocirc;ng ty cũng sớm nhận ra nguy cơ c&oacute; thể&nbsp;tụt lại ph&iacute;a sau do thua k&eacute;m trong cuộc chạy đua c&ocirc;ng nghệ. Một b&aacute;o c&aacute;o&nbsp;của Harvard Business Review đ&aacute;nh gi&aacute;&nbsp;những người đi trước về AI c&oacute; xu hướng thu được lợi nhuận lớn. C&aacute;c c&ocirc;ng ty n&agrave;y sẽ được hưởng lợi từ sự đổi mới, cho ph&eacute;p họ phục vụ v&agrave; thậm ch&iacute; c&oacute; thể tạo ra thị trường mới, đồng thời gi&agrave;nh được thị phần từ những đối thủ kh&ocirc;ng chấp nhận sử dụng AI ở thị trường hiện tại. Khoảng c&aacute;ch giữa những người đầu tư v&agrave; kh&ocirc;ng đầu tư v&agrave;o c&ocirc;ng nghề n&agrave;y sẽ ng&agrave;y c&agrave;ng lớn, đặc biệt trong c&aacute;c thị trường c&oacute; t&iacute;nh cạnh tranh khốc liệt. Khảo s&aacute;t về AI của c&ocirc;ng ty quan hệ c&ocirc;ng ch&uacute;ng Edelman cũng cho thấy c&oacute; một quan điểm chung về việc AI ph&aacute;t triển sẽ dẫn đến t&igrave;nh trạng mất việc l&agrave;m ngắn hạn, b&ecirc;n cạnh t&igrave;nh h&igrave;nh x&atilde; hội c&oacute; thể bị gi&aacute;n đoạn. C&ocirc;ng nghệ n&agrave;y cũng được đ&aacute;nh gi&aacute; sẽ c&oacute; lợi cho người gi&agrave;u v&agrave; l&agrave;m tổn thương người ngh&egrave;o. Dẫu vậy, rất &iacute;t người phủ nhận việc xu hướng về AI l&agrave; kh&ocirc;ng thể tr&aacute;nh khỏi, d&ugrave;&nbsp;c&aacute;c vấn đề ph&aacute;t sinh c&oacute; thể sẽ l&agrave;m chậm qu&aacute; tr&igrave;nh n&agrave;y như mối quan t&acirc;m về đạo đức hay sự phản ứng của người lao động.&nbsp;Những &aacute;p lực đối kh&aacute;ng n&agrave;y d&ugrave; tồn tại cũng kh&ocirc;ng c&oacute; khả năng thay đổi đ&aacute;ng kể tới quỹ đạo của việc &aacute;p dụng AI, bởi lợi &iacute;ch kinh doanh m&agrave; n&oacute; đem lại đơn giản l&agrave; qu&aacute; lớn. Một robot t&iacute;ch hợp&nbsp;AI c&oacute; thể thay thế c&ocirc;ng việc của rất nhiều người. Theo c&aacute;c chuy&ecirc;n gia, AI c&oacute; thể l&agrave; sự thay đổi m&ocirc; h&igrave;nh nhanh nhất trong lịch sử c&ocirc;ng nghệ. Trước đ&oacute;, c&aacute;c tiến bộ c&ocirc;ng nghệ lớn kh&aacute;c như tr&igrave;nh duyệt web, di động, dữ liệu đ&aacute;m m&acirc;y v&agrave; Big Data để đạt được mức độ triển khai đ&aacute;ng kể cần khoảng thời gian kh&ocirc;ng nhỏ. Trong khi đ&oacute; AI c&oacute; thể chỉ tốn &iacute;t hơn một nửa qu&atilde;ng thời gian n&agrave;y. C&aacute;c nh&agrave; nghi&ecirc;n cứu tại viện Brookings (Mỹ) lưu &yacute; rằng trong&nbsp;30 năm qua, c&ocirc;ng nghệ l&agrave; một nguồn đ&aacute;ng kể để tạo ra c&ocirc;ng việc v&agrave; cơ hội mới. Tuy nhi&ecirc;n, họ tin rằng c&aacute;c ch&iacute;nh phủ cần gi&uacute;p người lao động v&agrave; cộng đồng điều chỉnh lại việc ph&acirc;n phối việc l&agrave;m, cũng như giảm bớt kh&oacute; khăn cho những người c&oacute; thu nhập thấp. Ngo&agrave;i c&aacute;c chương tr&igrave;nh đ&agrave;o tạo nghề truyền thống, Brookings k&ecirc;u gọi sự điều chỉnh về quyền lợi tr&ecirc;n phạm vi to&agrave;n cầu. Cụ thể, n&oacute; bao gồm việc tăng th&ecirc;m thu nhập cho người lao động được đ&agrave;o tạo đồng thời x&acirc;y dựng chế độ thu nhập cơ bản tr&ecirc;n phạm vi to&agrave;n cầu, gọi tắt l&agrave; UBI. Đ&oacute; l&agrave; một khoản thanh to&aacute;n tiền mặt định kỳ v&agrave; v&ocirc; điều kiện cho mọi người bất kể họ c&oacute; l&agrave;m việc hay kh&ocirc;ng. Nguy&ecirc;n nh&acirc;n bởi với sự tiến bộ của AI, rất nhiều người c&oacute; thể bị bỏ lại ph&iacute;a sau v&agrave; họ cần tới sự hỗ trợ đặc biệt. Nh&agrave; sử học, triết gia ki&ecirc;m gi&aacute;o sư khoa học nổi tiếng Yuval Noah Harari tin AI ho&agrave;n to&agrave;n c&oacute; thể sẽ dẫn đến sự ph&aacute;t triển của một tầng lớp người thất nghiệp mới. &Ocirc;ng cũng cho rằng thung lũng Silicon n&ecirc;n ủng hộ UBI, bởi th&ocirc;ng điệp ở đ&acirc;y l&agrave;:&nbsp;&quot;Ch&uacute;ng t&ocirc;i kh&ocirc;ng cần bạn. Nhưng ch&uacute;ng t&ocirc;i rất tốt, v&igrave; vậy ch&uacute;ng t&ocirc;i sẽ chăm s&oacute;c bạn&quot;. Đối mặt với hai quan điểm về ủng hộ v&agrave; phản đối tr&iacute; tuệ nh&acirc;n tạo, người lao động gần như chỉ c&oacute; hai lựa chọn. Một l&agrave;&nbsp;li&ecirc;n tục n&acirc;ng cấp kiến thức v&agrave; kỹ năng của m&igrave;nh để ch&uacute;ng trở n&ecirc;n nhanh hơn, nhiều hơn so trước kia. Hoặc hy vọng UBI sẽ trở th&agrave;nh hiện thực, kịp thời ngăn chặn họ rơi xuống vực thẳm được tạo ra bởi c&ocirc;ng nghệ AI. Bảo Nam (theo VentureBeat)</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/istock840333536e1511283523442-4527-6588-1554716019_300x180.png', 'publish', 0, 0, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/30-nguoi-lao-dong-se-som-mat-viec-vi-ai-3906360.html', NULL, 0, 0, 0, 'vi'),
(11, 13, 'HTC - sự sụp đổ của một thương hiệu smartphone đầy hứa hẹn', 'htc---su-sup-do-cua-mot-thuong-hieu-smartphone-day-hua-hen', 'Từng được đánh giá cao nhờ loạt sản phẩm thiết kế đẹp, nhiều tính năng nhưng HTC giờ đây chỉ còn là cái bóng của chính mình.', '<p>C&aacute;ch đ&acirc;y khoảng 10 năm, HTC được xem l&agrave; thế lực trong l&agrave;ng di động. C&ocirc;ng ty Đ&agrave;i Loan cũng ch&iacute;nh l&agrave; c&aacute;i t&ecirc;n đầu ti&ecirc;n mang smartphone Android tới người d&ugrave;ng, trước khi hệ điều h&agrave;nh Google lớn mạnh như ng&agrave;y nay. HTC Dream - chiếc điện thoại chạy Android thương mại h&oacute;a&nbsp;đầu ti&ecirc;n&nbsp;tr&ecirc;n thế giới vẫn được nhắc đến như một phần lịch sử của hệ điều h&agrave;nh di động phổ biến nhất thế giới. HTC One từng nhận nhiều lời khen từ chuy&ecirc;n gia lẫn người d&ugrave;ng. Ảnh: Slashgear. Thị trường smartphone những năm gần đ&acirc;y c&oacute; xu hướng về một thiết bị c&agrave;ng đơn giản c&agrave;ng tốt: m&agrave;n h&igrave;nh viền mỏng, nguy&ecirc;n khối, t&iacute;ch hợp sạc kh&ocirc;ng d&acirc;y... C&aacute;c chi tiết n&agrave;y thường được nh&agrave; sản xuất nhấn mạnh l&agrave; ưu điểm trong cuộc đua gi&agrave;nh danh hiệu chiếc điện thoại ho&agrave;n hảo nhất. Tuy nhi&ecirc;n, nếu nh&igrave;n lại qu&aacute; khứ, c&oacute; thể bạn sẽ giật m&igrave;nh khi HTC từng c&oacute; nhiều &yacute; tưởng lớn tương tự vậy. Chẳng hạn, HTC One ra mắt 2013 d&ugrave;ng nh&ocirc;m nguy&ecirc;n khối khi iPhone vẫn d&ugrave;ng k&iacute;nh, hay bắt tay Beats Audio để trang bị loa k&eacute;p mặt trước cho trải nghiệm &acirc;m thanh bằng loa ngo&agrave;i vượt trội. Hoặc HTC Hero l&agrave; smartphone đầu ti&ecirc;n c&oacute; cổng giắc 3,5mm. Năm 2018, m&aacute;y ảnh k&eacute;p với chế độ ch&acirc;n dung l&agrave; &quot;cơn sốt&quot;, nhưng One (2014) đ&atilde; c&oacute;. D&ugrave; thiết kế chưa đẹp, &iacute;t t&iacute;nh năng, khả năng chụp hạn chế, kh&ocirc;ng thể phủ nhận HTC đi trước thời đại qua smartphone n&agrave;y. HTC One (2014) c&oacute; camera k&eacute;p. Ảnh: Techcrunch. Nhưng HTC cũng l&agrave; nạn nh&acirc;n của việc tiếp thị k&eacute;m. Apple v&agrave; Samsung l&agrave; hai h&atilde;ng c&ugrave;ng thời với c&ocirc;ng ty Đ&agrave;i Loan, cũng c&oacute; những sản phẩm đi trước thời đại. Vậy tại sao HTC kh&ocirc;ng phải l&agrave; vua của thế giới điện thoại th&ocirc;ng minh, hoặc &iacute;t nhất l&agrave; một trong ba thương hiệu h&agrave;ng đầu? Một số chuy&ecirc;n gia sau khi nghi&ecirc;n cứu về trường hợp của HTC đều cho rằng, &yacute; tưởng tuyệt vời kh&ocirc;ng c&oacute; nghĩa l&agrave; sẽ th&agrave;nh c&ocirc;ng nếu ch&uacute;ng kh&ocirc;ng được truyền b&aacute; tốt. Cạnh tranh về sản phẩm c&ocirc;ng nghệ ng&agrave;y nay l&agrave; một &quot;tr&ograve; chơi tiếp thị&quot;. Lịch sử chứng minh tiếp thị c&oacute; lẽ l&agrave; điểm yếu lớn nhất của HTC. Khẩu hiệu ban đầu của h&atilde;ng l&agrave; &quot;Quietly Brilliant&quot; (tạm dịch: Toả s&aacute;ng thầm lặng) kh&ocirc;ng c&ograve;n biểu đạt tham vọng cũng như sự đổi mới. B&ecirc;n cạnh đ&oacute;, những chiến dịch c&oacute; phần kỳ lạ, điển h&igrave;nh Robert Downey Jr. quảng b&aacute; M9 bị nhận x&eacute;t l&agrave; kh&oacute; hiểu v&igrave; rất &iacute;t li&ecirc;n quan đến sản phẩm. Trong thời kỳ đỉnh cao (2009), HTC ph&aacute;t h&agrave;nh hơn 100 điện thoại c&aacute;c loại. Điều đ&oacute; thể hiện sự tiến bộ, cũng như nắm bắt thị trường tốt. Tuy vậy, việc ra qu&aacute; nhiều sản phẩm trong thời gian ngắn khiến người d&ugrave;ng cho kh&ocirc;ng thể t&igrave;m ra đ&acirc;u l&agrave; cao cấp, tầm trung v&agrave; gi&aacute; rẻ. Hậu quả tất yếu l&agrave; sản phẩm b&atilde;o h&ograve;a. HTC l&agrave; một trong những h&atilde;ng smartphone đi đầu về tr&agrave;o lưu đổi m&agrave;u mặt lưng. Ảnh: DigitalTrends. Ngược lại, c&aacute;c đối thủ đang l&ecirc;n khi đ&oacute; như Apple, Samsung ra mỗi năm chỉ một hoặc hai sản phẩm, gi&uacute;p đơn giản h&oacute;a trong việc lựa chọn thiết bị cao cấp m&agrave; kh&ocirc;ng phải lo lắng về th&ocirc;ng số kỹ thuật. C&oacute; thể c&ocirc;ng ty iPhone bị nhận x&eacute;t l&agrave; cố chấp, cứng nhắc, nhưng r&otilde; r&agrave;ng n&oacute; mang lại hiệu quả hơn những g&igrave; HTC đ&atilde; l&agrave;m. HTC cũng đặt t&ecirc;n kh&aacute; kỳ lạ v&agrave; kh&ocirc;ng hề theo tr&igrave;nh tự khiến người d&ugrave;ng kh&oacute; nhớ, chẳng hạn Salsa, Pyramid, Sensation, ChaCha (điện thoại d&agrave;nh ri&ecirc;ng cho Facebook)... Trong khi đ&oacute;, Samsung lại rất rạch r&ograve;i về vấn đề đặt t&ecirc;n: Galaxy S, Note l&agrave; thiết bị cao cấp, Galaxy A thuộc tầm trung hay Galaxy J gi&aacute; rẻ. &quot;N&oacute; gi&uacute;p người d&ugrave;ng ph&acirc;n biệt từng loại sản phẩm m&agrave; kh&ocirc;ng cần nh&igrave;n th&ocirc;ng số kỹ thuật&quot;, một chuy&ecirc;n gia nhận x&eacute;t. C&ocirc;ng ty Đ&agrave;i Loan cũng kh&aacute; bảo thủ trong việc hợp t&aacute;c với nh&agrave; mạng. Nếu như c&aacute;c h&atilde;ng kh&aacute;c xem đ&acirc;y l&agrave; một trong những k&ecirc;nh ph&acirc;n phối quan trọng, HTC lại kh&aacute; nhập nhằng. Chẳng hạn, U11 được đ&aacute;nh gi&aacute; tốt từ c&aacute;c nh&agrave; ph&ecirc; b&igrave;nh, nhưng chỉ ph&acirc;n phối bởi Sprint. Đồng thời, việc loạt sản phẩm về sau ng&agrave;y c&agrave;ng k&eacute;m hấp dẫn cũng l&agrave; l&yacute; do khiến nh&agrave; mạng thờ ơ kh&ocirc;ng ph&acirc;n phối nữa, kể cả khi HTC c&oacute; động th&aacute;i ưu ti&ecirc;n. Ngo&agrave;i ra, c&oacute; thể xem HTC l&agrave; nạn nh&acirc;n của Google, khi những tinh hoa về bộ phận di động của h&atilde;ng về tay c&ocirc;ng ty t&igrave;m kiếm. Năm 2017, HTC đồng &yacute; b&aacute;n đội ngũ thiết kế v&agrave; phần lớn bằng s&aacute;ng chế cho Google với gi&aacute; 1,1 tỷ USD. 2.000 nh&acirc;n vi&ecirc;n thiết kế HTC sau đ&oacute; cũng về l&agrave;m việc trong bộ phận ph&aacute;t triển điện thoại Pixel. Giờ đ&acirc;y, Pixel bắt đầu c&oacute; chỗ đứng tr&ecirc;n thị trường v&agrave; điều n&agrave;y c&oacute; c&ocirc;ng rất lớn của HTC cộng th&ecirc;m khả năng tiếp thị tốt. K&iacute;nh thực tế ảo Vive c&oacute; thể xem l&agrave; tương lai của HTC. Ảnh: PCMag. Sau một thập kỷ hoạt động tốt, gi&aacute; cổ phiếu HTC đ&atilde; giảm tới 75% trong 5 năm trở lại đ&acirc;y, cho thấy sự thụt l&ugrave;i của một thương hiệu được kỳ vọng. H&atilde;ng vẫn l&agrave; c&ocirc;ng ty c&ocirc;ng nghệ, nhưng c&oacute; thể kh&ocirc;ng c&ograve;n l&agrave; một nh&agrave; sản xuất điện thoại thực thụ. Thực tế, nguồn sống của doanh nghiệp Đ&agrave;i Loan đến từ Vive - thiết bị đi đầu cho trải nghiệm thực tế ảo (VR) cao cấp - thay v&igrave; một smartphone n&agrave;o đ&oacute;. Vive đ&atilde; tạo ra doanh thu ban đầu cho HTC v&agrave; chiếm 35,7% thị trường VR t&iacute;nh đến hết 2018. Bảo L&acirc;m (theo Slashgear)</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/electronicshandhtc5184171280x7-7770-4798-1554705843_300x180.jpg', 'publish', 0, 0, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/htc-su-sup-do-cua-mot-thuong-hieu-smartphone-day-hua-hen-3906129.html', NULL, 0, 0, 0, 'vi');
INSERT INTO `post_translations` (`id`, `post_id`, `title`, `slug`, `description`, `content`, `media`, `status`, `feature`, `editor_pick`, `recommended`, `newsflash`, `cmt_allow`, `author`, `count_share`, `source_link`, `source_click`, `count_vote`, `count_comment`, `count_view`, `locale`) VALUES
(12, 14, 'Loạn giá smartphone cao cấp ở Việt Nam', 'loan-gia-smartphone-cao-cap-o-viet-nam', 'Giá các model cao cấp như Galaxy S10, S10+ của Samsung hay P30, P30 Pro của Huawei ở nhiều cửa hàng chênh nhau hàng triệu đồng.', '<p>Bộ đ&ocirc;i smartphone chuy&ecirc;n chụp h&igrave;nh vừa ra mắt của Huawei l&agrave; v&iacute; dụ điển h&igrave;nh cho t&igrave;nh trạng loạn gi&aacute; điện thoại cao cấp ở Việt Nam. P30 v&agrave; P30 Pro c&oacute; mức ni&ecirc;m yết lần lượt 16,99 v&agrave; 22,99 triệu đồng tại nhiều hệ thống si&ecirc;u thị v&agrave; cửa h&agrave;ng lớn. Nhưng tại một số cửa h&agrave;ng ở H&agrave; Nội v&agrave; TP HCM, hai sản phẩm n&agrave;y lại được ch&agrave;o b&aacute;n rẻ hơn h&agrave;ng triệu đồng, khoảng 17 đến 18 triệu đồng cho P30 Pro v&agrave; hơn 14 triệu đồng cho P30. Tất cả đều l&agrave; sản phẩm mới v&agrave; được ph&acirc;n phối ch&iacute;nh h&atilde;ng. Huawei P30 v&agrave; P30 Pro mới chỉ nhận đặt h&agrave;ng nhưng đ&atilde; loạn gi&aacute;. Ảnh: T.R. Hiện tượng c&ugrave;ng một smartphone nhưng gi&aacute; ch&ecirc;nh lệch tới h&agrave;ng triệu đồng ở c&aacute;c cửa h&agrave;ng kh&ocirc;ng hiếm gặp ở Việt Nam. C&aacute;c mẫu iPhone hay nhiều mẫu Galaxy của Samsung cũng gặp t&igrave;nh trạng tương tự.&nbsp;Bộ đ&ocirc;i Galaxy S10, S10+ được Samsung b&aacute;n ra chưa l&acirc;u nhưng gi&aacute; b&aacute;n ở mỗi cửa h&agrave;ng cũng c&oacute; nhiều kh&aacute;c biệt, tạo ra mức ch&ecirc;nh lệch v&agrave;i triệu đồng so với mức c&ocirc;ng bố của h&atilde;ng.&nbsp; V&iacute; dụ, tại hai hệ thống si&ecirc;u thị c&oacute; thị phần lớn nhất Việt Nam hiện giờ, Galaxy S10 được b&aacute;n ra với gi&aacute; 20,99 triệu đồng. Nhưng c&ugrave;ng model n&agrave;y, tại một cửa h&agrave;ng kh&aacute;c ở Th&aacute;i H&agrave; (H&agrave; Nội), gi&aacute; lại chỉ c&ograve;n 17,8 triệu - ch&ecirc;nh lệch tới hơn 3 triệu đồng. Hay Galaxy S10+ phi&ecirc;n bản 128 GB c&oacute; mức ni&ecirc;m yết 23 triệu đồng, nhưng tại một số cửa h&agrave;ng nhỏ lại chỉ c&ograve;n gần 21 triệu đồng. Thậm ch&iacute;, trước th&aacute;ng 4, bộ đ&ocirc;i n&agrave;y tại một số nơi c&ograve;n thấp hơn mức ni&ecirc;m yết 3 đến 4 triệu đồng, d&ugrave; từ khi ra mắt ở Việt Nam, Samsung chưa từng hạ gi&aacute; sản phẩm n&agrave;y. Trịnh Vũ, quản l&yacute; một hệ thống b&aacute;n lẻ ở H&agrave; Nội giải th&iacute;ch, c&ugrave;ng một smartphone nhưng gi&aacute; mỗi nơi một kh&aacute;c, ch&ecirc;nh lệch h&agrave;ng triệu đồng, l&agrave; do chương tr&igrave;nh khuyến mại. Hầu hết smartphone mới ra hiện nay đều đi k&egrave;m với lượng lớn qu&agrave; tặng. Ngo&agrave;i bao da, ốp lưng, g&oacute;i bảo h&agrave;nh mở rộng, hầu hết c&aacute;c mẫu điện thoại c&ograve;n được b&aacute;n k&egrave;m với đồng hồ th&ocirc;ng minh, v&ograve;ng đeo sức khoẻ, loa kh&ocirc;ng d&acirc;y, pin, sạc... gi&aacute; trị từ v&agrave;i trăm cho tới h&agrave;ng triệu đồng. Một số cửa h&agrave;ng chấp nhận cho kh&aacute;ch trừ tiền mua nếu kh&ocirc;ng nhận qu&agrave;, từ đ&oacute; tạo ra mức ch&ecirc;nh lệch lớn giữa ni&ecirc;m yết với gi&aacute; b&aacute;n thực tế. Sự kh&ocirc;ng thống nhất về ch&iacute;nh s&aacute;ch đ&atilde; tạo ra hiện tượng loạn gi&aacute;. V&iacute; dụ, Huawei&nbsp;P30 Pro được b&aacute;n ra từ giữa th&aacute;ng 4 sẽ đi k&egrave;m với đồng hồ th&ocirc;ng minh Watch GT c&oacute; gi&aacute; ni&ecirc;m yết gần 5 triệu đồng. Một số cửa h&agrave;ng sẽ trừ đi số tiền tương đương nếu người mua kh&ocirc;ng nhận qu&agrave; khuyến m&atilde;i n&agrave;y.&nbsp; Gi&aacute; smartphone cao cấp ở Việt Nam ng&agrave;y c&agrave;ng cao v&agrave; dần vượt xa mức 15 triệu đồng của 2, 3 năm trước. Ảnh: Cnet. Tuy nhi&ecirc;n, nhiều người d&ugrave;ng kh&ocirc;ng h&agrave;i l&ograve;ng với c&aacute;ch b&aacute;n h&agrave;ng của những mẫu smartphone đời mới. Xu&acirc;n Qu&yacute; (Đống Đa, H&agrave; Nội) v&iacute; von c&aacute;ch b&aacute;n h&agrave;ng của điện thoại cao cấp giờ kh&ocirc;ng kh&aacute;c g&igrave; hiện tượng mua bia k&egrave;m lạc như với một số mẫu xe hơi ăn kh&aacute;ch ở Việt Nam. Thay v&igrave; đưa gi&aacute; thấp hơn ngay từ ban đầu, người mua phải bỏ ra nhiều tiền hơn cho c&aacute;c m&oacute;n đồ như sạc kh&ocirc;ng d&acirc;y, loa di động hay đồng hồ th&ocirc;ng minh... m&agrave; c&oacute; khi kh&ocirc;ng cần d&ugrave;ng đến.&nbsp; Tuấn Anh</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/ScreenShot20190408at21108PM-15-7463-6853-1554708152_500x300.png', 'publish', 0, 0, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/loan-gia-smartphone-cao-cap-o-viet-nam-3906079.html', NULL, 0, 0, 0, 'vi'),
(13, 15, 'Loa không dây hình bánh xe giá 105 triệu đồng   ', 'loa-khong-day-hinh-banh-xe-gia-105-trieu-dong--', 'Loa Edge của Bang & Olufsen có thiết kế khối trụ đặt ngang, cho phép lăn qua lăn lại để điều chỉnh âm lượng.', '<p>Xuất hiện lần đầu tại IFA 2018, B&amp;O Edge được ch&uacute; &yacute; bởi thiết kế độc đ&aacute;o, c&aacute;ch sử dụng mới lạ. Mẫu loa của nh&agrave; sản xuất Đan Mạch lấy cảm hứng từ đồng tiền xu với th&acirc;n l&agrave; v&ograve;ng kim loại phay xước. Với đường k&iacute;nh khoảng 50 cm, sản phẩm lớn như một chiếc b&aacute;nh xe &ocirc;t&ocirc;. Edge c&oacute; thể đặt tr&ecirc;n b&agrave;n hoặc treo tường, phần đế c&oacute; d&acirc;y để nối với nguồn điện. Loa hỗ trợ AirPlay 2,&nbsp;Chromecast v&agrave; Bluetooth, cho ph&eacute;p gh&eacute;p với smartphone, m&aacute;y t&iacute;nh bảng hay c&aacute;c nguồn ph&aacute;t kh&ocirc;ng d&acirc;y kh&aacute;c. &nbsp; &nbsp; Loa kh&ocirc;ng d&acirc;y h&igrave;nh b&aacute;nh xe gi&aacute; 105 triệu đồng Điểm độc đ&aacute;o c&ograve;n ở c&aacute;ch sử dụng khi loa của B&amp;O cho ph&eacute;p lăn qua hai b&ecirc;n để tăng, giảm &acirc;m lượng. Th&ocirc;ng qua hệ thống cảm biến, tiếng nhạc ph&aacute;t ra sẽ thay đổi ở mức vừa phải nếu lăn nhẹ v&agrave; tăng giảm nhiều hơn nếu lăn mạnh. Sau đ&oacute;, Edge sẽ tự c&acirc;n bằng về vị tr&iacute; ban đầu. Ở đỉnh loa, B&amp;O sử dụng kỹ thuật khắc laser để l&agrave;m những lỗ si&ecirc;u nhỏ m&agrave; mắt người kh&ocirc;ng nh&igrave;n thấy nhưng &aacute;nh s&aacute;ng c&oacute; thể xuy&ecirc;n qua, tạo th&agrave;nh n&uacute;t cảm ứng điều khiển nhạc. B&igrave;nh&nbsp;thường, c&aacute;c ph&iacute;m n&agrave;y &quot;t&agrave;ng h&igrave;nh&quot; nhưng sẽ tự động s&aacute;ng l&ecirc;n khi người d&ugrave;ng đưa tay lại gần. Edge ph&aacute;t &acirc;m thanh 360 độ th&ocirc;ng qua cặp driver midrange 4 inch, cặp tweeter 3/4 inch cho mặt trước v&agrave; mặt sau, một loa si&ecirc;u trầm 10 inch. Loa tr&igrave;nh diễn chất &acirc;m trong trẻo, lan tỏa, c&oacute; chiều s&acirc;u v&agrave; &ecirc;m dịu theo đặc trưng của B&amp;O. Để xử l&yacute; &acirc;m trầm tr&ecirc;n một chiếc loa t&iacute;ch hợp, B&amp;O đ&atilde; thiết kế &quot;cổng bass chủ động&quot;, được v&iacute; như c&aacute;nh gi&oacute; tr&ecirc;n những chiếc si&ecirc;u xe. Khi ph&aacute;t ở &acirc;m lượng vừa phải, miệng lỗ tho&aacute;t &acirc;m được đ&oacute;ng lại, c&ograve;n khi mở nhạc lớn th&igrave; cổng bass sẽ mở để &acirc;m trầm c&oacute; lực hơn. Thiết kế đẹp, độc c&ugrave;ng c&aacute;ch sử dụng mới lạ, mức gi&aacute; cho Edge l&ecirc;n đến 105 triệu đồng. &Acirc;m thanh hay nhưng chưa phải xuất sắc trong tầm tiền, mẫu loa đến từ Đan Mạch hướng tới người d&ugrave;ng ch&uacute; trọng h&igrave;nh thức, th&iacute;ch c&aacute;ch sử dụng đơn giản v&agrave; kết nối đa ph&ograve;ng với c&aacute;c thiết bị kh&aacute;c của B&amp;O.</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/tren-tay-bang-olufsen-edge-6-1554692869_180x108.jpg', 'publish', 0, 0, 1, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/loa-khong-day-hinh-banh-xe-gia-105-trieu-dong-3906164.html', NULL, 0, 0, 0, 'vi'),
(14, 16, 'Công nhân vệ sinh Trung Quốc phải đeo máy GPS  ', 'cong-nhan-ve-sinh-trung-quoc-phai-deo-may-gps-', 'Nếu không di chuyển quá 20 phút, chiếc vòng thông minh mà các công nhân đeo ở tay sẽ phát giọng nói nhắc nhở họ phải tiếp tục làm việc.', '<p>Một c&ocirc;ng ty dịch vụ m&ocirc;i trường ở tỉnh Giang T&ocirc;, miền đ&ocirc;ng Trung Quốc đ&atilde; bắt đầu sử dụng v&ograve;ng đeo tay th&ocirc;ng minh để gi&aacute;m s&aacute;t nh&acirc;n vi&ecirc;n của m&igrave;nh từ th&aacute;ng 3.&nbsp;C&aacute;c thiết bị sẽ gửi th&ocirc;ng b&aacute;o về hệ thống khi ph&aacute;t hiện c&oacute; người kh&ocirc;ng chuyển động trong hơn 20 ph&uacute;t. Một th&ocirc;ng b&aacute;o nhắc nhở bằng giọng n&oacute;i cũng được gửi tới nh&acirc;n vi&ecirc;n để y&ecirc;u cầu họ tiếp tục l&agrave;m việc chăm chỉ hơn. V&ograve;ng đeo tay của c&ocirc;ng nh&acirc;n c&ocirc;ng ty m&ocirc;i trường Trung Quốc. Ảnh: Thecover.cn. Ph&oacute; chủ tịch c&ocirc;ng ty Zhang Dongzhong cho biết, ban đầu, chương tr&igrave;nh n&agrave;y được triển khai với mục đ&iacute;ch giảm chi ph&iacute; quản l&yacute;, tăng năng suất l&agrave;m việc. Tuy nhi&ecirc;n, chức năng nhắc việc của n&oacute; đ&atilde; bị gỡ bỏ v&agrave;o ng&agrave;y 4/4 do vấp phải sự phản đối mạnh mẽ của c&aacute;c c&ocirc;ng nh&acirc;n v&agrave; người d&ugrave;ng tr&ecirc;n mạng Internet. &quot;Chương tr&igrave;nh n&agrave;y đ&atilde; cải thiện đ&aacute;ng kể hiệu quả của việc vệ sinh th&agrave;nh phố&quot;, &ocirc;ng Zhang n&oacute;i. Mặc d&ugrave; c&aacute;c thiết bị kh&ocirc;ng c&ograve;n nhắc nhở c&ocirc;ng nh&acirc;n tiếp tục di chuyển v&agrave; l&agrave;m việc, ch&uacute;ng vẫn được sử dụng như một c&aacute;ch để ph&aacute;t hiện vị tr&iacute; của c&ocirc;ng nh&acirc;n vệ sinh v&agrave; đảm bảo họ vẫn ở trong khu vực l&agrave;m việc được chỉ định. Trước đ&oacute;, trong một video được thực hiện h&ocirc;m 3/4 bởi Đ&agrave;i truyền h&igrave;nh Giang T&ocirc;, h&igrave;nh ảnh từ trung t&acirc;m chỉ huy của c&ocirc;ng ty cho thấy họ c&oacute; một m&agrave;n h&igrave;nh lớn treo tr&ecirc;n tường để theo d&otilde;i c&aacute;c c&ocirc;ng nh&acirc;n vệ sinh dưới biểu tượng của một dấu chấm. Thiết bị n&agrave;y c&oacute;&nbsp;ba chức năng v&agrave; khi được sử dụng c&ugrave;ng l&uacute;c, cho ph&eacute;p gi&aacute;m s&aacute;t to&agrave;n bộ nh&acirc;n vi&ecirc;n của c&ocirc;ng ty. Bản đồ hiển thị số c&ocirc;ng nh&acirc;n vệ sinh trong c&ocirc;ng ty m&ocirc;i trường. Một số c&ocirc;ng nh&acirc;n vệ sinh giấu t&ecirc;n cho biết kh&ocirc;ng ủng hộ biện ph&aacute;p mới n&agrave;y.&nbsp;&quot;T&ocirc;i thấy r&aacute;c tr&ecirc;n đường phố v&agrave; t&ocirc;i nhặt n&oacute; l&ecirc;n. Thật đi&ecirc;n rồ khi đường phố sạch sẽ rồi m&agrave; vẫn bắt ch&uacute;ng t&ocirc;i đi qua đi lại&quot;, một c&ocirc;ng nh&acirc;n n&oacute;i. C&ograve;n theo nhiều người d&ugrave;ng tr&ecirc;n trang mạng x&atilde; hội Weibo, họ kh&ocirc;ng chỉ muốn loại bỏ chức năng nhắc việc m&agrave; c&ograve;n k&ecirc;u gọi chấm dứt to&agrave;n bộ chương tr&igrave;nh. &quot;Tại sao kh&ocirc;ng d&ugrave;ng số tiền triển khai chương tr&igrave;nh n&agrave;y để trả cho người lao động? Tất cả c&aacute;c biện ph&aacute;p đều hi vọng mang lại một kết quả duy nhất đ&uacute;ng kh&ocirc;ng&quot;, một người d&ugrave;ng đến từ Thiểm T&acirc;y viết. Trung Quốc ng&agrave;y c&agrave;ng &aacute;p dụng nhiều c&ocirc;ng nghệ kh&aacute;c nhau để gi&aacute;m s&aacute;t c&ocirc;ng d&acirc;n v&agrave; c&ocirc;ng nh&acirc;n lao động. Một số chương tr&igrave;nh đ&atilde; được c&ocirc;ng khai trong năm qua bao gồm sử dụng m&aacute;y ảnh để theo d&otilde;i cư d&acirc;n tại nh&agrave; ở c&ocirc;ng cộng, học sinh mặc đồng phục c&oacute; t&iacute;ch hợp thiết bị theo d&otilde;i vị tr&iacute;, ứng dụng cho ph&eacute;p mọi người b&aacute;o c&aacute;o c&aacute;c giao dịch mua sắm l&atilde;ng ph&iacute; của quan chức ch&iacute;nh phủ. Bảo Nam (theo SCMP)</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/f5527ea0575b11e9a3aef2742b3670-5424-3663-1554694282_180x108.png', 'publish', 0, 0, 1, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/cong-nhan-ve-sinh-trung-quoc-phai-deo-may-gps-3906185.html', NULL, 0, 0, 0, 'vi'),
(15, 17, 'Asus sắp ra điện thoại trượt hai đầu  ', 'asus-sap-ra-dien-thoai-truot-hai-dau-', 'Smartphone của Asus có thể trượt lên để mở camera trước, trượt xuống để bật loa chất lượng cao.', '<p>&quot;&Ocirc;ng tr&ugrave;m tin đồn&quot; Evan Blass đăng tr&ecirc;n Twitter loạt thiết bị mới đang được Asus thử nghiệm. Một trong số n&agrave;y l&agrave; mẫu điện thoại m&agrave;n h&igrave;nh tr&agrave;n viền, kh&ocirc;ng c&oacute; &quot;tai thỏ&quot;. Khi trượt m&agrave;n h&igrave;nh của m&aacute;y xuống sẽ để lộ ra cụm camera selfie k&eacute;p với một ống k&iacute;nh g&oacute;c rộng 120 độ. Smartphone Asus c&oacute; thể trượt để lộ ra&nbsp;camera selfie v&agrave; loa. C&ograve;n khi trượt m&agrave;n h&igrave;nh l&ecirc;n, loa &quot;h&agrave;ng hiệu&quot; Harman Kardon sẽ được k&iacute;ch hoạt. Điện thoại n&agrave;y của Asus được cho l&agrave; hỗ trợ mạng 5G, c&oacute; m&aacute;y qu&eacute;t v&acirc;n tay trong m&agrave;n h&igrave;nh. Theo Blass, người r&ograve; rỉ th&ocirc;ng tin l&agrave; th&agrave;nh vi&ecirc;n trong nh&oacute;m ph&aacute;t triển ZenFone 5. Một thiết bị kh&aacute;c của Asus cũng c&oacute; cơ chế trượt hai đầu với phần tr&ecirc;n l&agrave; camera selfie k&eacute;p. Cạnh dưới l&agrave; một m&agrave;n h&igrave;nh phụ, sẽ hiển thị c&aacute;c chức năng tương ứng với ứng dụng đang chạy tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh. H&igrave;nh ảnh render xuất hiện với t&iacute;nh năng camera th&igrave; m&agrave;n h&igrave;nh phụ c&oacute; c&aacute;c n&uacute;t điều chỉnh EV, ph&iacute;m chụp. Thiết bị n&agrave;y t&iacute;ch hợp m&aacute;y qu&eacute;t v&acirc;n tay ở mặt sau m&aacute;y. Thiết bị Asus kh&aacute;c với m&agrave;n h&igrave;nh phụ. Gần đ&acirc;y, c&aacute;c nh&agrave; sản xuất t&igrave;m c&aacute;c giải ph&aacute;p kh&aacute;c nhau nhằm tăng tỷ lệ m&agrave;n h&igrave;nh so với mặt trước m&agrave; kh&ocirc;ng cần &quot;tai thỏ&quot; hay &quot;nốt ruồi&quot;. Oppo hay Vivo đều đ&atilde; ra smartphone c&oacute; camera trước &quot;th&ograve; thụt&quot;. Trong khi đ&oacute; Reno (thương hiệu con của Oppo) sắp ra điện thoại c&oacute; camera trước bật l&ecirc;n. Bảo Anh (theo PhoneArena)</p>', 'https://i-sohoa.vnecdn.net/2019/04/08/1smartphoneAsustruothaidau-155-8681-4519-1554686404_180x108.jpg', 'publish', 0, 0, 1, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/asus-sap-ra-dien-thoai-truot-hai-dau-3906029.html', NULL, 0, 0, 0, 'vi'),
(16, 18, 'Bộ ba laptop Acer Swift về Việt Nam, giá từ 10 triệu đồng  ', 'bo-ba-laptop-acer-swift-ve-viet-nam-gia-tu-10-trieu-dong-', 'Swift 1, Swift 3, Swift 5 Air Edition hướng đến nhu cầu khác nhau của người dùng, từ sự tối giản, giá tốt đến cấu hình mạnh, hiệu năng cao.', '<p>Ra mắt đầu 2019, bộ ba laptop mới gồm&nbsp;Swift 1 (ngo&agrave;i c&ugrave;ng b&ecirc;n tr&aacute;i), Swift 3 (ở giữa), Swift 5 Air Edition (ngo&agrave;i c&ugrave;ng b&ecirc;n phải) nhanh ch&oacute;ng c&oacute; mặt tại Việt Nam. Bộ ba l&agrave; bản n&acirc;ng cấp cho c&aacute;c thiết bị c&ugrave;ng t&ecirc;n trước đ&oacute;. Trong số đ&oacute;,&nbsp;Swift 1 l&agrave; sản phẩm c&oacute; gi&aacute; phải chăng nhất với 9,99 triệu đồng, hướng đến sự tối giản, chủ yếu phục vụ người d&ugrave;ng ở nhu cầu cơ bản. M&aacute;y c&oacute; thiết kế vỏ nh&ocirc;m nguy&ecirc;n khối, d&agrave;y 14,95 mm, m&agrave;n h&igrave;nh&nbsp;14 inch độ ph&acirc;n giải Full HD, viền mỏng chỉ 6,3 mm, hiển thị sắc n&eacute;t nhưng kh&aacute; tối trong điều kiện &aacute;nh s&aacute;ng mạnh. Swift 1 được trang bị cấu h&igrave;nh cơ bản, chủ yếu cho người d&ugrave;ng văn ph&ograve;ng hoặc học sinh sinh vi&ecirc;n, gồm chip xử l&yacute; Intel Pentium Silver N5000/Celeron Silver N4000 , bộ nhớ RAM 4 GB, ổ cứng SSD 64 GB (c&oacute; thể n&acirc;ng cấp tối đa l&ecirc;n 512 GB). So với tầm gi&aacute;, th&ocirc;ng số thiết bị c&oacute; phần yếu hơn HP 15-da0051TU hay Lenovo Ideapad 330-15IKB vốn c&oacute; m&agrave;n h&igrave;nh 15,6 inch, chip Core i3, HDD 500 GB.&nbsp;Đổi lại, Swift 1 hỗ trợ SSD, thiết kế m&agrave;n h&igrave;nh viền mỏng, cảm biến v&acirc;n tay cũng như nguồn pin cho thời gian sử dụng l&ecirc;n đến 20 giờ li&ecirc;n tục. M&aacute;y c&oacute; hai m&agrave;u l&agrave; Luxury Gold v&agrave; Aqua Green. Trong khi đ&oacute;, Swift 3 hướng đến ph&acirc;n kh&uacute;c tầm trung. Thiết bị c&oacute; thiết kế nh&ocirc;m nguy&ecirc;n khối,&nbsp;trọng lượng 1,5 kg v&agrave; kh&aacute; d&agrave;y với 18,7 mm. Laptop của Acer c&oacute; hai lựa chọn k&iacute;ch cỡ m&agrave;n h&igrave;nh l&agrave; 14 inch v&agrave; 15 inch. M&agrave;n h&igrave;nh m&aacute;y c&oacute; viền mỏng 6,3 mm, độ ph&acirc;n giải Full HD v&agrave; d&ugrave;ng tấm nền IPS tương tự Swift 1. Việc hiển thị ngo&agrave;i trời chưa thực sự tốt. B&ugrave; lại, trong nh&agrave;, h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh kh&aacute; đẹp, m&agrave;u sắc sặc sỡ v&agrave; độ tương phản cao. Tuy nhi&ecirc;n, Swift 3 c&oacute; cấu h&igrave;nh mạnh hơn Swift 1 kh&aacute; nhiều, với xử l&yacute; Intel thế hệ thứ 8, lưu trữ k&eacute;p HDD/SDD (n&acirc;ng cấp tối đa 2TB HDD, 512GB SSD), RAM tối đa 16 GB. Đ&acirc;y l&agrave; cấu h&igrave;nh kh&aacute; tốt trong tầm gi&aacute; 15 triệu đồng, cạnh tranh trực tiếp với HP Pavilion 14-ce1008TU (15,3 triệu đồng) hay Dell Inspiron N3576 (14,99 triệu đồng). M&aacute;y c&oacute; b&agrave;n ph&iacute;m full-size chiclet cho khả năng g&otilde; kh&aacute; tốt, cộng th&ecirc;m đ&egrave;n b&agrave;n ph&iacute;m gi&uacute;p thao t&aacute;c trong đ&ecirc;m tốt hơn. Trackpad rộng gi&uacute;p thao t&aacute;c dễ d&agrave;ng, nhưng độ nhạy chưa cao v&agrave; phần mềm hỗ trợ chưa thực sự ổn định. Ri&ecirc;ng pin của Swift 3 cho thời gian sử dụng khoảng 10 tiếng. Swift 5 Air Edition l&agrave; phi&ecirc;n bản mạnh nhất v&agrave; cũng l&agrave; thiết bị đắt tiền nhất trong d&ograve;ng Swift mới ra mắt tại Việt Nam của Acer, với gi&aacute; 25,69 triệu đồng. M&aacute;y c&oacute; trọng lượng 940 gram, nhẹ hơn cả LG Gram (970 gram) hay Asus Zenbook UX333FA-A4011T (1,19 kg). Để c&oacute; trọng lượng đ&oacute;, Acer đ&atilde; đưa v&agrave;o hợp kim Magie Lithium thay v&igrave; nh&ocirc;m để l&agrave;m vỏ m&aacute;y. Tuy nhi&ecirc;n, sản phẩm vẫn kh&aacute; d&agrave;y với 14,9 mm. Swift 5 Air Edition được trang bị m&agrave;n h&igrave;nh cảm ứng đa điểm độ ph&acirc;n giải Full HD, tấm nền IPS, viền d&agrave;y 8,9mm v&agrave; c&oacute; thể gập ngửa 180 độ. Về cấu h&igrave;nh, laptop Acer chạy xử l&yacute; Intel Core i5/i7 mới nhất, RAM 8 GB, ổ cứng SSD 256 GB (c&oacute; thể n&acirc;ng cấp tối đa 512 GB SSD). C&aacute;c thiết bị đối thủ c&oacute; cấu h&igrave;nh tương đương c&oacute; thể kể đến Dell N5570A, Lenovo Legion Y530-15ICH (c&ugrave;ng 25 triệu đồng) hay HP Envy X360 (26,9 triệu đồng). D&ograve;ng laptop Swift được trang bị đầy đủ cổng kết nối cơ bản như&nbsp;USB 3.1, USB Type C, HDMI, khe đọc thẻ nhớ. Ngo&agrave;i ra, ch&uacute;ng cũng c&oacute; c&aacute;c kết nối kh&ocirc;ng d&acirc;y phổ biến như Wi-Fi, Bluetooth. Bảo L&acirc;m</p>', 'https://i-sohoa.vnecdn.net/2019/04/05/IMG-0245-1554482973_180x108.jpg', 'publish', 0, 1, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/bo-ba-laptop-acer-swift-ve-viet-nam-gia-tu-10-trieu-dong-3905417.html', NULL, 0, 0, 0, 'vi'),
(17, 19, 'Người làm nội dung YouTube đang \'câu view\' bất chấp', 'nguoi-lam-noi-dung-youtube-dang-\'cau-view\'-bat-chap', 'Thay vì ưu tiên nội dung lành mạnh và bổ ích, nhiều người làm video trên YouTube đã bất chấp mọi thứ chỉ để có nhiều lượt xem.', '\n\nTại đám tang một nghệ sĩ nổi tiếng vừa qua, xuất hiện đám đông tay cầm điện thoại, máy ảnh, một số sử dụng kèm gimbal (thiết bị chống rung), sẵn sàng chĩa ống kính thẳng vào những người đến viếng, miễn là họ nổi tiếng. \"Các bạn muốn quay gì, hãy để comment phía dưới\", \"Hãy subscribe kênh và chia sẻ để xem thêm video mới nhé\"... là những lời kêu gọi trong video của các \"chủ kênh\". Các nghệ sĩ cũng chẳng lấy làm vui vẻ gì trước những người này khi phải trả lời các câu hỏi không liên quan đến người quá cố, hay phải chụp hình chung.\n\n\n\nMột tài khoản YouTube gây chú ý bằng cách nói một từ hơn 10 giờ đồng hồ.\n\n\nTrước đó, với danh nghĩa ủng hộ một YouTuber \"bóc phốt\" khách sạn làm ăn gian dối, một streamer đã lên YouTube chỉ để nói tên người này trong hơn 10 tiếng. Sau đó, anh tiếp tục gây chú ý khi dành ra hơn 10 tiếng nữa để nói mỗi từ \"No Burger King\" với hàm ý \"tẩy chay\" nhãn hiệu này vì video quảng cáo ăn burger bằng đũa kiểu Việt Nam không phù hợp. \nNhững nội dung phản cảm gần đây xuất hiện tràn lan trên YouTube, như \"thử thách học lại mẫu giáo\", \"thử thách một ngày làm chó, làm heo\", \"thử thách ăn phân\", \"ăn động vật đã chết vài ngày\"... Nhiều video cổ xúy cho những nội dung bạo lực, đánh đấm kiểu giang hồ, tự làm nhục bản thân, ăn thịt động vật quý. Thậm chí, có những kênh còn cố tình hớ hênh, ăn mặc khiêu gợi ngồi làm việc để \"câu view\".\nTuy nhiên, những nội dung này lại thu hút một lượng rất lớn người xem và bình luận, thậm chí còn xuất hiện trong \"Top video thịnh hành\". Trong khi đó, các nội dung bổ ích, lành mạnh lại nhận khá ít lượt quan tâm. \n\"Không hiểu sao người ta lại có thể nói một từ trong suốt hàng giờ đồng hồ hay tự hạ nhục bản thân bằng cách bắt chước động vật. Chẳng nhẽ ý tưởng của họ tồi tệ đến mức đó\", tài khoản YouTube có tên Khoa Nguyễn bình luận. \"Nhớ cách đây vài năm, thế hệ người làm YouTube như Toàn Shinoda, JVevermind, Huyme có tâm và nội dung của họ cũng rất tốt, còn bây giờ thì mọi thứ trở nên bất chấp. Họ dùng bất kể thủ đoạn nào, kể cả việc giẫm đạp lên truyền thống văn hóa chỉ để được nhiều lượt xem\", tài khoản Facebook Lê Duyệt bức xúc. \"Sẽ như thế nào nếu nội dung độc hại này tiếp cận trẻ em, thế hệ trẻ và gây ảnh hưởng xấu. Tôi nghĩ YouTube cần có cơ chế để loại vĩnh viễn những loại clip này\", tài khoản Nguyễn Vy nhận xét.\nDuy Vũ, một YouTuber tại TP HCM cho biết, cơ chế tính tiền bằng lượt xem trên nền tảng Google chính là nguyên nhân khiến người làm nội dung \"câu view\" bừa bãi. \"Tại Việt Nam, mỗi 1.000 lượt xem hoặc click quảng cáo thường được trả từ 0,35 đến 4 USD (8.000 – 90.000 đồng). Khi càng nhiều lượt xem càng được trả tiền cao, nhiều người đã không ngại làm những thứ đi ngược lại với lợi ích, với truyền thống văn hoá, miễn là gây được chú ý\", anh Vũ chia sẻ.\n\n\n\nNgười dân chen chúc ghi hình, livestream ở khu vực tang lễ nghệ sĩ Anh Vũ. Ảnh: Bill.\n\n\nLà website chia sẻ video lớn nhất thế giới, YouTube giờ đây không còn dừng lại ở chức năng giải trí, học tập hay truyền thông. Khoảng 10 năm trở lại đây, nó đã trở thành công cụ kiếm tiền của một bộ phận giới trẻ nắm bắt kịp xu hướng phát triển của công nghệ số.\nCó 2 dạng video có thể kiếm tiền trên YouTube: tự sản xuất hoặc đăng lại nội dung cũ. Việc tự sản xuất được ưu tiên hơn do không dính đến vấn đề bản quyền, cũng như lượt xem cao hơn. Chúng chủ yếu gồm Vlog (tự quay clip chia sẻ những quan điểm cá nhân về các vấn đề nóng hoặc gần gũi với đời sống), Review video (làm video đánh giá về các sản phẩm, dịch vụ có nhiều người quan tâm trên thị trường), Tutorials Video (hướng dẫn thủ thuật) và Ghi lại tất cả những xung quanh.\nTrong số đó, việc ghi lại tất cả những thứ xung quanh được YouTuber Việt làm nhiều nhất. \"Đơn giản bởi nó dễ làm và cũng không cần \'động não\' nhiều. Chỉ cần gây sốc về vấn đề nào đó hoặc quay lại khung cảnh của một sự kiện đang được dư luận chú ý, video của bạn lập tức có lượt xem và được tiền quảng cáo\", anh Vũ tiết lộ.\nNguyễn Quân, một người làm trong lĩnh vực marketing online, cho biết, tình trạng làm video giật gân, sai sự thật tại Việt Nam không phải là hiếm, thường gặp ở các vlog cá nhân. \"Nhiều bạn trẻ đã chấp nhận dẹp bỏ tất cả, từ danh dự, nhân phẩm đến sức khỏe của bản thân chỉ để được trở nên nổi tiếng\", anh Quân chia sẻ. \"Theo tôi, nếu không thực sự sáng tạo bằng chính chất xám của mình để cạnh tranh lành mạnh, lại đi sử dụng chiêu trò thì sớm muộn kênh đó cũng bị tẩy chay\".\nGần đây, Google cũng khá mạnh tay trong việc \"xoá sổ\" các kênh Youtube có nội dung không lành mạnh. Đại diện Google cho biết: \"Gần đây, chúng tôi đối mặt với các hành vi tiêu cực của một số YouTuber làm tổn hại đến danh tiếng chung của cộng đồng nhà sáng tạo nội dung trong mắt các nhà quảng cáo, ngành công nghiệp truyền thông và quan trọng nhất là công chúng. Đối với những hành vi này, chúng tôi cam kết thắt chặt các chính sách của YouTube và sẽ thông tin một cách nhanh chóng và minh bạch hơn\".\nBảo Lâm\n\n\n', 'https://i-sohoa.vnecdn.net/2019/04/12/dam-tang-anh-vu-1412-155498225-7249-1310-1555083595_500x300.png', 'publish', 0, 1, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/nguoi-lam-noi-dung-youtube-dang-cau-view-bat-chap-3908724.html', NULL, 0, 0, 0, 'vi'),
(19, 21, 'Huawei P30, P30 Pro \'cháy hàng\' sau 10 giây mở bán ở Trung Quốc', 'huawei-p30-p30-pro-\'chay-hang\'-sau-10-giay-mo-ban-o-trung-quoc', 'Bộ đôi smartphone được cho bán ra 30.000 đến 50.000 máy chỉ sau 10 giây mở bán Flash Sale ở Trung Quốc.', '\n\nHuawei P30 và P30 Pro bắt đầu được bán tại Trung Quốc từ 12/4, sớm hơn thị trường Việt Nam. Theo GSM Arena, sản phẩm này đã lập tức cháy hàng chỉ sau 10 giây mở bán. Ước tính trong đợt mở bán đầu tiên theo hình thức Flash Sale, đã có 30.000 đến 50.000 chiếc được bán ra và giúp Huawei thu về số tiền khoảng 200 triệu Nhân dân tệ, tương đương khoảng 29,8 triệu USD.\n\n\nTại Trung Quốc, P30 có giá gần 640 USD cho phiên bản bộ nhớ 128 GB và RAM 8 GB, trong khi giá chính hãng ở Việt Nam, thấp hơn mức giá 17 triệu đồng ở Việt Nam. Còn P30 Pro có giá từ 820 USD đến 1.010 USD, cũng ít hơn mức giá 23 triệu đồng tại Việt Nam.\nP30 và P30 Pro là bộ đôi smartphone Android cao cấp vừa được Huawei ra mắt tại Pháp cuối tháng 3. Sản phẩm thu hút nhiều chú ý vào camera, đặc biệt là P30 Pro. Đây là smartphone có chất lượng camera tốt nhất thị trường hiện nay theo đánh giá của DxOMark khi đạt được 112 điểm. Máy được đánh giá cao về khả năng chụp thiếu sáng và zoom xa, khi hỗ trợ ống kính kiểu kính tiềm vọng có khả năng zoom từ 10 đến 50 lần. \nĐánh giá camera Huawei P30 Pro \nTuấn Anh\n\n\n\n\n', 'https://i-sohoa.vnecdn.net/2019/04/13/screen-shot-2019-04-13-at-9-19-6103-9798-1555122152_300x180.png', 'publish', 0, 1, 1, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/huawei-p30-p30-pro-chay-hang-sau-10-giay-mo-ban-o-trung-quoc-3909032.html', NULL, 0, 0, 0, 'vi'),
(20, 22, 'Samsung ngừng nhận đặt hàng Galaxy Fold vì quá tải', 'samsung-ngung-nhan-dat-hang-galaxy-fold-vi-qua-tai', 'Đơn hàng smartphone màn hình gập của Samsung quá lớn nên chương trình đặt trước tại Mỹ phải tạm ngừng chỉ sau vài giờ hoạt động. ', '<p>&quot;Danh s&aacute;ch đặt trước Galaxy Fold đ&atilde; k&iacute;n. V&igrave; nhu cầu qu&aacute; lớn, ch&uacute;ng t&ocirc;i kh&ocirc;ng thể tiếp nhận th&ecirc;m bất kỳ đơn h&agrave;ng n&agrave;o nữa. Chương tr&igrave;nh tiếp tục sẽ được th&ocirc;ng b&aacute;o sau&quot;. Th&ocirc;ng b&aacute;o xuất hiện tr&ecirc;n trang web của Samsung Mỹ chỉ v&agrave;i giờ sau khi Galaxy Fold bắt đầu nhận đặt h&agrave;ng tại Mỹ h&ocirc;m 12/4.&nbsp; Th&ocirc;ng b&aacute;o qu&aacute; tải đơn h&agrave;ng của Samsung Galaxy Fold. Galaxy Fold l&agrave; smartphone đầu ti&ecirc;n của Samsung c&oacute; m&agrave;n h&igrave;nh gập, cho ph&eacute;p chuyển đổi k&iacute;ch cỡ từ m&aacute;y t&iacute;nh bảng th&agrave;nh điện thoại v&agrave; ngược lại khi cần. Điểm thu h&uacute;t ch&uacute; &yacute; ở sản phẩm ch&iacute;nh l&agrave; m&agrave;n h&igrave;nh lớn 7,3 inch sử dụng tấm nền OLED dẻo, c&oacute; thể gập đ&ocirc;i lại. Ngo&agrave;i ra, m&aacute;y c&ograve;n c&oacute; một m&agrave;n h&igrave;nh thứ hai ở mặt đối diện với k&iacute;ch thước 4,6 inch, sử dụng khi ở trạng th&aacute;i điện thoại. Galaxy Fold ra mắt từ 20/2 c&ugrave;ng với Galaxy S10 v&agrave; S10+ nhưng phải tới 12/4, sản phẩm n&agrave;y bắt đầu được c&aacute;c nh&agrave; mạng lớn tại Mỹ như AT&amp;T, T-Mobile cho ph&eacute;p đặt h&agrave;ng. Theo kế hoạch, m&aacute;y sẽ được b&aacute;n ra thị trường Mỹ với gi&aacute; 1.980 USD từ 25/4. Tuy gi&aacute; cao đến gấp rưỡi Galaxy S10, Galaxy Fold vẫn bị ch&aacute;y h&agrave;ng chỉ sau &iacute;t giờ. Tại Việt Nam, Galaxy Fold chưa được giới thiệu v&agrave; chưa c&oacute; kế hoạch b&aacute;n ch&iacute;nh h&atilde;ng.&nbsp; &nbsp; &nbsp; Video cận cảnh Samsung Galaxy Fold Tuấn Anh</p>', 'https://i-sohoa.vnecdn.net/2019/04/13/8344fa6c-1555114164-4988-1555114277_300x180.png', 'publish', 1, 0, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/samsung-ngung-nhan-dat-hang-galaxy-fold-vi-qua-tai-3908957.html', NULL, 0, 0, 0, 'vi'),
(21, 23, 'Thử tài tìm lỗi Photoshop trong ảnh quảng cáo', 'thu-tai-tim-loi-photoshop-trong-anh-quang-cao', 'Các hãng công nghệ, tạp chí nhiếp ảnh cũng không tránh khỏi những lỗi cơ bản khi chỉnh sửa ảnh và đồ hoạ. ', '\n\n\n\n\nTạp chí chuyên về nhiếp ảnh kỹ thuật số nhưng vẫn mắc phải lỗi chỉnh sửa ảnh cơ bản. Xem đáp án.\n\n\n\n\n\nApple vốn nổi tiếng về giữ gìn cẩn thận hình truyền thống nhưng ảnh giới thiệu về sản phẩm trên website cũng mắc lỗi Photoshop sơ đẳng. Xem đáp án.\n\n\n\n\n\nQuảng cáo có người đẹp hay các ngôi sao nổi tiếng thường hay mắc phải lỗi chỉnh sửa. Bạn có nhận ra điều bất thường trong quảng cáo này. Xem đáp án.\n\n\n\n\n\nNgười mẫu xinh đẹp quảng cáo về món kẹo socola nhưng vẫn có chi tiết xuất hiện khiến người xem thấy sợ. Xem đáp án.\n\n\n\n\n\nGiải thưởng lớn trong quảng cáo nhưng không đủ để người xem bỏ qua lỗi cơ bản trong đồ hoạ. Xem đáp án.\n\n\n\n\n\nBìa quảng cáo trực tiếp trên sản phẩm mắc lỗi chỉnh sửa ảnh cơ bản. Xem đáp án.\n\n\n\n\n\nTrang web về thủ tướng Australia mới đây cũng dính lỗi photoshop khiến người lãnh đạo đất nước này phải lên tiếng sau đó. Xem đáp án.\n\n\n\n\n\nBạn có nhận thấy điều lạ trong bức ảnh. Xem đáp án.\n\n\n\n\n\nNgười mẫu nóng bóng trong quảng cáo của hãng thời trang có chi tiết vô lý. Xem đáp án.\n\n\n\n\n\nBức ảnh cô gái xinh đẹp có gì đó bất thường. Xem đáp án.\n\n\n\n\n \nMỹ Anh\n\n\n\n\n', 'https://i-sohoa.vnecdn.net/2019/04/13/111-1555089272-6963-1555089408_300x180.jpg', 'publish', 0, 1, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/thu-tai-tim-loi-photoshop-trong-anh-quang-cao-3908932.html', NULL, 0, 0, 0, 'vi'),
(22, 24, 'Người dùng có thể tải ứng dụng gọi xe tự lái của FPT từ tháng 10 \n ', 'nguoi-dung-co-the-tai-ung-dung-goi-xe-tu-lai-cua-fpt-tu-thang-10-', 'Chủ tịch FPT Software cho biết việc triển khai ôtô không người lái trên đường phố Việt Nam rất khó, nhưng trong các khu đô thị thì trong tầm tay.', '\n\nNgày 11/4, FPT, Yamaha và Ecopark đã ký kết triển khai thử nghiệm xe điện tự lái trong khu đô thị Ecopark (Hà Nội). Ông Hoàng Nam Tiến, Chủ tịch FPT Software, cho hay, nhiều quốc gia đã thử nghiệm xe tự lái, nhưng triển khai thử nghiệm cho việc đi lại trong nội bộ khu của cư dân thì Ecopark là một trong những khu đô thị đầu tiên trên thế giới.\nDự án này sẽ được ba bên triển khai bước đầu trong một năm. Theo ông Tiến, đến tháng 10/2019, xe không chỉ được nâng cấp các tính năng ở mức độ cao mà người dùng còn có thể dùng ứng dụng để gọi xe trên smartphone.\n\"Chúng tôi kỳ vọng thông qua dự án thử nghiệm, một ngày không xa những chiếc xe tích hợp công nghệ xe tự lái do FPT nghiên cứu và phát triển sẽ được ứng dụng thực tế, mang lại trải nghiệm mới cho việc di chuyển của cư dân, du khách trong khu đô thị, khu du lịch cao cấp hay vận chuyển hàng hoá trong nhà máy, kho bãi\", ông Tiến chia sẻ.\n\n\n\nÔng Hoàng Nam Tiến chia sẻ tại lễ ký kết ngày 11/4.\n\n\nÔng Nguyễn Dũng Minh, Phó Giám đốc tập đoàn Ecopark, cũng mong muốn xe tự lái sớm được ứng dụng rộng rãi trong khu đô thị: \"Hiện cư dân Ecopark di chuyển trong khu với hai hệ thống giao thông là xe bus và xe điện. Xe điện tự lái sẽ là giải pháp hỗ trợ và hy vọng trong tương lai gần có 10-40 xe như thế để cư dân có thể dùng ứng dụng gọi xe\".\nFPT Software là một trong những công ty công nghệ đầu tiên trên thế giới tích hợp công nghệ xe tự lái của mình vào dòng xe điện cho sân golf được Yamaha ra mắt tháng 1/2019 tại Nhật. Ecopark là khu đô thị đầu tiên trên thế giới thử nghiệm xe điện của Yamaha tích hợp công nghệ tự lái của FPT cho việc di chuyển của cư dân nội bộ.\nỞ giai đoạn đầu, xe sẽ được vận hành với các tính năng do Yamaha tích hợp sẵn như tự động di chuyển theo làn đường và cung đường định sẵn, dừng khi có vật cản cố định, tự quay đầu trở về điểm xuất phát để kết thúc lộ trình.\nĐến quý IV/2019, sau khi tích hợp công nghệ xe tự lái của FPT, xe sẽ có thể nhận diện, theo dõi và tránh các phương tiện cùng tham gia giao thông, giảm tốc độ khi có vật cản xuất hiện bất ngờ phía trước xe, dừng đón trả khách tại các trạm chờ cố định... Khi kết thúc hành trình và không có khách, xe tự động về bãi đỗ xe. Người dùng có thể đặt xe từ xa thông qua ứng dụng trên điện thoại thông minh.\nCông nghệ của FPT đang ở cấp độ 3 trên thang đo 5 cấp độ xe tự lái của Hiệp hội Kỹ sư xe hơi (SAE) và đã tích hợp thành công trên ôtô thương mại bốn chỗ và xe điện cho sân golf. FPT cũng đã được Bộ Giao thông Vận tải cho thử nghiệm công nghệ xe tự lái trong khuôn viên khu công nghệ cao. \nChâu An\n\n\n\n\n', 'https://i-sohoa.vnecdn.net/2019/04/13/FPT-1555121415-4042-1555121420_180x108.jpg', 'publish', 0, 1, 1, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/nguoi-dung-co-the-tai-ung-dung-goi-xe-tu-lai-cua-fpt-tu-thang-10-3909013.html', NULL, 0, 0, 0, 'vi'),
(23, 25, 'CEO Samsung: \'Giới trẻ Việt Nam thay đổi quá nhanh\'  ', 'ceo-samsung-\'gioi-tre-viet-nam-thay-doi-qua-nhanh\'-', 'Ông DJ Koh ấn tượng với sự thích nghi và cập nhật nhanh sự biến đổi công nghệ của người dùng smartphone trẻ tuổi.', '<p>Galaxy A80, ra mắt ng&agrave;y 10/4, l&agrave; smartphone đầu ti&ecirc;n tr&ecirc;n thế giới sử dụng cụm ba camera sau c&oacute; thể trượt l&ecirc;n v&agrave; lật ngược ra ph&iacute;a trước. Sản phẩm nằm trong ph&acirc;n kh&uacute;c tầm trung v&agrave; hướng tới giới trẻ - những người th&iacute;ch chụp ảnh selfie cũng như những sự mới mẻ, độc đ&aacute;o.&nbsp; Trong buổi phỏng vấn trước lễ ra mắt, &ocirc;ng Koh, CEO phụ tr&aacute;ch mảng di động v&agrave; IT của Samsung, cho biết&nbsp;h&atilde;ng lu&ocirc;n nỗ lực đ&aacute;p ứng nhu cầu của người d&ugrave;ng trẻ. &quot;Nhưng c&aacute;c bạn thay đổi qu&aacute; nhanh n&ecirc;n ch&uacute;ng t&ocirc;i cũng gặp kh&oacute; khăn trong việc th&iacute;ch nghi với tốc độ thay đổi của giới trẻ Việt Nam&quot;, &ocirc;ng Koh thừa nhận v&agrave; đ&aacute;nh gi&aacute; Việt Nam&nbsp;l&agrave; một thị trường tiềm năng với d&acirc;n số trẻ dưới 30 tuổi chiếm khoảng 50% d&acirc;n số.&nbsp; Người đứng đầu Samsung Mobile n&oacute;i &ocirc;ng&nbsp;kh&ocirc;ng ngừng trăn trở l&agrave;m thế n&agrave;o để tiếp cận c&aacute;c bạn trẻ. &Ocirc;ng c&oacute; hai con trai 28 v&agrave; 21 tuổi v&agrave; qua việc&nbsp;tr&ograve; chuyện với con, &ocirc;ng đ&atilde; chọn&nbsp;mặc quần b&ograve; đến sự kiện.&nbsp;&quot;Thật ra, đ&acirc;y l&agrave; bộ quần &aacute;o m&agrave; trong 30 năm qua t&ocirc;i kh&ocirc;ng hề mặc&quot;, &ocirc;ng n&oacute;i v&agrave; cười lớn. &quot;Gần đ&acirc;y t&ocirc;i mới thử mặc quần b&ograve; một - hai lần, t&ocirc;i vẫn chưa quen lắm. V&agrave; để quen với việc n&agrave;y, t&ocirc;i cũng đ&atilde; giảm c&acirc;n&quot;. CEO Samsung chọn trang phục &aacute;o vest v&agrave; quần b&ograve; để &quot;điều h&ograve;a cho sự ch&ecirc;nh lệch giữa c&aacute;c thế hệ&nbsp;tr&ecirc;n 40 v&agrave; từ 17 đến 39&quot;. Ảnh: Samsung. &Ocirc;ng Koh cũng tiết lộ mỗi ng&agrave;y &ocirc;ng nhận được trung b&igrave;nh 10 email từ người sử dụng b&igrave;nh thường, chia sẻ cảm nhận của họ về sản phẩm. &quot;Rất nhiều bạn trẻ đ&atilde; thường xuy&ecirc;n n&oacute;i họ mong muốn camera trước c&oacute; thể chụp ảnh đẹp như camera sau, hay camera sau c&oacute; thể chuyển th&agrave;nh camera trước. V&agrave; Galaxy A80 l&agrave; sản phẩm đầu ti&ecirc;n ch&uacute;ng t&ocirc;i hiện thực h&oacute;a điều đ&oacute;&quot;, đại diện Samsung nhấn mạnh. &quot;Thậm ch&iacute; kiểu camera n&agrave;y chưa c&oacute; tr&ecirc;n c&aacute;c d&ograve;ng flagship&quot;. B&ecirc;n cạnh sự thay đổi nhanh của người d&ugrave;ng trẻ, &ocirc;ng Koh cũng n&ecirc;u một số vấn đề kh&aacute;c khi chinh phục thị trường Việt Nam. &Ocirc;ng đ&aacute;nh gi&aacute; Việt Nam l&agrave; nước c&oacute; l&atilde;nh thổ trải d&agrave;i n&ecirc;n c&ocirc;ng t&aacute;c vận chuyển h&agrave;ng h&oacute;a, logistic kh&aacute; kh&oacute; khăn. V&igrave; vậy, khoảng 4&nbsp;năm trước, h&atilde;ng đ&atilde; x&acirc;y dựng hệ thống chia sẻ th&ocirc;ng tin nhanh giữa c&aacute;c đại l&yacute; b&aacute;n h&agrave;ng, như sản phẩm c&ograve;n bao nhi&ecirc;u, c&oacute; những model n&agrave;o... Samsung đặt nh&agrave; m&aacute;y ở Việt Nam, n&ecirc;n model n&agrave;o&nbsp;hết h&agrave;ng c&oacute; thể d&ugrave;ng trực tiếp xe m&aacute;y để chuyển sản phẩm từ kho... &quot;Đ&acirc;y l&agrave; một v&iacute; dụ trong việc vượt qua kh&oacute; khăn tại thị trường Việt Nam v&agrave; đ&atilde; trở th&agrave;nh v&iacute; dụ điển h&igrave;nh khi khắc phục c&aacute;c kh&oacute; khăn kh&aacute;c ở thị trường thế giới&quot;, &ocirc;ng Koh cho biết. Hiện 50% sản lượng smartphone tr&ecirc;n to&agrave;n cầu của Samsung được sản xuất từ nh&agrave; m&aacute;y tại Việt Nam. &quot;T&ocirc;i xin gửi lời cảm ơn đến Việt Nam v&igrave; 10 năm qua, d&ograve;ng sản phẩm Galaxy đ&atilde; được người sử dụng Việt Nam ưa chuộng v&agrave; tin d&ugrave;ng. C&aacute;c thiết bị di động của Samsung được b&aacute;n tr&ecirc;n to&agrave;n cầu cũng được lắp r&aacute;p tại Việt Nam. C&oacute; thể thấy mối quan hệ giữa Samsung v&agrave; Việt Nam l&agrave; mối quan hệ đối t&aacute;c - người đồng h&agrave;nh chiến lược kh&ocirc;ng thể t&aacute;ch rời&quot;, CEO Samsung chia sẻ. Ch&acirc;u An</p>', 'https://i-sohoa.vnecdn.net/2019/04/12/57052309-298149187747107-71093-4488-2264-1555041933_180x108.png', 'publish', 0, 1, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/ceo-samsung-gioi-tre-viet-nam-thay-doi-qua-nhanh-3908530.html', NULL, 0, 0, 0, 'vi'),
(24, 26, '8 đội thi vào chung kết cuộc thi Lập trình xe tự hành  ', '8-doi-thi-vao-chung-ket-cuoc-thi-lap-trinh-xe-tu-hanh-', 'Vòng bán kết Cuộc đua số 2018-2019 đã diễn ra trong ngày 7/4 tại TP HCM và ngày 11/4 tại Hà Nội.', '<p>Cuộc đua số l&agrave; cuộc thi về c&ocirc;ng nghệ tự h&agrave;nh ti&ecirc;n phong tại Đ&ocirc;ng Nam &Aacute;, g&oacute;p phần đ&agrave;o tạo nguồn nh&acirc;n lực số. Từ 16 đội thuộc 10 trường đại học, v&ograve;ng b&aacute;n kết cuộc thi với chủ đề &quot;Lập tr&igrave;nh Xe tự h&agrave;nh&quot; do FPT v&agrave; VTV đồng tổ chức đ&atilde; chọn ra 8 đại diện xuất sắc v&agrave;o chung kết, dự kiến diễn ra th&aacute;ng 5/2019. Kh&aacute;c với v&ograve;ng loại, ở v&ograve;ng b&aacute;n kết, đội thi lập tr&igrave;nh thuật to&aacute;n tr&ecirc;n xe m&ocirc; h&igrave;nh c&oacute; tỷ lệ bằng 1/7 k&iacute;ch thước thật để gi&uacute;p xe tự di chuyển tr&ecirc;n sa h&igrave;nh với tốc độ cao nhất trong thời gian nhanh nhất cũng như x&aacute;c định, tr&aacute;nh được vật cản xuất hiện tr&ecirc;n đường; nhận dạng v&agrave; đi đ&uacute;ng theo chỉ dẫn của biển b&aacute;o. Đặc biệt, c&aacute;c biển b&aacute;o rẽ tự động thay đổi ngẫu nhi&ecirc;n. Ban tổ chức cũng bổ sung c&aacute;c yếu tố như thay đổi điều kiện &aacute;nh s&aacute;ng, h&igrave;nh d&aacute;ng vật cản... để thử th&aacute;ch th&iacute; sinh. &Ocirc;ng Đ&agrave;o Ngọc Chiến, Ph&oacute; Vụ trưởng Vụ C&ocirc;ng nghệ cao - Bộ Khoa học C&ocirc;ng nghệ, cho biết: &quot;Trải qua ba m&ugrave;a thi, chất lượng c&aacute;c đội thi ng&agrave;y c&agrave;ng tăng l&ecirc;n. Việc ứng dụng c&aacute;c c&ocirc;ng nghệ mới, c&ocirc;ng nghệ cốt l&otilde;i của cuộc c&aacute;ch mạng 4.0 l&agrave; một th&aacute;ch thức nhưng c&aacute;c đội thi về cơ bản đ&atilde; kết hợp tốt. T&ocirc;i nghĩ với đội ngũ sinh vi&ecirc;n đ&ocirc;ng đảo v&agrave; ham học hỏi c&aacute;i mới nếu c&oacute; những chương tr&igrave;nh đ&agrave;o tạo ph&ugrave; hợp như cuộc thi n&agrave;y th&igrave; kh&ocirc;ng l&acirc;u nữa, đội ngũ nh&acirc;n lực cho ng&agrave;nh c&ocirc;ng nghệ &ocirc;t&ocirc; sẽ được đ&aacute;p ứng&quot;. Với chiến thuật chỉnh g&oacute;c quay của camera để nh&igrave;n l&agrave;n đường r&otilde; hơn, đội UET Fastest dẫn đầu về tốc độ xe chạy trong số bốn đội xuất sắc khu vực miền Bắc. Nguyễn Văn T&ugrave;ng, th&agrave;nh vi&ecirc;n của Đội UET Fastest, chia sẻ: &quot;Kh&oacute; khăn lớn nhất của v&ograve;ng b&aacute;n kết ch&iacute;nh l&agrave; l&agrave;n đường rộng hơn nhưng g&oacute;c nh&igrave;n của camera kh&ocirc;ng thay đổi v&agrave; h&agrave;ng c&acirc;y che mất l&agrave;n đường, n&ecirc;n đội em đ&atilde; c&oacute; chiến thuật l&agrave; chỉnh g&oacute;c quay của camera&quot;. Một đội đang thi đấu tại v&ograve;ng b&aacute;n kết Cuộc đua số ng&agrave;y 11/4 tại H&agrave; Nội. T&aacute;m đội xuất sắc v&agrave;o v&agrave;o v&ograve;ng chung kết gồm: UET Fastest (Đại học C&ocirc;ng nghệ - Đại học Quốc gia H&agrave; Nội); MTA_R4F (Học viện Kỹ thuật qu&acirc;n sự), Fast and Fiery (Học viện C&ocirc;ng nghệ bưu ch&iacute;nh viễn th&ocirc;ng), PTIT Word.Exe (Học viện C&ocirc;ng nghệ bưu ch&iacute;nh viễn th&ocirc;ng), SQ26 (Đại học Th&ocirc;ng tin li&ecirc;n lạc), CDS-NTU2 (Đại học Nha Trang), Dateh IT (Đại học Khoa học Tự nhi&ecirc;n - Đại học Quốc gia TP HCM) v&agrave; LHU The Walkers (Đại học Lạc Hồng). Tại v&ograve;ng chung kết, c&aacute;c đội thi sẽ phải lập tr&igrave;nh để xe c&oacute; thể di chuyển tr&ecirc;n cung đường kh&ocirc;ng được biết trước với tốc độ cao nhất trong điều kiện &aacute;nh s&aacute;ng thay đổi; phải di chuyển qua hầm, khoanh v&ugrave;ng, x&aacute;c định v&agrave; tr&aacute;nh được vật cản; tự định vị để t&igrave;m kiếm đường đi ngắn nhất. Đội v&ocirc; địch sẽ nhận phần thưởng c&oacute; gi&aacute; trị khoảng 1,2 tỷ đồng, trong đ&oacute; c&oacute; một chuyến trải nghiệm, t&igrave;m hiểu về c&ocirc;ng nghệ mới tại Mỹ hoặc Nhật Bản, 15 triệu đồng tiền mặt v&agrave; một suất học bổng Tiến sĩ về ng&agrave;nh Tr&iacute; tuệ nh&acirc;n tạo trị gi&aacute; 700 triệu đồng cho th&iacute; sinh xuất sắc.&nbsp; Cuộc đua số 2018-2019 diễn ra từ th&aacute;ng 10/2018 đến th&aacute;ng 5/2019 tại H&agrave; Nội v&agrave; TP HCM.&nbsp;&Ocirc;ng L&ecirc; Hồng Việt, Gi&aacute;m đốc C&ocirc;ng nghệ FPT, cho biết mục đ&iacute;ch của cuộc thi l&agrave; sau khoảng 5 năm, sinh vi&ecirc;n Việt Nam sẽ c&oacute; đủ kiến thức v&agrave; năng lực để tự lập tr&igrave;nh xe tự h&agrave;nh chạy được trong c&aacute;c nh&agrave; m&aacute;y hay khu&ocirc;n vi&ecirc;n c&aacute;c khu du lịch. Ch&acirc;u An</p>', 'https://i-sohoa.vnecdn.net/2019/04/12/FPT1-2361-1555063239_180x108.jpg', 'publish', 0, 0, 0, 1, 0, 1, 0, 'https://vnexpress.net/so-hoa/8-doi-thi-vao-chung-ket-cuoc-thi-lap-trinh-xe-tu-hanh-3908835.html', NULL, 0, 0, 0, 'vi'),
(25, 27, 'Ba mẫu điều hòa Inverter tiết kiệm điện đón hè 2019', 'ba-mau-dieu-hoa-inverter-tiet-kiem-dien-don-he-2019', 'Tính năng tiết kiệm điện cùng công nghệ thanh lọc không khí là những điểm cộng khiến các mẫu điều hòa bán chạy.', '\n\nVào hè là thời điểm máy điều hòa trở thành mặt hàng được \"săn lùng\" tại các siêu thị điện máy. Khi thời tiết dần vào giai đoạn nắng nóng cộng thêm tình hình ô nhiễm không khí, yếu tố tiết kiệm điện và lọc không khí được nhiều gia đình quan tâm hàng đầu khi chọn mua.\nTheo đại diện LG, dưới đây là 3 mẫu điều hòa tiết kiệm điện của hãng đang bán chạy trên thị trường hiện nay.\nĐiều hòa Dual Inverter V10APF cao cấp \nDòng điều hòa thông minh LG Dual Cool Inverter, đơn cử là mẫu V10APF, nổi bật ở tính năng tiết kiệm điện, làm mát và lọc không khí tốt. \nNhờ bộ cảm biến bụi PM 1.0, điều hòa này có thể phát hiện các loại siêu bụi với kích thước chỉ khoảng 1 µm (vi khuẩn, khói thuốc, khí thải xe hơi...). Khi bật lên, bộ cảm biến tự động kích hoạt, đánh giá mức độ ô nhiễm và thể hiện thông qua sáu màu sắc khác nhau trên bề mặt điều hòa. \nKhi không khí nhiều bụi bẩn, vi khuẩn gây hại và không an toàn, hệ thống lọc khí sẽ tự động phát ra năm triệu ion âm, hút các phân tử bụi, vi khuẩn. Dòng điều hòa Dual Inverter cũng có khả năng làm lạnh nhanh, tiết kiệm điện, phù hợp để sử dụng trong tình hình giá điện tăng hiện nay.\n\n\n\nĐiều hòa thanh lọc không khí V10APF đoạt giải điều hòa thông minh xuất sắc tại giải Tech Awards 2018.\n\n\nNgoài ra, mẫu điều hòa thông minh này còn tích hợp wifi, cho phép người dùng kiểm soát điều hoà. Các thao tác như tăng giảm nhiệt độ, chỉnh tốc độ gió, điều chỉnh chế độ làm lạnh... được thực hiện dễ dàng qua smartphone thông qua ứng dụng Smart Thin Q. \nDòng máy V10APF (9000 Btu) có mức giá khoảng 12.990.000 đồng, hiện có tại các siêu thị điện máy như Điện Máy Xanh.\nĐiều hoà LG Inverter V10APH\nMẫu điều hòa V10APH, cũng thuộc dòng điều hòa Dual Inverter là sản phẩm bán chạy tiếp theo của LG có tích hợp bộ phận thanh lọc không khí. \nĐiểm khác biệt so với dòng APF là dòng này không có tích hợp kết nối wifi. Do đó, giá thành cho mẫu điều hòa 9000Btu của dòng này thấp hơn, khoảng 9.890.000 đồng.\nChức năng thanh lọc không khí vẫn được tích hợp trong mẫu điều hòa V10APH, có thể tắt bật độc lập mà không cần phải khởi động điều hòa. Vào những ngày thời tiết mát mẻ, các gia đình vẫn có thể bật chế độ lọc không khí cả ngày mà không cần bật điều hòa, giúp tiết kiệm điện.\nĐiều hoà ENW kiểm soát năng lượng điện\nENW, V10ENW (9000 Btu) và V13ENW (12000 Btu) cũng là các mẫu điều hoà đang bán chạy nhất của LG. Sản phẩm được tích hợp nhiều công nghệ mới vừa tầm giá. Nổi bật là ứng dụng công nghệ Inverter giúp tiết kiệm điện hiệu quả.\n\n\n\nĐiều hòa ENW với công nghệ tiết kiệm điện là dòng bán chạy của LG.\n\n\nNgười dùng ENW có thể chủ động kiểm soát năng lượng qua 4 mức công suất 100%, 80%, 60%, 40%, tùy theo số lượng người ở trong phòng. Cải tiến này không chỉ tiết kiệm chi phí cho các gia đình mà còn hữu ích với cộng đồng, trong mùa tiêu thụ điện năng cao điểm tại đô thị. \nLG còn áp dụng chế độ bảo hành 10 năm cho máy nén của dòng điều hoà ENW. Sản phẩm được bán tại Điện Máy Xanh, giá từ 8.690.000 đồng.\nPhong Vân\n\n\n', 'https://i-sohoa.vnecdn.net/2019/04/11/1633617295-w500-5292-1554970686_180x108.png', 'publish', 0, 0, 0, 1, 0, 1, 0, 'https://vnexpress.net/so-hoa/ba-mau-dieu-hoa-inverter-tiet-kiem-dien-don-he-2019-3908144.html', NULL, 0, 0, 0, 'vi'),
(26, 28, 'Màn hình LG giá từ 1,8 triệu đồng cho dân văn phòng', 'man-hinh-lg-gia-tu-18-trieu-dong-cho-dan-van-phong', 'Với mức giá từ 1,8 triệu, người dùng có thể sở hữu màn hình máy tính LG độ nét cao, thân thiện với sức khoẻ, thiết kế hiện đại.', '\n\nLà thương hiệu nổi tiếng trong lĩnh vực TV, các dòng màn hình máy tính của LG được giới công nghệ đánh giá cao về nhiều yếu tố như thiết kế, công nghệ. Một chiếc màn hình máy tính LG có chất lượng hình ảnh tốt hiện nay có giá từ khoảng 1,8 đến 4,5 triệu đồng, kích thước từ 20-24 inch, phù hợp cho nhiều mục đích từ văn phòng đến đồ họa, chơi game.\n\n\n\nLG 20MK400H giá khoảng 1,8 triệu đồng, có chế độ đọc sách và chống nháy hình.\n\n\nTheo nhà sản xuất, các dòng màn hình dành cho văn phòng của LG đều được trang bị công nghệ chống nháy hình (Flicker-safe) và chế độ đọc sách, giúp giảm thiểu tác động của ánh sáng xanh và bảo vệ mắt. Ở chế độ này, khi đọc văn bản, lướt báo hay lướt Facebook trong thời gian dài sẽ giảm bớt giảm triệu chứng mỏi mắt.\nLG ứng dụng công nghệ tấm nền IPS, vốn được sử dụng rộng rãi trên các dòng màn hình đồ hoạ chuyên nghiệp. Điểm mạnh của công nghệ IPS là góc nhìn không giới hạn, màu sắc chính xác và dải tương phản rộng.\nVới kích thước 20-24 inch, màn hình IPS với độ phân giải Full HD mang đến hình ảnh nhiều chi tiết, sắc nét. Hơn nữa, công nghệ tối ưu màu đen Black Stabilizer giúp màu đen trên màn hình luôn ổn định và hình ảnh có chiều sâu hơn.\n\n\n\nLG MK430H độ phân giải Full HD và chất lượng hình ảnh cao trong tầm giá dưới 3 triệu đồng.\n\n\nVới dòng màn hình IPS, LG hướng tới người dùng văn phòng với phiên bản 22 inch giá khoảng 2,5 triệu đồng và phiên bản 24 inch có giá khoảng 2,8 triệu đồng. Điểm nổi bật của dòng màn hình này đó là góc nhìn rộng, màu đen đồng nhất, tích hợp công nghệ AMD FreeSync, thời gian đáp ứng chỉ 5ms và phù hợp cho cả nhu cầu làm việc lẫn giải trí.\nTrong trường hợp cần tới một dòng màn hình có thiết kế hiện đại, LG 24MP88HV có mức giá khoảng 4 triệu đồng là lựa chọn được nhiều người đánh giá cao. Sản phẩm có kích thước 24 inch, độ phân giải Full HD, tấm nền IPS có độ phủ màu sRGB hơn 90% và màu đen rất sâu dựa trên công nghệ Black Stabilizer.\n\n\n\nLG 24MP88HV với đường viền siêu mỏng và chân đế cách điệu. \n\n\nCác dòng màn hình máy tính của LG đều trang bị phần mềm OnScreen Control, cho phép người dùng chỉnh các thông số của màn hình như độ sáng, độ tương phản, chế độ xem, thời gian đáp ứng, tắt mở FreeSync... bằng cách click chuột, không cần dùng các nút bấm vật lý.\nOnScreen Control còn là giải pháp quản lý đa màn hình, bố trí cửa sổ làm việc và cá nhân hóa các chế độ màn hình vô cùng đơn giản và nhanh chóng. Nhờ vậy, hiệu suất làm việc và giải trí trên màn hình tăng cao, đặc biệt là với những người đa nhiệm.\n\n\n\nPhần mềm OnScreen Control cho phép quản lý đa nhiệm hiệu quả.\n\n\nMàn hình của LG được nhà sản xuất chia sẻ đều sản xuất từ nhà máy đặt tại Indonesia. Tấm nền IPS cũng là loại công nghệ tấm nền có tuổi thọ cao nhất hiện nay, các phụ kiện như dây HDMI đều được tặng kèm với màn hình và phần mềm OnScreen Control, LG sẽ cung cấp miễn phí cho khách hàng.\nThành Dương \n\n\n', 'https://i-sohoa.vnecdn.net/2019/04/10/607079225-w500-1554893494-7695-1554893788_180x108.png', 'publish', 0, 0, 0, 1, 0, 1, 0, 'https://vnexpress.net/so-hoa/man-hinh-lg-gia-tu-1-8-trieu-dong-cho-dan-van-phong-3907644.html', NULL, 0, 0, 0, 'vi');
INSERT INTO `post_translations` (`id`, `post_id`, `title`, `slug`, `description`, `content`, `media`, `status`, `feature`, `editor_pick`, `recommended`, `newsflash`, `cmt_allow`, `author`, `count_share`, `source_link`, `source_click`, `count_vote`, `count_comment`, `count_view`, `locale`) VALUES
(27, 29, 'Oppo F11 về Việt Nam giá 7,29 triệu đồng \n ', 'oppo-f11-ve-viet-nam-gia-729-trieu-dong-', 'F11 được nâng cấp mạnh về phần cứng cùng khả năng chụp hình và có giá bán rẻ hơn đàn em F9 vào thời điểm ra mắt.', '\n\n\n\n\n\n\n\n\n\n \n \n\n\n\n\n\n\n\n\n\n\n\n\n\nMở hộp Oppo F11\n\n\n\n\n\n\n	\n\n\n\n\n\n\n\n\n\nOppo F11 sẽ cạnh tranh với Samsung Galaxy A50 phiên bản 64 GB và Huawei P30 Lite. Sản phẩm bán ra kèm sạc nhanh VOOC, cáp, tai nghe và case bảo vệ.\n\n\n\n\n\n\n\n\n\n\nSản phẩm có màn hình 6,53 inch độ phân giải Full HD và vẫn giữ thiết kế giọt nước giống như thế hệ trước. Màn hình của máy lớn hơn hai đối thủ Galaxy A50 là 6,4 inch và P30 Lite là 6,15 inch. \n\n\n\n\n\n\n\n\n\n\nMáy có thiết kế tương tự \"đàn anh\" F11 Pro với mặt lưng kính đổi màu theo góc nhìn - xu hướng hiện nay. Nhược điểm của mặt lưng này là dễ bám bụi và vân tay. Phần camera của máy nhìn mượt mà hơn \"đàn anh\" do không có phần nắp che kéo dài lên trên dành cho camera trước dạng thụt thò.\n\n\n\n\n\n\n\n\n\n\nOppo vẫn sử dụng camera kép trong khi các đối thủ từ Huawei, Oppo hay Vivo đã trang bị ba camera. Bù lại camera trên F11 có độ phân giải cao nhất lên đến 48 megapixel, camera còn lại chuyên dùng đo độ sâu trường ảnh độ phân giải 5 megapixel. Bên cạnh công nghệ AI nhận diện khung cảnh, F11 còn có thêm chế độ chân dung thiếu sáng low-light portrait khi kết hợp giữa chế độ Siêu chụp đêm Ultra Night Mode và Color Mapping.\n\n\n\n\n\n\n\n\n\n\nCamera trước giảm độ phân giải xuống còn 16 megapixel thấp hơn thế hệ trước và cả hai đối thủ khi Galaxy A50 có camera trước 25 megapixel còn P30 Lite là 32 megapixel. Bù lại, F11 được trang bị AI với khả năng làm đẹp tự nhiên và xóa phông tốt hơn. \n\n\n\n\n\n\n\n\n\n\nF11 có cấu hình giống hệt đàn anh khi có RAM 6 GB, bộ nhớ trong 64 GB và dùng chip 8 nhân 2,1 GHz P70 của MediaTek. Cấu hình này tốt hơn Galaxy A50 bản 64 GB chỉ có 4 GB RAM nhưng lại thua P30 Lite ở bộ nhớ trong khi đối thủ có ROM lên đến 128 GB.\n\n\n\n\n\n\n\n\n\n\nMáy chạy Android 9.0 với giao diện ColorOS 6. Thiếu sót đáng tiếc nữa của sản phẩm là chưa có cảm biến vân tay trong màn hình như đối thủ cùng tầm tiền Galaxy A50 tới từ Samsung. Máy vẫn dùng cảm biến vân tay ở mặt lưng và dùng camera selfie để mở khoá bằng khuôn mặt.\n\n\n\n\n\n\n\n\n\n\nDù vẫn sử dụng cổng microUSB thay vì USB-C như phần lớn các smartphone Android hiện nay, F11 vẫn có lợi thế khi được trang bị pin dung lượng lớn 4.020 mAh và công nghệ sạc nhanh VOOC 3.0. Pin của máy có thể nạp được 70% trong 40 phút và đầy hoàn toàn sau 1 giờ 45 phút. So với F9, thời gian sạc trên F11 được cải thiện 20%.\n\n\n\n', 'https://i-sohoa.vnecdn.net/2019/04/11/20190410-MG-9911-1554973964_180x108.jpg', 'publish', 1, 0, 0, 0, 0, 1, 0, 'https://vnexpress.net/so-hoa/oppo-f11-ve-viet-nam-gia-7-29-trieu-dong-3908218.html', NULL, 0, 0, 0, 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_react` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'vote',
  `num_react` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'blog',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `type`, `status`, `code`, `created_at`, `updated_at`) VALUES
(1, 'blog', 'publish', 'en', '2019-03-17 06:46:59', '2019-03-17 06:46:59'),
(2, 'blog', 'publish', 'en', '2019-03-17 06:47:15', '2019-03-17 06:47:15'),
(3, 'blog', 'publish', 'en', '2019-03-17 06:47:33', '2019-03-17 06:47:33'),
(4, 'blog', 'publish', 'en', '2019-03-17 06:47:44', '2019-03-17 06:47:44'),
(5, 'blog', 'publish', 'en', '2019-03-17 06:53:12', '2019-03-17 06:53:12'),
(6, 'blog', 'publish', 'en', '2019-03-17 06:53:20', '2019-03-17 06:53:20'),
(7, 'blog', 'publish', 'en', '2019-03-17 06:53:37', '2019-03-17 06:53:37'),
(8, 'blog', 'publish', 'en', '2019-03-17 06:53:48', '2019-03-17 06:53:48'),
(9, 'blog', 'publish', 'en', '2019-03-17 06:53:54', '2019-03-17 06:53:54'),
(10, 'blog', 'publish', 'en', '2019-03-17 06:54:10', '2019-03-17 06:54:10'),
(11, 'blog', 'publish', 'en', '2019-03-17 06:54:22', '2019-03-17 06:54:22'),
(12, 'blog', 'publish', 'en', '2019-03-17 06:54:28', '2019-03-17 06:54:28'),
(13, 'blog', 'publish', 'en', '2019-03-17 06:54:33', '2019-03-17 06:54:33'),
(14, 'blog', 'publish', 'en', '2019-03-17 06:54:46', '2019-03-17 06:54:46'),
(15, 'blog', 'publish', 'en', '2019-03-17 06:54:53', '2019-03-17 06:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `tag_translations`
--

CREATE TABLE `tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_translations`
--

INSERT INTO `tag_translations` (`id`, `tag_id`, `title`, `slug`, `locale`) VALUES
(1, 1, 'Đà Lạt', 'da-lat', 'vi'),
(2, 2, 'Rạp hát', 'rap-hat', 'vi'),
(3, 3, 'Người Việt', 'nguoi-viet', 'vi'),
(4, 4, 'Văn hóa', 'van-hoa', 'vi'),
(5, 5, 'Đất công', 'dat-cong', 'vi'),
(6, 6, 'Thương mại', 'thuong-mai', 'vi'),
(7, 7, 'Tiền', 'tien', 'vi'),
(8, 8, 'Sản phẩm', 'san-pham', 'vi'),
(9, 9, 'Dịch vụ', 'dich-vu', 'vi'),
(10, 10, 'Doanh nghiệp', 'doanh-nghiep', 'vi'),
(11, 11, 'Thị trường', 'thi-truong', 'vi'),
(12, 12, 'Nông sản', 'nong-san', 'vi'),
(13, 13, 'Chăn nuôi', 'chan-nuoi', 'vi'),
(14, 14, 'Điện thoại', 'dien-thoai', 'vi'),
(15, 15, 'Lập trình', 'lap-trinh', 'vi');

-- --------------------------------------------------------

--
-- Table structure for table `url_craws`
--

CREATE TABLE `url_craws` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rule` int(11) DEFAULT NULL,
  `cron_rule` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'deactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `url_craws`
--

INSERT INTO `url_craws` (`id`, `url`, `domain`, `rule`, `cron_rule`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'https://sohoa.vnexpress.net/', 'vnexpress.net', 1, NULL, 'active', '2018-11-17 08:22:19', '2018-12-08 13:01:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viewer_logs`
--

CREATE TABLE `viewer_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_adr` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `post_id` int(10) UNSIGNED DEFAULT NULL,
  `cat_id` int(10) UNSIGNED DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci,
  `session_time` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_config`
--
ALTER TABLE `admin_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_config_name_unique` (`name`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `category_translations_locale_index` (`locale`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_foreign` (`post_id`);

--
-- Indexes for table `comment_translations`
--
ALTER TABLE `comment_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `comment_translations_comment_id_locale_unique` (`comment_id`,`locale`),
  ADD KEY `comment_translations_locale_index` (`locale`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_parses`
--
ALTER TABLE `history_parses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `html_dom_rules`
--
ALTER TABLE `html_dom_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `infomations`
--
ALTER TABLE `infomations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `infomations_user_id_foreign` (`user_id`);

--
-- Indexes for table `layouts`
--
ALTER TABLE `layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layout_translations`
--
ALTER TABLE `layout_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `layout_translations_layout_id_locale_unique` (`layout_id`,`locale`),
  ADD KEY `layout_translations_locale_index` (`locale`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_translations`
--
ALTER TABLE `media_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_translations_media_id_locale_unique` (`media_id`,`locale`),
  ADD KEY `media_translations_locale_index` (`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigations`
--
ALTER TABLE `navigations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation_translations`
--
ALTER TABLE `navigation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `navigation_translations_navigation_id_locale_unique` (`navigation_id`,`locale`),
  ADD KEY `navigation_translations_locale_index` (`locale`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_translations_post_id_locale_unique` (`post_id`,`locale`),
  ADD UNIQUE KEY `title_2` (`title`),
  ADD KEY `post_translations_locale_index` (`locale`),
  ADD KEY `title` (`title`,`slug`,`status`,`feature`,`editor_pick`,`recommended`,`newsflash`,`count_share`,`count_view`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reactions_post_id_foreign` (`post_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  ADD KEY `tag_translations_locale_index` (`locale`);

--
-- Indexes for table `url_craws`
--
ALTER TABLE `url_craws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `viewer_logs`
--
ALTER TABLE `viewer_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_config`
--
ALTER TABLE `admin_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=931;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `category_translations`
--
ALTER TABLE `category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment_translations`
--
ALTER TABLE `comment_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_parses`
--
ALTER TABLE `history_parses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `html_dom_rules`
--
ALTER TABLE `html_dom_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `infomations`
--
ALTER TABLE `infomations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layouts`
--
ALTER TABLE `layouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `layout_translations`
--
ALTER TABLE `layout_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_translations`
--
ALTER TABLE `media_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `navigations`
--
ALTER TABLE `navigations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `navigation_translations`
--
ALTER TABLE `navigation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `post_translations`
--
ALTER TABLE `post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tag_translations`
--
ALTER TABLE `tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `url_craws`
--
ALTER TABLE `url_craws`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `viewer_logs`
--
ALTER TABLE `viewer_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_translations`
--
ALTER TABLE `category_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comment_translations`
--
ALTER TABLE `comment_translations`
  ADD CONSTRAINT `comment_translations_comment_id_foreign` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `infomations`
--
ALTER TABLE `infomations`
  ADD CONSTRAINT `infomations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `layout_translations`
--
ALTER TABLE `layout_translations`
  ADD CONSTRAINT `layout_translations_layout_id_foreign` FOREIGN KEY (`layout_id`) REFERENCES `layouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media_translations`
--
ALTER TABLE `media_translations`
  ADD CONSTRAINT `media_translations_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `navigation_translations`
--
ALTER TABLE `navigation_translations`
  ADD CONSTRAINT `navigation_translations_navigation_id_foreign` FOREIGN KEY (`navigation_id`) REFERENCES `navigations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_translations`
--
ALTER TABLE `post_translations`
  ADD CONSTRAINT `post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reactions`
--
ALTER TABLE `reactions`
  ADD CONSTRAINT `reactions_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_translations`
--
ALTER TABLE `tag_translations`
  ADD CONSTRAINT `tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
