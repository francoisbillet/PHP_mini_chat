-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 21, 2019 at 03:13 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `mini_chat`
--

DROP TABLE IF EXISTS `mini_chat`;
CREATE TABLE IF NOT EXISTS `mini_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date_ajout` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mini_chat`
--

INSERT INTO `mini_chat` (`id`, `pseudo`, `message`, `date_ajout`) VALUES
(9, 'Clem A', 'Salut poulet !', '2019-09-21 17:05:01'),
(8, 'Francis', 'Coucou', '2019-09-21 17:05:01'),
(10, 'Clem C', 'Salut les gars', '2019-09-21 17:05:01'),
(11, 'Francis', 'La forme ?', '2019-09-21 17:05:01'),
(12, 'Clem A', 'Nikel et toi ?', '2019-09-21 17:05:01'),
(13, 'Francis', 'Et toi grand Clem ?', '2019-09-21 17:05:01'),
(14, 'Clem C', 'Ca va, me tarde ce soir :\')', '2019-09-21 17:05:01'),
(15, '', '', '2019-09-21 17:05:01'),
(16, 'Francis', 'sdf', '2019-09-21 17:05:01'),
(17, 'Francis', 'qsdf', '2019-09-21 17:05:01'),
(18, 'Clem A', 'Salut', '2019-09-21 17:05:01'),
(19, 'Clem A', 'Salut', '2019-09-21 17:05:01'),
(20, 'Francis', 'Coucou', '2019-09-21 17:05:01'),
(21, 'Francis', '', '2019-09-21 17:05:01'),
(22, 'Francis', 'Salut', '2019-09-21 17:05:01'),
(23, 'Clem A', 'Salut', '2019-09-21 17:05:01'),
(24, 'Clem C', 'Salut poulet !', '2019-09-21 17:05:01'),
(25, 'Clem A', 'Nikel et toi ?', '2019-09-21 17:05:01'),
(26, 'Francis', 'Salut', '2019-09-21 17:05:01'),
(27, '', '', '2019-09-21 17:05:01'),
(28, '', '', '2019-09-21 17:05:01'),
(29, 'Francis', 'df', '2019-09-21 17:05:01'),
(30, '', '', '2019-09-21 17:05:01'),
(31, '', '', '2019-09-21 17:05:01'),
(32, 'Francis', 'Coucou', '2019-09-21 17:05:01'),
(33, 'Clem A', 'Salut', '2019-09-21 17:05:01'),
(34, '', '', '2019-09-21 17:05:01'),
(35, 'Francis', 'Coucou', '2019-09-21 17:05:01'),
(36, 'Francis', '&lt;strong&gt;coucou&lt;/strong&gt;', '2019-09-21 17:05:01'),
(37, 'Francis', '<strong>coucou</strong>', '2019-09-21 17:05:01'),
(38, 'Francis', '<strong>coucou</strong>', '2019-09-21 17:05:01'),
(39, 'Francis', '&lt;strong&gt;coucou&lt;/strong&gt;', '2019-09-21 17:05:01'),
(40, '/francis', 'couxou', '2019-09-21 17:05:01'),
(41, '/francis', 'Coucou', '2019-09-21 17:05:01'),
(42, 'Francis', 'salut', '2019-09-21 17:05:01'),
(43, 'Francis', 'la forme ?', '2019-09-21 17:05:01'),
(44, 'Francis', '', '2019-09-21 17:05:01'),
(45, 'Francis', 'g', '2019-09-21 17:05:01'),
(46, 'Francis', '<strong>c</strong>', '2019-09-21 17:05:01'),
(47, '<p>Francis</p>', 'df', '2019-09-21 17:05:01'),
(48, 'Clem', 'yo', '2019-09-21 17:05:01'),
(49, 'Clem', '', '2019-09-21 17:05:01'),
(50, 'Clem', '', '2019-09-21 17:05:01'),
(51, 'charles', 'yoooo', '2019-09-21 17:05:01'),
(52, 'Clem', 'Coucou', '2019-09-21 17:05:01'),
(53, 'Clem A', 'fd', '2019-09-21 17:05:01'),
(54, '', 'qfds', '2019-09-21 17:05:01'),
(55, 'Francis', 'fd', '2019-09-21 17:05:01'),
(56, 'Francis', 'Coucou', '2019-09-21 17:05:01'),
(57, 'Francis', 'bn', '2019-09-21 17:05:01'),
(58, 'Clem A', 'ds', '2019-09-21 17:05:01'),
(59, 'Clem A', 'k', '2019-09-21 17:05:01'),
(60, 'Francis', 'Salut', '2019-09-21 17:05:01'),
(61, 'Francis', 'df', '2019-09-21 17:05:01'),
(62, 'Francis', 'h', '2019-09-21 17:05:01'),
(63, 'Charles', 'Bonsoir', '2019-09-21 17:05:01'),
(64, 'Caroline', 'Bonjour', '2019-09-21 17:05:01'),
(65, 'Manu', 'allo ?', '2019-09-21 17:05:01'),
(66, 'Manu', 'Ca va ?', '2019-09-21 17:05:01'),
(67, 'Michel', 'Heyyyy', '2019-09-21 17:05:01'),
(68, 'Michel', 'Bonjouno', '2019-09-21 17:05:01'),
(69, 'Marjorie', 'Salut', '2019-09-21 17:10:02'),
(70, 'Marjorie', 'C\'est moi', '2019-09-21 17:11:16');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
