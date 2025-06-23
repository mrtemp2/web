-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 23, 2025 at 03:14 PM
-- Server version: 8.0.42-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `huissier`
--

-- --------------------------------------------------------

--
-- Table structure for table `ad_spaces`
--

CREATE TABLE `ad_spaces` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `ad_space` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ad_code_desktop` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `desktop_width` int DEFAULT NULL,
  `desktop_height` int DEFAULT NULL,
  `ad_code_mobile` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `mobile_width` int DEFAULT NULL,
  `mobile_height` int DEFAULT NULL,
  `display_category_id` int DEFAULT NULL,
  `paragraph_number` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `audios`
--

CREATE TABLE `audios` (
  `id` int NOT NULL,
  `audio_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `audio_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `download_button` tinyint(1) DEFAULT '1',
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `user_id` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` int DEFAULT '0',
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keywords` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `block_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `category_order` int DEFAULT '0',
  `show_on_homepage` tinyint(1) DEFAULT '1',
  `show_on_menu` tinyint(1) DEFAULT '1',
  `category_status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `lang_id`, `name`, `slug`, `parent_id`, `description`, `keywords`, `color`, `block_type`, `category_order`, `show_on_homepage`, `show_on_menu`, `category_status`, `created_at`) VALUES
(1, 2, 'بيانات وبلاغات', 'بيانات-وبلاغات-1', 0, NULL, NULL, '#2d65fe', 'block-1', 1, 1, 0, 1, '2025-06-23 13:02:44'),
(2, 2, 'فيديو', 'فيديو', 0, NULL, NULL, '#2d65fe', 'block-6', 1, 1, 1, 1, '2025-06-23 14:27:34');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('vr_session:3pk068c2kefuqlruict13rv57pr9tv2l', '127.0.0.1', '2025-06-21 12:40:40', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303530393634303b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a34303a22687474703a2f2f3132372e302e302e312f61646d696e2f6c616e67756167652d73657474696e6773223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b),
('vr_session:ngn3mv8l5n4jatfkd3kvl3jspnkphfje', '127.0.0.1', '2025-06-23 07:12:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303636323733303b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a31373a22687474703a2f2f3132372e302e302e312f223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b),
('vr_session:6ksf2084o8uagb8vp3b69l263kgc5j20', '127.0.0.1', '2025-06-23 07:12:13', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303636323733303b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a31373a22687474703a2f2f3132372e302e302e312f223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b),
('vr_session:jah3uvp23hbcqcq3avprrnn6edrq63f9', '127.0.0.1', '2025-06-23 09:13:01', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303636393938313b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a31373a22687474703a2f2f3132372e302e302e312f223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b),
('vr_session:rmvap495j9niejcv4uc6ndvmf1h8bicl', '127.0.0.1', '2025-06-23 10:44:10', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303637353435303b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a31373a22687474703a2f2f3132372e302e302e312f223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b),
('vr_session:4r611n8te8ren8d5nvlst5ek3nfu9hu4', '127.0.0.1', '2025-06-23 11:44:38', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303637393037383b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a31373a22687474703a2f2f3132372e302e302e312f223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b),
('vr_session:8e1j36s6bkslr5a5g2v4pu7l2m2rhqnp', '127.0.0.1', '2025-06-23 12:45:16', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303638323731363b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a31373a22687474703a2f2f3132372e302e302e312f223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b),
('vr_session:59s02huhbso8j8qcqhp52jj024fvbnb5', '127.0.0.1', '2025-06-23 13:47:11', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303638363433313b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a32323a22687474703a2f2f3132372e302e302e312f706f737473223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b7670725f317c733a313a2231223b7670725f327c733a313a2231223b7670725f347c733a313a2231223b),
('vr_session:dg5uuvdl56o7s3oiqejep0mnpqt9dcfi', '127.0.0.1', '2025-06-23 14:53:54', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303639303433343b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a33353a22687474703a2f2f3132372e302e302e312f254438254235254439253838254438254231223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b7670725f317c733a313a2231223b7670725f327c733a313a2231223b7670725f347c733a313a2231223b7670725f357c733a313a2231223b7670725f377c733a313a2231223b7670725f387c733a313a2231223b),
('vr_session:0cl33u2kqb78qhgbc7edmf2gngtpl2f1', '127.0.0.1', '2025-06-23 15:03:29', 0x5f5f63695f6c6173745f726567656e65726174657c693a313735303639303433343b6163746976654c616e6749647c733a313a2232223b5f63695f70726576696f75735f75726c7c733a31373a22687474703a2f2f3132372e302e302e312f223b76725f7365735f69647c733a313a2231223b76725f7365735f6b65797c733a36343a2230373566316432393233326563653033366233376136316532333233396531343561356637353964353536313964376532626161633031393836353664353331223b7670725f317c733a313a2231223b7670725f327c733a313a2231223b7670725f347c733a313a2231223b7670725f357c733a313a2231223b7670725f377c733a313a2231223b7670725f387c733a313a2231223b);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `parent_id` int DEFAULT '0',
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `like_count` int DEFAULT '0',
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int NOT NULL,
  `following_id` int DEFAULT NULL,
  `follower_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int NOT NULL,
  `font_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `font_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `font_url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `font_family` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `font_source` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'google',
  `has_local_file` tinyint(1) DEFAULT '0',
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `font_name`, `font_key`, `font_url`, `font_family`, `font_source`, `has_local_file`, `is_default`) VALUES
(1, 'Arial', 'arial', NULL, 'font-family: Arial, Helvetica, sans-serif', 'local', 0, 0),
(2, 'Arvo', 'arvo', '<link href=\"https://fonts.googleapis.com/css?family=Arvo:400,700&display=swap\" rel=\"stylesheet\">\r\n', 'font-family: \"Arvo\", Helvetica, sans-serif', 'google', 0, 0),
(3, 'Averia Libre', 'averia-libre', '<link href=\"https://fonts.googleapis.com/css?family=Averia+Libre:300,400,700&display=swap\" rel=\"stylesheet\">\r\n', 'font-family: \"Averia Libre\", Helvetica, sans-serif', 'google', 0, 0),
(4, 'Bitter', 'bitter', '<link href=\"https://fonts.googleapis.com/css?family=Bitter:400,400i,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Bitter\", Helvetica, sans-serif', 'google', 0, 0),
(5, 'Cabin', 'cabin', '<link href=\"https://fonts.googleapis.com/css?family=Cabin:400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Cabin\", Helvetica, sans-serif', 'google', 0, 0),
(6, 'Cherry Swash', 'cherry-swash', '<link href=\"https://fonts.googleapis.com/css?family=Cherry+Swash:400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Cherry Swash\", Helvetica, sans-serif', 'google', 0, 0),
(7, 'Encode Sans', 'encode-sans', '<link href=\"https://fonts.googleapis.com/css?family=Encode+Sans:300,400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Encode Sans\", Helvetica, sans-serif', 'google', 0, 0),
(8, 'Helvetica', 'helvetica', NULL, 'font-family: Helvetica, sans-serif', 'local', 0, 0),
(9, 'Hind', 'hind', '<link href=\"https://fonts.googleapis.com/css?family=Hind:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">', 'font-family: \"Hind\", Helvetica, sans-serif', 'google', 0, 0),
(10, 'Inter', 'inter', NULL, 'font-family: \"Inter\", sans-serif;', 'local', 1, 0),
(11, 'Josefin Sans', 'josefin-sans', '<link href=\"https://fonts.googleapis.com/css?family=Josefin+Sans:300,400,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Josefin Sans\", Helvetica, sans-serif', 'google', 0, 0),
(12, 'Kalam', 'kalam', '<link href=\"https://fonts.googleapis.com/css?family=Kalam:300,400,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Kalam\", Helvetica, sans-serif', 'google', 0, 0),
(13, 'Khula', 'khula', '<link href=\"https://fonts.googleapis.com/css?family=Khula:300,400,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Khula\", Helvetica, sans-serif', 'google', 0, 0),
(14, 'Lato', 'lato', '<link href=\"https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">', 'font-family: \"Lato\", Helvetica, sans-serif', 'google', 0, 0),
(15, 'Lora', 'lora', '<link href=\"https://fonts.googleapis.com/css?family=Lora:400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Lora\", Helvetica, sans-serif', 'google', 0, 0),
(16, 'Merriweather', 'merriweather', '<link href=\"https://fonts.googleapis.com/css?family=Merriweather:300,400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Merriweather\", Helvetica, sans-serif', 'google', 0, 0),
(17, 'Montserrat', 'montserrat', '<link href=\"https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Montserrat\", Helvetica, sans-serif', 'google', 0, 0),
(18, 'Mukta', 'mukta', '<link href=\"https://fonts.googleapis.com/css?family=Mukta:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Mukta\", Helvetica, sans-serif', 'google', 0, 0),
(19, 'Nunito', 'nunito', '<link href=\"https://fonts.googleapis.com/css?family=Nunito:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Nunito\", Helvetica, sans-serif', 'google', 0, 0),
(20, 'Open Sans', 'open-sans', NULL, 'font-family: \"Open Sans\", Helvetica, sans-serif', 'local', 1, 0),
(21, 'Oswald', 'oswald', '<link href=\"https://fonts.googleapis.com/css?family=Oswald:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext,vietnamese\" rel=\"stylesheet\">', 'font-family: \"Oswald\", Helvetica, sans-serif', 'google', 0, 0),
(22, 'Oxygen', 'oxygen', '<link href=\"https://fonts.googleapis.com/css?family=Oxygen:300,400,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Oxygen\", Helvetica, sans-serif', 'google', 0, 0),
(23, 'Poppins', 'poppins', '<link href=\"https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700&display=swap&subset=devanagari,latin-ext\" rel=\"stylesheet\">', 'font-family: \"Poppins\", Helvetica, sans-serif', 'google', 0, 0),
(24, 'PT Sans', 'pt-sans', '<link href=\"https://fonts.googleapis.com/css?family=PT+Sans:400,700&display=swap&subset=cyrillic,cyrillic-ext,latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"PT Sans\", Helvetica, sans-serif', 'google', 0, 0),
(25, 'PT Serif', 'pt-serif', NULL, 'font-family: \"PT Serif\", serif;', 'local', 1, 0),
(26, 'Raleway', 'raleway', '<link href=\"https://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">\r\n', 'font-family: \"Raleway\", Helvetica, sans-serif', 'google', 0, 0),
(27, 'Roboto', 'roboto', NULL, 'font-family: \"Roboto\", Helvetica, sans-serif', 'local', 1, 0),
(28, 'Roboto Condensed', 'roboto-condensed', '<link href=\"https://fonts.googleapis.com/css?family=Roboto+Condensed:300,400,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Roboto Condensed\", Helvetica, sans-serif', 'google', 0, 0),
(29, 'Roboto Slab', 'roboto-slab', '<link href=\"https://fonts.googleapis.com/css?family=Roboto+Slab:300,400,500,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Roboto Slab\", Helvetica, sans-serif', 'google', 0, 0),
(30, 'Rokkitt', 'rokkitt', '<link href=\"https://fonts.googleapis.com/css?family=Rokkitt:300,400,500,600,700&display=swap&subset=latin-ext,vietnamese\" rel=\"stylesheet\">\r\n', 'font-family: \"Rokkitt\", Helvetica, sans-serif', 'google', 0, 0),
(31, 'Source Sans Pro', 'source-sans-pro', '<link href=\"https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese\" rel=\"stylesheet\">', 'font-family: \"Source Sans Pro\", Helvetica, sans-serif', 'google', 0, 0),
(32, 'Titillium Web', 'titillium-web', '<link href=\"https://fonts.googleapis.com/css?family=Titillium+Web:300,400,600,700&display=swap&subset=latin-ext\" rel=\"stylesheet\">', 'font-family: \"Titillium Web\", Helvetica, sans-serif', 'google', 0, 0),
(33, 'Ubuntu', 'ubuntu', '<link href=\"https://fonts.googleapis.com/css?family=Ubuntu:300,400,500,700&display=swap&subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext\" rel=\"stylesheet\">', 'font-family: \"Ubuntu\", Helvetica, sans-serif', 'google', 0, 0),
(34, 'Verdana', 'verdana', NULL, 'font-family: Verdana, Helvetica, sans-serif', 'local', 0, 0),
(35, 'Source Sans 3', 'source-sans-3', NULL, 'font-family: \"Source Sans 3\", Helvetica, sans-serif', 'local', 1, 0),
(36, 'Amiri', 'amiri', '<link href=\"https://fonts.googleapis.com/css2?family=Amiri:ital,wght@0,400;0,700;1,400;1,700&display=swap\" rel=\"stylesheet\">', 'font-family: \"Amiri\", serif', 'google', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `path_big` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `path_small` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_album_cover` tinyint(1) DEFAULT '0',
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `lang_id`, `title`, `album_id`, `category_id`, `path_big`, `path_small`, `is_album_cover`, `storage`, `created_at`) VALUES
(1, 2, NULL, 1, 0, 'uploads/gallery/202506/image_1920x_685967019b74d.jpg', 'uploads/gallery/202506/image_500x_68596701ea1cc.jpg', 0, 'local', '2025-06-23 15:38:58'),
(2, 2, NULL, 1, 0, 'uploads/gallery/202506/image_1920x_6859670bdb75b.jpg', 'uploads/gallery/202506/image_500x_6859670c375c7.jpg', 0, 'local', '2025-06-23 15:39:08'),
(3, 2, NULL, 1, 0, 'uploads/gallery/202506/image_1920x_68596712edcc4.jpg', 'uploads/gallery/202506/image_500x_685967137776e.jpg', 0, 'local', '2025-06-23 15:39:15'),
(4, 2, NULL, 1, 0, 'uploads/gallery/202506/image_1920x_6859671b97d45.jpg', 'uploads/gallery/202506/image_500x_6859671be9e51.jpg', 0, 'local', '2025-06-23 15:39:24'),
(5, 2, NULL, 1, 0, 'uploads/gallery/202506/image_1920x_6859672383bc8.jpg', 'uploads/gallery/202506/image_500x_68596723ce0d1.jpg', 0, 'local', '2025-06-23 15:39:31'),
(6, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596ad3484ab.jpg', 'uploads/gallery/202506/image_500x_68596ad3c486e.jpg', 0, 'local', '2025-06-23 15:55:15'),
(7, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596add51ac3.jpg', 'uploads/gallery/202506/image_500x_68596add8a7fe.jpg', 0, 'local', '2025-06-23 15:55:25'),
(8, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596ae729796.jpg', 'uploads/gallery/202506/image_500x_68596ae7a933e.jpg', 0, 'local', '2025-06-23 15:55:35'),
(9, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0894255.jpg', 'uploads/gallery/202506/image_500x_68596b091dd98.jpg', 0, 'local', '2025-06-23 15:56:09'),
(10, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0944004.jpg', 'uploads/gallery/202506/image_500x_68596b09765f1.jpg', 0, 'local', '2025-06-23 15:56:09'),
(11, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0988bfd.jpg', 'uploads/gallery/202506/image_500x_68596b09bcd02.jpg', 0, 'local', '2025-06-23 15:56:09'),
(12, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b09ca396.jpg', 'uploads/gallery/202506/image_500x_68596b0a083b2.jpg', 0, 'local', '2025-06-23 15:56:10'),
(13, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0a1589e.jpg', 'uploads/gallery/202506/image_500x_68596b0a4c174.jpg', 0, 'local', '2025-06-23 15:56:10'),
(15, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0b009a7.jpg', 'uploads/gallery/202506/image_500x_68596b0b37a81.jpg', 0, 'local', '2025-06-23 15:56:11'),
(16, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0b49389.jpg', 'uploads/gallery/202506/image_500x_68596b0bc6963.jpg', 0, 'local', '2025-06-23 15:56:11'),
(17, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0be91a3.jpg', 'uploads/gallery/202506/image_500x_68596b0c2d457.jpg', 0, 'local', '2025-06-23 15:56:12'),
(18, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0c3cdbf.jpg', 'uploads/gallery/202506/image_500x_68596b0c6fcd1.jpg', 0, 'local', '2025-06-23 15:56:12'),
(19, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0c7ded2.jpg', 'uploads/gallery/202506/image_500x_68596b0cb4032.jpg', 0, 'local', '2025-06-23 15:56:12'),
(20, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0cc6b32.jpg', 'uploads/gallery/202506/image_500x_68596b0d3bb68.jpg', 0, 'local', '2025-06-23 15:56:13'),
(21, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0d50610.jpg', 'uploads/gallery/202506/image_500x_68596b0d7d2b3.jpg', 0, 'local', '2025-06-23 15:56:13'),
(22, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0d8ba93.jpg', 'uploads/gallery/202506/image_500x_68596b0dc3ad6.jpg', 0, 'local', '2025-06-23 15:56:13'),
(23, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0ddd366.jpg', 'uploads/gallery/202506/image_500x_68596b0e174ff.jpg', 0, 'local', '2025-06-23 15:56:14'),
(24, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0e2d1d0.jpg', 'uploads/gallery/202506/image_500x_68596b0e4cd5c.jpg', 0, 'local', '2025-06-23 15:56:14'),
(25, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0e56aaa.jpg', 'uploads/gallery/202506/image_500x_68596b0e86204.jpg', 0, 'local', '2025-06-23 15:56:14'),
(26, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0e927b4.jpg', 'uploads/gallery/202506/image_500x_68596b0f0972e.jpg', 0, 'local', '2025-06-23 15:56:15'),
(27, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0f2ad1f.jpg', 'uploads/gallery/202506/image_500x_68596b0f5b392.jpg', 0, 'local', '2025-06-23 15:56:15'),
(28, 2, NULL, 2, 0, 'uploads/gallery/202506/image_1920x_68596b0f6e970.jpg', 'uploads/gallery/202506/image_500x_68596b0f9cb1c.jpg', 0, 'local', '2025-06-23 15:56:15');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_albums`
--

CREATE TABLE `gallery_albums` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_albums`
--

INSERT INTO `gallery_albums` (`id`, `lang_id`, `name`, `created_at`) VALUES
(1, 2, 'المصادقة علي تنقيح النظام الداخلي للهيئه الوطنية للعدول النفذين', '2025-06-23 14:38:32'),
(2, 2, 'أشغال الملتقي العلمي الوطني حول تنقيح بعض أحكام المجلة التجارية تحت عنوان اي مستقبل للشيك في ظل التنقيحات  الأخيرة للمجلة التجارية و النظم', '2025-06-23 14:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_categories`
--

CREATE TABLE `gallery_categories` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `album_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int NOT NULL,
  `site_lang` int NOT NULL DEFAULT '1',
  `multilingual_system` tinyint(1) DEFAULT '1',
  `theme_mode` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'light',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo_footer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `favicon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_hits` tinyint(1) DEFAULT '1',
  `show_rss` tinyint(1) DEFAULT '1',
  `rss_content_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '''summary''',
  `show_newsticker` tinyint(1) DEFAULT '1',
  `pagination_per_page` smallint DEFAULT '10',
  `google_analytics` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `mail_service` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'swift',
  `mail_protocol` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'smtp',
  `mail_encryption` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'tls',
  `mail_host` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '587',
  `mail_username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail_password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mail_reply_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'noreply@domain.com',
  `mailjet_api_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mailjet_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mailjet_email_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `google_client_id` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `google_client_secret` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vk_app_id` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vk_secure_key` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook_app_id` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook_app_secret` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook_comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `facebook_comment_active` tinyint(1) DEFAULT '1',
  `show_featured_section` tinyint(1) DEFAULT '1',
  `show_latest_posts` tinyint(1) DEFAULT '1',
  `pwa_status` tinyint(1) DEFAULT '0',
  `pwa_logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `registration_system` tinyint(1) DEFAULT '1',
  `post_url_structure` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '''slug''',
  `comment_system` tinyint(1) DEFAULT '1',
  `comment_approval_system` tinyint(1) DEFAULT '1',
  `show_post_author` tinyint(1) DEFAULT '1',
  `show_post_date` tinyint(1) DEFAULT '1',
  `menu_limit` tinyint DEFAULT '8',
  `custom_header_codes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `custom_footer_codes` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `adsense_activation_code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `recaptcha_site_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `recaptcha_secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emoji_reactions` tinyint(1) DEFAULT '1',
  `mail_contact_status` tinyint(1) DEFAULT '0',
  `mail_contact` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cache_system` tinyint(1) DEFAULT '0',
  `static_cache_system` tinyint(1) DEFAULT '1',
  `cache_refresh_time` int DEFAULT '1800',
  `refresh_cache_database_changes` tinyint(1) DEFAULT '0',
  `email_verification` tinyint(1) DEFAULT '0',
  `file_manager_show_files` tinyint(1) DEFAULT '1',
  `audio_download_button` tinyint(1) DEFAULT '1',
  `approve_added_user_posts` tinyint(1) DEFAULT '1',
  `approve_updated_user_posts` tinyint(1) DEFAULT '1',
  `timezone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'America/New_York',
  `show_latest_posts_on_slider` tinyint(1) DEFAULT '0',
  `show_latest_posts_on_featured` tinyint(1) DEFAULT '0',
  `sort_slider_posts` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'by_slider_order',
  `sort_featured_posts` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'by_featured_order',
  `newsletter_status` tinyint(1) DEFAULT '1',
  `newsletter_popup` tinyint(1) DEFAULT '0',
  `newsletter_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_home_link` tinyint(1) DEFAULT '1',
  `post_format_article` tinyint(1) DEFAULT '1',
  `post_format_gallery` tinyint(1) DEFAULT '1',
  `post_format_sorted_list` tinyint(1) DEFAULT '1',
  `post_format_video` tinyint(1) DEFAULT '1',
  `post_format_audio` tinyint(1) DEFAULT '1',
  `post_format_trivia_quiz` tinyint(1) DEFAULT '1',
  `post_format_personality_quiz` tinyint(1) DEFAULT '1',
  `post_format_poll` tinyint(1) DEFAULT '1',
  `post_format_table_of_contents` tinyint(1) DEFAULT '1',
  `post_format_recipe` tinyint(1) DEFAULT '1',
  `maintenance_mode_title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Coming Soon!',
  `maintenance_mode_description` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `maintenance_mode_status` tinyint(1) DEFAULT '0',
  `sitemap_frequency` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'auto',
  `sitemap_last_modification` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'auto',
  `sitemap_priority` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'auto',
  `show_user_email_on_profile` tinyint(1) DEFAULT '1',
  `reward_system_status` tinyint(1) DEFAULT '0',
  `reward_amount` double DEFAULT '1',
  `human_verification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `currency_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'US Dollar',
  `currency_symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '$',
  `currency_format` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'us',
  `currency_symbol_format` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'left',
  `payout_methods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `aws_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aws_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aws_bucket` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `aws_region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `auto_post_deletion` tinyint(1) DEFAULT '0',
  `auto_post_deletion_days` smallint DEFAULT '30',
  `auto_post_deletion_delete_all` tinyint(1) DEFAULT '0',
  `redirect_rss_posts_to_original` tinyint(1) DEFAULT '0',
  `image_file_format` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '''JPG''',
  `allowed_file_extensions` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '''jpg,jpeg,png,gif,svg,csv,doc,docx,pdf,ppt,psd,mp4,mp3,zip''',
  `google_news` tinyint(1) DEFAULT '0',
  `delete_images_with_post` tinyint(1) DEFAULT '0',
  `sticky_sidebar` tinyint(1) DEFAULT '0',
  `ai_writer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `google_indexing_api` tinyint(1) DEFAULT '0',
  `bulk_post_upload_for_authors` tinyint(1) DEFAULT '1',
  `logo_size` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '178x56',
  `routes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `last_cron_update` timestamp NULL DEFAULT NULL,
  `version` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_lang`, `multilingual_system`, `theme_mode`, `logo`, `logo_footer`, `logo_email`, `favicon`, `show_hits`, `show_rss`, `rss_content_type`, `show_newsticker`, `pagination_per_page`, `google_analytics`, `mail_service`, `mail_protocol`, `mail_encryption`, `mail_host`, `mail_port`, `mail_username`, `mail_password`, `mail_title`, `mail_reply_to`, `mailjet_api_key`, `mailjet_secret_key`, `mailjet_email_address`, `google_client_id`, `google_client_secret`, `vk_app_id`, `vk_secure_key`, `facebook_app_id`, `facebook_app_secret`, `facebook_comment`, `facebook_comment_active`, `show_featured_section`, `show_latest_posts`, `pwa_status`, `pwa_logo`, `registration_system`, `post_url_structure`, `comment_system`, `comment_approval_system`, `show_post_author`, `show_post_date`, `menu_limit`, `custom_header_codes`, `custom_footer_codes`, `adsense_activation_code`, `recaptcha_site_key`, `recaptcha_secret_key`, `emoji_reactions`, `mail_contact_status`, `mail_contact`, `cache_system`, `static_cache_system`, `cache_refresh_time`, `refresh_cache_database_changes`, `email_verification`, `file_manager_show_files`, `audio_download_button`, `approve_added_user_posts`, `approve_updated_user_posts`, `timezone`, `show_latest_posts_on_slider`, `show_latest_posts_on_featured`, `sort_slider_posts`, `sort_featured_posts`, `newsletter_status`, `newsletter_popup`, `newsletter_image`, `show_home_link`, `post_format_article`, `post_format_gallery`, `post_format_sorted_list`, `post_format_video`, `post_format_audio`, `post_format_trivia_quiz`, `post_format_personality_quiz`, `post_format_poll`, `post_format_table_of_contents`, `post_format_recipe`, `maintenance_mode_title`, `maintenance_mode_description`, `maintenance_mode_status`, `sitemap_frequency`, `sitemap_last_modification`, `sitemap_priority`, `show_user_email_on_profile`, `reward_system_status`, `reward_amount`, `human_verification`, `currency_name`, `currency_symbol`, `currency_format`, `currency_symbol_format`, `payout_methods`, `storage`, `aws_key`, `aws_secret`, `aws_bucket`, `aws_region`, `auto_post_deletion`, `auto_post_deletion_days`, `auto_post_deletion_delete_all`, `redirect_rss_posts_to_original`, `image_file_format`, `allowed_file_extensions`, `google_news`, `delete_images_with_post`, `sticky_sidebar`, `ai_writer`, `google_indexing_api`, `bulk_post_upload_for_authors`, `logo_size`, `routes`, `last_cron_update`, `version`) VALUES
(1, 2, 1, 'light', 'uploads/logo/logo_68594d41a1cf93-44397522.jpg', 'uploads/logo/logo_68594f1073f382-80021034.png', 'uploads/logo/logo_6856a85def6481-83942539.jpg', 'uploads/logo/favicon_68594f5ad36ea7-96349288.png', 1, 1, 'summary', 1, 16, NULL, 'swift', 'smtp', 'tls', NULL, '587', NULL, NULL, 'Varient', 'noreply@domain.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, 'slug', 0, 0, 0, 1, 9, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 0, 1800, 0, 0, 1, 1, 1, 1, 'Europe/Paris', 0, 0, 'by_slider_order', 'by_featured_order', 1, 0, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Coming Soon!', 'Our website is under construction. We\'ll be here soon with our new awesome site.', 0, 'auto', 'auto', 'auto', 1, 0, 0.25, NULL, 'USD', '$', 'us', 'left', NULL, 'local', NULL, NULL, NULL, NULL, 0, 30, 0, 0, 'JPG', 'jpg,jpeg,png,gif,svg,csv,doc,docx,pdf,ppt,psd,mp4,mp3,zip', 0, 0, 0, NULL, 0, 1, '80x80', NULL, '2025-06-23 15:11:47', '2.4');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `image_big` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_slider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_mid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_small` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_mime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'jpg',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `user_id` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image_big`, `image_default`, `image_slider`, `image_mid`, `image_small`, `image_mime`, `file_name`, `storage`, `user_id`) VALUES
(1, 'uploads/images/202506/image_870x580_68595093a082d.jpg', 'uploads/images/202506/image_870x_68595093a8053.jpg', 'uploads/images/202506/image_694x532_68595093adfc9.jpg', 'uploads/images/202506/image_430x256_68595093b101f.jpg', 'uploads/images/202506/image_140x98_68595093b21bf.jpg', 'jpg', 'images.jpg', 'local', 1),
(2, 'uploads/images/202506/image_870x580_68595273370d2.jpg', 'uploads/images/202506/image_870x_6859527343a28.jpg', 'uploads/images/202506/image_694x532_685952734f4b9.jpg', 'uploads/images/202506/image_430x256_6859527357408.jpg', 'uploads/images/202506/image_140x98_685952735c3fa.jpg', 'jpg', '1749382246.jpg', 'local', 1),
(3, 'uploads/images/202506/image_870x580_685952c918093.jpg', 'uploads/images/202506/image_870x_685952c9444c1.jpg', 'uploads/images/202506/image_694x532_685952c95ac21.jpg', 'uploads/images/202506/image_430x256_685952c96b75a.jpg', 'uploads/images/202506/image_140x98_685952c97a487.jpg', 'jpg', '496935109_1156413903195600_1337602752460427222_n.jpg', 'local', 1),
(4, 'uploads/images/202506/image_870x580_68595329a054c.jpg', 'uploads/images/202506/image_870x_68595329ab6fc.jpg', 'uploads/images/202506/image_694x532_68595329b5af9.jpg', 'uploads/images/202506/image_430x256_68595329bc842.jpg', 'uploads/images/202506/image_140x98_68595329c078c.jpg', 'jpg', '503701846_1153447060158951_313599728036373561_n.jpg', 'local', 1),
(5, 'uploads/images/202506/image_870x580_68595541323bc.jpg', 'uploads/images/202506/image_870x_68595541392ad.jpg', 'uploads/images/202506/image_694x532_685955414029f.jpg', 'uploads/images/202506/image_430x256_68595541445f0.jpg', 'uploads/images/202506/image_140x98_68595541466e4.jpg', 'jpg', 'Untitled drawing (1).jpg', 'local', 1),
(6, 'uploads/images/202506/image_870x580_6859554a1876a.jpg', 'uploads/images/202506/image_870x_6859554a3acc0.jpg', 'uploads/images/202506/image_694x532_6859554a4b6ca.jpg', 'uploads/images/202506/image_430x256_6859554a56232.jpg', 'uploads/images/202506/image_140x98_6859554a5ea13.jpg', 'jpg', '502960132_1148777320625925_3082955466155248869_n.jpg', 'local', 1),
(8, 'uploads/images/202506/image_870x580_68595628d5ea3.jpg', 'uploads/images/202506/image_870x_6859562901445.jpg', 'uploads/images/202506/image_694x532_685956291407a.jpg', 'uploads/images/202506/image_430x256_685956292190d.jpg', 'uploads/images/202506/image_140x98_685956292d4ff.jpg', 'jpg', '496316674_1136773361826321_6962207151669548739_n.jpg', 'local', 1),
(9, 'uploads/images/202506/image_870x580_6859562d49a19.jpg', 'uploads/images/202506/image_870x_6859562d6a760.jpg', 'uploads/images/202506/image_694x532_6859562d7c4bb.jpg', 'uploads/images/202506/image_430x256_6859562d88de1.jpg', 'uploads/images/202506/image_140x98_6859562d960d2.jpg', 'jpg', '496056292_1136773345159656_3093534503582084003_n.jpg', 'local', 1),
(10, 'uploads/images/202506/image_870x580_68595d10258ee.jpg', 'uploads/images/202506/image_870x_68595d103915d.jpg', 'uploads/images/202506/image_694x532_68595d103f243.jpg', 'uploads/images/202506/image_430x256_68595d1041de9.jpg', 'uploads/images/202506/image_140x98_68595d1042bf1.jpg', 'jpg', 'image_870x_6859560fe7f11.jpg', 'local', 1),
(11, 'uploads/images/202506/image_870x580_68595ef9dac50.jpg', 'uploads/images/202506/image_870x_68595ef9df979.jpg', 'uploads/images/202506/image_694x532_68595ef9e4e37.jpg', 'uploads/images/202506/image_430x256_68595ef9e7562.jpg', 'uploads/images/202506/image_140x98_68595ef9e823a.jpg', 'jpg', 'Untitled drawing (2).jpg', 'local', 1),
(12, 'uploads/images/202506/image_870x580_685960559ac53.jpg', 'uploads/images/202506/image_870x_68596055a59ba.jpg', 'uploads/images/202506/image_694x532_68596055af16f.jpg', 'uploads/images/202506/image_430x256_68596055b53cf.jpg', 'uploads/images/202506/image_140x98_68596055b8c82.jpg', 'jpg', 'Untitled drawing (3).jpg', 'local', 1),
(13, 'uploads/images/202506/image_870x580_685961ee184dc.jpg', 'uploads/images/202506/image_870x_685961ee25368.jpg', 'uploads/images/202506/image_694x532_685961ee30c96.jpg', 'uploads/images/202506/image_430x256_685961ee3788f.jpg', 'uploads/images/202506/image_140x98_685961ee3b68a.jpg', 'jpg', 'Untitled drawing (4).jpg', 'local', 1),
(14, 'uploads/images/202506/image_870x580_68596385af4e1.jpg', 'uploads/images/202506/image_870x_68596385b9c26.jpg', 'uploads/images/202506/image_694x532_68596385c3547.jpg', 'uploads/images/202506/image_430x256_68596385c9594.jpg', 'uploads/images/202506/image_140x98_68596385cd368.jpg', 'jpg', 'Untitled drawing (5).jpg', 'local', 1),
(15, 'uploads/images/202506/image_870x580_6859666540b9e.jpg', 'uploads/images/202506/image_870x_68596665738cf.jpg', 'uploads/images/202506/image_694x532_685966659b8ac.jpg', 'uploads/images/202506/image_430x256_68596665bda2f.jpg', 'uploads/images/202506/image_140x98_68596665dd7dc.jpg', 'jpg', '487164766_1098709375632720_7994321775065309293_n.jpg', 'local', 1),
(16, 'uploads/images/202506/image_870x580_685966662f9c2.jpg', 'uploads/images/202506/image_870x_685966665922b.jpg', 'uploads/images/202506/image_694x532_685966667e803.jpg', 'uploads/images/202506/image_430x256_685966669e97d.jpg', 'uploads/images/202506/image_140x98_68596666bd7b5.jpg', 'jpg', '487302862_1098709125632745_8536577582881947315_n.jpg', 'local', 1),
(17, 'uploads/images/202506/image_870x580_6859666707a4c.jpg', 'uploads/images/202506/image_870x_6859666745021.jpg', 'uploads/images/202506/image_694x532_685966676d375.jpg', 'uploads/images/202506/image_430x256_685966678a6f1.jpg', 'uploads/images/202506/image_140x98_68596667a329b.jpg', 'jpg', '487164213_1098709348966056_8097157434023468769_n.jpg', 'local', 1),
(18, 'uploads/images/202506/image_870x580_68596667e1fbe.jpg', 'uploads/images/202506/image_870x_685966681883b.jpg', 'uploads/images/202506/image_694x532_685966684255d.jpg', 'uploads/images/202506/image_430x256_6859666863949.jpg', 'uploads/images/202506/image_140x98_6859666880cf8.jpg', 'jpg', '487506732_1098709318966059_7487674168809532719_n.jpg', 'local', 1),
(19, 'uploads/images/202506/image_870x580_68596668c015e.jpg', 'uploads/images/202506/image_870x_68596668ea628.jpg', 'uploads/images/202506/image_694x532_685966691d14b.jpg', 'uploads/images/202506/image_430x256_68596669426f3.jpg', 'uploads/images/202506/image_140x98_685966695f2eb.jpg', 'jpg', '487825540_1098709365632721_8205108144745190160_n.jpg', 'local', 1),
(20, 'uploads/images/202506/image_870x580_685969a5ae11a.jpg', 'uploads/images/202506/image_870x_685969a5e3528.jpg', 'uploads/images/202506/image_694x532_685969a60975a.jpg', 'uploads/images/202506/image_430x256_685969a61d9b3.jpg', 'uploads/images/202506/image_140x98_685969a631848.jpg', 'jpg', '487437637_1097754052394919_7125509648950197197_n.jpg', 'local', 1),
(21, 'uploads/images/202506/image_870x580_685969a65ee05.jpg', 'uploads/images/202506/image_870x_685969a673649.jpg', 'uploads/images/202506/image_694x532_685969a683a96.jpg', 'uploads/images/202506/image_430x256_685969a68ebee.jpg', 'uploads/images/202506/image_140x98_685969a698292.jpg', 'jpg', '487122287_1097754002394924_4090594915514963905_n.jpg', 'local', 1),
(22, 'uploads/images/202506/image_870x580_685969a6bc76b.jpg', 'uploads/images/202506/image_870x_685969a6d1572.jpg', 'uploads/images/202506/image_694x532_685969a6e1830.jpg', 'uploads/images/202506/image_430x256_685969a6ec900.jpg', 'uploads/images/202506/image_140x98_685969a701ab2.jpg', 'jpg', '486465552_1097753959061595_1895907181788159019_n.jpg', 'local', 1),
(23, 'uploads/images/202506/image_870x580_685969a72fbab.jpg', 'uploads/images/202506/image_870x_685969a742d06.jpg', 'uploads/images/202506/image_694x532_685969a751f34.jpg', 'uploads/images/202506/image_430x256_685969a75c3ff.jpg', 'uploads/images/202506/image_140x98_685969a764a16.jpg', 'jpg', '486679429_1097754235728234_3550968993302853528_n.jpg', 'local', 1),
(24, 'uploads/images/202506/image_870x580_685969a78d1d3.jpg', 'uploads/images/202506/image_870x_685969a7a277c.jpg', 'uploads/images/202506/image_694x532_685969a7b3a19.jpg', 'uploads/images/202506/image_430x256_685969a7bedd4.jpg', 'uploads/images/202506/image_140x98_685969a7c79a7.jpg', 'jpg', '487065870_1097753762394948_8527955725893025250_n.jpg', 'local', 1),
(25, 'uploads/images/202506/image_870x580_685969a807763.jpg', 'uploads/images/202506/image_870x_685969a8381f5.jpg', 'uploads/images/202506/image_694x532_685969a850c98.jpg', 'uploads/images/202506/image_430x256_685969a86c89c.jpg', 'uploads/images/202506/image_140x98_685969a87ddc3.jpg', 'jpg', '486690125_1097754145728243_5161543254340740701_n.jpg', 'local', 1),
(26, 'uploads/images/202506/image_870x580_685969a8a9de9.jpg', 'uploads/images/202506/image_870x_685969a8bcd38.jpg', 'uploads/images/202506/image_694x532_685969a8cb97b.jpg', 'uploads/images/202506/image_430x256_685969a8d58d8.jpg', 'uploads/images/202506/image_140x98_685969a8dd800.jpg', 'jpg', '487104243_1097753765728281_8432422688929264238_n.jpg', 'local', 1),
(27, 'uploads/images/202506/image_870x580_685969a91c8bc.jpg', 'uploads/images/202506/image_870x_685969a949bd6.jpg', 'uploads/images/202506/image_694x532_685969a96019f.jpg', 'uploads/images/202506/image_430x256_685969a970c40.jpg', 'uploads/images/202506/image_140x98_685969a97fcd4.jpg', 'jpg', '486687903_1097753859061605_1360451924612762578_n.jpg', 'local', 1),
(28, 'uploads/images/202506/image_870x580_685969a9ad8c5.jpg', 'uploads/images/202506/image_870x_685969a9c0ec7.jpg', 'uploads/images/202506/image_694x532_685969a9d041e.jpg', 'uploads/images/202506/image_430x256_685969a9daaf9.jpg', 'uploads/images/202506/image_140x98_685969a9e322e.jpg', 'jpg', '486713973_1097754105728247_6443173180073527651_n.jpg', 'local', 1),
(29, 'uploads/images/202506/image_870x580_685969aa1e67a.jpg', 'uploads/images/202506/image_870x_685969aa34809.jpg', 'uploads/images/202506/image_694x532_685969aa43d4d.jpg', 'uploads/images/202506/image_430x256_685969aa4e331.jpg', 'uploads/images/202506/image_140x98_685969aa569aa.jpg', 'jpg', '486709325_1097753769061614_275798025169524501_n.jpg', 'local', 1),
(30, 'uploads/images/202506/image_870x580_685969aa828d4.jpg', 'uploads/images/202506/image_870x_685969aa967fa.jpg', 'uploads/images/202506/image_694x532_685969aaa5a9a.jpg', 'uploads/images/202506/image_430x256_685969aaafa80.jpg', 'uploads/images/202506/image_140x98_685969aab7b5c.jpg', 'jpg', '486852549_1097753899061601_4003962845824175191_n.jpg', 'local', 1),
(31, 'uploads/images/202506/image_870x580_685969aae1a80.jpg', 'uploads/images/202506/image_870x_685969ab0c1ee.jpg', 'uploads/images/202506/image_694x532_685969ab1d360.jpg', 'uploads/images/202506/image_430x256_685969ab2a8e5.jpg', 'uploads/images/202506/image_140x98_685969ab340e9.jpg', 'jpg', '486413841_1097753789061612_744844516649759868_n.jpg', 'local', 1),
(32, 'uploads/images/202506/image_870x580_685969ab61763.jpg', 'uploads/images/202506/image_870x_685969ab75694.jpg', 'uploads/images/202506/image_694x532_685969ab86741.jpg', 'uploads/images/202506/image_430x256_685969ab9343f.jpg', 'uploads/images/202506/image_140x98_685969ab9d857.jpg', 'jpg', '487378570_1097753879061603_9064161331127360469_n.jpg', 'local', 1),
(33, 'uploads/images/202506/image_870x580_685969abd0d3e.jpg', 'uploads/images/202506/image_870x_685969abebe2f.jpg', 'uploads/images/202506/image_694x532_685969ac10255.jpg', 'uploads/images/202506/image_430x256_685969ac26264.jpg', 'uploads/images/202506/image_140x98_685969ac385a7.jpg', 'jpg', '487307566_1097753932394931_5890492223414007647_n.jpg', 'local', 1),
(34, 'uploads/images/202506/image_870x580_685969ac66935.jpg', 'uploads/images/202506/image_870x_685969ac7a51c.jpg', 'uploads/images/202506/image_694x532_685969ac8ac9c.jpg', 'uploads/images/202506/image_430x256_685969ac96f1e.jpg', 'uploads/images/202506/image_140x98_685969aca0944.jpg', 'jpg', '487122989_1097753755728282_1952474161689783055_n.jpg', 'local', 1),
(35, 'uploads/images/202506/image_870x580_685969acc1bc9.jpg', 'uploads/images/202506/image_870x_685969acce9fa.jpg', 'uploads/images/202506/image_694x532_685969acd9cd9.jpg', 'uploads/images/202506/image_430x256_685969ace1815.jpg', 'uploads/images/202506/image_140x98_685969ace6695.jpg', 'jpg', '486950494_1097753955728262_8328809694587308568_n.jpg', 'local', 1),
(36, 'uploads/images/202506/image_870x580_685969ad179fc.jpg', 'uploads/images/202506/image_870x_685969ad2ce4b.jpg', 'uploads/images/202506/image_694x532_685969ad3b68c.jpg', 'uploads/images/202506/image_430x256_685969ad457db.jpg', 'uploads/images/202506/image_140x98_685969ad4d9b3.jpg', 'jpg', '487154613_1097754122394912_1550396993649649272_n.jpg', 'local', 1),
(37, 'uploads/images/202506/image_870x580_685969ad7b4f0.jpg', 'uploads/images/202506/image_870x_685969ada1782.jpg', 'uploads/images/202506/image_694x532_685969adb77cb.jpg', 'uploads/images/202506/image_430x256_685969adc8e9d.jpg', 'uploads/images/202506/image_140x98_685969add8338.jpg', 'jpg', '486475095_1097754159061575_5418797127765490885_n.jpg', 'local', 1),
(38, 'uploads/images/202506/image_870x580_685969ae19653.jpg', 'uploads/images/202506/image_870x_685969ae303f2.jpg', 'uploads/images/202506/image_694x532_685969ae40edc.jpg', 'uploads/images/202506/image_430x256_685969ae4d624.jpg', 'uploads/images/202506/image_140x98_685969ae574d5.jpg', 'jpg', '486632057_1097754142394910_3119389436617508606_n.jpg', 'local', 1),
(39, 'uploads/images/202506/image_870x580_685969ae84cb1.jpg', 'uploads/images/202506/image_870x_685969ae98d3b.jpg', 'uploads/images/202506/image_694x532_685969aea8ff1.jpg', 'uploads/images/202506/image_430x256_685969aeb508f.jpg', 'uploads/images/202506/image_140x98_685969aebe9bb.jpg', 'jpg', '486644080_1097753882394936_8174061144727108077_n.jpg', 'local', 1),
(40, 'uploads/images/202506/image_870x580_685969aee5e8a.jpg', 'uploads/images/202506/image_870x_685969af06b90.jpg', 'uploads/images/202506/image_694x532_685969af17a1c.jpg', 'uploads/images/202506/image_430x256_685969af27824.jpg', 'uploads/images/202506/image_140x98_685969af3392a.jpg', 'jpg', '486514083_1097754089061582_2581331489013146329_n.jpg', 'local', 1),
(41, 'uploads/images/202506/image_870x580_685969af59657.jpg', 'uploads/images/202506/image_870x_685969af6e20d.jpg', 'uploads/images/202506/image_694x532_685969af7ec3e.jpg', 'uploads/images/202506/image_430x256_685969af8b0ad.jpg', 'uploads/images/202506/image_140x98_685969af94a74.jpg', 'jpg', '486994425_1097753869061604_7620500571886930599_n.jpg', 'local', 1),
(42, 'uploads/images/202506/image_870x580_685969afc094b.jpg', 'uploads/images/202506/image_870x_685969afd4b0b.jpg', 'uploads/images/202506/image_694x532_685969afe5dc3.jpg', 'uploads/images/202506/image_430x256_685969aff2b5c.jpg', 'uploads/images/202506/image_140x98_685969b00936e.jpg', 'jpg', '487297095_1097754115728246_4796245599625586992_n.jpg', 'local', 1),
(43, 'uploads/images/202506/image_870x580_685969b036715.jpg', 'uploads/images/202506/image_870x_685969b04bc83.jpg', 'uploads/images/202506/image_694x532_685969b05d8cb.jpg', 'uploads/images/202506/image_430x256_685969b06b175.jpg', 'uploads/images/202506/image_140x98_685969b075e4f.jpg', 'jpg', '486653726_1097753745728283_7933881448423891666_n.jpg', 'local', 1),
(44, 'uploads/images/202506/image_870x580_685969b0a35fa.jpg', 'uploads/images/202506/image_870x_685969b0b7d03.jpg', 'uploads/images/202506/image_694x532_685969b0c85da.jpg', 'uploads/images/202506/image_430x256_685969b0d48fe.jpg', 'uploads/images/202506/image_140x98_685969b0de63c.jpg', 'jpg', '487311440_1097753975728260_7458645788580193011_n.jpg', 'local', 1),
(45, 'uploads/images/202506/image_870x580_685969b114270.jpg', 'uploads/images/202506/image_870x_685969b12bea2.jpg', 'uploads/images/202506/image_694x532_685969b13d467.jpg', 'uploads/images/202506/image_430x256_685969b14a0ad.jpg', 'uploads/images/202506/image_140x98_685969b1543b6.jpg', 'jpg', '486866911_1097753922394932_2928400030954049129_n.jpg', 'local', 1),
(46, 'uploads/images/202506/image_870x580_685969b18182f.jpg', 'uploads/images/202506/image_870x_685969b195cb6.jpg', 'uploads/images/202506/image_694x532_685969b1a63e3.jpg', 'uploads/images/202506/image_430x256_685969b1b25e6.jpg', 'uploads/images/202506/image_140x98_685969b1bbf9f.jpg', 'jpg', '487350201_1097753889061602_7865227230699199012_n.jpg', 'local', 1),
(47, 'uploads/images/202506/image_870x580_685969b1eb406.jpg', 'uploads/images/202506/image_870x_685969b20b2f2.jpg', 'uploads/images/202506/image_694x532_685969b21d4dd.jpg', 'uploads/images/202506/image_430x256_685969b22da2a.jpg', 'uploads/images/202506/image_140x98_685969b2387cb.jpg', 'jpg', '486964283_1097753952394929_5601447402920883662_n.jpg', 'local', 1),
(48, 'uploads/images/202506/image_870x580_685969b2660a6.jpg', 'uploads/images/202506/image_870x_685969b27bbc9.jpg', 'uploads/images/202506/image_694x532_685969b28db8b.jpg', 'uploads/images/202506/image_430x256_685969b29bc20.jpg', 'uploads/images/202506/image_140x98_685969b2a68a9.jpg', 'jpg', '487239642_1097753969061594_4205456330825167657_n.jpg', 'local', 1),
(49, 'uploads/images/202506/image_870x580_685969b2d973c.jpg', 'uploads/images/202506/image_870x_685969b2ed731.jpg', 'uploads/images/202506/image_694x532_685969b30a628.jpg', 'uploads/images/202506/image_430x256_685969b317506.jpg', 'uploads/images/202506/image_140x98_685969b323b37.jpg', 'jpg', '487077445_1097753832394941_179284822784688518_n.jpg', 'local', 1),
(50, 'uploads/images/202506/image_870x580_685969b352bd8.jpg', 'uploads/images/202506/image_870x_685969b36935f.jpg', 'uploads/images/202506/image_694x532_685969b37a329.jpg', 'uploads/images/202506/image_430x256_685969b387585.jpg', 'uploads/images/202506/image_140x98_685969b391e6b.jpg', 'jpg', '486487570_1097753935728264_1556063219055893462_n.jpg', 'local', 1),
(51, 'uploads/images/202506/image_870x580_685969b3c3c8d.jpg', 'uploads/images/202506/image_870x_685969b3e04d2.jpg', 'uploads/images/202506/image_694x532_685969b3f0586.jpg', 'uploads/images/202506/image_430x256_685969b406d98.jpg', 'uploads/images/202506/image_140x98_685969b40f259.jpg', 'jpg', '486649569_1097753925728265_9059717576244982083_n.jpg', 'local', 1),
(52, 'uploads/images/202506/image_870x580_685969b43b6a1.jpg', 'uploads/images/202506/image_870x_685969b44fc7c.jpg', 'uploads/images/202506/image_694x532_685969b460ce2.jpg', 'uploads/images/202506/image_430x256_685969b46d6ce.jpg', 'uploads/images/202506/image_140x98_685969b47788f.jpg', 'jpg', '487099461_1097753929061598_960087048858804115_n.jpg', 'local', 1),
(53, 'uploads/images/202506/image_870x580_685969b4a1f97.jpg', 'uploads/images/202506/image_870x_685969b4bf09e.jpg', 'uploads/images/202506/image_694x532_685969b4cea45.jpg', 'uploads/images/202506/image_430x256_685969b4d8f30.jpg', 'uploads/images/202506/image_140x98_685969b4e145e.jpg', 'jpg', '487003988_1097753805728277_8668204112860179636_n.jpg', 'local', 1),
(54, 'uploads/images/202506/image_870x580_685969b512d2f.jpg', 'uploads/images/202506/image_870x_685969b529e66.jpg', 'uploads/images/202506/image_694x532_685969b53b544.jpg', 'uploads/images/202506/image_430x256_685969b547805.jpg', 'uploads/images/202506/image_140x98_685969b5510b2.jpg', 'jpg', '487204505_1097753895728268_6787816234512929984_n.jpg', 'local', 1),
(55, 'uploads/images/202506/image_870x580_685969b58022c.jpg', 'uploads/images/202506/image_870x_685969b594a42.jpg', 'uploads/images/202506/image_694x532_685969b5a5326.jpg', 'uploads/images/202506/image_430x256_685969b5b1945.jpg', 'uploads/images/202506/image_140x98_685969b5bb6c5.jpg', 'jpg', '487122716_1097754092394915_8971900590596634555_n.jpg', 'local', 1),
(56, 'uploads/images/202506/image_870x580_685969b5edcc9.jpg', 'uploads/images/202506/image_870x_685969b60eef8.jpg', 'uploads/images/202506/image_694x532_685969b627edc.jpg', 'uploads/images/202506/image_430x256_685969b63926d.jpg', 'uploads/images/202506/image_140x98_685969b6446e0.jpg', 'jpg', '486620632_1097754112394913_7878967573341107108_n.jpg', 'local', 1),
(57, 'uploads/images/202506/image_870x580_685969b673d8b.jpg', 'uploads/images/202506/image_870x_685969b68860a.jpg', 'uploads/images/202506/image_694x532_685969b69983a.jpg', 'uploads/images/202506/image_430x256_685969b6a6934.jpg', 'uploads/images/202506/image_140x98_685969b6b0ed4.jpg', 'jpg', '486715727_1097753782394946_2603331671388922539_n.jpg', 'local', 1),
(58, 'uploads/images/202506/image_870x580_685969b6e144b.jpg', 'uploads/images/202506/image_870x_685969b700fe3.jpg', 'uploads/images/202506/image_694x532_685969b711e4e.jpg', 'uploads/images/202506/image_430x256_685969b71f5f2.jpg', 'uploads/images/202506/image_140x98_685969b72b4c6.jpg', 'jpg', '486679563_1097754172394907_5708082925853805781_n.jpg', 'local', 1),
(59, 'uploads/images/202506/image_870x580_685969b7533ec.jpg', 'uploads/images/202506/image_870x_685969b767354.jpg', 'uploads/images/202506/image_694x532_685969b777ace.jpg', 'uploads/images/202506/image_430x256_685969b783d6a.jpg', 'uploads/images/202506/image_140x98_685969b78de7e.jpg', 'jpg', '487376318_1097753942394930_2059835719962452446_n.jpg', 'local', 1),
(60, 'uploads/images/202506/image_870x580_685969b7b9256.jpg', 'uploads/images/202506/image_870x_685969b7d72bd.jpg', 'uploads/images/202506/image_694x532_685969b7e783d.jpg', 'uploads/images/202506/image_430x256_685969b7f1ca2.jpg', 'uploads/images/202506/image_140x98_685969b805bd3.jpg', 'jpg', '487104984_1097753962394928_957726976533494740_n.jpg', 'local', 1),
(61, 'uploads/images/202506/image_870x580_685969b830897.jpg', 'uploads/images/202506/image_870x_685969b850b92.jpg', 'uploads/images/202506/image_694x532_685969b861f78.jpg', 'uploads/images/202506/image_430x256_685969b86dc1a.jpg', 'uploads/images/202506/image_140x98_685969b877708.jpg', 'jpg', '487224973_1097753739061617_473767868496339222_n.jpg', 'local', 1),
(62, 'uploads/images/202506/image_870x580_685969b8a8283.jpg', 'uploads/images/202506/image_870x_685969b8bcb72.jpg', 'uploads/images/202506/image_694x532_685969b8ce058.jpg', 'uploads/images/202506/image_430x256_685969b8daf91.jpg', 'uploads/images/202506/image_140x98_685969b8e561a.jpg', 'jpg', '487079423_1097754082394916_2988805828034688118_n.jpg', 'local', 1),
(63, 'uploads/images/202506/image_870x580_685969b91b55d.jpg', 'uploads/images/202506/image_870x_685969b93c4b2.jpg', 'uploads/images/202506/image_694x532_685969b94d9ef.jpg', 'uploads/images/202506/image_430x256_685969b95868c.jpg', 'uploads/images/202506/image_140x98_685969b960f6b.jpg', 'jpg', '487494459_1097754119061579_7093918161171702368_n.jpg', 'local', 1),
(64, 'uploads/images/202506/image_870x580_685969b9a8460.jpg', 'uploads/images/202506/image_870x_685969b9d0d53.jpg', 'uploads/images/202506/image_694x532_685969ba00ba1.jpg', 'uploads/images/202506/image_430x256_685969ba22adb.jpg', 'uploads/images/202506/image_140x98_685969ba41f9a.jpg', 'jpg', '487164766_1098709375632720_7994321775065309293_n.jpg', 'local', 1),
(65, 'uploads/images/202506/image_870x580_685969ba85883.jpg', 'uploads/images/202506/image_870x_685969baabfdc.jpg', 'uploads/images/202506/image_694x532_685969bacde1b.jpg', 'uploads/images/202506/image_430x256_685969baeca79.jpg', 'uploads/images/202506/image_140x98_685969bb13f2f.jpg', 'jpg', '487302862_1098709125632745_8536577582881947315_n.jpg', 'local', 1),
(66, 'uploads/images/202506/image_870x580_685969bb4e1dd.jpg', 'uploads/images/202506/image_870x_685969bb81f9f.jpg', 'uploads/images/202506/image_694x532_685969bba3ab0.jpg', 'uploads/images/202506/image_430x256_685969bbbf1eb.jpg', 'uploads/images/202506/image_140x98_685969bbd8016.jpg', 'jpg', '487164213_1098709348966056_8097157434023468769_n.jpg', 'local', 1),
(67, 'uploads/images/202506/image_870x580_685969bc2ab34.jpg', 'uploads/images/202506/image_870x_685969bc54ae6.jpg', 'uploads/images/202506/image_694x532_685969bc791ea.jpg', 'uploads/images/202506/image_430x256_685969bc9966a.jpg', 'uploads/images/202506/image_140x98_685969bcb61d9.jpg', 'jpg', '487506732_1098709318966059_7487674168809532719_n.jpg', 'local', 1),
(68, 'uploads/images/202506/image_870x580_685969bd059b8.jpg', 'uploads/images/202506/image_870x_685969bd335b4.jpg', 'uploads/images/202506/image_694x532_685969bd57c18.jpg', 'uploads/images/202506/image_430x256_685969bd77d4a.jpg', 'uploads/images/202506/image_140x98_685969bd949e6.jpg', 'jpg', '487825540_1098709365632721_8205108144745190160_n.jpg', 'local', 1);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `short_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `language_code` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text_direction` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text_editor_lang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'en',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `language_order` smallint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `short_form`, `language_code`, `text_direction`, `text_editor_lang`, `status`, `language_order`) VALUES
(2, 'العربية', 'Ar', 'ar_tn', 'rtl', 'ar', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `language_translations`
--

CREATE TABLE `language_translations` (
  `id` int NOT NULL,
  `lang_id` smallint DEFAULT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `translation` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `language_translations`
--

INSERT INTO `language_translations` (`id`, `lang_id`, `label`, `translation`) VALUES
(949, 2, 'about_me', 'عني'),
(950, 2, 'accept_cookies', 'قبول ملفات تعريف الارتباط'),
(951, 2, 'activate', 'تفعيل'),
(952, 2, 'activated', 'تم التفعيل'),
(953, 2, 'active', 'نشط'),
(954, 2, 'active_payment_request_error', 'لديك طلب دفع نشط بالفعل! بمجرد اكتماله، يمكنك تقديم طلب جديد.'),
(955, 2, 'additional_images', 'صور إضافية'),
(956, 2, 'address', 'العنوان'),
(957, 2, 'add_album', 'إضافة ألبوم'),
(958, 2, 'add_answer', 'إضافة إجابة'),
(959, 2, 'add_article', 'إضافة مقال'),
(960, 2, 'add_audio', 'إضافة صوت'),
(961, 2, 'add_breaking', 'إضافة إلى الأخبار العاجلة'),
(962, 2, 'add_category', 'إضافة تصنيف'),
(963, 2, 'add_featured', 'إضافة إلى المميزة'),
(964, 2, 'add_font', 'إضافة خط'),
(965, 2, 'add_gallery', 'إضافة معرض'),
(966, 2, 'add_iframe', 'إضافة إطار مضمّن'),
(967, 2, 'add_image', 'إضافة صورة'),
(968, 2, 'add_image_url', 'إضافة رابط صورة'),
(969, 2, 'add_language', 'إضافة لغة'),
(970, 2, 'add_link', 'إضافة رابط قائمة'),
(971, 2, 'add_new', 'إضافة جديد'),
(972, 2, 'add_new_item', 'إضافة عنصر جديد'),
(973, 2, 'add_page', 'إضافة صفحة'),
(974, 2, 'add_payout', 'إضافة دفعة'),
(975, 2, 'add_personality_quiz', 'إضافة اختبار شخصية'),
(976, 2, 'add_poll', 'إضافة استطلاع'),
(977, 2, 'add_post', 'إضافة منشور'),
(978, 2, 'add_posts_as_draft', 'إضافة منشورات كمسودة'),
(979, 2, 'add_question', 'إضافة سؤال'),
(980, 2, 'add_quiz', 'إضافة اختبار'),
(981, 2, 'add_reading_list', 'إضافة إلى قائمة القراءة'),
(982, 2, 'add_recipe', 'إضافة وصفة'),
(983, 2, 'add_recommended', 'إضافة إلى المقترحات'),
(984, 2, 'add_result', 'إضافة نتيجة'),
(985, 2, 'add_role', 'إضافة دور'),
(986, 2, 'add_slider', 'إضافة إلى شريط التمرير'),
(987, 2, 'add_sorted_list', 'إضافة قائمة مرتبة'),
(988, 2, 'add_table_of_contents', 'إضافة جدول محتويات'),
(989, 2, 'add_tag', 'إضافة وسم'),
(990, 2, 'add_trivia_quiz', 'إضافة اختبار معلومات'),
(991, 2, 'add_user', 'إضافة مستخدم'),
(992, 2, 'add_video', 'إضافة فيديو'),
(993, 2, 'add_widget', 'إضافة أداة'),
(994, 2, 'admin', 'المسؤول'),
(995, 2, 'admin_panel', 'لوحة التحكم'),
(996, 2, 'admin_panel_link', 'رابط لوحة التحكم'),
(997, 2, 'adsense_activation_code', 'رمز تفعيل AdSense'),
(998, 2, 'advanced', 'متقدم'),
(999, 2, 'ad_size', 'حجم الإعلان'),
(1000, 2, 'ad_space', 'مساحة إعلانية'),
(1001, 2, 'ad_spaces', 'المساحات الإعلانية'),
(1002, 2, 'ad_space_header', 'رأس الصفحة'),
(1003, 2, 'ad_space_index_bottom', 'الفهرس (أسفل)'),
(1004, 2, 'ad_space_index_top', 'الفهرس (أعلى الصفحة)'),
(1005, 2, 'ad_space_in_article', 'داخل المقال'),
(1006, 2, 'ad_space_paragraph_exp', 'سيتم عرض الإعلان بعد رقم الفقرة الذي حددته'),
(1007, 2, 'ad_space_posts_bottom', 'المنشورات (أسفل)'),
(1008, 2, 'ad_space_posts_exp', 'سيتم عرض هذا الإعلان في صفحات المنشورات، التصنيفات، الملف الشخصي، الوسوم، والبحث'),
(1009, 2, 'ad_space_posts_top', 'المنشورات (أعلى)'),
(1010, 2, 'ad_space_post_bottom', 'تفاصيل المنشور (أسفل)'),
(1011, 2, 'ad_space_post_top', 'تفاصيل المنشور (أعلى)'),
(1012, 2, 'ago', 'منذ'),
(1013, 2, 'ai_content_creator', 'منشئ المحتوى بالذكاء الاصطناعي'),
(1014, 2, 'ai_writer', 'كاتب بالذكاء الاصطناعي'),
(1015, 2, 'album', 'ألبوم'),
(1016, 2, 'albums', 'ألبومات'),
(1017, 2, 'album_cover', 'غلاف الألبوم'),
(1018, 2, 'album_name', 'اسم الألبوم'),
(1019, 2, 'all', 'الكل'),
(1020, 2, 'allowed_file_extensions', 'الامتدادات المسموح بها'),
(1021, 2, 'all_permissions', 'جميع الصلاحيات'),
(1022, 2, 'all_posts', 'جميع المنشورات'),
(1023, 2, 'all_time', 'كل الوقت'),
(1024, 2, 'all_users_can_vote', 'يمكن لجميع المستخدمين التصويت'),
(1025, 2, 'always', 'دائماً'),
(1026, 2, 'amount', 'المبلغ'),
(1027, 2, 'angry', 'غاضب'),
(1028, 2, 'answers', 'إجابات'),
(1029, 2, 'answer_format', 'تنسيق الإجابة'),
(1030, 2, 'answer_text', 'نص الإجابة'),
(1031, 2, 'api_key', 'مفتاح API'),
(1032, 2, 'approve', 'الموافقة'),
(1033, 2, 'approved_comments', 'التعليقات المعتمدة'),
(1034, 2, 'approve_added_user_posts', 'الموافقة على منشورات المستخدمين المضافة'),
(1035, 2, 'approve_updated_user_posts', 'الموافقة على منشورات المستخدمين المعدلة'),
(1036, 2, 'app_id', 'معرف التطبيق'),
(1037, 2, 'app_name', 'اسم التطبيق'),
(1038, 2, 'app_secret', 'السر الخاص بالتطبيق'),
(1039, 2, 'April', 'أبريل'),
(1040, 2, 'article', 'مقال'),
(1041, 2, 'article_post_exp', 'مقال يحتوي على صور وفيديوهات مضمنة'),
(1042, 2, 'audio', 'صوت'),
(1043, 2, 'audios', 'ملفات صوتية'),
(1044, 2, 'audios_exp', 'اختر ملفاتك الصوتية وأنشئ قائمة تشغيل'),
(1045, 2, 'audio_download_button', 'زر تحميل الصوت'),
(1046, 2, 'audio_post_exp', 'قم بتحميل الملفات الصوتية وأنشئ قائمة تشغيل'),
(1047, 2, 'August', 'أغسطس'),
(1048, 2, 'author', 'المؤلف'),
(1049, 2, 'automatically_calculated', 'محسوب تلقائياً'),
(1050, 2, 'auto_post_deletion', 'حذف المنشورات تلقائياً'),
(1051, 2, 'auto_update', 'تحديث تلقائي'),
(1052, 2, 'avatar', 'الصورة الرمزية'),
(1053, 2, 'aws_key', 'مفتاح وصول AWS'),
(1054, 2, 'aws_secret', 'المفتاح السري لـ AWS'),
(1055, 2, 'aws_storage', 'تخزين AWS S3'),
(1056, 2, 'back', 'رجوع'),
(1057, 2, 'balance', 'الرصيد'),
(1058, 2, 'bank_account_holder_name', 'اسم صاحب الحساب البنكي'),
(1059, 2, 'bank_branch_city', 'مدينة فرع البنك'),
(1060, 2, 'bank_branch_country', 'دولة فرع البنك'),
(1061, 2, 'bank_name', 'اسم البنك'),
(1062, 2, 'banned', 'محظور'),
(1063, 2, 'banner', 'بانر'),
(1064, 2, 'banner_desktop', 'بانر سطح المكتب'),
(1065, 2, 'banner_desktop_exp', 'سيتم عرض هذا الإعلان على الشاشات التي يزيد عرضها عن 992 بكسل'),
(1066, 2, 'banner_mobile', 'بانر الهاتف المحمول'),
(1067, 2, 'banner_mobile_exp', 'سيتم عرض هذا الإعلان على الشاشات التي يقل عرضها عن 992 بكسل'),
(1068, 2, 'ban_user', 'حظر المستخدم'),
(1069, 2, 'bitcoin', 'بيتكوين'),
(1070, 2, 'bitcoin_address', 'عنوان البيتكوين'),
(1071, 2, 'block_color', 'لون الرأس العلوي وعناوين الكتل'),
(1072, 2, 'breaking', 'عاجل'),
(1073, 2, 'breaking_news', 'أخبار عاجلة'),
(1074, 2, 'browse_files', 'تصفح الملفات'),
(1075, 2, 'btn_goto_home', 'العودة إلى الصفحة الرئيسية'),
(1076, 2, 'btn_reply', 'رد'),
(1077, 2, 'btn_send', 'إرسال'),
(1078, 2, 'btn_submit', 'إرسال'),
(1079, 2, 'bucket_name', 'اسم الحاوية (Bucket)'),
(1080, 2, 'bulk_post_upload', 'رفع منشورات جماعي'),
(1081, 2, 'bulk_post_upload_exp', 'يمكنك إضافة منشوراتك من خلال ملف CSV من هذا القسم'),
(1082, 2, 'bulk_post_upload_for_authors', 'رفع منشورات جماعي للمؤلفين'),
(1083, 2, 'by_date', 'حسب التاريخ'),
(1084, 2, 'by_featured_order', 'حسب ترتيب المميزة'),
(1085, 2, 'by_slider_order', 'حسب ترتيب السلايدر'),
(1086, 2, 'cache_refresh_time', 'وقت تحديث التخزين المؤقت (بالدقائق)'),
(1087, 2, 'cache_refresh_time_exp', 'بعد هذا الوقت، سيتم تحديث ملفات التخزين المؤقت الخاصة بك.'),
(1088, 2, 'cache_system', 'نظام التخزين المؤقت'),
(1089, 2, 'cancel', 'إلغاء'),
(1090, 2, 'categories', 'التصنيفات'),
(1091, 2, 'category', 'التصنيف'),
(1092, 2, 'category_block_style', 'نمط كتلة التصنيف'),
(1093, 2, 'category_ids_list', 'قائمة معرفات التصنيفات'),
(1094, 2, 'category_name', 'اسم التصنيف'),
(1095, 2, 'category_select_widget', 'اختر الأدوات التي تريد عرضها في الشريط الجانبي'),
(1096, 2, 'change', 'تغيير'),
(1097, 2, 'change_avatar', 'تغيير الصورة الرمزية'),
(1098, 2, 'change_favicon', 'تغيير الأيقونة المفضلة (favicon)'),
(1099, 2, 'change_logo', 'تغيير الشعار'),
(1100, 2, 'change_password', 'تغيير كلمة المرور'),
(1101, 2, 'change_user_role', 'تغيير دور المستخدم'),
(1102, 2, 'choose_post_format', 'اختر تنسيق المنشور'),
(1103, 2, 'circle', 'دائرة'),
(1104, 2, 'city', 'المدينة'),
(1105, 2, 'client_id', 'معرف العميل'),
(1106, 2, 'client_secret', 'المفتاح السري للعميل'),
(1107, 2, 'close', 'إغلاق'),
(1108, 2, 'color', 'اللون'),
(1109, 2, 'color_code', 'رمز اللون'),
(1110, 2, 'comment', 'تعليق'),
(1111, 2, 'comments', 'التعليقات'),
(1112, 2, 'comments_contact', 'التعليقات ورسائل التواصل'),
(1113, 2, 'comment_approval_system', 'نظام الموافقة على التعليقات'),
(1114, 2, 'comment_system', 'نظام التعليقات'),
(1115, 2, 'completed', 'مكتمل'),
(1116, 2, 'confirmed', 'تم التأكيد'),
(1117, 2, 'confirm_album', 'هل أنت متأكد أنك تريد حذف هذا الألبوم؟'),
(1118, 2, 'confirm_answer', 'هل أنت متأكد أنك تريد حذف هذه الإجابة؟'),
(1119, 2, 'confirm_ban', 'هل أنت متأكد أنك تريد حظر هذا المستخدم؟'),
(1120, 2, 'confirm_category', 'هل أنت متأكد أنك تريد حذف هذا التصنيف؟'),
(1121, 2, 'confirm_comment', 'هل أنت متأكد أنك تريد حذف هذا التعليق؟'),
(1122, 2, 'confirm_comments', 'هل أنت متأكد أنك تريد حذف التعليقات المحددة؟'),
(1123, 2, 'confirm_image', 'هل أنت متأكد أنك تريد حذف هذه الصورة؟'),
(1124, 2, 'confirm_item', 'هل أنت متأكد أنك تريد حذف هذا العنصر؟'),
(1125, 2, 'confirm_language', 'هل أنت متأكد أنك تريد حذف هذه اللغة؟'),
(1126, 2, 'confirm_link', 'هل أنت متأكد أنك تريد حذف هذا الرابط؟'),
(1127, 2, 'confirm_message', 'هل أنت متأكد أنك تريد حذف هذه الرسالة؟'),
(1128, 2, 'confirm_messages', 'هل أنت متأكد أنك تريد حذف الرسائل المحددة؟'),
(1129, 2, 'confirm_page', 'هل أنت متأكد أنك تريد حذف هذه الصفحة؟'),
(1130, 2, 'confirm_password', 'تأكيد كلمة المرور'),
(1131, 2, 'confirm_poll', 'هل أنت متأكد أنك تريد حذف هذا الاستطلاع؟'),
(1132, 2, 'confirm_post', 'هل أنت متأكد أنك تريد حذف هذا المنشور؟'),
(1133, 2, 'confirm_posts', 'هل أنت متأكد أنك تريد حذف المنشورات المحددة؟'),
(1134, 2, 'confirm_question', 'هل أنت متأكد أنك تريد حذف هذا السؤال؟'),
(1135, 2, 'confirm_record', 'هل أنت متأكد أنك تريد حذف هذا السجل؟'),
(1136, 2, 'confirm_result', 'هل أنت متأكد أنك تريد حذف هذه النتيجة؟'),
(1137, 2, 'confirm_rss', 'هل أنت متأكد أنك تريد حذف هذا الموجز؟'),
(1138, 2, 'confirm_user', 'هل أنت متأكد أنك تريد حذف هذا المستخدم؟'),
(1139, 2, 'confirm_user_email', 'تأكيد بريد المستخدم الإلكتروني'),
(1140, 2, 'confirm_widget', 'هل أنت متأكد أنك تريد حذف هذه الأداة؟'),
(1141, 2, 'confirm_your_email', 'تأكيد بريدك الإلكتروني'),
(1142, 2, 'connect_with_facebook', 'الاتصال بـ Facebook'),
(1143, 2, 'connect_with_google', 'الاتصال بـ Google'),
(1144, 2, 'connect_with_vk', 'الاتصال بـ VK'),
(1145, 2, 'contact', 'اتصل بنا'),
(1146, 2, 'contact_message', 'رسالة التواصل'),
(1147, 2, 'contact_messages', 'رسائل التواصل'),
(1148, 2, 'contact_messages_will_send', 'سيتم إرسال رسائل التواصل إلى هذا البريد الإلكتروني.'),
(1149, 2, 'contact_settings', 'إعدادات التواصل'),
(1150, 2, 'contact_text', 'نص التواصل'),
(1151, 2, 'content', 'المحتوى'),
(1152, 2, 'cookies_warning', 'تحذير ملفات تعريف الارتباط'),
(1153, 2, 'cookie_prefix', 'بادئة ملفات تعريف الارتباط'),
(1154, 2, 'cook_time', 'وقت الطهي'),
(1155, 2, 'copyright', 'حقوق النشر'),
(1156, 2, 'correct', 'صحيح'),
(1157, 2, 'correct_answer', 'الإجابة الصحيحة'),
(1158, 2, 'country', 'الدولة'),
(1159, 2, 'create_account', 'إنشاء حساب'),
(1160, 2, 'create_ad_exp', 'إذا لم يكن لديك رمز إعلان، يمكنك إنشاؤه عن طريق اختيار صورة وإضافة رابط'),
(1161, 2, 'currency', 'العملة'),
(1162, 2, 'currency_format', 'تنسيق العملة'),
(1163, 2, 'currency_name', 'اسم العملة'),
(1164, 2, 'currency_symbol', 'رمز العملة'),
(1165, 2, 'currency_symbol_format', 'تنسيق رمز العملة'),
(1166, 2, 'custom', 'مخصص'),
(1167, 2, 'custom_footer_codes', 'أكواد التذييل المخصصة'),
(1168, 2, 'custom_footer_codes_exp', 'سيتم إضافة هذه الأكواد إلى تذييل الموقع.'),
(1169, 2, 'custom_header_codes', 'أكواد الرأس المخصصة'),
(1170, 2, 'custom_header_codes_exp', 'سيتم إضافة هذه الأكواد إلى رأس الموقع.'),
(1171, 2, 'daily', 'يومي'),
(1172, 2, 'dark_mode', 'الوضع الداكن'),
(1173, 2, 'dashboard', 'لوحة التحكم'),
(1174, 2, 'data_type', 'نوع البيانات'),
(1175, 2, 'date', 'التاريخ'),
(1176, 2, 'date_added', 'تاريخ الإضافة'),
(1177, 2, 'date_publish', 'تاريخ النشر'),
(1178, 2, 'day', 'يوم'),
(1179, 2, 'days', 'أيام'),
(1180, 2, 'days_remaining', 'الأيام المتبقية'),
(1181, 2, 'December', 'ديسمبر'),
(1182, 2, 'default', 'افتراضي'),
(1183, 2, 'default_language', 'اللغة الافتراضية'),
(1184, 2, 'delete', 'حذف'),
(1185, 2, 'delete_account', 'حذف الحساب'),
(1186, 2, 'delete_account_confirm', 'حذف حسابك إجراء دائم وسيؤدي إلى إزالة جميع المحتويات بما في ذلك التعليقات والصور الرمزية وإعدادات الملف الشخصي. هل أنت متأكد؟'),
(1187, 2, 'delete_all_posts', 'حذف جميع المنشورات'),
(1188, 2, 'delete_images_with_post', 'حذف الصور مع المنشور'),
(1189, 2, 'delete_only_rss_posts', 'حذف منشورات RSS فقط'),
(1190, 2, 'delete_reading_list', 'إزالة من قائمة القراءة'),
(1191, 2, 'description', 'الوصف'),
(1192, 2, 'difficulty', 'الصعوبة'),
(1193, 2, 'directions', 'التعليمات'),
(1194, 2, 'disable', 'تعطيل'),
(1195, 2, 'disable_reward_system', 'تعطيل نظام المكافآت'),
(1196, 2, 'discord', 'ديسكورد'),
(1197, 2, 'dislike', 'عدم إعجاب'),
(1198, 2, 'distribute_only_post_summary', 'توزيع ملخص المنشور فقط'),
(1199, 2, 'distribute_post_content', 'توزيع محتوى المنشور'),
(1200, 2, 'documentation', 'التوثيق'),
(1201, 2, 'dont_add_menu', 'عدم الإضافة إلى القائمة'),
(1202, 2, 'dont_want_receive_emails', 'لا تريد تلقي هذه الرسائل؟'),
(1203, 2, 'download', 'تحميل'),
(1204, 2, 'download_button', 'زر التحميل'),
(1205, 2, 'download_csv_example', 'تحميل نموذج CSV'),
(1206, 2, 'download_csv_template', 'تحميل قالب CSV'),
(1207, 2, 'download_database_backup', 'تحميل نسخة احتياطية من قاعدة البيانات'),
(1208, 2, 'download_images_my_server', 'تحميل الصور إلى خادمي'),
(1209, 2, 'drafts', 'المسودات'),
(1210, 2, 'drag_drop_files_here', 'اسحب وأسقط الملفات هنا'),
(1211, 2, 'drag_drop_file_here', 'الأرباح'),
(1212, 2, 'earnings', 'سهل'),
(1213, 2, 'easy', 'تعديل'),
(1214, 2, 'edit', 'تم التعديل'),
(1215, 2, 'edited', 'تعديل العبارات'),
(1216, 2, 'edit_phrases', 'تعديل الدور'),
(1217, 2, 'edit_role', 'تعديل الترجمات'),
(1218, 2, 'edit_translations', 'البريد الإلكتروني'),
(1219, 2, 'email', 'يرجى الضغط على الزر أدناه لإعادة تعيين كلمة المرور'),
(1220, 2, 'email_reset_password', 'إعدادات البريد الإلكتروني'),
(1221, 2, 'email_settings', 'حالة البريد الإلكتروني'),
(1222, 2, 'email_status', 'التحقق من البريد الإلكتروني'),
(1223, 2, 'email_verification', 'تضمين الوسائط'),
(1224, 2, 'embed_media', 'ردود الفعل باستخدام الرموز التعبيرية'),
(1225, 2, 'emoji_reactions', 'تفعيل'),
(1226, 2, 'enable', 'تفعيل نظام المكافآت'),
(1227, 2, 'enable_reward_system', 'التشفير'),
(1228, 2, 'encryption', 'أدخل على الأقل حرفين'),
(1229, 2, 'enter_2_characters', 'أدخل عنوان بريدك الإلكتروني'),
(1230, 2, 'enter_email_address', 'أدخل كلمة المرور الجديدة'),
(1231, 2, 'enter_new_password', 'أدخل الموضوع'),
(1232, 2, 'enter_topic', 'أدخل الرابط'),
(1233, 2, 'enter_url', 'مثال'),
(1234, 2, 'example', 'تصدير'),
(1235, 2, 'export', 'فيسبوك'),
(1236, 2, 'facebook', 'تعليقات فيسبوك'),
(1237, 2, 'facebook_comments', 'كود مكون تعليقات فيسبوك'),
(1238, 2, 'facebook_comments_code', 'الأيقونة المصغرة'),
(1239, 2, 'favicon', 'مميز'),
(1240, 2, 'featured', 'ترتيب المميز'),
(1241, 2, 'featured_order', 'المقالات المميزة'),
(1242, 2, 'featured_posts', 'فبراير'),
(1243, 2, 'February', 'الخلاصة'),
(1244, 2, 'feed', 'اسم الخلاصة'),
(1245, 2, 'feed_name', 'رابط الخلاصة'),
(1246, 2, 'feed_url', 'الحقل'),
(1247, 2, 'field', 'الملفات'),
(1248, 2, 'files', 'ملفات إضافية قابلة للتنزيل (.pdf، .docx، .zip ...)'),
(1249, 2, 'files_exp', 'امتدادات الملفات'),
(1250, 2, 'file_extensions', 'مدير الملفات'),
(1251, 2, 'file_manager', 'رفع الملفات'),
(1252, 2, 'file_upload', 'فلتر'),
(1253, 2, 'filter', 'اسم المجلد'),
(1254, 2, 'folder_name', 'متابعة'),
(1255, 2, 'follow', 'المتابعون'),
(1256, 2, 'followers', 'المتابَعون'),
(1257, 2, 'following', 'الخطوط'),
(1258, 2, 'fonts', 'نوع الخط'),
(1259, 2, 'font_family', 'إعدادات الخط'),
(1260, 2, 'font_settings', 'مصدر الخط'),
(1261, 2, 'font_source', 'التذييل'),
(1262, 2, 'footer', 'قسم \"حول\" في التذييل'),
(1263, 2, 'footer_about_section', 'وسائل التواصل الاجتماعي'),
(1264, 2, 'footer_follow', 'نسيت كلمة المرور؟'),
(1265, 2, 'forgot_password', 'يجب أن يحتوي حقل {field} على قيمة فريدة'),
(1266, 2, 'form_validation_is_unique', 'حقل {field} لا يتطابق مع الحقل {param}'),
(1267, 2, 'form_validation_matches', 'لا يمكن أن يتجاوز حقل {field} {param} حرفاً'),
(1268, 2, 'form_validation_max_length', 'يجب أن يحتوي حقل {field} على {param} حرفاً على الأقل'),
(1269, 2, 'form_validation_min_length', 'حقل {field} مطلوب'),
(1270, 2, 'form_validation_required', 'التكرار'),
(1271, 2, 'frequency', 'تشير هذه القيمة إلى مدى تكرار تغيّر المحتوى في عنوان URL معين'),
(1272, 2, 'frequency_exp', 'الاسم الكامل'),
(1273, 2, 'full_name', 'مضحك'),
(1274, 2, 'funny', 'المعرض'),
(1275, 2, 'gallery', 'ألبومات المعرض'),
(1276, 2, 'gallery_albums', 'فئات المعرض'),
(1277, 2, 'gallery_categories', 'منشور معرض الصور'),
(1278, 2, 'gallery_post', 'مجموعة من الصور'),
(1279, 2, 'gallery_post_exp', 'عناصر منشور المعرض'),
(1280, 2, 'gallery_post_items', 'عام'),
(1281, 2, 'general', 'الإعدادات العامة'),
(1282, 2, 'general_settings', 'توليد'),
(1283, 2, 'generate', 'ملفات sitemap المولدة'),
(1284, 2, 'generated_sitemaps', 'النص المولد'),
(1285, 2, 'generated_text', 'توليد رابط الخلاصة'),
(1286, 2, 'generate_feed_url', 'توليد الكلمات المفتاحية من العنوان'),
(1287, 2, 'generate_keywords_from_title', 'توليد خريطة الموقع'),
(1288, 2, 'generate_sitemap', 'توليد النص'),
(1289, 2, 'generate_text', 'يتم توليد النص...'),
(1290, 2, 'generating_text', 'الحصول على الفيديو'),
(1291, 2, 'get_video', 'جلب الفيديو من الرابط'),
(1292, 2, 'get_video_from_url', 'جوجل'),
(1293, 2, 'google', 'تحليلات جوجل'),
(1294, 2, 'google_analytics', 'كود تحليلات جوجل'),
(1295, 2, 'google_analytics_code', 'واجهة برمجة تطبيقات فهرسة جوجل'),
(1296, 2, 'google_indexing_api', 'أخبار جوجل'),
(1297, 2, 'google_news', 'يستخدم هذا النظام ذاكرة التخزين المؤقت، لذلك سيتم تحديث السجلات في ملف XML كل 15 دقيقة تلقائياً'),
(1298, 2, 'google_news_cache_exp', 'وفقًا لقواعد أخبار Google، يمكن أن يحتوي ملف XML على 1000 منشور كحد أقصى، لذلك لا يُنصح بزيادة هذا الحد'),
(1299, 2, 'google_news_exp', 'Google reCAPTCHA'),
(1300, 2, 'google_recaptcha', 'الارتفاع'),
(1301, 2, 'height', 'وثائق المساعدة'),
(1302, 2, 'help_documents', 'يمكنك استخدام هذه الوثائق لإنشاء ملف CSV خاص بك'),
(1303, 2, 'help_documents_exp', 'إخفاء'),
(1304, 2, 'hide', 'إخفاء'),
(1305, 2, 'hit', 'ضربة'),
(1306, 2, 'home', 'الرئيسية'),
(1307, 2, 'homepage', 'الصفحة الرئيسية'),
(1308, 2, 'home_title', 'عنوان الصفحة الرئيسية'),
(1309, 2, 'horizontal', 'أفقي'),
(1310, 2, 'hour', 'ساعة'),
(1311, 2, 'hourly', 'كل ساعة'),
(1312, 2, 'hours', 'ساعات'),
(1313, 2, 'human_verification', 'التحقق البشري'),
(1314, 2, 'human_verification_exp', 'تحقق من نشاط المستخدم من خلال تحركات الماوس والتمرير والوقت المستغرق على الصفحة لضمان التفاعل الحقيقي ومنع الروبوتات'),
(1315, 2, 'iban', 'رقم الحساب البنكي الدولي (IBAN)'),
(1316, 2, 'iban_long', 'رقم الحساب البنكي الدولي'),
(1317, 2, 'id', 'المعرف'),
(1318, 2, 'image', 'صورة'),
(1319, 2, 'images', 'صور'),
(1320, 2, 'image_description', 'وصف الصورة'),
(1321, 2, 'image_file_format', 'تنسيق ملف الصورة'),
(1322, 2, 'image_for_video', 'صورة للفيديو'),
(1323, 2, 'importing_posts', 'جارٍ استيراد المنشورات...'),
(1324, 2, 'import_language', 'لغة الاستيراد'),
(1325, 2, 'import_rss_feed', 'استيراد تغذية RSS'),
(1326, 2, 'inactive', 'غير نشط'),
(1327, 2, 'index', 'الفهرس'),
(1328, 2, 'info_about_recipe', 'معلومات حول الوصفة'),
(1329, 2, 'ingredient', 'مكون'),
(1330, 2, 'ingredients', 'المكونات'),
(1331, 2, 'ingredient_ex', 'مثال: ملعقة كبيرة زيت زيتون'),
(1332, 2, 'instagram', 'إنستغرام'),
(1333, 2, 'insufficient_balance', 'الرصيد غير كافٍ!'),
(1334, 2, 'intermediate', 'متوسط'),
(1335, 2, 'invalid', 'غير صالح!'),
(1336, 2, 'invalid_feed_url', 'رابط تغذية غير صالح!'),
(1337, 2, 'invalid_file_type', 'نوع ملف غير صالح!'),
(1338, 2, 'invalid_url', 'رابط غير صالح!'),
(1339, 2, 'invalid_withdrawal_amount', 'مبلغ السحب غير صالح!'),
(1340, 2, 'ip_address', 'عنوان IP'),
(1341, 2, 'item_order', 'ترتيب العنصر'),
(1342, 2, 'January', 'يناير'),
(1343, 2, 'join_newsletter', 'اشترك في النشرة البريدية'),
(1344, 2, 'json_language_file', 'ملف لغة بصيغة JSON'),
(1345, 2, 'July', 'يوليو'),
(1346, 2, 'June', 'جوان'),
(1347, 2, 'just_now', 'الآن'),
(1348, 2, 'keywords', 'الكلمات المفتاحية'),
(1349, 2, 'label', 'تسمية'),
(1350, 2, 'language', 'اللغة'),
(1351, 2, 'languages', 'اللغات'),
(1352, 2, 'language_code', 'رمز اللغة'),
(1353, 2, 'language_name', 'اسم اللغة'),
(1354, 2, 'language_settings', 'إعدادات اللغة'),
(1355, 2, 'last_comments', 'أحدث التعليقات'),
(1356, 2, 'last_contact_messages', 'أحدث رسائل التواصل'),
(1357, 2, 'last_modification', 'آخر تعديل'),
(1358, 2, 'last_modification_exp', 'وقت آخر تعديل للرابط'),
(1359, 2, 'last_seen', 'آخر ظهور:'),
(1360, 2, 'latest_posts', 'أحدث المنشورات'),
(1361, 2, 'latest_users', 'أحدث المستخدمين'),
(1362, 2, 'leave_message', 'إرسال رسالة'),
(1363, 2, 'leave_reply', 'اترك رداً'),
(1364, 2, 'leave_your_comment', 'اترك تعليقك...'),
(1365, 2, 'left', 'يسار'),
(1366, 2, 'left_to_right', 'من اليسار إلى اليمين'),
(1367, 2, 'length_of_text', 'طول النص'),
(1368, 2, 'level_1', 'المستوى 1'),
(1369, 2, 'level_2', 'المستوى 2'),
(1370, 2, 'level_3', 'المستوى 3'),
(1371, 2, 'like', 'إعجاب'),
(1372, 2, 'limit', 'الحد'),
(1373, 2, 'link', 'رابط'),
(1374, 2, 'linkedin', 'لينكدإن'),
(1375, 2, 'link_list_style', 'نمط قائمة الروابط'),
(1376, 2, 'link_type', 'نوع الرابط'),
(1377, 2, 'load_more', 'تحميل المزيد'),
(1378, 2, 'load_more_comments', 'تحميل المزيد من التعليقات'),
(1379, 2, 'local', 'محلي'),
(1380, 2, 'local_storage', 'التخزين المحلي'),
(1381, 2, 'location', 'الموقع'),
(1382, 2, 'login', 'تسجيل الدخول'),
(1383, 2, 'login_error', 'اسم المستخدم أو كلمة المرور غير صحيحة!'),
(1384, 2, 'logo', 'الشعار'),
(1385, 2, 'logout', 'تسجيل الخروج'),
(1386, 2, 'logo_email', 'شعار البريد الإلكتروني'),
(1387, 2, 'logo_footer', 'شعار التذييل'),
(1388, 2, 'logo_size', 'حجم الشعار'),
(1389, 2, 'long', 'طويل'),
(1390, 2, 'love', 'إعجاب كبير'),
(1391, 2, 'mail', 'البريد'),
(1392, 2, 'mailjet_email_address', 'عنوان بريد Mailjet'),
(1393, 2, 'mailjet_email_address_exp', 'العنوان الذي أنشأت به حساب Mailjet'),
(1394, 2, 'mail_host', 'مضيف البريد'),
(1395, 2, 'mail_is_being_sent', 'يتم إرسال البريد... لا تغلق هذه الصفحة حتى تكتمل العملية!'),
(1396, 2, 'mail_password', 'كلمة مرور البريد'),
(1397, 2, 'mail_port', 'منفذ البريد'),
(1398, 2, 'mail_protocol', 'بروتوكول البريد'),
(1399, 2, 'mail_service', 'خدمة البريد'),
(1400, 2, 'mail_title', 'عنوان البريد'),
(1401, 2, 'mail_username', 'اسم مستخدم البريد'),
(1402, 2, 'maintenance_mode', 'وضع الصيانة'),
(1403, 2, 'main_menu', 'القائمة الرئيسية'),
(1404, 2, 'main_navigation', 'التنقل الرئيسي'),
(1405, 2, 'main_post_image', 'الصورة الرئيسية للمنشور'),
(1406, 2, 'manage_all_posts', 'إدارة جميع المنشورات'),
(1407, 2, 'manage_tags', 'إدارة العلامات'),
(1408, 2, 'March', 'مارس'),
(1409, 2, 'max', 'الحد الأقصى'),
(1410, 2, 'May', 'مايو'),
(1411, 2, 'medium', 'متوسط'),
(1412, 2, 'mega_menu_color', 'لون القائمة الكبيرة'),
(1413, 2, 'member_since', 'عضو منذ'),
(1414, 2, 'menu_limit', 'حد القائمة'),
(1415, 2, 'message', 'رسالة'),
(1416, 2, 'message_ban_error', 'تم حظر حسابك!'),
(1417, 2, 'message_change_password_error', 'حدثت مشكلة أثناء تغيير كلمة المرور!'),
(1418, 2, 'message_change_password_success', 'تم تغيير كلمة المرور بنجاح!'),
(1419, 2, 'message_contact_error', 'حدثت مشكلة أثناء إرسال الرسالة!'),
(1420, 2, 'message_contact_success', 'تم إرسال رسالتك بنجاح!'),
(1421, 2, 'message_email_unique_error', 'البريد الإلكتروني مستخدم بالفعل.'),
(1422, 2, 'message_invalid_email', 'عنوان بريد إلكتروني غير صالح!'),
(1423, 2, 'message_newsletter_error', 'عنوان بريدك الإلكتروني مسجل بالفعل!'),
(1424, 2, 'message_newsletter_success', 'تم إضافة بريدك الإلكتروني بنجاح!'),
(1425, 2, 'message_page_auth', 'يجب تسجيل الدخول لعرض هذه الصفحة!'),
(1426, 2, 'message_post_auth', 'يجب تسجيل الدخول لعرض هذا المنشور!'),
(1427, 2, 'message_profile_success', 'تم تحديث ملفك الشخصي بنجاح!'),
(1428, 2, 'message_register_error', 'حدثت مشكلة أثناء التسجيل. حاول مرة أخرى!'),
(1429, 2, 'meta_tag', 'الوسم التعريفي'),
(1430, 2, 'min', 'الحد الأدنى'),
(1431, 2, 'minute', 'دقيقة'),
(1432, 2, 'minutes', 'دقائق'),
(1433, 2, 'minute_short', 'دقيقة'),
(1434, 2, 'min_mouse_movements', 'الحد الأدنى لحركات الماوس'),
(1435, 2, 'min_poyout_amount', 'الحد الأدنى لمبلغ الدفع'),
(1436, 2, 'min_poyout_amounts', 'الحد الأدنى لمبالغ السحب'),
(1437, 2, 'min_scroll_movements', 'الحد الأدنى لحركات التمرير'),
(1438, 2, 'min_time_spent_on_page', 'الحد الأدنى للوقت على الصفحة (بالثواني)'),
(1439, 2, 'model', 'نموذج'),
(1440, 2, 'month', 'شهر'),
(1441, 2, 'monthly', 'شهري'),
(1442, 2, 'months', 'أشهر'),
(1443, 2, 'more', 'المزيد'),
(1444, 2, 'more_info', 'مزيد من المعلومات'),
(1445, 2, 'more_main_images', 'صور رئيسية إضافية (سيتم تفعيل شريط التمرير)'),
(1446, 2, 'most_viewed_posts', 'أكثر المنشورات مشاهدة'),
(1447, 2, 'msg_added', 'تم إضافة العنصر بنجاح!'),
(1448, 2, 'msg_beforeunload', 'لديك تغييرات غير محفوظة! هل أنت متأكد أنك تريد مغادرة هذه الصفحة؟'),
(1449, 2, 'msg_comment_approved', 'تم الموافقة على التعليق بنجاح!'),
(1450, 2, 'msg_comment_sent_successfully', 'تم إرسال تعليقك. سيتم نشره بعد مراجعته من قبل إدارة الموقع.'),
(1451, 2, 'msg_confirmation_email', 'يرجى تأكيد بريدك الإلكتروني بالنقر على الزر أدناه.'),
(1452, 2, 'msg_confirmed', 'تم تأكيد بريدك الإلكتروني بنجاح!'),
(1453, 2, 'msg_confirmed_required', 'يرجى التحقق من عنوان بريدك الإلكتروني!'),
(1454, 2, 'msg_cron_feed', 'باستخدام هذا الرابط يمكنك تحديث الخلاصات تلقائيًا.'),
(1455, 2, 'msg_cron_sitemap', 'باستخدام هذا الرابط يمكنك تحديث خريطة الموقع تلقائيًا.'),
(1456, 2, 'msg_deleted', 'تم حذف العنصر بنجاح!'),
(1457, 2, 'msg_delete_album', 'يرجى حذف الفئات المرتبطة بهذا الألبوم أولاً!'),
(1458, 2, 'msg_delete_images', 'يرجى حذف الصور المرتبطة بهذه الفئة أولاً!'),
(1459, 2, 'msg_delete_posts', 'يرجى حذف المنشورات المرتبطة بهذه الفئة أولاً!'),
(1460, 2, 'msg_delete_subcategories', 'يرجى حذف الفئات الفرعية لهذه الفئة أولاً!'),
(1461, 2, 'msg_delete_subpages', 'يرجى حذف الصفحات أو الروابط الفرعية أولاً!'),
(1462, 2, 'msg_email_sent', 'تم إرسال البريد بنجاح!'),
(1463, 2, 'msg_error', 'حدث خطأ، يرجى المحاولة مرة أخرى!'),
(1464, 2, 'msg_language_delete', 'لا يمكن حذف اللغة الافتراضية!'),
(1465, 2, 'msg_not_authorized', 'لا تملك الصلاحية لتنفيذ هذا الإجراء!'),
(1466, 2, 'msg_page_delete', 'لا يمكن حذف الصفحات الافتراضية!'),
(1467, 2, 'msg_payout_added', 'تم إضافة الدفع بنجاح!'),
(1468, 2, 'msg_recaptcha', 'يرجى التأكيد أنك لست روبوتاً!'),
(1469, 2, 'msg_request_sent', 'تم إرسال الطلب بنجاح!'),
(1470, 2, 'msg_reset_cache', 'تم حذف جميع ملفات التخزين المؤقت!'),
(1471, 2, 'msg_rss_warning', 'إذا اخترت تنزيل الصور إلى الخادم، فستستغرق إضافة المنشورات وقتاً أطول وستستهلك موارد أكثر. إذا واجهت مشكلات، قم بزيادة قيم \'max_execution_time\' و\'memory_limit\' من إعدادات الخادم.'),
(1472, 2, 'msg_send_confirmation_email', 'تم إرسال بريد تأكيد إلى عنوانك الإلكتروني لتفعيل الحساب. يرجى تأكيد حسابك.'),
(1473, 2, 'msg_slug_used', 'المعرف (Slug) الذي أدخلته مستخدم من قبل مستخدم آخر!'),
(1474, 2, 'msg_tag_exists', 'هذه الوسمة موجودة بالفعل!'),
(1475, 2, 'msg_topic_empty', 'لا يمكن ترك الموضوع فارغاً!'),
(1476, 2, 'msg_unsubscribe', 'لن تتلقى رسائل بريد إلكتروني منا بعد الآن!'),
(1477, 2, 'msg_updated', 'تم حفظ التغييرات بنجاح!'),
(1478, 2, 'msg_username_unique_error', 'اسم المستخدم مستخدم بالفعل.'),
(1479, 2, 'msg_user_added', 'تم إضافة المستخدم بنجاح!'),
(1480, 2, 'msg_widget_delete', 'لا يمكن حذف الأدوات الافتراضية!'),
(1481, 2, 'msg_wrong_password', 'كلمة المرور غير صحيحة!'),
(1482, 2, 'multilingual_system', 'نظام متعدد اللغات'),
(1483, 2, 'musician', 'موسيقي'),
(1484, 2, 'my_earnings', 'أرباحي'),
(1485, 2, 'name', 'الاسم'),
(1486, 2, 'navigation', 'التنقل'),
(1487, 2, 'navigation_exp', 'يمكنك إدارة التنقل عن طريق سحب العناصر وإفلاتها في القائمة'),
(1488, 2, 'nav_drag_warning', 'لا يمكنك سحب فئة إلى أسفل صفحة أو صفحة أسفل رابط فئة!'),
(1489, 2, 'never', 'أبداً'),
(1490, 2, 'newsletter', 'النشرة البريدية'),
(1491, 2, 'newsletter_desc', 'اشترك في قائمتنا البريدية للحصول على أحدث الأخبار والعروض مباشرة إلى بريدك'),
(1492, 2, 'newsletter_email_error', 'اختر عناوين البريد الإلكتروني التي تريد إرسال البريد إليها!'),
(1493, 2, 'newsletter_popup', 'نافذة منبثقة للنشرة البريدية'),
(1494, 2, 'newsletter_send_many_exp', 'بعض الخوادم لا تسمح بالإرسال الجماعي. لذلك، بدلاً من إرسال الرسائل دفعة واحدة، يمكنك إرسالها على دفعات (مثال: 50 مشتركاً في المرة الواحدة). إذا توقف خادم البريد عن الإرسال، سيتوقف الإرسال أيضاً.'),
(1495, 2, 'new_password', 'كلمة المرور الجديدة'),
(1496, 2, 'new_payout_request', 'طلب دفع جديد'),
(1497, 2, 'next', 'التالي'),
(1498, 2, 'next_article', 'المقال التالي'),
(1499, 2, 'next_video', 'الفيديو التالي'),
(1500, 2, 'no', 'لا'),
(1501, 2, 'none', 'لا شيء'),
(1502, 2, 'November', 'نوفمبر'),
(1503, 2, 'no_records_found', 'لا توجد سجلات.'),
(1504, 2, 'number', 'الرقم'),
(1505, 2, 'number_of_correct_answers', 'عدد الإجابات الصحيحة'),
(1506, 2, 'number_of_correct_answers_range', 'نطاق الإجابات الصحيحة لعرض هذه النتيجة'),
(1507, 2, 'number_of_days', 'عدد الأيام'),
(1508, 2, 'number_of_days_exp', 'إذا أضفت 30 هنا، فسيقوم النظام بحذف المنشورات الأقدم من 30 يوماً'),
(1509, 2, 'number_of_links_in_menu', 'عدد الروابط التي تظهر في القائمة'),
(1510, 2, 'number_of_posts_import', 'عدد المنشورات المطلوب استيرادها'),
(1511, 2, 'number_short_billion', 'ب'),
(1512, 2, 'number_short_million', 'م'),
(1513, 2, 'number_short_thousand', 'ك'),
(1514, 2, 'nutritional_ex', 'مثال: بروتين 34غ'),
(1515, 2, 'nutritional_information', 'المعلومات الغذائية'),
(1516, 2, 'October', 'أكتوبر'),
(1517, 2, 'ok', 'موافق'),
(1518, 2, 'old_password', 'كلمة المرور القديمة'),
(1519, 2, 'online', 'متصل'),
(1520, 2, 'only_registered', 'فقط للمسجلين'),
(1521, 2, 'optional', 'اختياري'),
(1522, 2, 'optional_url', 'رابط اختياري'),
(1523, 2, 'optional_url_name', 'اسم زر الرابط الاختياري للمقال'),
(1524, 2, 'options', 'الخيارات'),
(1525, 2, 'option_1', 'الخيار 1'),
(1526, 2, 'option_10', 'الخيار 10'),
(1527, 2, 'option_2', 'الخيار 2'),
(1528, 2, 'option_3', 'الخيار 3'),
(1529, 2, 'option_4', 'الخيار 4'),
(1530, 2, 'option_5', 'الخيار 5'),
(1531, 2, 'option_6', 'الخيار 6'),
(1532, 2, 'option_7', 'الخيار 7'),
(1533, 2, 'option_8', 'الخيار 8'),
(1534, 2, 'option_9', 'الخيار 9'),
(1535, 2, 'or', 'أو'),
(1536, 2, 'order', 'ترتيب القائمة'),
(1537, 2, 'order_1', 'الترتيب'),
(1538, 2, 'or_login_with_email', 'أو سجل الدخول باستخدام البريد الإلكتروني'),
(1539, 2, 'or_register_with_email', 'أو سجّل باستخدام البريد الإلكتروني'),
(1540, 2, 'page', 'صفحة'),
(1541, 2, 'pages', 'صفحات'),
(1542, 2, 'pageviews', 'عدد المشاهدات'),
(1543, 2, 'page_not_found', 'الصفحة غير موجودة'),
(1544, 2, 'page_not_found_sub', 'الصفحة التي تبحث عنها غير موجودة.'),
(1545, 2, 'page_type', 'نوع الصفحة'),
(1546, 2, 'pagination_number_posts', 'عدد المنشورات في كل صفحة (ترقيم الصفحات)'),
(1547, 2, 'panel', 'لوحة'),
(1548, 2, 'paragraph', 'فقرة'),
(1549, 2, 'parent_category', 'الفئة الرئيسية'),
(1550, 2, 'parent_link', 'الرابط الرئيسي'),
(1551, 2, 'password', 'كلمة المرور'),
(1552, 2, 'paste_ad_code', 'كود الإعلان'),
(1553, 2, 'paste_ad_url', 'رابط الإعلان'),
(1554, 2, 'payouts', 'المدفوعات'),
(1555, 2, 'payout_method', 'طريقة الدفع'),
(1556, 2, 'payout_methods', 'طرق الدفع'),
(1557, 2, 'paypal', 'باي بال'),
(1558, 2, 'paypal_email_address', 'بريد باي بال الإلكتروني'),
(1559, 2, 'pending', 'قيد الانتظار'),
(1560, 2, 'pending_comments', 'تعليقات قيد الانتظار'),
(1561, 2, 'pending_posts', 'منشورات قيد الانتظار'),
(1562, 2, 'permissions', 'الأذونات'),
(1563, 2, 'personality_quiz', 'اختبار شخصية'),
(1564, 2, 'personality_quiz_exp', 'اختبارات بنتائج مخصصة'),
(1565, 2, 'personal_website_url', 'رابط الموقع الشخصي'),
(1566, 2, 'phone', 'الهاتف'),
(1567, 2, 'phrase', 'عبارة'),
(1568, 2, 'phrases', 'العبارات'),
(1569, 2, 'pinterest', 'بينتريست'),
(1570, 2, 'placeholder_search', 'بحث...'),
(1571, 2, 'play_again', 'اللعب مجددًا'),
(1572, 2, 'play_list_empty', 'قائمة التشغيل فارغة.'),
(1573, 2, 'please_select_option', 'الرجاء اختيار خيار!'),
(1574, 2, 'poll', 'استطلاع'),
(1575, 2, 'polls', 'استطلاعات'),
(1576, 2, 'poll_exp', 'احصل على آراء المستخدمين حول شيء ما'),
(1577, 2, 'popular_posts', 'المنشورات الشائعة'),
(1578, 2, 'post', 'منشور'),
(1579, 2, 'postcode', 'الرمز البريدي'),
(1580, 2, 'posts', 'منشورات'),
(1581, 2, 'post_comment', 'إرسال تعليق'),
(1582, 2, 'post_details', 'تفاصيل المنشور'),
(1583, 2, 'post_formats', 'تنسيقات المنشور'),
(1584, 2, 'post_options', 'خيارات المنشور'),
(1585, 2, 'post_owner', 'مالك المنشور'),
(1586, 2, 'post_tags', 'الوسوم:'),
(1587, 2, 'post_type', 'نوع المنشور'),
(1588, 2, 'post_url_structure', 'هيكل رابط المنشور'),
(1589, 2, 'post_url_structure_exp', 'تغيير هيكل الرابط لن يؤثر على السجلات القديمة.'),
(1590, 2, 'post_url_structure_slug', 'استخدم المعرف النصي (Slug) في الروابط'),
(1591, 2, 'post_url_structur_id', 'استخدم أرقام المعرفات في الروابط'),
(1592, 2, 'preferences', 'التفضيلات'),
(1593, 2, 'prep_time', 'وقت التحضير'),
(1594, 2, 'preview', 'معاينة'),
(1595, 2, 'previous', 'السابق'),
(1596, 2, 'previous_article', 'المقال السابق'),
(1597, 2, 'previous_video', 'الفيديو السابق'),
(1598, 2, 'primary_font', 'الخط الأساسي (الرئيسي)'),
(1599, 2, 'priority', 'الأولوية'),
(1600, 2, 'priority_exp', 'أولوية عنوان URL معين بالنسبة للصفحات الأخرى على نفس الموقع'),
(1601, 2, 'profile', 'الملف الشخصي'),
(1602, 2, 'progressive_web_app', 'تطبيق ويب متقدم (PWA)'),
(1603, 2, 'publish', 'نشر'),
(1604, 2, 'pwa_logo', 'شعار PWA'),
(1605, 2, 'question', 'سؤال'),
(1606, 2, 'questions', 'أسئلة'),
(1607, 2, 'quiz_images', 'صور الاختبار'),
(1608, 2, 'random_posts', 'منشورات عشوائية'),
(1609, 2, 'reading_list', 'قائمة القراءة'),
(1610, 2, 'read_more_button_text', 'نص زر \"اقرأ المزيد\"'),
(1611, 2, 'recently_added_comments', 'تعليقات أُضيفت مؤخرًا'),
(1612, 2, 'recently_added_contact_messages', 'رسائل التواصل المُضافة مؤخرًا'),
(1613, 2, 'recently_added_unapproved_comments', 'تعليقات غير مُعتمدة أُضيفت مؤخرًا'),
(1614, 2, 'recently_registered_users', 'مستخدمون سُجّلوا مؤخرًا'),
(1615, 2, 'recipe', 'وصفة'),
(1616, 2, 'recipe_exp', 'قائمة المكونات وطريقة التحضير'),
(1617, 2, 'recipe_video', 'فيديو الوصفة'),
(1618, 2, 'recommended', 'موصى به'),
(1619, 2, 'recommended_posts', 'منشورات موصى بها'),
(1620, 2, 'redirect_rss_posts_to_original', 'إعادة توجيه منشورات RSS إلى الموقع الأصلي'),
(1621, 2, 'refresh', 'تحديث'),
(1622, 2, 'refresh_cache_database_changes', 'تحديث ملفات التخزين المؤقت عند تغيّر قاعدة البيانات'),
(1623, 2, 'regenerate', 'إعادة التوليد'),
(1624, 2, 'region_code', 'رمز المنطقة'),
(1625, 2, 'register', 'تسجيل'),
(1626, 2, 'registered_emails', 'عناوين البريد المسجلة'),
(1627, 2, 'registered_users_can_vote', 'فقط المستخدمين المسجلين يمكنهم التصويت'),
(1628, 2, 'registration_system', 'نظام التسجيل'),
(1629, 2, 'related_posts', 'منشورات ذات صلة'),
(1630, 2, 'related_videos', 'فيديوهات ذات صلة'),
(1631, 2, 'remove_ban', 'إزالة الحظر'),
(1632, 2, 'remove_breaking', 'إزالة من العاجل'),
(1633, 2, 'remove_featured', 'إزالة من المميز'),
(1634, 2, 'remove_recommended', 'إزالة من الموصى به'),
(1635, 2, 'remove_slider', 'إزالة من شريط التمرير'),
(1636, 2, 'reply_to', 'الرد على'),
(1637, 2, 'required', 'مطلوب'),
(1638, 2, 'resend_activation_email', 'إعادة إرسال بريد التفعيل'),
(1639, 2, 'reset', 'إعادة تعيين'),
(1640, 2, 'reset_cache', 'إعادة تعيين التخزين المؤقت'),
(1641, 2, 'reset_password', 'إعادة تعيين كلمة المرور'),
(1642, 2, 'reset_password_error', 'لا يمكننا العثور على مستخدم بهذا البريد الإلكتروني!'),
(1643, 2, 'reset_password_success', 'تم إرسال بريد إلكتروني لإعادة تعيين كلمة المرور. الرجاء التحقق من بريدك الإلكتروني واتباع الخطوات.'),
(1644, 2, 'result', 'النتيجة'),
(1645, 2, 'results', 'النتائج'),
(1646, 2, 'reward_amount', 'قيمة المكافأة لكل 1000 مشاهدة'),
(1647, 2, 'reward_system', 'نظام المكافآت'),
(1648, 2, 'right', 'يمين'),
(1649, 2, 'right_to_left', 'من اليمين إلى اليسار'),
(1650, 2, 'role', 'الدور'),
(1651, 2, 'roles', 'الأدوار'),
(1652, 2, 'roles_permissions', 'الأدوار والأذونات'),
(1653, 2, 'role_name', 'اسم الدور'),
(1654, 2, 'route_settings', 'إعدادات المسار'),
(1655, 2, 'route_settings_warning', 'لا يمكنك استخدام رموز خاصة في المسارات. إذا كانت لغتك تحتوي على رموز خاصة، يرجى الحذر عند التعديل. إذا أدخلت مسارًا غير صالح، لن تتمكن من الوصول إلى الصفحة المرتبطة به.'),
(1656, 2, 'rss', 'RSS'),
(1657, 2, 'rss_content', 'محتوى RSS'),
(1658, 2, 'rss_feeds', 'خلاصات RSS'),
(1659, 2, 'sad', 'حزين'),
(1660, 2, 'save', 'حفظ'),
(1661, 2, 'save_changes', 'حفظ التغييرات'),
(1662, 2, 'save_draft', 'حفظ كمسودة'),
(1663, 2, 'scheduled_post', 'منشور مجدول'),
(1664, 2, 'scheduled_posts', 'المنشورات المجدولة'),
(1665, 2, 'search', 'بحث'),
(1666, 2, 'searching', 'جارٍ البحث...'),
(1667, 2, 'search_in_post_content', 'البحث داخل محتوى المنشور'),
(1668, 2, 'search_noresult', 'لم يتم العثور على نتائج.'),
(1669, 2, 'secondary_font', 'الخط الثانوي (العناوين)'),
(1670, 2, 'secret_key', 'المفتاح السري'),
(1671, 2, 'secure_key', 'المفتاح الآمن'),
(1672, 2, 'select', 'اختر'),
(1673, 2, 'select_ad_spaces', 'اختر مساحة الإعلان'),
(1674, 2, 'select_an_option', 'اختر خياراً'),
(1675, 2, 'select_audio', 'اختر صوتاً'),
(1676, 2, 'select_a_result', 'اختر نتيجة'),
(1677, 2, 'select_category', 'اختر فئة'),
(1678, 2, 'select_file', 'اختر ملفاً'),
(1679, 2, 'select_image', 'اختر صورة'),
(1680, 2, 'select_multiple_images', 'يمكنك تحديد عدة صور.'),
(1681, 2, 'select_video', 'اختر فيديو'),
(1682, 2, 'send_contact_to_mail', 'إرسال رسائل التواصل إلى البريد الإلكتروني'),
(1683, 2, 'send_email', 'إرسال بريد إلكتروني'),
(1684, 2, 'send_email_registered', 'إرسال بريد للمستخدمين المسجلين'),
(1685, 2, 'send_email_subscriber', 'إرسال بريد للمشترك'),
(1686, 2, 'send_email_subscribers', 'إرسال بريد للمشتركين'),
(1687, 2, 'send_test_email', 'إرسال بريد تجريبي'),
(1688, 2, 'send_test_email_exp', 'يمكنك إرسال بريد تجريبي للتحقق من عمل خادم البريد.'),
(1689, 2, 'seo_options', 'خيارات تحسين محركات البحث (SEO)'),
(1690, 2, 'seo_tools', 'أدوات SEO'),
(1691, 2, 'September', 'سبتمبر'),
(1692, 2, 'serving', 'التقديم'),
(1693, 2, 'settings', 'الإعدادات'),
(1694, 2, 'settings_language', 'لغة الإعدادات'),
(1695, 2, 'set_as_album_cover', 'تعيين كغلاف للألبوم'),
(1696, 2, 'set_as_default', 'تعيين كافتراضي'),
(1697, 2, 'set_payout_account', 'تعيين حساب الدفع'),
(1698, 2, 'share', 'مشاركة'),
(1699, 2, 'shared', 'تمت المشاركة'),
(1700, 2, 'short', 'قصير'),
(1701, 2, 'short_form', 'نموذج مختصر'),
(1702, 2, 'show', 'عرض'),
(1703, 2, 'show_all_files', 'عرض جميع الملفات'),
(1704, 2, 'show_breadcrumb', 'عرض مسار التنقل'),
(1705, 2, 'show_cookies_warning', 'عرض تحذير الكوكيز'),
(1706, 2, 'show_email_on_profile', 'عرض البريد الإلكتروني في صفحة الملف الشخصي'),
(1707, 2, 'show_featured_section', 'عرض القسم المميز'),
(1708, 2, 'show_images_from_original_source', 'عرض الصور من المصدر الأصلي'),
(1709, 2, 'show_item_numbers', 'عرض أرقام العناصر في صفحة تفاصيل المنشور'),
(1710, 2, 'show_latest_posts_homepage', 'عرض أحدث المنشورات في الصفحة الرئيسية'),
(1711, 2, 'show_latest_posts_on_featured', 'عرض أحدث المنشورات في المشاركات المميزة'),
(1712, 2, 'show_latest_posts_on_slider', 'عرض أحدث المنشورات في شريط التمرير'),
(1713, 2, 'show_list_style_post_text', 'عرض نمط القائمة في نص المنشور'),
(1714, 2, 'show_news_ticker', 'عرض شريط الأخبار المتحرك'),
(1715, 2, 'show_only_own_files', 'عرض ملفات المستخدم فقط'),
(1716, 2, 'show_only_registered', 'عرض للمستخدمين المسجلين فقط'),
(1717, 2, 'show_on_homepage', 'عرض في الصفحة الرئيسية'),
(1718, 2, 'show_on_menu', 'عرض في القائمة'),
(1719, 2, 'show_post_author', 'عرض اسم كاتب المنشور'),
(1720, 2, 'show_post_dates', 'عرض تاريخ المنشور'),
(1721, 2, 'show_post_view_counts', 'عرض عدد مشاهدات المنشور'),
(1722, 2, 'show_read_more_button', 'عرض زر \"اقرأ المزيد\"'),
(1723, 2, 'show_right_column', 'عرض العمود الأيمن'),
(1724, 2, 'show_title', 'عرض العنوان'),
(1725, 2, 'show_user_email_profile', 'عرض بريد المستخدم في الملف الشخصي'),
(1726, 2, 'sidebar', 'الشريط الجانبي'),
(1727, 2, 'sitemap', 'خريطة الموقع'),
(1728, 2, 'sitemap_generate_exp', 'إذا كان موقعك يحتوي على أكثر من 49,000 رابط، سيتم إنشاء ملف sitemap.xml على أجزاء.'),
(1729, 2, 'site_color', 'لون الموقع'),
(1730, 2, 'site_description', 'وصف الموقع'),
(1731, 2, 'site_font', 'خط الموقع'),
(1732, 2, 'site_key', 'مفتاح الموقع'),
(1733, 2, 'site_title', 'عنوان الموقع'),
(1734, 2, 'slider', 'شريط تمرير'),
(1735, 2, 'slider_order', 'ترتيب شريط التمرير'),
(1736, 2, 'slider_posts', 'منشورات شريط التمرير'),
(1737, 2, 'slug', 'المعرف النصي (Slug)'),
(1738, 2, 'slug_exp', 'إذا تركته فارغاً، سيتم توليده تلقائياً.'),
(1739, 2, 'smtp', 'بروتوكول إرسال البريد SMTP'),
(1740, 2, 'social_accounts', 'حسابات التواصل الاجتماعي'),
(1741, 2, 'social_login_settings', 'إعدادات تسجيل الدخول عبر الشبكات الاجتماعية'),
(1742, 2, 'social_media_settings', 'إعدادات وسائل التواصل الاجتماعي'),
(1743, 2, 'sorted_list', 'قائمة مرتبة'),
(1744, 2, 'sorted_list_exp', 'مقالة على شكل قائمة'),
(1745, 2, 'sorted_list_items', 'عناصر القائمة المرتبة'),
(1746, 2, 'sort_featured_posts', 'ترتيب المشاركات المميزة'),
(1747, 2, 'sort_slider_posts', 'ترتيب مشاركات شريط التمرير'),
(1748, 2, 'state', 'الولاية / المقاطعة'),
(1749, 2, 'static_cache_system', 'نظام التخزين المؤقت الثابت'),
(1750, 2, 'status', 'الحالة'),
(1751, 2, 'sticky_sidebar', 'شريط جانبي ثابت'),
(1752, 2, 'storage', 'التخزين'),
(1753, 2, 'style', 'النمط'),
(1754, 2, 'subcategory', 'الفئة الفرعية'),
(1755, 2, 'subject', 'الموضوع'),
(1756, 2, 'submit', 'إرسال'),
(1757, 2, 'subscribe', 'اشترك'),
(1758, 2, 'subscribers', 'المشتركين'),
(1759, 2, 'summary', 'ملخص'),
(1760, 2, 'swift', 'SWIFT'),
(1761, 2, 'swift_code', 'رمز SWIFT'),
(1762, 2, 'swift_iban', 'رقم الحساب البنكي / IBAN'),
(1763, 2, 'table_of_contents', 'جدول المحتويات'),
(1764, 2, 'table_of_contents_exp', 'قائمة بالروابط بناءً على العناوين'),
(1765, 2, 'table_of_contents_items', 'عناصر جدول المحتويات'),
(1766, 2, 'tag', 'وسم'),
(1767, 2, 'tags', 'الوسوم'),
(1768, 2, 'telegram', 'تيليجرام'),
(1769, 2, 'temperature_response_diversity', 'درجة التنوع (تنوع الاستجابات)'),
(1770, 2, 'terms_conditions', 'الشروط والأحكام'),
(1771, 2, 'terms_conditions_exp', 'لقد قرأت وأوافق على'),
(1772, 2, 'tertiary_font', 'الخط الثالث (نص المنشور والصفحة)'),
(1773, 2, 'test_api', 'اختبار واجهة برمجة التطبيقات (API)'),
(1774, 2, 'text_direction', 'اتجاه النص'),
(1775, 2, 'text_editor_language', 'لغة محرر النصوص'),
(1776, 2, 'text_list_empty', 'قائمة القراءة الخاصة بك فارغة.'),
(1777, 2, 'themes', 'الثيمات'),
(1778, 2, 'theme_settings', 'إعدادات الثيم'),
(1779, 2, 'the_operation_completed', 'تمت العملية بنجاح!'),
(1780, 2, 'this_month', 'هذا الشهر'),
(1781, 2, 'this_week', 'هذا الأسبوع'),
(1782, 2, 'tiktok', 'تيك توك'),
(1783, 2, 'timezone', 'المنطقة الزمنية'),
(1784, 2, 'title', 'العنوان'),
(1785, 2, 'to', 'إلى:'),
(1786, 2, 'tone_academic', 'أكاديمي'),
(1787, 2, 'tone_casual', 'غير رسمي'),
(1788, 2, 'tone_critical', 'نقدي'),
(1789, 2, 'tone_formal', 'رسمي'),
(1790, 2, 'tone_humorous', 'فكاهي'),
(1791, 2, 'tone_inspirational', 'تحفيزي'),
(1792, 2, 'tone_persuasive', 'إقناعي'),
(1793, 2, 'tone_professional', 'احترافي'),
(1794, 2, 'tone_style', 'النغمة / الأسلوب'),
(1795, 2, 'topic', 'الموضوع'),
(1796, 2, 'top_headlines', 'أهم العناوين'),
(1797, 2, 'top_menu', 'القائمة العلوية'),
(1798, 2, 'total_pageviews', 'إجمالي عدد المشاهدات'),
(1799, 2, 'total_vote', 'مجموع الأصوات:'),
(1800, 2, 'total_votes', 'مجموع الأصوات'),
(1801, 2, 'translation', 'الترجمة'),
(1802, 2, 'trending_posts', 'المنشورات الرائجة'),
(1803, 2, 'trivia_quiz', 'اختبار معلومات عامة'),
(1804, 2, 'trivia_quiz_exp', 'اختبارات تحتوي على إجابات صحيحة وخاطئة'),
(1805, 2, 'twitch', 'تويتش'),
(1806, 2, 'twitter', 'تويتر'),
(1807, 2, 'txt_processing', 'جاري المعالجة...'),
(1808, 2, 'type', 'النوع'),
(1809, 2, 'type_tag', 'اكتب الوسم واضغط إدخال'),
(1810, 2, 'unconfirmed', 'غير مؤكد'),
(1811, 2, 'unfollow', 'إلغاء المتابعة'),
(1812, 2, 'unsubscribe', 'إلغاء الاشتراك'),
(1813, 2, 'unsubscribe_successful', 'تم إلغاء الاشتراك بنجاح!'),
(1814, 2, 'update', 'تحديث'),
(1815, 2, 'updated', 'تم التحديث'),
(1816, 2, 'update_album', 'تحديث الألبوم'),
(1817, 2, 'update_article', 'تحديث المقال'),
(1818, 2, 'update_audio', 'تحديث الصوت'),
(1819, 2, 'update_category', 'تحديث الفئة'),
(1820, 2, 'update_font', 'تحديث الخط'),
(1821, 2, 'update_gallery', 'تحديث المعرض'),
(1822, 2, 'update_image', 'تحديث الصورة'),
(1823, 2, 'update_language', 'تحديث اللغة'),
(1824, 2, 'update_link', 'تحديث رابط القائمة'),
(1825, 2, 'update_page', 'تحديث الصفحة'),
(1826, 2, 'update_personality_quiz', 'تحديث اختبار الشخصية'),
(1827, 2, 'update_poll', 'تحديث الاستطلاع'),
(1828, 2, 'update_post', 'تحديث المنشور'),
(1829, 2, 'update_profile', 'تحديث الملف الشخصي'),
(1830, 2, 'update_recipe', 'تحديث الوصفة'),
(1831, 2, 'update_rss_feed', 'تحديث خلاصة RSS'),
(1832, 2, 'update_sorted_list', 'تحديث القائمة المرتبة'),
(1833, 2, 'update_subcategory', 'تحديث الفئة الفرعية'),
(1834, 2, 'update_table_of_contents', 'تحديث جدول المحتويات'),
(1835, 2, 'update_trivia_quiz', 'تحديث اختبار المعلومات العامة'),
(1836, 2, 'update_video', 'تحديث الفيديو'),
(1837, 2, 'update_widget', 'تحديث الأداة'),
(1838, 2, 'upload', 'رفع'),
(1839, 2, 'uploading', 'جاري الرفع...'),
(1840, 2, 'upload_csv_file', 'رفع ملف CSV'),
(1841, 2, 'upload_image', 'رفع صورة'),
(1842, 2, 'upload_video', 'رفع فيديو'),
(1843, 2, 'upload_your_banner', 'إنشاء كود إعلان'),
(1844, 2, 'url', 'الرابط'),
(1845, 2, 'user', 'المستخدم'),
(1846, 2, 'username', 'اسم المستخدم'),
(1847, 2, 'users', 'المستخدمون'),
(1848, 2, 'user_agent', 'وكيل المستخدم (User-Agent)'),
(1849, 2, 'user_agreement', 'اتفاقية المستخدم'),
(1850, 2, 'user_id', 'معرف المستخدم'),
(1851, 2, 'use_text', 'استخدام النص'),
(1852, 2, 'value', 'القيمة'),
(1853, 2, 'vertical', 'عمودي'),
(1854, 2, 'very_long', 'طويل جداً'),
(1855, 2, 'very_short', 'قصير جداً'),
(1856, 2, 'video', 'فيديو'),
(1857, 2, 'videos', 'فيديوهات'),
(1858, 2, 'video_embed_code', 'كود تضمين الفيديو'),
(1859, 2, 'video_file', 'ملف الفيديو'),
(1860, 2, 'video_name', 'اسم الفيديو'),
(1861, 2, 'video_post_exp', 'رفع أو تضمين فيديوهات'),
(1862, 2, 'video_thumbnails', 'صورة مصغرة للفيديو'),
(1863, 2, 'video_url', 'رابط الفيديو'),
(1864, 2, 'view_all', 'عرض الكل'),
(1865, 2, 'view_all_posts', 'عرض جميع المنشورات'),
(1866, 2, 'view_options', 'خيارات العرض'),
(1867, 2, 'view_post', 'عرض المنشور'),
(1868, 2, 'view_results', 'عرض النتائج'),
(1869, 2, 'view_site', 'عرض الموقع'),
(1870, 2, 'visibility', 'الظهور / الرؤية'),
(1871, 2, 'vk', 'فكونتاكتي (VK)'),
(1872, 2, 'vkontakte', 'فكونتاكتي'),
(1873, 2, 'vote', 'تصويت'),
(1874, 2, 'voted_message', 'لقد قمت بالتصويت في هذا الاستطلاع مسبقاً.'),
(1875, 2, 'vote_permission', 'صلاحية التصويت'),
(1876, 2, 'warning', 'تحذير'),
(1877, 2, 'warning_documentation', 'اقرأ التوثيق قبل تفعيل هذا الخيار'),
(1878, 2, 'warning_edit_profile_image', 'انقر على زر حفظ التغييرات بعد تحديد الصورة'),
(1879, 2, 'weekly', 'أسبوعي'),
(1880, 2, 'whatsapp', 'واتساب'),
(1881, 2, 'whats_your_reaction', 'ما هو شعورك؟'),
(1882, 2, 'where_to_display', 'أين يتم العرض'),
(1883, 2, 'widget', 'أداة (ويدجيت)'),
(1884, 2, 'widgets', 'الأدوات'),
(1885, 2, 'width', 'العرض'),
(1886, 2, 'withdraw_amount', 'مبلغ السحب'),
(1887, 2, 'withdraw_method', 'طريقة السحب'),
(1888, 2, 'wow', 'واو'),
(1889, 2, 'wrong_answer', 'إجابة خاطئة'),
(1890, 2, 'wrong_password_error', 'كلمة المرور القديمة غير صحيحة!'),
(1891, 2, 'year', 'سنة'),
(1892, 2, 'yearly', 'سنوي'),
(1893, 2, 'years', 'سنوات'),
(1894, 2, 'yes', 'نعم'),
(1895, 2, 'your_balance', 'رصيدك'),
(1896, 2, 'youtube', 'يوتيوب');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keywords` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_custom` tinyint(1) DEFAULT '1',
  `page_default_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `page_content` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `page_order` smallint DEFAULT '1',
  `visibility` tinyint(1) DEFAULT '1',
  `title_active` tinyint(1) DEFAULT '1',
  `breadcrumb_active` tinyint(1) DEFAULT '1',
  `right_column_active` tinyint(1) DEFAULT '1',
  `need_auth` tinyint(1) DEFAULT '0',
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'top',
  `link` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `parent_id` int DEFAULT '0',
  `page_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'page',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `lang_id`, `title`, `slug`, `description`, `keywords`, `is_custom`, `page_default_name`, `page_content`, `page_order`, `visibility`, `title_active`, `breadcrumb_active`, `right_column_active`, `need_auth`, `location`, `link`, `parent_id`, `page_type`, `created_at`) VALUES
(4, 2, 'صور', 'صور', 'صور', 'صور, معرض , صفحة', 0, 'gallery', NULL, 5, 1, 1, 1, NULL, 0, 'main', '', 0, 'page', '2025-06-20 21:41:24'),
(5, 2, 'االإتصال بنا', 'االإتصال-بنا', 'االإتصال بنا', 'االإتصال بنا, page', 0, 'contact', NULL, 1, 1, 1, 1, NULL, 0, 'top', '', 0, 'page', '2025-06-20 21:41:24'),
(6, 2, 'Terms & Conditions', 'terms-conditions', 'Varient Terms Conditions Page', 'varient, terms, conditions', 0, 'terms_conditions', '', 1, 1, 1, 1, 0, 0, 'footer', '', 0, 'page', '2025-06-20 21:41:24'),
(7, 2, 'الهيئة', 'الهيئة', NULL, NULL, 1, NULL, NULL, 2, 1, 1, 1, 1, 0, 'main', 'الهيئة', 0, 'link', '2025-06-23 12:04:42'),
(8, 2, 'العميد', 'العميد', NULL, NULL, 1, NULL, NULL, 2, 1, 1, 1, 1, 0, 'main', '#', 7, 'link', '2025-06-23 12:05:52'),
(10, 2, 'تركيبة مجلس الهيئة', 'تركيبة-مجلس-الهيئة', NULL, NULL, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 'main', '#', 7, 'link', '2025-06-23 12:06:48'),
(11, 2, 'أنشطة الهيئة', 'أنشطة-الهيئة', NULL, NULL, 1, NULL, NULL, 4, 1, 1, 1, 1, 0, 'main', '#', 0, 'link', '2025-06-23 12:07:36'),
(12, 2, 'خدمات الهيئة', 'خدمات-الهيئة', NULL, NULL, 1, NULL, NULL, 3, 1, 1, 1, 1, 0, 'main', '#', 0, 'link', '2025-06-23 12:08:00'),
(13, 2, 'بيانات وبلاغات', 'بيانات-وبلاغات', NULL, NULL, 1, NULL, NULL, 1, 1, 1, 1, 1, 0, 'main', '#', 11, 'link', '2025-06-23 12:08:17'),
(14, 2, 'أخبار الهيئة', 'أخبار-الهيئة', NULL, NULL, 1, NULL, NULL, 2, 1, 1, 1, 1, 0, 'main', '#', 11, 'link', '2025-06-23 12:08:44'),
(15, 2, 'محاضرات', 'محاضرات', NULL, NULL, 1, NULL, NULL, 3, 1, 1, 1, 1, 0, 'main', '#', 11, 'link', '2025-06-23 12:09:05'),
(16, 2, 'التكوين', 'التكوين', NULL, NULL, 1, NULL, NULL, 4, 1, 1, 1, 1, 0, 'main', '#', 11, 'link', '2025-06-23 12:09:12');

-- --------------------------------------------------------

--
-- Table structure for table `payouts`
--

CREATE TABLE `payouts` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `amount` double NOT NULL,
  `payout_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option1` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option2` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option3` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option4` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option5` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option6` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option7` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option8` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option9` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `option10` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint(1) DEFAULT '1',
  `vote_permission` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'all',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poll_votes`
--

CREATE TABLE `poll_votes` (
  `id` int NOT NULL,
  `poll_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `vote` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title_hash` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keywords` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `category_id` int DEFAULT NULL,
  `image_id` int DEFAULT NULL,
  `optional_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pageviews` int DEFAULT '0',
  `comment_count` int DEFAULT '0',
  `need_auth` tinyint(1) DEFAULT '0',
  `slider_order` tinyint(1) DEFAULT '1',
  `featured_order` tinyint(1) DEFAULT '1',
  `is_scheduled` tinyint(1) DEFAULT '0',
  `visibility` tinyint(1) DEFAULT '1',
  `show_right_column` tinyint(1) DEFAULT '1',
  `post_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'post',
  `video_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video_storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `image_url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video_url` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video_embed_code` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `feed_id` int DEFAULT NULL,
  `post_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_post_url` tinyint(1) DEFAULT '1',
  `image_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `show_item_numbers` tinyint(1) DEFAULT '1',
  `is_poll_public` tinyint(1) DEFAULT '0',
  `link_list_style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `recipe_info` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `post_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `lang_id`, `title`, `slug`, `title_hash`, `keywords`, `summary`, `content`, `category_id`, `image_id`, `optional_url`, `pageviews`, `comment_count`, `need_auth`, `slider_order`, `featured_order`, `is_scheduled`, `visibility`, `show_right_column`, `post_type`, `video_path`, `video_storage`, `image_url`, `video_url`, `video_embed_code`, `user_id`, `status`, `feed_id`, `post_url`, `show_post_url`, `image_description`, `show_item_numbers`, `is_poll_public`, `link_list_style`, `recipe_info`, `post_data`, `updated_at`, `created_at`) VALUES
(1, 2, 'تهنئة', 'تهنئة', NULL, NULL, NULL, '<p><span>يتقدم مجلس الهيئة الوطنية للعدول المنفذين بتونس بأحر التهاني وأخلصها إلى الزملاء والزميلات الناجحين أبنائهم في مناظرة البكالوريا، ويتمنى حظ أوفر للمؤجلين منهم لدورة التدارك .</span></p>', 1, 1, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 'article', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 0, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, NULL, '2025-06-22 14:03:34'),
(2, 2, 'بيان مساندة', 'بيان-مساندة', NULL, NULL, NULL, '<p><br><br>يعبر مجلس الهيئة الوطنية للعدول المنفذين بتونس عن دعمه ومساندته لقافلة الصمود المتجهة الى قطاع غزة المحاصر والتي انطلقت اليوم بشارع محمد الخامس قبالة وزارة السياحة مرورا ببعض ولايات الجمهورية ثم دولة ليبيا الشقيقة ثم بجمهورية مصر الشقيقة في اتجاه غزة المحاصرة.<br>ويدعو كافة الزميلات والزملاء الى المشاركة في القافلة نصرة للقضية الفلسطينية العادلة.<br>كما يدعو كافة المنظمات والهيئات الوطنية ومكونات المجتمع المدني للتحرك ودعم الشعب الفلسطيني ومقاومته الباسلة ومؤازرته له في دفاعه على الأرض و المقدسات.<br>عاشت تونس ، عاشت فلسطين و المجد للشهداء.</p>', 1, 2, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 'article', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 0, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, '2025-06-23 14:12:47', '2025-06-09 14:11:26'),
(3, 2, 'تهاني  عيد الأضحى المبارك', 'تهاني-عيد-الأضحى-المبارك', NULL, NULL, NULL, NULL, 1, 4, NULL, 0, 0, 0, 1, 1, 0, 1, 1, 'article', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 0, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, NULL, '2025-06-05 14:14:37'),
(4, 2, 'إعلام 30 ماي 2025', 'إعلام-30-ماي-2025', NULL, NULL, NULL, '<p>في إطار الاستعداد للاستحقاق الانتخابي لهياكل تسير المهنة، ولتكريس مبادئ الشفافية والنزاهة ولإضفاء معايير تحقق مبدأ تكافؤ الفرص بين جميع المترشحين على المستوى الوطني والجهوي وعملا بأحكام الفصول 25، 26 39، 40 من النظام الداخلي<br>قرر المجلس الوطني للهيئة الوطنية للعدول المنفذين تحديد آخر أجل لدفع معاليم الاشتراك بالنسبة للزميلات والزملاء الراغبين في تقديم ترشحاتهم لانتخابات هياكل تسيير المهنة موفى شهر جوان 2025، ويعتمد هذا الأجل لتوحيد المعيار المتعلق بشرط خلاص معلوم الاشتراك عند البت في ملفات الترشح من طرف جميع هياكل تسيير المهنة.</p>\r\n<p><img src=\"http://127.0.0.1/uploads/images/202506/image_870x_6859554a3acc0.jpg\" alt=\"\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>', 1, 12, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 'article', NULL, 'local', '', NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 0, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, '2025-06-23 15:10:40', '2025-05-30 14:24:17'),
(5, 2, 'مقترح مشروع قانون أساسي', 'مقترح-مشروع-قانون-أساسي', NULL, NULL, NULL, '<p>تبعا لتعهد لجنة التشريع العام بمجلس نواب الشعب بمقترح مشروع قانون أساسي متعلق بتنظيم مهنة عدول الاشهاد المقدم من مجموعة من السادة النواب المحترمين فإنه يهم مجلس الهيئة الوطنية للعدول المنفذين أن يؤكد<br>على ما يلي :<br>أولا : حرصه على تطوير المهن المساهمة في تسيير المرفق العام العدلي وتحيين التشريعات المنظمة لها وتحصين المكتسبات المحققة من مختلف هذه المهن في سبيل خدمة مصالح المواطنين.<br>ويذكر في هذا الإطار أن جميع مطالب العدول المنفذين منذ نشأة المهنة كانت تصب دائما في تطوير النظام القضائي وضمان حقوق جميع الأطراف بعيدا عن القطاعية المقيتة والمصلحة الضيقة وأن العدول المنفذين سبقوا دائما المصلحة العامة على مصلحتهم الخاصة.<br>ثانيا : إن تطوير التشريعات المنظمة للمهن المساهمة في تسيير المرفق العام العدلي لا يجب أن يكون مدخلا لخدمة المصالح القطاعية والاستيلاء على اختصاصات العدل المنفذ المنصوص عليها بالفصل 13 من القانون الأساسي عدد 09 المؤرخ في 30 جانفي 2018 المنظم لمهنة العدول المنفذين ولا يكون سببا في التضييق على المعاملات وإثقال كاهل المواطنين بمصاريف جديدة لإجراءات غير منتجة تحرير عقود التفويت والتواكيل المتعلقة بالعربات.<br>ثالثا : هذا المقترح لا يعبر عن حاجة اقتصادية أو اجتماعية أو أمنية كما يراد التسويق له وأنه في صيغته الحالية ينطوي على فوضى تشريعية وعلى مخاطر جمة من شأنها تعطيل المعاملات والمس بأسس قانون الأحوال الشخصية والقانون المدني والقانون التجاري ويحيد بالمعايير المؤسسة</p>\r\n<p>التوزيع الصلاحيات بين توثيق الإتفاقات الراجعة لعدالة الاشهاد والسير بالإجراءات المتعلقة بالنزاعات مجال تدخل العدول المنفذين.<br>رابعا : إن الفصل 75 من دستور 25 جويلية 2022 يوجب اللجوء الى شكل قوانين أساسية كلما تعلقت النصوص بتنظيم العدالة والقضاء ، الحريات وحقوق الانسان ، الأحوال الشخصية وذلك باعتماد مقاربة شاملة لكافة القوانين وباتخاذ كافة قواعد الحيطة والحذر لما في ذلك من تأثير على مجموع النصوص القانونية الأخرى.<br>خامسا : رفضه المطلق لما جاء بهذا المشروع من تهديد لمكاسب الأسرة والمرأة والطفولة واستهانة بدور القضاء في تحصين الأسرة وحمايتها.<br>سادسا : يدعو مجلس نواب الشعب إلى مزيد تعميق التفكير وإعتماد أكثر تشاركية حول هذا المشروع، ويحذر من الإنسياق في تمشي يخدم مصالح فئوية وقطاعية على حساب الصالحالعام.</p>\r\n<p></p>\r\n<p><img src=\"http://127.0.0.1/uploads/images/202506/image_870x_6859562901445.jpg\" alt=\"\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>\r\n<p><img src=\"http://127.0.0.1/uploads/images/202506/image_870x_6859562d6a760.jpg\" alt=\"\" style=\"display: block; margin-left: auto; margin-right: auto;\"></p>', 1, 12, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 'article', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 0, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, '2025-06-23 15:11:05', '2025-05-15 14:29:37'),
(6, 2, 'بيان', 'بيان', NULL, NULL, NULL, '<p>أمام إمعان الكيان الصهيوني المحتل في مواصلة حربه المتوحشة والابادة ضد الشعب الفلسطيني الأعزل في غزة والضفة الغربية وضربه عرض الحائط بإتفاقية وقف إطلاق النار وبكل المواثيق الدولية<br>فإن مجلس الهئية الوطنية للعدول المنفذين بتونس إذ يستنكر الصمت العربي المطبق والمريب أمام ما يحدث من تقتيل وإبادة وتهجير قسري للشعب الفلسطيني الأعزل فإنه يعبر عن ما يلي :<br>أولا : دعمه المطلق للمقاومة الفلسطينية الباسلة وتمسكه بها كخيار لتحرير الأرض وإقامة الدولة الفلسطينية وعاصمتها القدس الشريف .<br>ثانيا : إدانته لصمت المجتمع الدولي وإزدواجية المعايير في التعاطي مع القضية الفلسطنية ، وإغفاله المتعمد لكل المواثيق والعهود الدولية المتعلقة بحقوق الإنسان والقانون الدولي الإنساني.<br>ثالثا : يدعو كافة القوى الوطنية الحية من منظمات وجمعيات للتحرك لدعم الشعب الفلسطيني ومقاومته بكل الأشكال النضالية الممكنة .<br>عاشت فلسطين وعاشت المقاومة صامدة ومرابطة على طريق الحرية.</p>', 1, 13, NULL, 0, 0, 0, 1, 1, 0, 1, 1, 'article', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 0, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, NULL, '2025-04-06 15:17:38'),
(7, 2, 'مشروع تنقيح النظام الداخلي للهيئة الوطنية للعدول المنفذين', 'مشروع-تنقيح-النظام-الداخلي-للهيئة-الوطنية-للعدول-المنفذين', NULL, NULL, NULL, NULL, 2, 14, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 'video', 'uploads/videos/202506/video_685962d5af5250-49187406.mp4', 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 0, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, '2025-06-23 15:27:56', '2025-06-23 15:24:14'),
(8, 2, 'بلاغ', 'بلاغ', NULL, NULL, NULL, NULL, 1, 19, NULL, 1, 0, 0, 1, 1, 0, 1, 1, 'gallery', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 1, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, NULL, '2025-06-23 15:37:25'),
(9, 2, 'أشغال الملتقي العلمي الوطني حول تنقيح بعض أحكام المجلة التجارية', 'أشغال-الملتقي-العلمي-الوطني-حول-تنقيح-بعض-أحكام-المجلة-التجارية', NULL, NULL, NULL, NULL, 1, 34, NULL, 0, 0, 0, 1, 1, 0, 1, 1, 'gallery', NULL, 'local', NULL, NULL, NULL, 1, 1, NULL, NULL, 0, NULL, 1, 1, 'a:3:{i:1;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:2;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}i:3;a:2:{s:5:\"style\";s:4:\"none\";s:6:\"status\";i:0;}}', NULL, NULL, NULL, '2025-06-23 15:53:54');

-- --------------------------------------------------------

--
-- Table structure for table `post_audios`
--

CREATE TABLE `post_audios` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `audio_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_files`
--

CREATE TABLE `post_files` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `file_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_gallery_items`
--

CREATE TABLE `post_gallery_items` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `item_order` smallint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_gallery_items`
--

INSERT INTO `post_gallery_items` (`id`, `post_id`, `title`, `content`, `image`, `image_large`, `image_description`, `storage`, `item_order`) VALUES
(1, 8, '', '<div class=\"xdj266r x14z9mp xat24cr x1lziwak x1vvkbs x126k92a\">\r\n<div dir=\"auto\"></div>\r\n</div>\r\n<div class=\"x14z9mp xat24cr x1lziwak x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\"><span class=\"html-span xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl x1hl2dhg x16tdsg8 x1vvkbs\"><a class=\"html-a xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl x1hl2dhg x16tdsg8 x1vvkbs\" tabindex=\"-1\"></a></span>عملا باحكام القانون الاساسي عدد9المؤرخ في 30 جانفي 2018 المتعلق بتنظيم مهنة العدول المنفذين و خاصة الفصلين55و59 منه.</div>\r\n</div>\r\n<div class=\"x14z9mp xat24cr x1lziwak x1vvkbs xtlvy1s x126k92a\">\r\n<div dir=\"auto\">وعملا باحكام الفصل 112من النظام الداخلي للهيئه الوطنية للعدول النفذين المصادق عليه بتاريخ 4ماي بجزيرة الأحلام جربة</div>\r\n<div dir=\"auto\">وبعد الاطلاع علي قرار المجلس الوطني بتاريخ 25نوفمبر 2022، تمت علي بركة الله يوم السبت الموافق للواحد العشرين من شهر ديسمبر سنة 2024 بمدينة صفاقس ،المصادقة علي تنقيح النظام الداخلي للهيئه الوطنية للعدول النفذين.</div>\r\n<div dir=\"auto\">و يتقدم مجلس الهيئة الوطنية باحر التهاني و اسمي عبارات الشكر لجميع العدول المنفذين بنجاح جلسة المصادقة و بروح التضامن و المسؤولية .</div>\r\n</div>', 'uploads/images/202506/image_870x580_68596668c015e.jpg', 'uploads/images/202506/image_870x_68596668ea628.jpg', '', 'local', 1),
(2, 8, '', '', 'uploads/images/202506/image_870x580_68596667e1fbe.jpg', 'uploads/images/202506/image_870x_685966681883b.jpg', '', 'local', 2),
(3, 8, '', '', 'uploads/images/202506/image_870x580_6859666707a4c.jpg', 'uploads/images/202506/image_870x_6859666745021.jpg', '', 'local', 3),
(4, 8, '', '', 'uploads/images/202506/image_870x580_685966662f9c2.jpg', 'uploads/images/202506/image_870x_685966665922b.jpg', '', 'local', 4),
(5, 8, '', '', 'uploads/images/202506/image_870x580_6859666540b9e.jpg', 'uploads/images/202506/image_870x_68596665738cf.jpg', '', 'local', 5),
(6, 9, '', '<div class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl\">\r\n<div dir=\"auto\" class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl\">\r\n<div data-ad-rendering-role=\"story_message\" class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl\">\r\n<div class=\"x1l90r2v x1iorvi4 x1g0dm76 xpdmqnj\" data-ad-comet-preview=\"message\" data-ad-preview=\"message\" id=\"_r_3ls_\">\r\n<div class=\"x78zum5 xdt5ytf xz62fqu x16ldp7u\">\r\n<div class=\"xu06os2 x1ok221b\">\r\n<div class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl\">\r\n<div class=\"xdj266r x14z9mp xat24cr x1lziwak x1vvkbs x126k92a\">\r\n<div dir=\"auto\">اختتمت أشغال الملتقي العلمي الوطني حول تنقيح بعض أحكام المجلة التجارية تحت عنوان اي مستقبل للشيك في ظل التنقيحات الأخيرة للمجلة التجارية و النظم بالمنستير بالشراكة بين <span class=\"html-span xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl x1hl2dhg x16tdsg8 x1vvkbs\"><a class=\"html-a xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl x1hl2dhg x16tdsg8 x1vvkbs\" tabindex=\"-1\"></a></span>الهيئة الوطنية للعدول المنفذين و الهيئة الوطنية للمحامين. وقد شارك في هذا الملتقي العلمي عدد هام من العدول المنفذين و المحامين و القضاة و مؤسسات بنكية و ممثلي الاتحاد الوطني للصناعة و التجارة.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<div id=\"_r_3lt_\" class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl x1n2onr6\">\r\n<div class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl x1n2onr6\">\r\n<div class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl\">\r\n<div class=\"x1n2onr6\">\r\n<div class=\"x1n2onr6\">\r\n<div class=\"x6ikm8r x10wlt62 x10l6tqk\"><a aria-label=\"No photo description available.\" attributionsrc=\"/privacy_sandbox/comet/register/source/?xt=AZUR1gtS0XfpEnObKYx-2RHaXhAOfHb2LwPJ_w9d4pIJCh1yLmoDfKauEmmLBNixTu2QEU_hYbMbAAaVe6-McDhl0I0cKSbGp5D5UC2xio4vUx4mEI2C7Fdt7qrLW5xtVq3vI2j4m1mWn1qt7WzGZizmqQK1oVVyfEDPpcw5c8I00raCUl9dFKbU1B6dOgcFdEaqx9kEj--cTEALIWUzSnUhmNCuDh-AG873BS7belZXygjFEPCte2gl44AzhwAGVr8zNrtwfeL_B5DJVbKCAtq1nRXp37_m07V3pwvnREuEzoh4T3mewEoyvsRFa3cQBO3WG403A40iewifb34GYfbMgHXz4TPTkOnCp6QicfY7T9Z3tWVYPQgbsEUUAMpnuioG-MFvG0BanXvUHw6c5ae5QnGN6nMoOnS8ByTtxmhn7_yEV8m28uO9nB-tPp_cRP5bIWvi6xm40c35n8HKiwom50aHAFKtfCVDcY77zZc-W221zFBpNbpDuUEwajrSHy3_MuVnrSkW2GquxDR9psZ_HSJxtx6sLC5X-fCoDMLFPinGrKdmhfGmrqJFePqWnMAqc4rb1V8fZzPw6Hre-66baEg7alxrf3ZWr5eUuRotuBGcClqTbmfYSfFlwWrAg8l4sFMerFON_vE8pJ4tTxcSS97evUA7GjWitmIFXpq0oIwLK3JNPWOKVwgOmkf8gp40wRPwjvkMvOG-3OOPzlH_MIYlKk8aBxMVCmBA_Jlq1BQZzVptnkZe9cIHfKpcyKEvnBmkPQro09B8N-GEY2VlllgtzhcZUNWq-cqqhAXucvDfwJ-lK5Kp1K4w6zO2-SCLNHGPRgFN5RS2oDDPkSi39K61ntootRc1qeDUqZv7o9BF9d4HssxzKqb-PAEW7z2ansuZ98sy3GB7qhfxJMgGEe_9GxGMcLDQA-Hsh5gXDpOaWRLIcKmv_BRdfHB52FUbVLypwUvF_dw7G6xHXh-vmn6Npif1hvhNmYaVxFiW-30qHz7Pl4FC4zOPMnRCCmgwRFYt_MRn0or-TXOcrR-huG5-Yq1Yr0OMV42pTgKYRB_Du5UPtUtzGl7cOW-IrESeRB_6NLEC3iN3N_AX9VkWothm0MJ692VMLXl7FqfhZOt-ykWfIJ_AlGSAHWWsbF20P-x95qbK0_raUWJxKy5ruhtHTFo7dG5XfoiMy0rW7Smp87v-lhBQoTbxOpCdlIQIcDxqfz9QhlS3DsGorjr6\" class=\"x1i10hfl x1qjc9v5 xjbqb8w xjqpnuy xc5r6h4 xqeqjp1 x1phubyo x13fuv20 x18b5jzi x1q0q8m5 x1t7ytsu x972fbf x10w94by x1qhh985 x14e42zd x9f619 x1ypdohk xdl72j9 x2lah0s xe8uvvx xdj266r x14z9mp xat24cr x1lziwak x2lwn1j xeuugli xexx8yu xyri2b x18d9i69 x1c1uobl x16tdsg8 x1hl2dhg xggy1nq x1ja2u2z x1t137rt x1fmog5m xu25z0z x140muxe xo1y3bh x1q0g3np x87ps6o x1lku1pv x1rg5ohu x1a2a7pz x1ey2m1c xtijo5x x10l6tqk x1o0tod x13vifvy x1pdlv7q\" href=\"https://www.facebook.com/photo/?fbid=990549173115408&amp;set=pcb.990551009781891&amp;__cft__[0]=AZVqC3k9kU7ubUhsum_JcnDcVrVlOGHWTIe8rNd9SoWRG_cXuuRtA1jL3G6bnebXnvuELF-vN49zhFzxfnp-UoUYvAJsEekHgq5yxziQLOIgi0yKGUTNpnIU_C8HwoqxtrEXWUPLFVBAsjMLla4bulKjAlzsMAKKGaJOv0IeFZw53dDL7H8_XUhQ_Zn7MURxL78&amp;__tn__=*b0H-R\" role=\"link\" tabindex=\"0\">\r\n<div class=\"html-div xdj266r x14z9mp xat24cr x1lziwak xexx8yu xyri2b x18d9i69 x1c1uobl x6ikm8r x10wlt62\">\r\n<div class=\"xqtp20y x6ikm8r x10wlt62 x1n2onr6\"></div>\r\n</div>\r\n</a></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'uploads/images/202506/image_870x580_685969bd059b8.jpg', 'uploads/images/202506/image_870x_685969bd335b4.jpg', '', 'local', 1),
(7, 9, '', '', 'uploads/images/202506/image_870x580_685969bc2ab34.jpg', 'uploads/images/202506/image_870x_685969bc54ae6.jpg', '', 'local', 2),
(8, 9, '', '', 'uploads/images/202506/image_870x580_685969bb4e1dd.jpg', 'uploads/images/202506/image_870x_685969bb81f9f.jpg', '', 'local', 3),
(9, 9, '', '', 'uploads/images/202506/image_870x580_685969ba85883.jpg', 'uploads/images/202506/image_870x_685969baabfdc.jpg', '', 'local', 4),
(10, 9, '', '', 'uploads/images/202506/image_870x580_685969b9a8460.jpg', 'uploads/images/202506/image_870x_685969b9d0d53.jpg', '', 'local', 5),
(11, 9, '', '', 'uploads/images/202506/image_870x580_685969b91b55d.jpg', 'uploads/images/202506/image_870x_685969b93c4b2.jpg', '', 'local', 6),
(12, 9, '', '', 'uploads/images/202506/image_870x580_685969b8a8283.jpg', 'uploads/images/202506/image_870x_685969b8bcb72.jpg', '', 'local', 7),
(13, 9, '', '', 'uploads/images/202506/image_870x580_685969b830897.jpg', 'uploads/images/202506/image_870x_685969b850b92.jpg', '', 'local', 8),
(14, 9, '', '', 'uploads/images/202506/image_870x580_685969b7b9256.jpg', 'uploads/images/202506/image_870x_685969b7d72bd.jpg', '', 'local', 9),
(15, 9, '', '', 'uploads/images/202506/image_870x580_685969b7533ec.jpg', 'uploads/images/202506/image_870x_685969b767354.jpg', '', 'local', 10),
(16, 9, '', '', 'uploads/images/202506/image_870x580_685969b6e144b.jpg', 'uploads/images/202506/image_870x_685969b700fe3.jpg', '', 'local', 11),
(17, 9, '', '', 'uploads/images/202506/image_870x580_685969b673d8b.jpg', 'uploads/images/202506/image_870x_685969b68860a.jpg', '', 'local', 12),
(18, 9, '', '', 'uploads/images/202506/image_870x580_685969b5edcc9.jpg', 'uploads/images/202506/image_870x_685969b60eef8.jpg', '', 'local', 13),
(19, 9, '', '', 'uploads/images/202506/image_870x580_685969b58022c.jpg', 'uploads/images/202506/image_870x_685969b594a42.jpg', '', 'local', 14),
(20, 9, '', '', 'uploads/images/202506/image_870x580_685969b512d2f.jpg', 'uploads/images/202506/image_870x_685969b529e66.jpg', '', 'local', 15),
(21, 9, '', '', 'uploads/images/202506/image_870x580_685969b4a1f97.jpg', 'uploads/images/202506/image_870x_685969b4bf09e.jpg', '', 'local', 16),
(22, 9, '', '', 'uploads/images/202506/image_870x580_685969b43b6a1.jpg', 'uploads/images/202506/image_870x_685969b44fc7c.jpg', '', 'local', 17),
(23, 9, '', '', 'uploads/images/202506/image_870x580_685969b3c3c8d.jpg', 'uploads/images/202506/image_870x_685969b3e04d2.jpg', '', 'local', 18),
(24, 9, '', '', 'uploads/images/202506/image_870x580_685969b352bd8.jpg', 'uploads/images/202506/image_870x_685969b36935f.jpg', '', 'local', 19),
(25, 9, '', '', 'uploads/images/202506/image_870x580_685969b2d973c.jpg', 'uploads/images/202506/image_870x_685969b2ed731.jpg', '', 'local', 20),
(26, 9, '', '', 'uploads/images/202506/image_870x580_685969b2660a6.jpg', 'uploads/images/202506/image_870x_685969b27bbc9.jpg', '', 'local', 21),
(27, 9, '', '', 'uploads/images/202506/image_870x580_685969b1eb406.jpg', 'uploads/images/202506/image_870x_685969b20b2f2.jpg', '', 'local', 22),
(28, 9, '', '', 'uploads/images/202506/image_870x580_685969b18182f.jpg', 'uploads/images/202506/image_870x_685969b195cb6.jpg', '', 'local', 23),
(29, 9, '', '', 'uploads/images/202506/image_870x580_685969b114270.jpg', 'uploads/images/202506/image_870x_685969b12bea2.jpg', '', 'local', 24),
(30, 9, '', '', 'uploads/images/202506/image_870x580_685969b0a35fa.jpg', 'uploads/images/202506/image_870x_685969b0b7d03.jpg', '', 'local', 25),
(31, 9, '', '', 'uploads/images/202506/image_870x580_685969ae19653.jpg', 'uploads/images/202506/image_870x_685969ae303f2.jpg', '', 'local', 26),
(32, 9, '', '', 'uploads/images/202506/image_870x580_685969ad179fc.jpg', 'uploads/images/202506/image_870x_685969ad2ce4b.jpg', '', 'local', 27),
(33, 9, '', '', 'uploads/images/202506/image_870x580_685969acc1bc9.jpg', 'uploads/images/202506/image_870x_685969acce9fa.jpg', '', 'local', 28),
(34, 9, '', '', 'uploads/images/202506/image_870x580_685969ac66935.jpg', 'uploads/images/202506/image_870x_685969ac7a51c.jpg', '', 'local', 29),
(35, 9, '', '', 'uploads/images/202506/image_870x580_685969abd0d3e.jpg', 'uploads/images/202506/image_870x_685969abebe2f.jpg', '', 'local', 30),
(36, 9, '', '', 'uploads/images/202506/image_870x580_685969ab61763.jpg', 'uploads/images/202506/image_870x_685969ab75694.jpg', '', 'local', 31),
(37, 9, '', '', 'uploads/images/202506/image_870x580_685969a807763.jpg', 'uploads/images/202506/image_870x_685969a8381f5.jpg', '', 'local', 32),
(38, 9, '', '', 'uploads/images/202506/image_870x580_685969a5ae11a.jpg', 'uploads/images/202506/image_870x_685969a5e3528.jpg', '', 'local', 33);

-- --------------------------------------------------------

--
-- Table structure for table `post_images`
--

CREATE TABLE `post_images` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `image_big` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_images`
--

INSERT INTO `post_images` (`id`, `post_id`, `image_big`, `image_default`, `storage`) VALUES
(1, 2, 'uploads/images/202506/image_870x580_685952c918093.jpg', 'uploads/images/202506/image_870x_685952c9444c1.jpg', 'local');

-- --------------------------------------------------------

--
-- Table structure for table `post_item_images`
--

CREATE TABLE `post_item_images` (
  `id` int NOT NULL,
  `item_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '''quiz''',
  `image_default` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_small` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image_mime` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'jpg',
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `user_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_list_items`
--

CREATE TABLE `post_list_items` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `item_order` smallint DEFAULT NULL,
  `parent_link_num` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_pageviews_month`
--

CREATE TABLE `post_pageviews_month` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `post_user_id` int DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reward_amount` double NOT NULL DEFAULT '0',
  `visit_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_pageviews_month`
--

INSERT INTO `post_pageviews_month` (`id`, `post_id`, `post_user_id`, `ip_address`, `reward_amount`, `visit_hash`, `created_at`) VALUES
(1, 1, 1, '127.0.0.1', 0, '0951f5907bfe57a386ca35480d77db9f', '2025-06-23 14:08:10'),
(2, 2, 1, '127.0.0.1', 0, '430b062d3df79e14c65f692c586b46f9', '2025-06-23 14:12:22'),
(3, 4, 1, '127.0.0.1', 0, 'adeff75ebd5b10c3d0a9bfdaa703a123', '2025-06-23 14:24:24'),
(4, 5, 1, '127.0.0.1', 0, 'e0be67ec60feb295dafe4c255deceb15', '2025-06-23 15:10:57'),
(5, 7, 1, '127.0.0.1', 0, 'a0f38a7c5f6d8370bdd9342441b20ee2', '2025-06-23 15:24:21'),
(6, 8, 1, '127.0.0.1', 0, '10f6af14b7f871fd0d97a3ad7958840b', '2025-06-23 15:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `post_poll_votes`
--

CREATE TABLE `post_poll_votes` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `question_id` int DEFAULT NULL,
  `answer_id` int DEFAULT NULL,
  `user_id` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_selections`
--

CREATE TABLE `post_selections` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `selection_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_selections`
--

INSERT INTO `post_selections` (`id`, `post_id`, `selection_type`) VALUES
(1, 1, 'featured'),
(2, 2, 'featured'),
(3, 2, 'recommended'),
(4, 2, 'slider'),
(5, 1, 'slider'),
(6, 3, 'slider'),
(7, 3, 'featured'),
(8, 4, 'slider'),
(9, 6, 'slider'),
(10, 6, 'featured'),
(11, 6, 'recommended');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` bigint NOT NULL,
  `tag_id` int DEFAULT NULL,
  `post_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_answers`
--

CREATE TABLE `quiz_answers` (
  `id` int NOT NULL,
  `question_id` int DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `answer_text` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL,
  `assigned_result_id` int DEFAULT '0',
  `total_votes` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_questions`
--

CREATE TABLE `quiz_questions` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `question` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `question_order` int DEFAULT '1',
  `answer_format` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'small_image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_results`
--

CREATE TABLE `quiz_results` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `result_title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `image_storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `min_correct_count` mediumint DEFAULT NULL,
  `max_correct_count` mediumint DEFAULT NULL,
  `result_order` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reactions`
--

CREATE TABLE `reactions` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `re_like` int DEFAULT '0',
  `re_dislike` int DEFAULT '0',
  `re_love` int DEFAULT '0',
  `re_funny` int DEFAULT '0',
  `re_angry` int DEFAULT '0',
  `re_sad` int DEFAULT '0',
  `re_wow` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reactions`
--

INSERT INTO `reactions` (`id`, `post_id`, `re_like`, `re_dislike`, `re_love`, `re_funny`, `re_angry`, `re_sad`, `re_wow`) VALUES
(1, 1, 0, 0, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 0),
(3, 4, 0, 0, 0, 0, 0, 0, 0),
(4, 5, 0, 0, 0, 0, 0, 0, 0),
(5, 7, 0, 0, 0, 0, 0, 0, 0),
(6, 8, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reading_lists`
--

CREATE TABLE `reading_lists` (
  `id` int NOT NULL,
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `role_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `is_default` tinyint(1) DEFAULT '0',
  `is_super_admin` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `permissions`, `is_default`, `is_super_admin`) VALUES
(1, 'a:1:{i:0;a:2:{s:7:\"lang_id\";s:1:\"1\";s:4:\"name\";s:11:\"Super Admin\";}}', '', 1, 1),
(2, 'a:1:{i:0;a:2:{s:7:\"lang_id\";s:1:\"1\";s:4:\"name\";s:6:\"Author\";}}', 'add_post,admin_panel', 1, 0),
(3, 'a:1:{i:0;a:2:{s:7:\"lang_id\";s:1:\"1\";s:4:\"name\";s:6:\"Member\";}}', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `feed_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `feed_url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `post_limit` smallint DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `image_saving_method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'url',
  `auto_update` tinyint(1) DEFAULT '1',
  `read_more_button` tinyint(1) DEFAULT '1',
  `read_more_button_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Read More',
  `user_id` int DEFAULT NULL,
  `add_posts_as_draft` tinyint(1) DEFAULT '0',
  `is_cron_updated` tinyint(1) DEFAULT '0',
  `generate_keywords_from_title` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `lang_id` int NOT NULL DEFAULT '1',
  `site_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `home_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Index',
  `site_description` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `keywords` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `application_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `primary_font` smallint DEFAULT '20',
  `secondary_font` smallint DEFAULT '10',
  `tertiary_font` smallint DEFAULT '34',
  `social_media_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `optional_url_button_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'Click Here To See More',
  `about_footer` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `contact_address` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `contact_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `copyright` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cookies_warning` tinyint(1) DEFAULT '0',
  `cookies_warning_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `lang_id`, `site_title`, `home_title`, `site_description`, `keywords`, `application_name`, `primary_font`, `secondary_font`, `tertiary_font`, `social_media_data`, `optional_url_button_name`, `about_footer`, `contact_text`, `contact_address`, `contact_email`, `contact_phone`, `copyright`, `cookies_warning`, `cookies_warning_text`) VALUES
(2, 2, '', 'Index', '', '', NULL, 36, 10, 34, 'a:1:{s:8:\"facebook\";s:55:\"https://www.facebook.com/profile.php?id=100064810023790\";}', 'Click Here To See More', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tag_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lang_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_folder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `theme_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `theme_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `block_color` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mega_menu_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme`, `theme_folder`, `theme_name`, `theme_color`, `block_color`, `mega_menu_color`, `is_active`) VALUES
(1, 'magazine', 'magazine', 'Magazine', '#d20b0b', '#161616', '#e76d6d', 1),
(2, 'news', 'magazine', 'News', '#0f88f1', '#101010', '#1e1e1e', 0),
(3, 'classic', 'classic', 'Classic', '#19bc9c', '#161616', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '''name@domain.com''',
  `email_status` tinyint(1) DEFAULT '0',
  `token` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role_id` int DEFAULT '3',
  `user_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '''registered''',
  `google_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `facebook_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vk_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cover_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `social_media_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` tinyint(1) DEFAULT '1',
  `about_me` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `show_email_on_profile` tinyint(1) DEFAULT '1',
  `show_rss_feeds` tinyint(1) DEFAULT '1',
  `reward_system_enabled` tinyint(1) DEFAULT '0',
  `balance` double DEFAULT '0',
  `total_pageviews` int DEFAULT '0',
  `payout_methods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `slug`, `email`, `email_status`, `token`, `password`, `role_id`, `user_type`, `google_id`, `facebook_id`, `vk_id`, `avatar`, `cover_image`, `social_media_data`, `status`, `about_me`, `last_seen`, `show_email_on_profile`, `show_rss_feeds`, `reward_system_enabled`, `balance`, `total_pageviews`, `payout_methods`, `created_at`) VALUES
(1, 'admin', 'admin', 'anis.selmani300@gmail.com', 1, '6855d271b28480-80077485-82246536', '$2y$10$QiHp1LpdryQp1.efrR7WGOoPMrvqqLwsnKoh9p1rk1Ks1pr318uXC', 1, 'registered', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2025-06-23 16:03:29', 1, 1, 0, 0, 0, NULL, '2025-06-20 21:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int NOT NULL,
  `video_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `video_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `storage` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'local',
  `user_id` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_name`, `video_path`, `storage`, `user_id`) VALUES
(1, 'AQO8v1_vC8Wa4w7RtUtRe55GHRsglV7u70olCrqPG8luOQCpskhoTw1HDI_zD8Vpwx_nQvxSO4yy_e8ko25w3rGz.mp4', 'uploads/videos/202506/video_685962d5af5250-49187406.mp4', 'local', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int NOT NULL,
  `lang_id` int DEFAULT '1',
  `title` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `widget_order` int DEFAULT '1',
  `visibility` int DEFAULT '1',
  `is_custom` int DEFAULT '1',
  `display_category_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `lang_id`, `title`, `content`, `type`, `widget_order`, `visibility`, `is_custom`, `display_category_id`, `created_at`) VALUES
(6, 2, 'متابعتنا', NULL, 'follow-us', 1, 1, 0, 0, '2025-06-20 21:41:24'),
(7, 2, 'Popular Posts', NULL, 'popular-posts', 2, NULL, 0, 0, '2025-06-20 21:41:24'),
(8, 2, 'المشاركات الموصى بها', NULL, 'recommended-posts', 3, 1, 0, 0, '2025-06-20 21:41:24'),
(9, 2, 'Popular Tags', NULL, 'tags', 4, NULL, 0, 0, '2025-06-20 21:41:24'),
(10, 2, 'تصويت', NULL, 'poll', 5, 1, 0, 0, '2025-06-20 21:41:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audios`
--
ALTER TABLE `audios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`),
  ADD KEY `idx_id` (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_id` (`parent_id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_comments_optimized` (`post_id`,`parent_id`,`status`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_following_id` (`following_id`),
  ADD KEY `idx_follower_id` (`follower_id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language_translations`
--
ALTER TABLE `language_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lang_id` (`lang_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payouts`
--
ALTER TABLE `payouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_votes`
--
ALTER TABLE `poll_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poll_id` (`poll_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category_id` (`category_id`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_lang_id` (`lang_id`),
  ADD KEY `idx_is_scheduled` (`is_scheduled`),
  ADD KEY `idx_visibility` (`visibility`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_slug` (`slug`),
  ADD KEY `idx_title_hash` (`title_hash`),
  ADD KEY `idx_post_type` (`post_type`),
  ADD KEY `idx_feed_id` (`feed_id`),
  ADD KEY `idx_image_id` (`image_id`),
  ADD KEY `idx_latest_category_posts` (`is_scheduled`,`visibility`,`status`,`category_id`,`created_at`),
  ADD KEY `idx_posts_optimized` (`lang_id`,`is_scheduled`,`visibility`,`status`,`category_id`,`user_id`),
  ADD KEY `idx_posts_profile` (`lang_id`,`is_scheduled`,`visibility`,`status`,`user_id`,`created_at`);
ALTER TABLE `posts` ADD FULLTEXT KEY `idx_fulltext` (`title`,`summary`,`content`);

--
-- Indexes for table `post_audios`
--
ALTER TABLE `post_audios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_audio_id` (`audio_id`);

--
-- Indexes for table `post_files`
--
ALTER TABLE `post_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_file_id` (`file_id`);

--
-- Indexes for table `post_gallery_items`
--
ALTER TABLE `post_gallery_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `post_images`
--
ALTER TABLE `post_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `post_item_images`
--
ALTER TABLE `post_item_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_item_type` (`item_type`);

--
-- Indexes for table `post_list_items`
--
ALTER TABLE `post_list_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `post_pageviews_month`
--
ALTER TABLE `post_pageviews_month`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_created_at` (`created_at`),
  ADD KEY `idx_post_user_id` (`post_user_id`),
  ADD KEY `idx_user_rewards` (`post_user_id`,`reward_amount`,`created_at`);

--
-- Indexes for table `post_poll_votes`
--
ALTER TABLE `post_poll_votes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_question_id` (`question_id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_answer_id` (`answer_id`);

--
-- Indexes for table `post_selections`
--
ALTER TABLE `post_selections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_tag_post` (`tag_id`,`post_id`);

--
-- Indexes for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_question_id` (`question_id`);

--
-- Indexes for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `quiz_results`
--
ALTER TABLE `quiz_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `reactions`
--
ALTER TABLE `reactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`);

--
-- Indexes for table `reading_lists`
--
ALTER TABLE `reading_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_post_id` (`post_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tag_slug` (`tag_slug`),
  ADD KEY `idx_lang_id` (`lang_id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_reward_system_enabled` (`reward_system_enabled`),
  ADD KEY `idx_reward_balance` (`balance`),
  ADD KEY `idx_slug` (`slug`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_spaces`
--
ALTER TABLE `ad_spaces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `audios`
--
ALTER TABLE `audios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `gallery_albums`
--
ALTER TABLE `gallery_albums`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `gallery_categories`
--
ALTER TABLE `gallery_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `language_translations`
--
ALTER TABLE `language_translations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1897;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payouts`
--
ALTER TABLE `payouts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `poll_votes`
--
ALTER TABLE `poll_votes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `post_audios`
--
ALTER TABLE `post_audios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_files`
--
ALTER TABLE `post_files`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_gallery_items`
--
ALTER TABLE `post_gallery_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `post_images`
--
ALTER TABLE `post_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_item_images`
--
ALTER TABLE `post_item_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_list_items`
--
ALTER TABLE `post_list_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_pageviews_month`
--
ALTER TABLE `post_pageviews_month`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_poll_votes`
--
ALTER TABLE `post_poll_votes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_selections`
--
ALTER TABLE `post_selections`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_answers`
--
ALTER TABLE `quiz_answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_questions`
--
ALTER TABLE `quiz_questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_results`
--
ALTER TABLE `quiz_results`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reactions`
--
ALTER TABLE `reactions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reading_lists`
--
ALTER TABLE `reading_lists`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
