-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2019 at 07:36 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ischool`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit`
--

CREATE TABLE `audit` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `page` varchar(255) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` varchar(255) NOT NULL,
  `viewed` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `audit`
--

INSERT INTO `audit` (`id`, `user`, `page`, `timestamp`, `ip`, `viewed`) VALUES
(1, 0, '4', '2019-02-05 14:54:36', '::1', 0),
(2, 0, '4', '2019-02-05 21:22:12', '::1', 0),
(3, 13, '96', '2019-02-05 22:17:55', '::1', 0),
(4, 13, '96', '2019-02-05 22:17:56', '::1', 0),
(5, 13, '96', '2019-02-05 22:17:59', '::1', 0),
(6, 13, '96', '2019-02-05 22:18:02', '::1', 0),
(7, 13, '96', '2019-02-05 22:18:02', '::1', 0),
(8, 13, '96', '2019-02-05 22:18:02', '::1', 0),
(9, 13, '96', '2019-02-05 22:18:10', '::1', 0),
(10, 13, '96', '2019-02-05 22:18:14', '::1', 0),
(11, 13, '96', '2019-02-05 22:18:22', '::1', 0),
(12, 13, '96', '2019-02-05 22:18:24', '::1', 0),
(13, 13, '96', '2019-02-05 22:18:25', '::1', 0),
(14, 13, '96', '2019-02-05 22:18:25', '::1', 0),
(15, 13, '96', '2019-02-05 22:18:26', '::1', 0),
(16, 13, '96', '2019-02-05 22:18:30', '::1', 0),
(17, 13, '96', '2019-02-05 22:18:30', '::1', 0),
(18, 13, '96', '2019-02-05 22:18:31', '::1', 0),
(19, 13, '96', '2019-02-05 22:18:33', '::1', 0),
(20, 13, '96', '2019-02-05 22:18:34', '::1', 0),
(21, 13, '96', '2019-02-05 22:18:34', '::1', 0),
(22, 13, '96', '2019-02-05 22:18:35', '::1', 0),
(23, 13, '96', '2019-02-05 22:18:35', '::1', 0),
(24, 13, '96', '2019-02-05 22:18:35', '::1', 0),
(25, 13, '96', '2019-02-05 22:18:35', '::1', 0),
(26, 13, '96', '2019-02-05 22:19:17', '::1', 0),
(27, 13, '96', '2019-02-05 22:19:18', '::1', 0),
(28, 13, '96', '2019-02-05 22:19:49', '::1', 0),
(29, 12, '96', '2019-02-05 22:20:10', '::1', 0),
(30, 12, '96', '2019-02-05 22:20:15', '::1', 0),
(31, 12, '96', '2019-02-05 22:20:17', '::1', 0),
(32, 13, '96', '2019-02-05 22:22:05', '::1', 0),
(33, 13, '96', '2019-02-05 22:22:06', '::1', 0),
(34, 13, '96', '2019-02-05 22:22:08', '::1', 0),
(35, 13, '96', '2019-02-05 22:22:10', '::1', 0),
(36, 13, '96', '2019-02-05 22:22:10', '::1', 0),
(37, 13, '96', '2019-02-05 22:22:11', '::1', 0),
(38, 13, '96', '2019-02-05 22:22:11', '::1', 0),
(39, 13, '96', '2019-02-05 22:22:21', '::1', 0),
(40, 13, '96', '2019-02-05 22:22:21', '::1', 0),
(41, 13, '96', '2019-02-05 22:22:22', '::1', 0),
(42, 13, '96', '2019-02-05 22:22:22', '::1', 0),
(43, 13, '96', '2019-02-05 22:22:26', '::1', 0),
(44, 13, '96', '2019-02-05 22:22:48', '::1', 0),
(45, 13, '96', '2019-02-05 22:22:49', '::1', 0),
(46, 13, '96', '2019-02-05 22:22:50', '::1', 0),
(47, 13, '96', '2019-02-05 22:22:56', '::1', 0),
(48, 13, '96', '2019-02-05 22:23:14', '::1', 0),
(49, 0, '4', '2019-02-05 23:01:56', '::1', 0),
(50, 13, '4', '2019-02-05 23:02:02', '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `timestamp`) VALUES
(1, 'Demo Blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-02-05 22:33:31'),
(2, 'Demo Blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-02-05 22:33:34'),
(3, 'Demo Blog', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-02-05 22:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `blog_form`
--

CREATE TABLE `blog_form` (
  `id` int(11) NOT NULL,
  `ord` int(11) NOT NULL,
  `col` varchar(255) NOT NULL,
  `form_descrip` varchar(255) NOT NULL,
  `table_descrip` varchar(255) NOT NULL,
  `col_type` varchar(255) NOT NULL,
  `field_type` varchar(100) NOT NULL,
  `length` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `validation` text NOT NULL,
  `label_class` varchar(255) NOT NULL,
  `field_class` varchar(255) NOT NULL,
  `input_html` text NOT NULL,
  `select_opts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_form`
--

INSERT INTO `blog_form` (`id`, `ord`, `col`, `form_descrip`, `table_descrip`, `col_type`, `field_type`, `length`, `required`, `validation`, `label_class`, `field_class`, `input_html`, `select_opts`) VALUES
(1, 10, 'title', 'Title', 'title', 'varchar', 'text', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(2, 20, 'content', 'content', 'Content', 'text', 'textarea', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(3, 30, 'timestamp', 'time', 'time', 'timestamp', 'timestamp', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `tutor_id` int(11) NOT NULL,
  `days` varchar(100) NOT NULL,
  `seats` varchar(100) NOT NULL,
  `sdate` date NOT NULL,
  `edate` date NOT NULL,
  `stime` time NOT NULL,
  `etime` time NOT NULL,
  `uploads` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `course_id`, `tutor_id`, `days`, `seats`, `sdate`, `edate`, `stime`, `etime`, `uploads`) VALUES
(1, 1, 1, 'sunday,monday,tuesday,wednesday,', '22', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(2, 1, 12, 'sunday,monday,friday,saturday,', '30', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(3, 1, 12, '', '123', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(4, 1, 1, 'sunday,tuesday,', '12121', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(5, 1, 12, '', '213123', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(6, 1, 1, 'tuesday,wednesday,', '123123', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(7, 1, 12, 'wednesday,', '12', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(8, 1, 2, 'monday,thursday,', '1', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(12, 5, 1, 'sunday,', '1', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(14, 0, 0, 'c', 'd', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(15, 5, 1, 'thursday,', '123', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(16, 5, 1, 'thursday,friday,', '123', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(17, 5, 1, 'thursday,friday,', '123', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(18, 5, 1, 'friday,', '12312', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(19, 5, 1, 'saturday,', '2312', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(20, 5, 1, 'saturday,', '2312', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(21, 5, 1, 'tuesday,thursday,', '1234', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(22, 5, 1, 'monday,wednesday,', '123', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(23, 5, 1, 'wednesday,', '11', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(24, 5, 1, 'wednesday,', '13', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(25, 5, 1, 'wednesday,', '13', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', ''),
(26, 5, 1, 'sunday,tuesday,', '11', '0000-00-00', '0000-00-00', '00:00:00', '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `courseinfo`
--

CREATE TABLE `courseinfo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(255) DEFAULT NULL,
  `Complementaryknowledge` varchar(255) DEFAULT NULL,
  `sdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseinfo`
--

INSERT INTO `courseinfo` (`id`, `title`, `content`, `timestamp`, `type`, `Complementaryknowledge`, `sdate`) VALUES
(1, 'Basic Mathematics', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#039;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2019-02-11 15:00:30', 'Science &amp; Technology', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseinfo_form`
--

CREATE TABLE `courseinfo_form` (
  `id` int(11) NOT NULL,
  `ord` int(11) NOT NULL,
  `col` varchar(255) NOT NULL,
  `form_descrip` varchar(255) NOT NULL,
  `table_descrip` varchar(255) NOT NULL,
  `col_type` varchar(255) NOT NULL,
  `field_type` varchar(100) NOT NULL,
  `length` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `validation` text NOT NULL,
  `label_class` varchar(255) NOT NULL,
  `field_class` varchar(255) NOT NULL,
  `input_html` text NOT NULL,
  `select_opts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseinfo_form`
--

INSERT INTO `courseinfo_form` (`id`, `ord`, `col`, `form_descrip`, `table_descrip`, `col_type`, `field_type`, `length`, `required`, `validation`, `label_class`, `field_class`, `input_html`, `select_opts`) VALUES
(1, 10, 'title', 'Title', 'title', 'varchar', 'text', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(2, 20, 'content', 'content', 'Content', 'text', 'textarea', 0, 1, '', '', 'form-control', '', 'null'),
(3, 30, 'timestamp', 'created', 'created', 'timestamp', 'timestamp', 0, 1, '', '', 'form-control', '', 'null'),
(4, 11, 'type', 'Type', 'type', 'varchar', 'dropdown', 0, 1, '', '', 'form-control', '', '{\"Science &amp; Technology\":\"Science &amp; Technology\",\"Business Studies\":\"Business Studies\",\"Literature\":\"Literature\",\"Others\":\"Others\"}'),
(5, 40, 'Complementaryknowledge', 'Complementary Knowledge', 'complementary', 'varchar', 'text', 0, 0, '', '', 'form-control', '', 'null'),
(6, 50, 'sdate', 'date', 'Starting Date', 'date', 'date', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` varchar(30) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `document` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `type`, `description`, `duration`, `document`) VALUES
(5, 'ABC', 'Science &amp; Technology', 'Lorem IpsumLorem IpsumLorem Ip', '11', 'uploads/Cloth D.pptx'),
(6, 'Test', 'Literature', 'sadasdasdasdasdasdasd', '4', 'uploads/Untitled-1.png'),
(7, 'Test2', 'Literature', 'sadasdasdasdasdasdasd', '4', 'uploads/Untitled-1.png');

-- --------------------------------------------------------

--
-- Table structure for table `course_info`
--

CREATE TABLE `course_info` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `complementary` varchar(100) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crons`
--

CREATE TABLE `crons` (
  `id` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1',
  `sort` int(3) NOT NULL,
  `name` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crons`
--

INSERT INTO `crons` (`id`, `active`, `sort`, `name`, `file`, `createdby`, `created`, `modified`) VALUES
(1, 0, 100, 'Auto-Backup', 'backup.php', 1, '2017-09-16 07:49:22', '2017-11-11 20:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `crons_logs`
--

CREATE TABLE `crons_logs` (
  `id` int(11) NOT NULL,
  `cron_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(11) NOT NULL,
  `website_name` varchar(100) NOT NULL,
  `smtp_server` varchar(100) NOT NULL,
  `smtp_port` int(10) NOT NULL,
  `email_login` varchar(150) NOT NULL,
  `email_pass` varchar(100) NOT NULL,
  `from_name` varchar(100) NOT NULL,
  `from_email` varchar(150) NOT NULL,
  `transport` varchar(255) NOT NULL,
  `verify_url` varchar(255) NOT NULL,
  `email_act` int(1) NOT NULL,
  `debug_level` int(1) NOT NULL DEFAULT '0',
  `isSMTP` int(1) NOT NULL DEFAULT '0',
  `isHTML` varchar(5) NOT NULL DEFAULT 'true',
  `useSMTPauth` varchar(6) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `website_name`, `smtp_server`, `smtp_port`, `email_login`, `email_pass`, `from_name`, `from_email`, `transport`, `verify_url`, `email_act`, `debug_level`, `isSMTP`, `isHTML`, `useSMTPauth`) VALUES
(1, 'User Spice', 'smtp.gmail.com', 587, 'saminsharar2@gmail.com', 'Samsha123456!', 'i-School', 'saminsharar2@gmail.com', 'tls', 'http://localhost:8080/i-school(master)/', 1, 0, 1, 'true', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `groups_menus`
--

CREATE TABLE `groups_menus` (
  `id` int(11) NOT NULL,
  `group_id` int(15) NOT NULL,
  `menu_id` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups_menus`
--

INSERT INTO `groups_menus` (`id`, `group_id`, `menu_id`) VALUES
(30, 2, 9),
(29, 0, 8),
(28, 0, 7),
(27, 0, 21),
(5, 0, 3),
(6, 0, 1),
(7, 0, 2),
(8, 0, 51),
(9, 0, 52),
(10, 0, 37),
(11, 0, 38),
(12, 2, 39),
(13, 2, 40),
(14, 2, 41),
(15, 2, 42),
(16, 2, 43),
(17, 2, 44),
(18, 2, 45),
(19, 0, 46),
(20, 0, 47),
(21, 0, 49),
(26, 0, 20),
(25, 0, 18),
(31, 2, 10),
(32, 2, 11),
(33, 2, 12),
(34, 2, 13),
(35, 2, 14),
(36, 2, 15),
(37, 0, 16),
(44, 0, 26),
(41, 0, 6),
(42, 0, 5),
(43, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `stripe_ts` varchar(255) NOT NULL,
  `stripe_tp` varchar(255) NOT NULL,
  `stripe_ls` varchar(255) NOT NULL,
  `stripe_lp` varchar(255) NOT NULL,
  `recap_pub` varchar(100) NOT NULL,
  `recap_pri` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(3) NOT NULL,
  `logdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `logtype` varchar(25) NOT NULL,
  `lognote` text NOT NULL,
  `ip` varchar(75) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `user_id`, `logdate`, `logtype`, `lognote`, `ip`) VALUES
(1, 1, '2019-02-05 12:33:05', 'System Updates', 'Update 2ZB9mg1l0JXe successfully deployed.', '::1'),
(2, 1, '2019-02-05 12:33:15', 'User', 'User logged in.', NULL),
(3, 1, '2019-02-05 12:37:51', 'Email Settings', 'Updated from_email from yourEmail@gmail.com to saminsharar2@gmail.com.', '::1'),
(4, 1, '2019-02-05 12:41:29', 'Email Settings', 'Updated transport from tls to ssl.', '::1'),
(5, 1, '2019-02-05 12:44:19', 'Email Settings', 'Updated email_login.', '::1'),
(6, 1, '2019-02-05 12:44:19', 'Email Settings', 'Updated email_pass.', '::1'),
(7, 1, '2019-02-05 12:47:12', 'Email Settings', 'Updated verify_url from http://localhost/43 to http://localhost/sss/.', '::1'),
(8, 1, '2019-02-05 12:48:32', 'Email Settings', 'Updated transport from ssl to tls.', '::1'),
(9, 1, '2019-02-05 12:48:32', 'Email Settings', 'Updated isSMTP from 0 to 1.', '::1'),
(10, 1, '2019-02-05 12:49:01', 'Email Settings', 'Updated from_name from User Spice to i-School.', '::1'),
(11, 1, '2019-02-05 12:49:33', 'Email Settings', 'Updated email_act from 0 to 1.', '::1'),
(12, 11, '2019-02-05 12:59:38', 'User', 'Registration completed and verification email sent.', '::1'),
(13, 11, '2019-02-05 13:00:16', 'User', 'User logged in.', NULL),
(14, 1, '2019-02-05 13:11:07', 'User', 'User logged in.', NULL),
(15, 12, '2019-02-05 13:17:22', 'User', 'Registration completed and verification email sent.', '::1'),
(16, 12, '2019-02-05 13:19:29', 'User', 'Verification completed via vericode.', '::1'),
(17, 12, '2019-02-05 13:20:21', 'User', 'User logged in.', NULL),
(18, 12, '2019-02-05 13:38:23', 'User', 'User logged in.', NULL),
(19, 1, '2019-02-05 13:52:31', 'User', 'User logged in.', NULL),
(20, 1, '2019-02-05 13:53:18', 'User', 'User logged in.', NULL),
(21, 1, '2019-02-05 14:05:06', 'User', 'User logged in.', NULL),
(22, 1, '2019-02-05 14:05:39', 'Menu Manager', 'Added new item', '::1'),
(23, 1, '2019-02-05 14:05:50', 'Menu Manager', 'Added new item', '::1'),
(24, 1, '2019-02-05 14:05:51', 'Menu Manager', 'Added new item', '::1'),
(25, 1, '2019-02-05 14:06:06', 'Menu Manager', 'Deleted menu 23', '::1'),
(26, 1, '2019-02-05 14:06:34', 'Menu Manager', 'Deleted menu 25', '::1'),
(27, 1, '2019-02-05 14:06:42', 'Menu Manager', 'Deleted menu 24', '::1'),
(28, 1, '2019-02-05 14:07:27', 'Menu Manager', 'Added new dropdown', '::1'),
(29, 1, '2019-02-05 14:12:05', 'User', 'User logged in.', NULL),
(30, 1, '2019-02-05 14:17:38', 'User', 'User logged in.', NULL),
(31, 1, '2019-02-05 14:18:41', 'Pages Manager', 'Retitled \'usersc/empty.php\' to \'Home\'.', '::1'),
(32, 1, '2019-02-05 14:29:29', 'Permissions Manager', 'Added Permission Level named Student.', '::1'),
(33, 1, '2019-02-05 14:29:35', 'Permissions Manager', 'Added Permission Level named New.', '::1'),
(34, 1, '2019-02-05 14:29:39', 'Permissions Manager', 'Added Permission Level named Tutor.', '::1'),
(35, 1, '2019-02-05 14:29:49', 'Permissions Manager', 'Added Permission Level named Tutor+.', '::1'),
(36, 1, '2019-02-05 14:33:59', 'Permissions Manager', 'Deleted New.', '::1'),
(37, 1, '2019-02-05 14:34:23', 'Permissions Manager', 'Added Permission Level named Guardian.', '::1'),
(38, 1, '2019-02-05 14:39:23', 'Menu Manager', 'Updated 26', '::1'),
(39, 1, '2019-02-05 14:40:49', 'Menu Manager', 'Updated 26', '::1'),
(40, 1, '2019-02-05 14:41:15', 'Menu Manager', 'Updated 26', '::1'),
(41, 1, '2019-02-05 14:41:36', 'Menu Manager', 'Updated 6', '::1'),
(42, 1, '2019-02-05 14:41:50', 'Menu Manager', 'Updated 5', '::1'),
(43, 1, '2019-02-05 14:42:05', 'Menu Manager', 'Updated 4', '::1'),
(44, 1, '2019-02-05 14:54:37', 'User', 'User logged in.', NULL),
(45, 1, '2019-02-05 15:34:18', 'User', 'User logged in.', NULL),
(46, 13, '2019-02-05 16:01:03', 'User', 'Registration completed and verification email sent.', '::1'),
(47, 13, '2019-02-05 16:02:44', 'User', 'Verification completed via vericode.', '::1'),
(48, 1, '2019-02-05 16:14:26', 'User', 'User logged in.', NULL),
(49, 1, '2019-02-05 16:14:38', 'Email Settings', 'Updated email_act from 1 to 0.', '::1'),
(50, 1, '2019-02-05 18:03:39', 'User', 'User logged in.', NULL),
(51, 1, '2019-02-05 20:17:37', 'User', 'User logged in.', NULL),
(52, 1, '2019-02-05 21:19:39', 'User', 'User logged in.', NULL),
(53, 1, '2019-02-05 21:22:14', 'User', 'User logged in.', NULL),
(54, 1, '2019-02-05 21:24:01', 'User Manager', 'Added 1 permission(s) to Nayem Ahmed.', '::1'),
(55, 13, '2019-02-05 21:35:54', 'User', 'User logged in.', NULL),
(56, 1, '2019-02-05 21:36:08', 'User', 'User logged in.', NULL),
(57, 1, '2019-02-05 21:36:39', 'User Manager', 'Deleted 1 permission(s) from Nayem Ahmed.', '::1'),
(58, 13, '2019-02-05 21:37:08', 'User', 'User logged in.', NULL),
(59, 1, '2019-02-05 21:38:15', 'User', 'User logged in.', NULL),
(60, 1, '2019-02-05 21:58:30', 'User', 'User logged in.', NULL),
(61, 1, '2019-02-05 21:58:50', 'User Manager', 'Added 1 permission(s) to Nayem Ahmed.', '::1'),
(62, 13, '2019-02-05 22:08:32', 'User', 'User logged in.', NULL),
(63, 2, '2019-02-05 22:08:51', 'User', 'User logged in.', NULL),
(64, 13, '2019-02-05 22:09:45', 'User', 'User logged in.', NULL),
(65, 1, '2019-02-05 22:13:32', 'User', 'User logged in.', NULL),
(66, 1, '2019-02-05 22:13:55', 'User Manager', 'Deleted 1 permission(s) from Nayem Ahmed.', '::1'),
(67, 13, '2019-02-05 22:14:05', 'User', 'User logged in.', NULL),
(68, 1, '2019-02-05 22:17:28', 'User', 'User logged in.', NULL),
(69, 1, '2019-02-05 22:17:45', 'Pages Manager', 'Retitled \'usersc/account.php\' to \'Account\'.', '::1'),
(70, 1, '2019-02-05 22:19:10', 'Pages Manager', 'Retitled \'usersc/account.php\' to \'\'.', '::1'),
(71, 13, '2019-02-05 22:19:48', 'User', 'User logged in.', NULL),
(72, 12, '2019-02-05 22:20:09', 'User', 'User logged in.', NULL),
(73, 1, '2019-02-05 22:20:45', 'User', 'User logged in.', NULL),
(74, 1, '2019-02-05 22:23:28', 'Pages Manager', 'Changed private from private to public for Page #96 and stripped re_auth.', '::1'),
(75, 1, '2019-02-05 22:24:31', 'User', 'User logged in.', NULL),
(76, 1, '2019-02-05 22:29:17', 'Pages Manager', 'Added 3 permission(s) to usersc/blog.php.', '::1'),
(77, 1, '2019-02-05 22:29:17', 'Pages Manager', 'Retitled \'usersc/blog.php\' to \'Blog\'.', '::1'),
(78, 1, '2019-02-05 22:39:36', 'Pages Manager', 'Added 3 permission(s) to usersc/news.php.', '::1'),
(79, 1, '2019-02-05 22:39:36', 'Pages Manager', 'Retitled \'usersc/news.php\' to \'News Update\'.', '::1'),
(80, 13, '2019-02-05 22:45:02', 'User', 'User logged in.', NULL),
(81, 1, '2019-02-05 22:45:54', 'User', 'User logged in.', NULL),
(82, 1, '2019-02-05 22:48:20', 'Errors', 'Tried to visit unsupported view (form_preview) in admin.php', '::1'),
(83, 1, '2019-02-05 22:48:28', 'Errors', 'Tried to visit unsupported view (form_preview) in admin.php', '::1'),
(84, 13, '2019-02-05 22:57:32', 'User', 'User logged in.', NULL),
(85, 13, '2019-02-05 23:02:02', 'User', 'User logged in.', NULL),
(86, 1, '2019-02-05 23:02:52', 'User', 'User logged in.', NULL),
(87, 1, '2019-02-05 23:21:01', 'Menu Manager', 'Updated 26', '::1'),
(88, 1, '2019-02-05 23:21:52', 'User', 'User logged in.', NULL),
(89, 1, '2019-02-05 23:24:04', 'User', 'User logged in.', NULL),
(90, 1, '2019-02-06 08:19:07', 'User', 'User logged in.', NULL),
(91, 13, '2019-02-06 08:20:30', 'User', 'User logged in.', NULL),
(92, 14, '2019-02-06 08:25:11', 'User', 'Registration completed.', '::1'),
(93, 14, '2019-02-06 08:25:34', 'User', 'User logged in.', NULL),
(94, 1, '2019-02-06 08:37:36', 'User', 'User logged in.', NULL),
(95, 1, '2019-02-06 09:38:15', 'User', 'User logged in.', NULL),
(96, 1, '2019-02-06 09:40:56', 'Pages Manager', 'Added 3 permission(s) to usersc/add_course.php.', '::1'),
(97, 1, '2019-02-06 09:40:56', 'Pages Manager', 'Retitled \'usersc/add_course.php\' to \'Add Course\'.', '::1'),
(98, 14, '2019-02-06 10:12:21', 'User', 'User logged in.', NULL),
(99, 1, '2019-02-06 10:19:53', 'User', 'User logged in.', NULL),
(100, 1, '2019-02-06 10:21:10', 'User', 'User logged in.', NULL),
(101, 1, '2019-02-06 20:07:12', 'User', 'User logged in.', NULL),
(102, 1, '2019-02-09 09:37:57', 'User', 'User logged in.', NULL),
(103, 1, '2019-02-09 09:38:08', 'Email Settings', 'Updated email_act from 0 to 1.', '::1'),
(104, 15, '2019-02-09 09:39:35', 'User', 'Registration completed and verification email sent.', '::1'),
(105, 15, '2019-02-09 09:40:46', 'User', 'User logged in.', NULL),
(106, 15, '2019-02-09 09:40:59', 'User', 'Requested a new verification email.', '::1'),
(107, 1, '2019-02-09 09:43:22', 'User', 'User logged in.', NULL),
(108, 1, '2019-02-09 09:43:47', 'Email Settings', 'Updated verify_url from http://localhost/sss/ to http://localhost/i-school(master).', '::1'),
(109, 1, '2019-02-09 09:50:16', 'User', 'User logged in.', NULL),
(110, 1, '2019-02-09 09:50:38', 'Email Settings', 'Updated verify_url from http://localhost/i-school(master) to http://localhost:8080/i-school(master)/.', '::1'),
(111, 15, '2019-02-09 09:51:05', 'User', 'User logged in.', NULL),
(112, 15, '2019-02-09 09:51:15', 'User', 'Requested a new verification email.', '::1'),
(113, 15, '2019-02-09 09:51:29', 'User', 'Verification completed via vericode.', '::1'),
(114, 15, '2019-02-09 09:51:37', 'User', 'User logged in.', NULL),
(115, 1, '2019-02-11 14:01:41', 'User', 'User logged in.', NULL),
(116, 1, '2019-02-11 14:03:03', 'Pages Manager', 'Added 2 permission(s) to usersc/ccourse.php.', '::1'),
(117, 1, '2019-02-11 14:03:03', 'Pages Manager', 'Retitled \'usersc/ccourse.php\' to \'Courses\'.', '::1'),
(118, 1, '2019-02-11 14:03:36', 'Pages Manager', 'Added 3 permission(s) to usersc/cclass.php.', '::1'),
(119, 1, '2019-02-11 14:03:36', 'Pages Manager', 'Retitled \'usersc/cclass.php\' to \'Add Class\'.', '::1'),
(120, 1, '2019-02-11 14:04:31', 'Pages Manager', 'Retitled \'usersc/ccourse.php\' to \'Add Courses\'.', '::1'),
(121, 1, '2019-02-11 14:04:36', 'Pages Manager', 'Retitled \'usersc/ccourse.php\' to \'Add Course\'.', '::1'),
(122, 1, '2019-02-12 16:15:47', 'User', 'User logged in.', NULL),
(123, 1, '2019-02-12 19:22:58', 'User', 'User logged in.', NULL),
(124, 1, '2019-02-25 14:15:16', 'User', 'User logged in.', NULL),
(125, 1, '2019-02-25 14:51:09', 'User', 'User logged in.', NULL),
(126, 1, '2019-03-27 15:55:03', 'User', 'User logged in.', NULL),
(127, 1, '2019-04-02 16:31:52', 'User', 'User logged in.', NULL),
(128, 1, '2019-04-02 17:07:12', 'Pages Manager', 'Added 2 permission(s) to usersc/add_coursep.php.', '::1'),
(129, 1, '2019-04-02 17:07:12', 'Pages Manager', 'Retitled \'usersc/add_coursep.php\' to \'process_course\'.', '::1'),
(130, 1, '2019-04-02 20:35:13', 'Pages Manager', 'Added 2 permission(s) to usersc/cclass2.php.', '::1'),
(131, 1, '2019-04-02 20:35:14', 'Pages Manager', 'Retitled \'usersc/cclass2.php\' to \'Add Class\'.', '::1'),
(132, 16, '2019-04-02 20:59:21', 'User', 'Registration completed and verification email sent.', '::1'),
(133, 1, '2019-04-02 21:01:07', 'User', 'User logged in.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `logs_exempt`
--

CREATE TABLE `logs_exempt` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `parent` int(10) NOT NULL,
  `dropdown` int(1) NOT NULL,
  `logged_in` int(1) NOT NULL,
  `display_order` int(10) NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `icon_class` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_title`, `parent`, `dropdown`, `logged_in`, `display_order`, `label`, `link`, `icon_class`) VALUES
(1, 'main', 2, 0, 1, 1, 'Home', '', 'fa fa-fw fa-home'),
(2, 'main', -1, 1, 1, 14, '', '', 'fa fa-fw fa-cogs'),
(3, 'main', -1, 0, 1, 11, '{{username}}', 'users/account.php', 'fa fa-fw fa-user'),
(4, 'main', -1, 1, 0, 4, 'Help', '', 'fa fa-fw fa-life-ring'),
(5, 'main', -1, 0, 0, 3, 'Register', 'users/join.php', 'fa fa-fw fa-plus-square'),
(6, 'main', -1, 0, 0, 2, 'Log In', 'users/login.php', 'fa fa-fw fa-sign-in'),
(7, 'main', 2, 0, 1, 2, 'Account', 'users/account.php', 'fa fa-fw fa-user'),
(8, 'main', 2, 0, 1, 3, '{{hr}}', '', ''),
(9, 'main', 2, 0, 1, 4, 'Admin Dashboard', 'users/admin.php', 'fa fa-fw fa-cogs'),
(10, 'main', 2, 0, 1, 5, 'User Management', 'users/admin.php?view=users', 'fa fa-fw fa-user'),
(11, 'main', 2, 0, 1, 6, 'Permissions Manager', 'users/admin.php?view=permissions', 'fa fa-fw fa-lock'),
(12, 'main', 2, 0, 1, 7, 'Page Management', 'users/admin.php?view=pages', 'fa fa-fw fa-wrench'),
(13, 'main', 2, 0, 1, 8, 'Messages Manager', 'users/admin.php?view=messages', 'fa fa-fw fa-envelope'),
(14, 'main', 2, 0, 1, 9, 'System Logs', 'users/admin.php?view=logs', 'fa fa-fw fa-search'),
(15, 'main', 2, 0, 1, 10, '{{hr}}', '', ''),
(16, 'main', 2, 0, 1, 11, 'Logout', 'users/logout.php', 'fa fa-fw fa-sign-out'),
(17, 'main', -1, 0, 0, 0, 'Home', '', 'fa fa-fw fa-home'),
(18, 'main', -1, 0, 1, 10, 'Home', '', 'fa fa-fw fa-home'),
(19, 'main', 4, 0, 0, 1, 'Forgot Password', 'users/forgot_password.php', 'fa fa-fw fa-wrench'),
(20, 'main', -1, 0, 1, 12, '{{notifications}}', '', ''),
(21, 'main', -1, 0, 1, 13, '{{messages}}', '', ''),
(22, 'main', 4, 0, 0, 99999, 'Resend Activation Email', 'users/verify_resend.php', 'fa fa-exclamation-triangle'),
(26, 'main', -1, 0, 0, 1, 'About Us', '#slick-features', 'fa-question-circle');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_body` text NOT NULL,
  `msg_read` int(1) NOT NULL,
  `msg_thread` int(11) NOT NULL,
  `deleted` int(1) NOT NULL,
  `sent_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msg_from`, `msg_to`, `msg_body`, `msg_read`, `msg_thread`, `deleted`, `sent_on`) VALUES
(1, 1, 2, '&lt;p&gt;fgds&lt;/p&gt;', 0, 1, 0, '2017-08-06 00:13:47'),
(2, 1, 2, '&lt;p&gt;Did it work?&lt;/p&gt;', 0, 2, 0, '2017-09-09 15:10:09');

-- --------------------------------------------------------

--
-- Table structure for table `message_threads`
--

CREATE TABLE `message_threads` (
  `id` int(11) NOT NULL,
  `msg_to` int(11) NOT NULL,
  `msg_from` int(11) NOT NULL,
  `msg_subject` varchar(255) NOT NULL,
  `last_update` datetime NOT NULL,
  `last_update_by` int(11) NOT NULL,
  `archive_from` int(1) NOT NULL DEFAULT '0',
  `archive_to` int(1) NOT NULL DEFAULT '0',
  `hidden_from` int(1) NOT NULL DEFAULT '0',
  `hidden_to` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_threads`
--

INSERT INTO `message_threads` (`id`, `msg_to`, `msg_from`, `msg_subject`, `last_update`, `last_update_by`, `archive_from`, `archive_to`, `hidden_from`, `hidden_to`) VALUES
(1, 2, 1, 'Testiing123', '2017-08-06 00:13:47', 1, 0, 0, 0, 0),
(2, 2, 1, 'Testing Message Badge', '2017-09-09 15:10:09', 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `date` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news_form`
--

CREATE TABLE `news_form` (
  `id` int(11) NOT NULL,
  `ord` int(11) NOT NULL,
  `col` varchar(255) NOT NULL,
  `form_descrip` varchar(255) NOT NULL,
  `table_descrip` varchar(255) NOT NULL,
  `col_type` varchar(255) NOT NULL,
  `field_type` varchar(100) NOT NULL,
  `length` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  `validation` text NOT NULL,
  `label_class` varchar(255) NOT NULL,
  `field_class` varchar(255) NOT NULL,
  `input_html` text NOT NULL,
  `select_opts` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_form`
--

INSERT INTO `news_form` (`id`, `ord`, `col`, `form_descrip`, `table_descrip`, `col_type`, `field_type`, `length`, `required`, `validation`, `label_class`, `field_class`, `input_html`, `select_opts`) VALUES
(1, 10, 'title', 'Title', 'title', 'varchar', 'text', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(2, 20, 'content', 'Content', 'content', 'text', 'textarea', 0, 1, '', '', 'form-control', '', '{\"\":\"\"}'),
(3, 30, 'date', 'Date', 'date', 'date', 'date', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}'),
(4, 40, 'timestamp', 'Time', 'time', 'timestamp', 'timestamp', 0, 0, '', '', 'form-control', '', '{\"\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `is_read` tinyint(4) NOT NULL,
  `is_archived` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_read` datetime DEFAULT NULL,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `page` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `private` int(11) NOT NULL DEFAULT '0',
  `re_auth` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page`, `title`, `private`, `re_auth`) VALUES
(1, 'index.php', 'Home', 0, 0),
(2, 'z_us_root.php', '', 0, 0),
(3, 'users/account.php', 'Account Dashboard', 1, 0),
(4, 'users/admin.php', 'Admin Dashboard', 1, 0),
(14, 'users/forgot_password.php', 'Forgotten Password', 0, 0),
(15, 'users/forgot_password_reset.php', 'Reset Forgotten Password', 0, 0),
(16, 'users/index.php', 'Home', 0, 0),
(17, 'users/init.php', '', 0, 0),
(18, 'users/join.php', 'Join', 0, 0),
(19, 'users/joinThankYou.php', 'Join', 0, 0),
(20, 'users/login.php', 'Login', 0, 0),
(21, 'users/logout.php', 'Logout', 0, 0),
(24, 'users/user_settings.php', 'User Settings', 1, 0),
(25, 'users/verify.php', 'Account Verification', 0, 0),
(26, 'users/verify_resend.php', 'Account Verification', 0, 0),
(28, 'usersc/empty.php', 'Home', 0, 0),
(31, 'users/oauth_success.php', '', 0, 0),
(33, 'users/fb-callback.php', '', 0, 0),
(38, 'users/google_helpers.php', '', 0, 0),
(41, 'users/messages.php', 'Messages', 1, 0),
(42, 'users/message.php', 'Messages', 1, 0),
(45, 'users/maintenance.php', 'Maintenance', 0, 0),
(49, 'users/admin_verify.php', 'Password Verification', 1, 0),
(68, 'users/update.php', 'Update Manager', 1, 0),
(74, 'users/admin_notifications.php', 'Notifications Manager', 1, 0),
(76, 'users/enable2fa.php', 'Enable 2 Factor Auth', 1, 0),
(77, 'users/disable2fa.php', 'Disable 2 Factor Auth', 1, 0),
(82, 'users/manage2fa.php', 'Manage Two FA', 1, 0),
(83, 'users/manage_sessions.php', 'Session Manage', 1, 0),
(86, 'users/SSP.php', '', 1, 0),
(87, 'users/features.ini.php', '', 1, 0),
(88, 'users/loader.php', '', 1, 0),
(89, 'users/twofa.php', '', 1, 0),
(91, 'usersc/home.php', '', 1, 0),
(94, '1.php', '', 1, 0),
(95, 'usersc/admin.php', '', 1, 0),
(96, 'usersc/account.php', '', 0, 0),
(97, 'usersc/blog.php', 'Blog', 1, 0),
(98, 'usersc/news.php', 'News Update', 1, 0),
(99, 'usersc/add_course.php', 'Add Course', 1, 0),
(101, 'usersc/cclass.php', 'Add Class', 1, 0),
(102, 'usersc/add_coursep.php', 'process_course', 1, 0),
(103, 'usersc/cclass2.php', 'Add Class', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`) VALUES
(1, 'User'),
(2, 'Administrator'),
(3, 'Student'),
(5, 'Tutor'),
(6, 'Tutor+'),
(7, 'Guardian');

-- --------------------------------------------------------

--
-- Table structure for table `permission_page_matches`
--

CREATE TABLE `permission_page_matches` (
  `id` int(11) NOT NULL,
  `permission_id` int(15) NOT NULL,
  `page_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_page_matches`
--

INSERT INTO `permission_page_matches` (`id`, `permission_id`, `page_id`) VALUES
(2, 2, 27),
(3, 1, 24),
(4, 1, 22),
(5, 2, 13),
(6, 2, 12),
(7, 1, 11),
(8, 2, 10),
(9, 2, 9),
(10, 2, 8),
(11, 2, 7),
(12, 2, 6),
(13, 2, 5),
(14, 2, 4),
(15, 1, 3),
(16, 2, 37),
(17, 2, 39),
(19, 2, 40),
(21, 2, 41),
(23, 2, 42),
(27, 1, 42),
(28, 1, 27),
(29, 1, 41),
(30, 1, 40),
(31, 2, 44),
(32, 2, 47),
(33, 2, 51),
(34, 2, 50),
(35, 2, 49),
(36, 2, 53),
(37, 2, 52),
(38, 2, 68),
(39, 2, 55),
(40, 2, 56),
(41, 2, 71),
(42, 2, 58),
(43, 2, 57),
(44, 2, 53),
(45, 2, 74),
(46, 2, 75),
(47, 1, 75),
(48, 1, 76),
(49, 2, 76),
(50, 1, 77),
(51, 2, 77),
(52, 2, 78),
(53, 2, 80),
(54, 1, 81),
(55, 1, 82),
(56, 1, 83),
(57, 2, 84),
(58, 2, 97),
(59, 5, 97),
(60, 6, 97),
(61, 2, 98),
(62, 5, 98),
(63, 6, 98),
(64, 2, 99),
(65, 5, 99),
(66, 6, 99),
(67, 2, 100),
(68, 6, 100),
(69, 2, 101),
(70, 5, 101),
(71, 6, 101),
(72, 2, 102),
(73, 6, 102),
(74, 2, 103),
(75, 6, 103);

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bio` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`) VALUES
(1, 1, '&lt;h1&gt;This is the Admin&#039;s bio.&lt;/h1&gt;'),
(2, 2, 'This is your bio');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(50) NOT NULL,
  `recaptcha` int(1) NOT NULL DEFAULT '0',
  `force_ssl` int(1) NOT NULL,
  `css_sample` int(1) NOT NULL,
  `us_css1` varchar(255) NOT NULL,
  `us_css2` varchar(255) NOT NULL,
  `us_css3` varchar(255) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `language` varchar(255) NOT NULL,
  `track_guest` int(1) NOT NULL,
  `site_offline` int(1) NOT NULL,
  `force_pr` int(1) NOT NULL,
  `glogin` int(1) NOT NULL DEFAULT '0',
  `fblogin` int(1) NOT NULL,
  `gid` varchar(255) NOT NULL,
  `gsecret` varchar(255) NOT NULL,
  `gredirect` varchar(255) NOT NULL,
  `ghome` varchar(255) NOT NULL,
  `fbid` varchar(255) NOT NULL,
  `fbsecret` varchar(255) NOT NULL,
  `fbcallback` varchar(255) NOT NULL,
  `graph_ver` varchar(255) NOT NULL,
  `finalredir` varchar(255) NOT NULL,
  `req_cap` int(1) NOT NULL,
  `req_num` int(1) NOT NULL,
  `min_pw` int(2) NOT NULL,
  `max_pw` int(3) NOT NULL,
  `min_un` int(2) NOT NULL,
  `max_un` int(3) NOT NULL,
  `messaging` int(1) NOT NULL,
  `snooping` int(1) NOT NULL,
  `echouser` int(11) NOT NULL,
  `wys` int(1) NOT NULL,
  `change_un` int(1) NOT NULL,
  `backup_dest` varchar(255) NOT NULL,
  `backup_source` varchar(255) NOT NULL,
  `backup_table` varchar(255) NOT NULL,
  `msg_notification` int(1) NOT NULL,
  `permission_restriction` int(1) NOT NULL,
  `auto_assign_un` int(1) NOT NULL,
  `page_permission_restriction` int(1) NOT NULL,
  `msg_blocked_users` int(1) NOT NULL,
  `msg_default_to` int(1) NOT NULL,
  `notifications` int(1) NOT NULL,
  `notif_daylimit` int(3) NOT NULL,
  `recap_public` varchar(100) NOT NULL,
  `recap_private` varchar(100) NOT NULL,
  `page_default_private` int(1) NOT NULL,
  `navigation_type` tinyint(1) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `custom_settings` int(1) NOT NULL,
  `system_announcement` varchar(255) NOT NULL,
  `twofa` int(1) DEFAULT '0',
  `force_notif` tinyint(1) DEFAULT NULL,
  `cron_ip` varchar(255) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `join_vericode_expiry` int(9) UNSIGNED NOT NULL,
  `reset_vericode_expiry` int(9) UNSIGNED NOT NULL,
  `admin_verify` tinyint(1) NOT NULL,
  `admin_verify_timeout` int(9) NOT NULL,
  `session_manager` tinyint(1) NOT NULL,
  `template` varchar(255) DEFAULT 'default',
  `saas` tinyint(1) DEFAULT NULL,
  `redirect_uri_after_login` text,
  `show_tos` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `recaptcha`, `force_ssl`, `css_sample`, `us_css1`, `us_css2`, `us_css3`, `site_name`, `language`, `track_guest`, `site_offline`, `force_pr`, `glogin`, `fblogin`, `gid`, `gsecret`, `gredirect`, `ghome`, `fbid`, `fbsecret`, `fbcallback`, `graph_ver`, `finalredir`, `req_cap`, `req_num`, `min_pw`, `max_pw`, `min_un`, `max_un`, `messaging`, `snooping`, `echouser`, `wys`, `change_un`, `backup_dest`, `backup_source`, `backup_table`, `msg_notification`, `permission_restriction`, `auto_assign_un`, `page_permission_restriction`, `msg_blocked_users`, `msg_default_to`, `notifications`, `notif_daylimit`, `recap_public`, `recap_private`, `page_default_private`, `navigation_type`, `copyright`, `custom_settings`, `system_announcement`, `twofa`, `force_notif`, `cron_ip`, `registration`, `join_vericode_expiry`, `reset_vericode_expiry`, `admin_verify`, `admin_verify_timeout`, `session_manager`, `template`, `saas`, `redirect_uri_after_login`, `show_tos`) VALUES
(1, 0, 0, 0, '../users/css/color_schemes/bootstrap.min.css', '../users/css/sb-admin.css', '../users/css/custom.css', 'i-School', 'en', 1, 0, 0, 0, 0, '', '', '', '', '', '', '', '', '', 0, 0, 6, 30, 4, 30, 1, 1, 0, 1, 0, '/', 'everything', '', 0, 0, 0, 0, 0, 1, 0, 7, 'password', '6LeIxAcTAAAAAGG-vFI1TnRWxMZNFuojJ4WifJWe', 1, 1, 'i-School', 1, '', 0, 0, 'off', 1, 24, 15, 1, 120, 0, 'default', NULL, 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int(11) NOT NULL,
  `migration` varchar(15) NOT NULL,
  `applied_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_skipped` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `migration`, `applied_on`, `update_skipped`) VALUES
(15, '1XdrInkjV86F', '2018-02-18 22:33:24', NULL),
(16, '3GJYaKcqUtw7', '2018-04-25 16:51:08', NULL),
(17, '3GJYaKcqUtz8', '2018-04-25 16:51:08', NULL),
(18, '69qa8h6E1bzG', '2018-04-25 16:51:08', NULL),
(19, '2XQjsKYJAfn1', '2018-04-25 16:51:08', NULL),
(20, '549DLFeHMNw7', '2018-04-25 16:51:08', NULL),
(21, '4Dgt2XVjgz2x', '2018-04-25 16:51:08', NULL),
(22, 'VLBp32gTWvEo', '2018-04-25 16:51:08', NULL),
(23, 'Q3KlhjdtxE5X', '2018-04-25 16:51:08', NULL),
(24, 'ug5D3pVrNvfS', '2018-04-25 16:51:08', NULL),
(25, '69FbVbv4Jtrz', '2018-04-25 16:51:09', NULL),
(26, '4A6BdJHyvP4a', '2018-04-25 16:51:09', NULL),
(27, '37wvsb5BzymK', '2018-04-25 16:51:09', NULL),
(28, 'c7tZQf926zKq', '2018-04-25 16:51:09', NULL),
(29, 'ockrg4eU33GP', '2018-04-25 16:51:09', NULL),
(30, 'XX4zArPs4tor', '2018-04-25 16:51:09', NULL),
(31, 'pv7r2EHbVvhD', '2018-04-26 00:00:00', NULL),
(32, 'uNT7NpgcBDFD', '2018-04-26 00:00:00', NULL),
(33, 'mS5VtQCZjyJs', '2018-12-11 14:19:16', NULL),
(34, '23rqAv5elJ3G', '2018-12-11 14:19:51', NULL),
(35, '2ZB9mg1l0JXe', '2019-02-05 12:33:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(155) NOT NULL,
  `email_new` varchar(155) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pin` varchar(255) DEFAULT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `permissions` int(11) NOT NULL,
  `logins` int(100) NOT NULL,
  `account_owner` tinyint(4) NOT NULL DEFAULT '0',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `company` varchar(255) NOT NULL,
  `join_date` datetime NOT NULL,
  `last_login` datetime NOT NULL,
  `email_verified` tinyint(4) NOT NULL DEFAULT '0',
  `vericode` varchar(15) NOT NULL,
  `vericode_expiry` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `active` int(1) NOT NULL,
  `oauth_provider` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `locale` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gpluslink` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `fb_uid` varchar(255) NOT NULL,
  `un_changed` int(1) NOT NULL,
  `msg_exempt` int(1) NOT NULL DEFAULT '0',
  `last_confirm` datetime DEFAULT NULL,
  `protected` int(1) NOT NULL DEFAULT '0',
  `dev_user` int(1) NOT NULL DEFAULT '0',
  `msg_notification` int(1) NOT NULL DEFAULT '1',
  `force_pr` int(1) NOT NULL DEFAULT '0',
  `twoKey` varchar(16) DEFAULT NULL,
  `twoEnabled` int(1) DEFAULT '0',
  `twoDate` datetime DEFAULT NULL,
  `cloak_allowed` tinyint(1) NOT NULL DEFAULT '0',
  `org` int(11) DEFAULT NULL,
  `account_mgr` int(11) DEFAULT '0',
  `oauth_tos_accepted` tinyint(1) DEFAULT NULL,
  `user_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_new`, `username`, `password`, `pin`, `fname`, `lname`, `permissions`, `logins`, `account_owner`, `account_id`, `company`, `join_date`, `last_login`, `email_verified`, `vericode`, `vericode_expiry`, `active`, `oauth_provider`, `oauth_uid`, `gender`, `locale`, `gpluslink`, `picture`, `created`, `modified`, `fb_uid`, `un_changed`, `msg_exempt`, `last_confirm`, `protected`, `dev_user`, `msg_notification`, `force_pr`, `twoKey`, `twoEnabled`, `twoDate`, `cloak_allowed`, `org`, `account_mgr`, `oauth_tos_accepted`, `user_type`) VALUES
(1, 'userspicephp@gmail.com', NULL, 'admin', '$2y$12$1v06jm2KMOXuuo3qP7erTuTIJFOnzhpds1Moa8BadnUUeX0RV3ex.', NULL, 'The', 'Admin', 1, 42, 1, 0, 'UserSpice', '2016-01-01 00:00:00', '2019-04-03 03:01:07', 1, 'nlPsJDtyeqFWsS', '2019-04-02 21:01:07', 0, '', '', '', '', '', '', '0000-00-00 00:00:00', '1899-11-30 00:00:00', '', 0, 1, '2017-10-08 15:24:37', 1, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, ''),
(2, 'noreply@userspice.com', NULL, 'user', '$2y$12$HZa0/d7evKvuHO8I3U8Ff.pOjJqsGTZqlX8qURratzP./EvWetbkK', NULL, 'Sample', 'User', 1, 1, 1, 0, 'none', '2016-01-02 00:00:00', '2019-02-06 04:08:51', 1, '2ENJN4xD8nnjOgk', '2019-02-05 22:08:52', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, ''),
(12, 'samsha1234567891@gmail.com', NULL, 'Samin', '$2y$12$XSPTC/K968MAew6tyYZape6uFno3uLMrjJ7qmUV/ZLeGLOna1s69m', NULL, 'Www', 'Www', 1, 3, 1, 0, '', '2019-02-05 19:17:18', '2019-02-06 04:20:09', 1, 'TOmbSG3SIYNXgG5', '2019-02-05 22:20:09', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, ''),
(14, 'kazi.ahmedul.huque@gmail.com', NULL, 'naim', '$2y$12$Oz2SyR3bdhc8JK8qTNlTF.IgOrw5oZEuNmIx3MzA/xaTK0xPz.M7K', NULL, 'Naim', 'Ahmed', 1, 2, 1, 0, '', '2019-02-06 14:25:11', '2019-02-06 16:12:21', 1, '9ah9zz3Vm21PuLD', '2019-02-06 10:12:21', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, 'Student'),
(15, 'tanzil.ovi578@gmail.com', NULL, 'Tanzil', '$2y$12$UXbokrRt3IrpxZW0dGyKEuCC5lQJbd6L3D2HN7kkku9/X7d6l8aFW', NULL, 'Tanzil', 'Ovi', 1, 3, 1, 0, '', '2019-02-09 15:39:30', '2019-02-09 15:51:37', 1, 'ZaIPkkLMO4AsRF', '2019-02-09 09:51:37', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, 'Student'),
(16, 'saminsharar3@gmail.com', NULL, 'ssss', '$2y$12$gtEfmegZ7dlUyV.nuGl7BeYj.UfO0ovSfn4kRVjIS15aauC.IFKHu', NULL, 'Sss', 'Sss', 1, 0, 1, 0, '', '2019-04-03 02:59:16', '0000-00-00 00:00:00', 0, 'sLxiqwpCIpIsWEJ', '2019-04-03 20:59:21', 1, '', '', '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 0, NULL, 0, 0, 1, 0, NULL, 0, NULL, 0, NULL, 0, 1, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(10) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `timestamp` varchar(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `session` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `ip`, `timestamp`, `user_id`, `session`) VALUES
(1, '::1', '1554238949', 1, ''),
(2, '::1', '1549405217', 12, ''),
(3, '::1', '1549441365', 13, ''),
(4, '::1', '1549404574', 2, ''),
(5, '::1', '1549448324', 14, ''),
(6, '::1', '1549705908', 15, '');

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `uagent` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_permission_matches`
--

CREATE TABLE `user_permission_matches` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_permission_matches`
--

INSERT INTO `user_permission_matches` (`id`, `user_id`, `permission_id`) VALUES
(100, 1, 1),
(101, 1, 2),
(102, 2, 1),
(111, 11, 1),
(112, 12, 1),
(113, 13, 1),
(114, 14, 1),
(115, 15, 1),
(116, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `us_announcements`
--

CREATE TABLE `us_announcements` (
  `id` int(11) NOT NULL,
  `dismissed` int(11) NOT NULL,
  `link` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `ignore` varchar(50) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_announcements`
--

INSERT INTO `us_announcements` (`id`, `dismissed`, `link`, `title`, `message`, `ignore`, `class`) VALUES
(1, 3, 'https://www.userspice.com/updates', 'New Version', 'December 11, 2018 - Thank you for trying UserSpice Beta!', '4.5.0', 'warning'),
(2, 6, '#', 'New Version', 'December 15, 2019 - Beta 3 released.', '4.4.2', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `us_fingerprints`
--

CREATE TABLE `us_fingerprints` (
  `kFingerprintID` int(11) UNSIGNED NOT NULL,
  `fkUserID` int(11) NOT NULL,
  `Fingerprint` varchar(32) NOT NULL,
  `Fingerprint_Expiry` datetime NOT NULL,
  `Fingerprint_Added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_fingerprint_assets`
--

CREATE TABLE `us_fingerprint_assets` (
  `kFingerprintAssetID` int(11) UNSIGNED NOT NULL,
  `fkFingerprintID` int(11) NOT NULL,
  `IP_Address` varchar(255) NOT NULL,
  `User_Browser` varchar(255) NOT NULL,
  `User_OS` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_forms`
--

CREATE TABLE `us_forms` (
  `id` int(11) NOT NULL,
  `form` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_forms`
--

INSERT INTO `us_forms` (`id`, `form`) VALUES
(2, 'blog'),
(3, 'news'),
(6, 'courseinfo');

-- --------------------------------------------------------

--
-- Table structure for table `us_form_validation`
--

CREATE TABLE `us_form_validation` (
  `id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `params` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_form_validation`
--

INSERT INTO `us_form_validation` (`id`, `value`, `description`, `params`) VALUES
(1, 'min', 'Minimum # of Characters', 'number'),
(2, 'max', 'Maximum # of Characters', 'number'),
(3, 'is_numeric', 'Must be a number', 'true'),
(4, 'valid_email', 'Must be a valid email address', 'true'),
(5, '<', 'Must be a number less than', 'number'),
(6, '>', 'Must be a number greater than', 'number'),
(7, '<=', 'Must be a number less than or equal to', 'number'),
(8, '>=', 'Must be a number greater than or equal to', 'number'),
(9, '!=', 'Must not be equal to', 'text'),
(10, '==', 'Must be equal to', 'text'),
(11, 'is_integer', 'Must be an integer', 'true'),
(12, 'is_timezone', 'Must be a valid timezone name', 'true'),
(13, 'is_datetime', 'Must be a valid DateTime', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `us_form_views`
--

CREATE TABLE `us_form_views` (
  `id` int(11) NOT NULL,
  `form_name` varchar(255) NOT NULL,
  `view_name` varchar(255) NOT NULL,
  `fields` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_blacklist`
--

CREATE TABLE `us_ip_blacklist` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `last_user` int(11) NOT NULL DEFAULT '0',
  `reason` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_ip_blacklist`
--

INSERT INTO `us_ip_blacklist` (`id`, `ip`, `last_user`, `reason`) VALUES
(3, '192.168.0.21', 1, 0),
(4, '192.168.0.22', 1, 0),
(10, '192.168.0.222', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_list`
--

CREATE TABLE `us_ip_list` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_ip_list`
--

INSERT INTO `us_ip_list` (`id`, `ip`, `user_id`, `timestamp`) VALUES
(1, '::1', 1, '2019-02-11 14:01:41');

-- --------------------------------------------------------

--
-- Table structure for table `us_ip_whitelist`
--

CREATE TABLE `us_ip_whitelist` (
  `id` int(11) NOT NULL,
  `ip` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `us_ip_whitelist`
--

INSERT INTO `us_ip_whitelist` (`id`, `ip`) VALUES
(2, '192.168.0.21'),
(3, '192.168.0.23');

-- --------------------------------------------------------

--
-- Table structure for table `us_plugins`
--

CREATE TABLE `us_plugins` (
  `id` int(11) NOT NULL,
  `plugin` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `updates` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_saas_levels`
--

CREATE TABLE `us_saas_levels` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL,
  `users` int(11) NOT NULL,
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_saas_orgs`
--

CREATE TABLE `us_saas_orgs` (
  `id` int(11) NOT NULL,
  `org` varchar(255) NOT NULL,
  `owner` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `active` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `us_user_sessions`
--

CREATE TABLE `us_user_sessions` (
  `kUserSessionID` int(11) UNSIGNED NOT NULL,
  `fkUserID` int(11) UNSIGNED NOT NULL,
  `UserFingerprint` varchar(255) NOT NULL,
  `UserSessionIP` varchar(255) NOT NULL,
  `UserSessionOS` varchar(255) NOT NULL,
  `UserSessionBrowser` varchar(255) NOT NULL,
  `UserSessionStarted` datetime NOT NULL,
  `UserSessionLastUsed` datetime DEFAULT NULL,
  `UserSessionLastPage` varchar(255) NOT NULL,
  `UserSessionEnded` tinyint(1) NOT NULL DEFAULT '0',
  `UserSessionEnded_Time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audit`
--
ALTER TABLE `audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_form`
--
ALTER TABLE `blog_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseinfo`
--
ALTER TABLE `courseinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseinfo_form`
--
ALTER TABLE `courseinfo_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_info`
--
ALTER TABLE `course_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons`
--
ALTER TABLE `crons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crons_logs`
--
ALTER TABLE `crons_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups_menus`
--
ALTER TABLE `groups_menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_exempt`
--
ALTER TABLE `logs_exempt`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `logs_exempt_type` (`name`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message_threads`
--
ALTER TABLE `message_threads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news_form`
--
ALTER TABLE `news_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EMAIL` (`email`) USING BTREE;

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_announcements`
--
ALTER TABLE `us_announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_fingerprints`
--
ALTER TABLE `us_fingerprints`
  ADD PRIMARY KEY (`kFingerprintID`);

--
-- Indexes for table `us_fingerprint_assets`
--
ALTER TABLE `us_fingerprint_assets`
  ADD PRIMARY KEY (`kFingerprintAssetID`);

--
-- Indexes for table `us_forms`
--
ALTER TABLE `us_forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_form_validation`
--
ALTER TABLE `us_form_validation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_form_views`
--
ALTER TABLE `us_form_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_blacklist`
--
ALTER TABLE `us_ip_blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_list`
--
ALTER TABLE `us_ip_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_ip_whitelist`
--
ALTER TABLE `us_ip_whitelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_plugins`
--
ALTER TABLE `us_plugins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_saas_levels`
--
ALTER TABLE `us_saas_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_saas_orgs`
--
ALTER TABLE `us_saas_orgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `us_user_sessions`
--
ALTER TABLE `us_user_sessions`
  ADD PRIMARY KEY (`kUserSessionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audit`
--
ALTER TABLE `audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_form`
--
ALTER TABLE `blog_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `courseinfo`
--
ALTER TABLE `courseinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courseinfo_form`
--
ALTER TABLE `courseinfo_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `course_info`
--
ALTER TABLE `course_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crons`
--
ALTER TABLE `crons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `crons_logs`
--
ALTER TABLE `crons_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `groups_menus`
--
ALTER TABLE `groups_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `logs_exempt`
--
ALTER TABLE `logs_exempt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message_threads`
--
ALTER TABLE `message_threads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news_form`
--
ALTER TABLE `news_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permission_page_matches`
--
ALTER TABLE `permission_page_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_permission_matches`
--
ALTER TABLE `user_permission_matches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `us_announcements`
--
ALTER TABLE `us_announcements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `us_fingerprints`
--
ALTER TABLE `us_fingerprints`
  MODIFY `kFingerprintID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_fingerprint_assets`
--
ALTER TABLE `us_fingerprint_assets`
  MODIFY `kFingerprintAssetID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_forms`
--
ALTER TABLE `us_forms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `us_form_validation`
--
ALTER TABLE `us_form_validation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `us_form_views`
--
ALTER TABLE `us_form_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_ip_blacklist`
--
ALTER TABLE `us_ip_blacklist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `us_ip_list`
--
ALTER TABLE `us_ip_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `us_ip_whitelist`
--
ALTER TABLE `us_ip_whitelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `us_plugins`
--
ALTER TABLE `us_plugins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_saas_levels`
--
ALTER TABLE `us_saas_levels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_saas_orgs`
--
ALTER TABLE `us_saas_orgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `us_user_sessions`
--
ALTER TABLE `us_user_sessions`
  MODIFY `kUserSessionID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
