-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2024 at 08:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumah_makan`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `activity` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `activity`, `description`, `timestamp`) VALUES
(1, 28, 'login', 'User logged in.', '2024-08-12 12:11:08'),
(2, 28, 'login', 'User logged in.', '2024-08-12 12:17:31'),
(3, 28, 'login', 'User logged in.', '2024-08-12 12:18:05'),
(4, 28, 'logout', 'User logged out.', '2024-08-12 12:19:35'),
(5, 28, 'login', 'User logged in.', '2024-08-12 12:19:47'),
(6, 28, 'Transaction', 'User Has Made a Transaction.', '2024-08-12 12:26:51'),
(7, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:29:16'),
(8, 28, 'Cancel', 'User Has Cancel The transaction.', '2024-08-12 12:30:54'),
(9, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:37:53'),
(10, 28, 'Finnish', 'User Has Completed The transaction.', '2024-08-12 12:38:54'),
(11, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:42:00'),
(12, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:42:42'),
(13, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:43:09'),
(14, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:43:11'),
(15, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:43:15'),
(16, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:43:27'),
(17, 28, 'Updated', 'User Has Updated The transaction.', '2024-08-12 12:44:11'),
(18, 28, 'Menu', 'User Has Deleted a Menu.', '2024-08-12 12:50:13'),
(19, 28, 'Drink', 'User Has Deleted a Drink.', '2024-08-12 12:57:01'),
(20, 28, 'Menu', 'User Has Updated a Menu.', '2024-08-12 12:59:14'),
(21, 28, 'Menu', 'User Has Added a Menu.', '2024-08-12 12:59:26'),
(22, 28, 'Menu', 'User Has Deleted a Menu.', '2024-08-12 12:59:30'),
(23, 28, 'Drink', 'User Has Added a Drink.', '2024-08-12 13:00:30'),
(24, 28, 'Drink', 'User Has Deleted a Drink.', '2024-08-12 13:00:33'),
(25, 28, 'Drink', 'User Has Updated a Drink.', '2024-08-12 13:01:32'),
(26, 28, 'Drink', 'User Has Added a User.', '2024-08-12 13:05:21'),
(27, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:05:37'),
(28, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:09:56'),
(29, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:09:58'),
(30, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:10:00'),
(31, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:10:02'),
(32, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:10:09'),
(33, 28, 'Admin', 'User Has Deleted An Admin.', '2024-08-12 13:11:08'),
(34, 28, 'Admin', 'User Has Deleted An Admin.', '2024-08-12 13:11:38'),
(35, 28, 'Chef', 'User Has Deleted A Chef.', '2024-08-12 13:13:17'),
(36, 28, 'Worker', 'User Has Deleted A Worker.', '2024-08-12 13:13:39'),
(37, 28, 'Manager', 'User Has Deleted A Manager.', '2024-08-12 13:13:43'),
(38, 28, 'Admin', 'User Has Deleted An Admin.', '2024-08-12 13:14:28'),
(39, 28, 'Worker', 'User Has Deleted A Worker.', '2024-08-12 13:17:29'),
(40, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:19:57'),
(41, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:20:05'),
(42, 28, 'Reset', 'User Has Resetted an Account.', '2024-08-12 13:20:25'),
(43, 28, 'Worker', 'User Has Deleted A Worker.', '2024-08-12 13:20:32'),
(44, 28, 'Reset', 'User Has Resetted An Account', '2024-08-12 13:22:55'),
(45, 28, 'Admin', 'User Has Deleted An Admin.', '2024-08-12 13:22:57'),
(46, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:23:41'),
(47, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:23:43'),
(48, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:24:28'),
(49, 28, 'Drink', 'User Has Added a New User.', '2024-08-12 13:24:32'),
(50, 28, 'Reset', 'User Has Resetted An Account', '2024-08-12 13:24:35'),
(51, 28, 'Reset', 'User Has Resetted An Account', '2024-08-12 13:24:38'),
(52, 28, 'Chef', 'User Has Deleted A Chef.', '2024-08-12 13:24:39'),
(53, 28, 'Manager', 'User Has Deleted A Manager.', '2024-08-12 13:24:42'),
(54, 28, 'Updated', 'User Has Updated The Logo', '2024-08-12 13:25:49'),
(55, 28, 'Transaction', 'User Has Payed a Transaction', '2024-08-12 13:26:53'),
(56, 28, 'login', 'User logged in.', '2024-08-13 11:00:24'),
(57, 28, 'View', 'User view Dashboard.', '2024-08-13 11:11:37'),
(58, 28, 'View', 'User view Order.', '2024-08-13 11:12:39'),
(59, 28, 'View', 'User view Inprogress.', '2024-08-13 11:12:40'),
(60, 28, 'View', 'User view Order.', '2024-08-13 11:20:18'),
(61, 28, 'View', 'User view Dashboard.', '2024-08-13 11:20:19'),
(62, 28, 'View', 'User view Food Menu .', '2024-08-13 11:20:20'),
(63, 28, 'View', 'User view Drink Menu.', '2024-08-13 11:20:21'),
(64, NULL, 'View', 'User view Add Menu Drink.', '2024-08-13 11:20:22'),
(65, 28, 'View', 'User view Drink Menu.', '2024-08-13 11:20:23'),
(66, 28, 'View', 'User view Drink Menu.', '2024-08-13 11:20:26'),
(67, 28, 'View', 'User view Food Menu .', '2024-08-13 11:20:26'),
(68, 28, 'View', 'User view Order.', '2024-08-13 11:20:27'),
(69, 28, 'View', 'User view Inprogress.', '2024-08-13 11:20:28'),
(70, 28, 'View', 'User view History.', '2024-08-13 11:20:28'),
(71, 28, 'View', 'User view Reports Menu.', '2024-08-13 11:22:48'),
(72, 28, 'View', 'User view Food Menu .', '2024-08-13 11:22:49'),
(73, 28, 'View', 'User view Food Menu Edit.', '2024-08-13 11:22:51'),
(74, 28, 'View', 'User view Food Menu .', '2024-08-13 11:22:52'),
(75, 28, 'View', 'User view Drink Menu.', '2024-08-13 11:22:53'),
(76, 28, 'View', 'User view Edit Drink Menu.', '2024-08-13 11:22:55'),
(77, 28, 'View', 'User view Drink Menu.', '2024-08-13 11:22:56'),
(78, 28, 'View', 'User view Add Menu Drink.', '2024-08-13 11:22:58'),
(79, 28, 'View', 'User view Add Menu.', '2024-08-13 11:22:59'),
(80, 28, 'View', 'User view Worker.', '2024-08-13 11:23:07'),
(81, 28, 'View', 'User view Order.', '2024-08-13 11:25:55'),
(82, 28, 'View', 'User view History.', '2024-08-13 11:25:56'),
(83, 28, 'View', 'User view History.', '2024-08-13 11:26:00'),
(84, 28, 'View', 'User view Activity Log.', '2024-08-13 11:28:55'),
(85, 28, 'View', 'User view Setting.', '2024-08-13 11:30:49'),
(86, 28, 'View', 'User view Activity Log.', '2024-08-13 11:30:50'),
(87, 28, 'View', 'User view Activity Log.', '2024-08-13 11:30:54'),
(88, 28, 'View', 'User view Setting.', '2024-08-13 11:30:56'),
(89, 28, 'View', 'User view Activity Log.', '2024-08-13 11:30:59'),
(90, 28, 'View', 'User view Setting.', '2024-08-13 11:31:03'),
(91, 28, 'View', 'User view Setting.', '2024-08-13 11:31:19'),
(92, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:20'),
(93, 28, 'View', 'User view Setting.', '2024-08-13 11:31:24'),
(94, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:24'),
(95, 28, 'View', 'User view Setting.', '2024-08-13 11:31:26'),
(96, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:27'),
(97, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:28'),
(98, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:28'),
(99, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:29'),
(100, 28, 'View', 'User view Setting.', '2024-08-13 11:31:31'),
(101, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:32'),
(102, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:33'),
(103, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:35'),
(104, 28, 'View', 'User view Activity Log.', '2024-08-13 11:31:41'),
(105, 28, 'View', 'User view Setting.', '2024-08-13 11:35:20'),
(106, 28, 'View', 'User view Activity Log.', '2024-08-13 11:35:21'),
(107, 28, 'View', 'User view Activity Log.', '2024-08-13 11:38:36'),
(108, 28, 'View', 'User view Activity Log.', '2024-08-13 11:39:41'),
(109, 28, 'View', 'User view Activity Log.', '2024-08-13 11:39:54'),
(110, 28, 'View', 'User view Activity Log.', '2024-08-13 11:39:54'),
(111, 28, 'View', 'User view Activity Log.', '2024-08-13 11:40:31'),
(112, 28, 'View', 'User view Activity Log.', '2024-08-13 11:40:31'),
(113, 28, 'View', 'User view Activity Log.', '2024-08-13 11:40:31'),
(114, 28, 'View', 'User view Activity Log.', '2024-08-13 11:40:32'),
(115, 28, 'View', 'User view Activity Log.', '2024-08-13 11:40:45'),
(116, 28, 'View', 'User view Activity Log.', '2024-08-13 11:40:56'),
(117, 28, 'View', 'User view Activity Log.', '2024-08-13 11:41:38'),
(118, 28, 'View', 'User view Activity Log.', '2024-08-13 11:42:51'),
(119, 28, 'View', 'User view Activity Log.', '2024-08-13 11:43:07'),
(120, 28, 'View', 'User view Activity Log.', '2024-08-13 11:43:21'),
(121, 28, 'View', 'User view Activity Log.', '2024-08-13 11:43:42'),
(122, 28, 'View', 'User view Activity Log.', '2024-08-13 11:45:28'),
(123, 28, 'View', 'User view Activity Log.', '2024-08-13 11:45:29'),
(124, 28, 'View', 'User view Activity Log.', '2024-08-13 11:47:46'),
(125, 28, 'View', 'User view Activity Log.', '2024-08-13 11:49:08'),
(126, 28, 'logout', 'User logged out.', '2024-08-13 11:49:18'),
(127, 26, 'login', 'User logged in.', '2024-08-13 11:49:26'),
(128, 26, 'View', 'User view Dashboard.', '2024-08-13 11:49:26'),
(129, 26, 'View', 'User view Cheff Order Menu.', '2024-08-13 11:49:37'),
(130, 26, 'View', 'User view Food Menu .', '2024-08-13 11:49:38'),
(131, 26, 'View', 'User view Cheff Order Menu.', '2024-08-13 11:49:42'),
(132, 26, 'logout', 'User logged out.', '2024-08-13 11:49:43'),
(133, 28, 'login', 'User logged in.', '2024-08-13 11:49:53'),
(134, 28, 'View', 'User view Dashboard.', '2024-08-13 11:49:53'),
(135, 28, 'View', 'User view Activity Log.', '2024-08-13 11:49:55'),
(136, 28, 'View', 'User view Activity Log.', '2024-08-13 11:51:14'),
(137, 28, 'View', 'User view Activity Log.', '2024-08-13 11:52:09'),
(138, 28, 'View', 'User view Food Menu .', '2024-08-13 11:55:47'),
(139, 28, 'View', 'User view Activity Log.', '2024-08-13 11:55:50'),
(140, 28, 'View', 'User view Activity Log.', '2024-08-13 11:55:55'),
(141, 28, 'View', 'User view Activity Log.', '2024-08-13 11:56:06'),
(142, 28, 'logout', 'User logged out.', '2024-08-13 11:57:04'),
(143, 28, 'login', 'User logged in.', '2024-08-13 11:57:12'),
(144, 28, 'View', 'User view Dashboard.', '2024-08-13 11:57:12'),
(145, 28, 'View', 'User view Activity Log.', '2024-08-13 11:57:13'),
(146, 28, 'View', 'User view Activity Log.', '2024-08-13 11:57:22'),
(147, 28, 'View', 'User view Activity Log.', '2024-08-13 11:58:41'),
(148, 28, 'View', 'User view Activity Log.', '2024-08-13 11:58:56'),
(149, 28, 'View', 'User view Setting.', '2024-08-13 11:58:56'),
(150, 28, 'View', 'User view Setting.', '2024-08-13 11:58:57'),
(151, 28, 'View', 'User view Order.', '2024-08-13 11:58:58'),
(152, 28, 'View', 'User view Order.', '2024-08-13 11:59:11'),
(153, 28, 'View', 'User view Inprogress.', '2024-08-13 11:59:13'),
(154, 28, 'View', 'User view History.', '2024-08-13 11:59:14'),
(155, 28, 'View', 'User view Order.', '2024-08-13 11:59:16'),
(156, 28, 'View', 'User view Inprogress.', '2024-08-13 11:59:16'),
(157, 28, 'View', 'User view History.', '2024-08-13 11:59:17'),
(158, 28, 'View', 'User view Food Menu .', '2024-08-13 11:59:18'),
(159, 28, 'View', 'User view Order.', '2024-08-13 11:59:18'),
(160, 28, 'View', 'User view Dashboard.', '2024-08-13 11:59:19'),
(161, 28, 'View', 'User view Food Menu .', '2024-08-13 11:59:19'),
(162, 28, 'View', 'User view Food Menu .', '2024-08-13 11:59:34'),
(163, 28, 'View', 'User view Drink Menu.', '2024-08-13 11:59:36'),
(164, 28, 'View', 'User view Food Menu .', '2024-08-13 11:59:37'),
(165, 28, 'View', 'User view Order.', '2024-08-13 11:59:39'),
(166, 28, 'View', 'User view Inprogress.', '2024-08-13 11:59:41'),
(167, 28, 'View', 'User view History.', '2024-08-13 11:59:42'),
(168, 28, 'View', 'User view Order.', '2024-08-13 11:59:43'),
(169, 28, 'View', 'User view Inprogress.', '2024-08-13 11:59:44'),
(170, 28, 'View', 'User view History.', '2024-08-13 11:59:45'),
(171, 28, 'View', 'User view Order.', '2024-08-13 11:59:46'),
(172, 28, 'View', 'User view History.', '2024-08-13 11:59:59'),
(173, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:00'),
(174, 28, 'View', 'User view History.', '2024-08-13 12:00:01'),
(175, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:02'),
(176, 28, 'View', 'User view Order.', '2024-08-13 12:00:02'),
(177, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:03'),
(178, 28, 'View', 'User view History.', '2024-08-13 12:00:03'),
(179, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:04'),
(180, 28, 'View', 'User view Order.', '2024-08-13 12:00:05'),
(181, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:05'),
(182, 28, 'View', 'User view History.', '2024-08-13 12:00:06'),
(183, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:06'),
(184, 28, 'View', 'User view Order.', '2024-08-13 12:00:07'),
(185, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:08'),
(186, 28, 'View', 'User view History.', '2024-08-13 12:00:08'),
(187, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:09'),
(188, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:23'),
(189, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:35'),
(190, 28, 'View', 'User view Order.', '2024-08-13 12:00:40'),
(191, 28, 'View', 'User view History.', '2024-08-13 12:00:41'),
(192, 28, 'View', 'User view Inprogress.', '2024-08-13 12:00:42'),
(193, 28, 'View', 'User view Order.', '2024-08-13 12:00:43'),
(194, 28, 'View', 'User view Order.', '2024-08-13 12:00:46'),
(195, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:00:46'),
(196, 28, 'View', 'User view Setting.', '2024-08-13 12:00:47'),
(197, 28, 'View', 'User view Activity Log.', '2024-08-13 12:00:47'),
(198, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:00:57'),
(199, 28, 'View', 'User view Add User.', '2024-08-13 12:00:58'),
(200, 28, 'Drink', 'User Has Added a New User.', '2024-08-13 12:01:15'),
(201, 28, 'View', 'User view Add User.', '2024-08-13 12:01:15'),
(202, 28, 'View', 'User view Activity Log.', '2024-08-13 12:01:16'),
(203, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:01:26'),
(204, 28, 'Worker', 'User Has Deleted A Worker.', '2024-08-13 12:01:31'),
(205, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:01:31'),
(206, 28, 'login', 'User logged in.', '2024-08-13 12:41:33'),
(207, 28, 'View', 'User view Dashboard.', '2024-08-13 12:41:34'),
(208, 28, 'View', 'User view Activity Log.', '2024-08-13 12:41:35'),
(209, 28, 'View', 'User view Setting.', '2024-08-13 12:41:57'),
(210, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:41:57'),
(211, 28, 'View', 'User view Chef Menu.', '2024-08-13 12:41:58'),
(212, 28, 'View', 'User view Admin Menu.', '2024-08-13 12:41:59'),
(213, 28, 'View', 'User view Manager Menu.', '2024-08-13 12:42:00'),
(214, 28, 'View', 'User view Setting.', '2024-08-13 12:43:07'),
(215, 28, 'View', 'User view Activity Log.', '2024-08-13 12:43:08'),
(216, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:43:47'),
(217, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:43:48'),
(218, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:43:48'),
(219, 28, 'View', 'User view Food Menu .', '2024-08-13 12:43:49'),
(220, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:43:49'),
(221, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:43:50'),
(222, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:43:51'),
(223, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:43:51'),
(224, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:43:51'),
(225, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:43:52'),
(226, 28, 'View', 'User view Worker Menu.', '2024-08-13 12:43:53'),
(227, 28, 'View', 'User view Order.', '2024-08-13 12:43:53'),
(228, 28, 'View', 'User view Inprogress.', '2024-08-13 12:43:54'),
(229, 28, 'View', 'User view Activity Log.', '2024-08-13 12:48:30'),
(230, 28, 'View', 'User view Dashboard.', '2024-08-13 12:49:20'),
(231, 28, 'View', 'User view Activity Log.', '2024-08-13 12:49:22'),
(232, 28, 'View', 'User view Order.', '2024-08-13 12:49:35'),
(233, 28, 'View', 'User view Activity Log.', '2024-08-13 12:49:36'),
(234, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:49:56'),
(235, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:50:06'),
(236, 28, 'View', 'User view Reports Menu.', '2024-08-13 12:50:16'),
(237, 28, 'View', 'User view Activity Log.', '2024-08-13 12:50:18'),
(238, 28, 'View', 'User view Activity Log.', '2024-08-13 12:50:27'),
(239, 28, 'View', 'User view Activity Log.', '2024-08-13 12:50:37'),
(240, 28, 'View', 'User view Activity Log.', '2024-08-13 12:50:50'),
(241, 28, 'View', 'User view Activity Log.', '2024-08-13 12:50:50'),
(242, 28, 'View', 'User view Activity Log.', '2024-08-13 12:56:27'),
(243, 28, 'View', 'User view Activity Log.', '2024-08-13 12:56:33'),
(244, 28, 'View', 'User view Activity Log.', '2024-08-13 12:58:00'),
(245, 28, 'View', 'User view Activity Log.', '2024-08-13 12:59:16'),
(246, 28, 'View', 'User view Activity Log.', '2024-08-13 13:00:21'),
(247, 28, 'View', 'User view Activity Log.', '2024-08-13 13:01:16');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(11) NOT NULL,
  `nama_Logo` varchar(255) DEFAULT NULL,
  `logos` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `anima1` varchar(255) DEFAULT NULL,
  `anima2` varchar(255) DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `edit_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `nama_Logo`, `logos`, `icon`, `anima1`, `anima2`, `create_at`, `update_at`, `deleted_at`, `edit_by`) VALUES
(1, 'Rumah Makan Lytech Industry', 'Screenshot 2024-06-21 225548.png', 'Screenshot 2024-08-02 113206_1.png', 'Screenshot 2024-06-21 225548.png', 'Screenshot 2024-06-17 113329.png', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(11) NOT NULL,
  `Kode` varchar(255) DEFAULT NULL,
  `Kategory` enum('Lauk','Nasi','Ringan','Panas','Mie','Paket') DEFAULT NULL,
  `nama_Menu` varchar(255) DEFAULT NULL,
  `harga_menu` int(11) DEFAULT NULL,
  `Stok` int(11) DEFAULT NULL,
  `Soft` enum('Deleted','Restore') DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `edit_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `Kode`, `Kategory`, `nama_Menu`, `harga_menu`, `Stok`, `Soft`, `create_at`, `update_at`, `deleted_at`, `edit_by`) VALUES
(1, 'M-2024-01', 'Panas', 'Ayam Penyet', 20000, 100, 'Restore', NULL, NULL, NULL, NULL),
(2, 'M-2024-02', 'Mie', 'Mie Goreng', 10000, 12, 'Restore', NULL, NULL, NULL, NULL),
(3, 'M-2024-03', 'Mie', 'Mie Kuah', 10000, 23, 'Restore', NULL, NULL, NULL, NULL),
(4, 'M-2024-04', 'Nasi', 'Nasi Goreng', 15000, 11, 'Restore', NULL, NULL, NULL, NULL),
(5, 'M-2024-05', 'Lauk', 'Gulai', 5000, 19, 'Restore', NULL, NULL, NULL, NULL),
(6, 'M-2024-06', 'Nasi', 'Nasi', 3000, 502, 'Deleted', NULL, NULL, NULL, NULL),
(7, 'M-2024-07', 'Lauk', 'Ayam Goreng', 5000, 24, 'Restore', NULL, NULL, NULL, NULL),
(8, 'M-2024-08', 'Lauk', 'Ayam Bakar', 7000, 37, 'Deleted', NULL, NULL, NULL, NULL),
(13, 'M-2024-09', 'Lauk', 'ayam pepes', 10000, 190, 'Restore', NULL, NULL, NULL, NULL),
(14, 'M-2024-10', '', 'empty', 0, 189, 'Restore', NULL, NULL, NULL, NULL),
(15, 'M-2024-11', 'Panas', 'KFC', 3000000, 111111, 'Deleted', NULL, NULL, NULL, NULL),
(19, 'MI-2024-012', 'Lauk', 'Juno nigga', 131231232, 190, 'Restore', NULL, NULL, NULL, NULL),
(20, 'MI-2024-013', 'Nasi', 'Juno nigga', 323, 1, 'Deleted', NULL, NULL, NULL, NULL),
(21, 'MI-2024-014', 'Nasi', '', 0, 0, 'Deleted', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `id_minuman` int(11) NOT NULL,
  `Kode` varchar(255) DEFAULT NULL,
  `Kategory` enum('Panas','Dingin') DEFAULT NULL,
  `nama_minuman` varchar(255) DEFAULT NULL,
  `harga_minuman` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `Soft` enum('Deleted','Restore') DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `edit_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`id_minuman`, `Kode`, `Kategory`, `nama_minuman`, `harga_minuman`, `stok`, `Soft`, `created_at`, `update_at`, `deleted_at`, `edit_by`) VALUES
(1, 'MI-2024-01', 'Dingin', 'Sanford', 3000, 56, 'Restore', NULL, NULL, NULL, NULL),
(2, 'MI-2024-02', 'Dingin', 'Teh Obeng', 5000, 193, 'Restore', NULL, NULL, NULL, NULL),
(4, 'MI-2024-03', 'Dingin', 'Sprite', 5000, 141, 'Restore', NULL, NULL, NULL, NULL),
(5, 'MI-2024-04', NULL, 'empty', 0, 190, 'Deleted', NULL, NULL, NULL, NULL),
(6, 'MI-2024-05', 'Dingin', 'Aqua', 1111111, 1900, 'Deleted', NULL, NULL, NULL, NULL),
(7, 'MI-2024-06', 'Dingin', 'PT Citra Buana', 0, 19000, 'Deleted', NULL, NULL, NULL, NULL),
(9, 'MI-2024-007', 'Panas', '', 0, 0, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `Nomor` varchar(255) DEFAULT NULL,
  `user` varchar(122) DEFAULT NULL,
  `admin` varchar(112) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `total_menu` int(11) DEFAULT NULL,
  `id_minuman` int(11) DEFAULT NULL,
  `total_minuman` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL,
  `progress` enum('inprogress','selesai') DEFAULT NULL,
  `Total_bayar` int(11) DEFAULT NULL,
  `pending` enum('Lunas','Pending') DEFAULT NULL,
  `Selesai` enum('Siap Diantarkan','Inprogress','pending') DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `edit_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `Nomor`, `user`, `admin`, `tanggal`, `id_menu`, `total_menu`, `id_minuman`, `total_minuman`, `total_harga`, `progress`, `Total_bayar`, `pending`, `Selesai`, `create_at`, `update_at`, `deleted_at`, `edit_by`) VALUES
(96, 'NO-2024-01', 'admin1', 'petugas', '2024-07-30', 6, 2, 4, 2, 48000, 'selesai', 2147483647, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(97, 'NO-2024-01', 'admin1', 'petugas', '2024-07-30', 6, 2, 4, 2, 48000, 'selesai', 2147483647, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(98, 'NO-2024-01', 'admin1', 'petugas', '2024-07-30', 6, 2, 4, 2, 48000, 'selesai', 2147483647, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(100, 'NO-2024-02', 'admin1', 'petugas', '2024-07-30', 7, 2, 2, 6, 55000, 'selesai', 75000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(101, 'NO-2024-02', 'admin1', 'petugas', '2024-07-30', 4, 1, 5, 0, 55000, 'selesai', 75000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(114, 'NO-2024-04', 'admin1', 'petugas', '2024-07-31', 2, 4, 2, 1, 60000, 'selesai', 75000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(115, 'NO-2024-04', 'admin1', 'petugas', '2024-07-31', 3, 1, 2, 1, 60000, 'selesai', 75000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(138, 'NO-2024-07', 'Axo', 'petugas', '2024-08-01', 2, 3, 5, 0, 75000, 'selesai', 200000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(140, 'NO-2024-08', 'admin1', 'petugas', '2024-08-01', 2, 3, 2, 3, 225000, 'inprogress', 75000, 'Lunas', 'pending', NULL, NULL, NULL, NULL),
(141, 'NO-2024-08', 'admin1', 'petugas', '2024-08-01', 3, 0, NULL, 3, 225000, 'inprogress', 75000, 'Lunas', 'pending', NULL, NULL, NULL, NULL),
(142, 'NO-2024-09', 'admin1', 'petugas', '2024-08-01', 3, 4, 5, 0, 40000, 'inprogress', 40000, 'Lunas', 'pending', NULL, NULL, NULL, NULL),
(143, 'NO-2024-10', 'admin1', 'petugas', '2024-08-01', 3, 1, 5, 0, 1000000, 'inprogress', 2147483647, 'Lunas', 'pending', NULL, NULL, NULL, NULL),
(147, 'NO-2024-14', 'PC', 'petugas', '2024-08-01', 3, 2, 5, 0, 40000, 'inprogress', 50000, 'Lunas', 'Inprogress', NULL, NULL, NULL, NULL),
(148, 'NO-2024-14', 'PC', 'petugas', '2024-08-01', 2, 0, 5, 0, 40000, 'inprogress', 50000, 'Lunas', 'Inprogress', NULL, NULL, NULL, NULL),
(186, 'NO-2024-24', 'PC', 'petugas', '2024-08-05', 3, 2, 1, 2, 50000, 'inprogress', 100000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(188, 'NO-2024-25', 'PC', 'petugas', '2024-08-06', 6, 2, 2, 2, 42000, 'selesai', NULL, 'Pending', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(189, 'NO-2024-25', 'PC', 'petugas', '2024-08-06', 3, 2, 1, 2, 42000, 'selesai', NULL, 'Pending', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(191, 'NO-2024-26', '', 'petugas', '2024-08-06', 6, 2, 2, 2, 46000, 'selesai', NULL, 'Pending', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(192, 'NO-2024-26', '', 'petugas', '2024-08-06', 2, 0, 2, 0, 46000, 'selesai', NULL, 'Pending', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(193, 'NO-2024-27', 'PC', 'petugas', '2024-08-06', 3, 2, 4, 2, 60000, 'selesai', 70000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(194, 'NO-2024-27', 'PC', 'petugas', '2024-08-06', 3, 0, 2, 0, 60000, 'selesai', 70000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(223, 'NO-2024-29', 'PT Citra Buana', 'petugas', '2024-08-06', 4, 1, 5, 0, 85000, 'selesai', 10000000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(224, 'NO-2024-29', 'PT Citra Buana', 'petugas', '2024-08-06', 7, 3, 5, 0, 85000, 'selesai', 10000000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(225, 'NO-2024-29', 'PT Citra Buana', 'petugas', '2024-08-06', 3, 5, 2, 1, 85000, 'selesai', 10000000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(226, 'NO-2024-30', 'PT Citra Buana', 'petugas', '2024-08-06', 1, 2, 4, 2, 50000, 'selesai', 75000, 'Lunas', 'Siap Diantarkan', NULL, NULL, NULL, NULL),
(245, 'NO-2024-31', 'HP', 'petugas', '2024-08-12', 14, 1, 4, 1, 17000, 'selesai', NULL, 'Pending', 'pending', NULL, NULL, NULL, NULL),
(246, 'NO-2024-31', 'HP', 'petugas', '2024-08-12', 8, 1, 2, 1, 17000, 'selesai', NULL, 'Pending', 'pending', NULL, NULL, NULL, NULL),
(251, 'NO-2024-24', 'PC', 'petugas', '2024-08-05', 8, 2, 5, 0, 50000, 'inprogress', NULL, 'Pending', 'pending', NULL, NULL, NULL, NULL),
(252, 'NO-2024-24', 'PC', 'petugas', '2024-08-05', 5, 1, 2, 1, 50000, 'inprogress', NULL, 'Pending', NULL, NULL, NULL, NULL, NULL);

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `cc` AFTER INSERT ON `transaksi` FOR EACH ROW UPDATE minuman SET stok=stok-NEW.total_minuman
WHERE id_minuman=NEW.id_minuman
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `dd` AFTER DELETE ON `transaksi` FOR EACH ROW UPDATE menu SET Stok=Stok+OLD.total_menu
WHERE id_menu=OLD.id_menu
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ff` AFTER INSERT ON `transaksi` FOR EACH ROW UPDATE menu SET Stok=Stok-NEW.total_menu
WHERE id_menu=NEW.id_menu
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `rr` AFTER DELETE ON `transaksi` FOR EACH ROW UPDATE minuman SET stok=stok+OLD.total_minuman
WHERE id_minuman=OLD.id_minuman
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Nomor` int(11) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` enum('Petugas','Manager','admin','Koki') DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `Soft` enum('Deleted','Restore') DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `edit_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `username`, `Email`, `Nomor`, `password`, `level`, `foto`, `Soft`, `create_at`, `update_at`, `deleted_at`, `edit_by`) VALUES
(24, 'petugas', 'petugas', '0', 0, '3988c7f88ebcb58c6ce932b957b6f332', 'Petugas', 'download.jpeg', 'Restore', NULL, NULL, NULL, NULL),
(25, 'manager', 'Manager', '0', 0, '76ba9f564ebbc35b1014ac498fafadd0', 'Manager', 'download.jpeg', 'Restore', NULL, NULL, NULL, NULL),
(26, 'Koki', 'Koki', '0', 0, 'a9eb812238f753132652ae09963a05e9', 'Koki', 'download.jpeg', 'Restore', NULL, NULL, NULL, NULL),
(28, 'admin', 'admin', '111@gmail.com', 2147483647, '801c14f07f9724229175b8ef8b4585a8', 'admin', 'Screenshot 2024-08-08 173010.png', 'Restore', NULL, NULL, NULL, NULL),
(40, 'Juno', 'Juli', '0', 0, '3988c7f88ebcb58c6ce932b957b6f332', 'Petugas', 'download.jpeg', 'Deleted', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`id_minuman`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `minuman`
--
ALTER TABLE `minuman`
  MODIFY `id_minuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
