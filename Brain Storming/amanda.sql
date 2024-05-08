-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 09:48 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amanda`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nama_guru` varchar(60) DEFAULT NULL,
  `nokp_guru` varchar(12) NOT NULL,
  `katalaluan_guru` varchar(30) DEFAULT NULL,
  `tahap` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nama_guru`, `nokp_guru`, `katalaluan_guru`, `tahap`) VALUES
('Bee', '040404011130', '1130', 'ADMIN'),
('Suhaimi', '700303010303', '0303', 'GURU'),
('Maria', '710102010102', '0102', 'ADMIN'),
('Ruziah', '710322010322', '0322', 'GURU'),
('Sharizah', '731010011010', '1010', 'GURU');

-- --------------------------------------------------------

--
-- Table structure for table `jawapan_murid`
--

CREATE TABLE `jawapan_murid` (
  `id_jawapan` int(11) NOT NULL,
  `no_soalan` int(11) DEFAULT NULL,
  `jawapan` varchar(100) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `nokp_murid` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawapan_murid`
--

INSERT INTO `jawapan_murid` (`id_jawapan`, `no_soalan`, `jawapan`, `catatan`, `nokp_murid`) VALUES
(27, 3, 'jawapan_a', 'BETUL', '041224011224'),
(28, 23, 'jawapan_a', 'BETUL', '041224011224'),
(29, 27, 'jawapan_a', 'BETUL', '041224011224'),
(30, 30, 'jawapan_a', 'BETUL', '041224011224'),
(31, 29, 'jawapan_a', 'BETUL', '041224011224'),
(32, 22, 'jawapan_a', 'BETUL', '041224011224'),
(33, 4, 'jawapan_a', 'BETUL', '041224011224'),
(34, 25, 'jawapan_a', 'BETUL', '041224011224'),
(35, 24, 'jawapan_a', 'BETUL', '041224011224'),
(36, 31, 'jawapan_a', 'BETUL', '041224011224'),
(37, 21, 'jawapan_a', 'BETUL', '041224011224'),
(38, 20, 'jawapan_a', 'BETUL', '041224011224'),
(39, 47, 'jawapan_a', 'BETUL', '040506010506'),
(40, 46, 'jawapan_a', 'BETUL', '040506010506'),
(41, 44, 'jawapan_a', 'BETUL', '040506010506'),
(42, 43, 'jawapan_a', 'BETUL', '040506010506'),
(43, 40, 'jawapan_b', 'SALAH', '040506010506'),
(44, 42, 'jawapan_c', 'SALAH', '040506010506'),
(45, 41, 'jawapan_a', 'BETUL', '040506010506'),
(46, 48, 'jawapan_a', 'BETUL', '040506010506'),
(47, 38, 'jawapan_a', 'BETUL', '040506010506'),
(48, 35, 'jawapan_a', 'BETUL', '040506010506'),
(49, 32, 'jawapan_a', 'BETUL', '040506010506'),
(50, 34, 'jawapan_a', 'BETUL', '040506010506'),
(51, 39, 'jawapan_a', 'BETUL', '040506010506'),
(52, 36, 'jawapan_a', 'BETUL', '040506010506'),
(53, 33, 'jawapan_a', 'BETUL', '040506010506'),
(54, 37, 'jawapan_a', 'BETUL', '040506010506'),
(55, 41, 'jawapan_a', 'BETUL', '041007011007'),
(56, 42, 'jawapan_a', 'BETUL', '041007011007'),
(57, 48, 'jawapan_a', 'BETUL', '041007011007'),
(58, 43, 'jawapan_a', 'BETUL', '041007011007'),
(59, 46, 'jawapan_a', 'BETUL', '041007011007'),
(60, 47, 'jawapan_a', 'BETUL', '041007011007'),
(61, 40, 'jawapan_d', 'SALAH', '041007011007'),
(62, 44, 'jawapan_a', 'BETUL', '041007011007'),
(63, 44, 'jawapan_c', 'SALAH', '041111081111'),
(64, 46, 'jawapan_d', 'SALAH', '041111081111'),
(65, 47, 'jawapan_b', 'SALAH', '041111081111'),
(66, 40, 'jawapan_b', 'SALAH', '041111081111'),
(67, 41, 'jawapan_a', 'BETUL', '041111081111'),
(68, 43, 'jawapan_a', 'BETUL', '041111081111'),
(69, 48, 'jawapan_a', 'BETUL', '041111081111'),
(70, 42, 'jawapan_a', 'BETUL', '041111081111'),
(71, 46, 'jawapan_a', 'BETUL', '040227010227'),
(72, 40, 'jawapan_a', 'BETUL', '040227010227'),
(73, 44, 'jawapan_a', 'BETUL', '040227010227'),
(74, 47, 'jawapan_b', 'SALAH', '040227010227'),
(75, 43, 'jawapan_a', 'BETUL', '040227010227'),
(76, 48, 'jawapan_a', 'BETUL', '040227010227'),
(77, 41, 'jawapan_a', 'BETUL', '040227010227'),
(78, 42, 'jawapan_a', 'BETUL', '040227010227'),
(79, 32, 'jawapan_a', 'BETUL', '040227010227'),
(80, 36, 'jawapan_a', 'BETUL', '040227010227'),
(81, 35, 'jawapan_a', 'BETUL', '040227010227'),
(82, 39, 'jawapan_a', 'BETUL', '040227010227'),
(83, 34, 'jawapan_a', 'BETUL', '040227010227'),
(84, 33, 'jawapan_a', 'BETUL', '040227010227'),
(85, 38, 'jawapan_a', 'BETUL', '040227010227'),
(86, 37, 'jawapan_d', 'SALAH', '040227010227'),
(87, 35, 'jawapan_a', 'BETUL', '041111081111'),
(88, 32, 'jawapan_b', 'SALAH', '041111081111'),
(89, 39, 'jawapan_a', 'BETUL', '041111081111'),
(90, 34, 'jawapan_a', 'BETUL', '041111081111'),
(91, 38, 'jawapan_a', 'BETUL', '041111081111'),
(92, 33, 'jawapan_a', 'BETUL', '041111081111'),
(93, 37, 'jawapan_d', 'SALAH', '041111081111'),
(94, 36, 'jawapan_b', 'SALAH', '041111081111'),
(95, 44, 'jawapan_a', 'BETUL', '040728010728'),
(96, 47, 'jawapan_a', 'BETUL', '040728010728'),
(97, 48, 'jawapan_a', 'BETUL', '040728010728'),
(98, 40, 'jawapan_a', 'BETUL', '040728010728'),
(99, 43, 'jawapan_b', 'SALAH', '040728010728'),
(100, 46, 'jawapan_a', 'BETUL', '040728010728'),
(101, 41, 'jawapan_d', 'SALAH', '040728010728'),
(102, 42, 'jawapan_a', 'BETUL', '040728010728'),
(103, 33, 'jawapan_a', 'BETUL', '040728010728'),
(104, 39, 'jawapan_a', 'BETUL', '040728010728'),
(105, 38, 'jawapan_a', 'BETUL', '040728010728'),
(106, 37, 'jawapan_a', 'BETUL', '040728010728'),
(107, 35, 'jawapan_a', 'BETUL', '040728010728'),
(108, 34, 'jawapan_a', 'BETUL', '040728010728'),
(109, 36, 'jawapan_a', 'BETUL', '040728010728'),
(110, 32, 'jawapan_a', 'BETUL', '040728010728'),
(111, 46, 'jawapan_a', 'BETUL', '040508010508'),
(112, 41, 'jawapan_a', 'BETUL', '040508010508'),
(113, 40, 'jawapan_a', 'BETUL', '040508010508'),
(114, 42, 'jawapan_a', 'BETUL', '040508010508'),
(115, 48, 'jawapan_a', 'BETUL', '040508010508'),
(116, 43, 'jawapan_a', 'BETUL', '040508010508'),
(117, 47, 'jawapan_c', 'SALAH', '040508010508'),
(118, 44, 'jawapan_b', 'SALAH', '040508010508'),
(119, 34, 'jawapan_a', 'BETUL', '040508010508'),
(120, 37, 'jawapan_d', 'SALAH', '040508010508'),
(121, 36, 'jawapan_a', 'BETUL', '040508010508'),
(122, 35, 'jawapan_a', 'BETUL', '040508010508'),
(123, 32, 'jawapan_a', 'BETUL', '040508010508'),
(124, 38, 'jawapan_b', 'SALAH', '040508010508'),
(125, 39, 'jawapan_d', 'SALAH', '040508010508'),
(126, 33, 'jawapan_c', 'SALAH', '040508010508'),
(149, 23, 'jawapan_a', 'BETUL', '040711010711'),
(150, 31, 'jawapan_a', 'BETUL', '040711010711'),
(151, 30, 'jawapan_a', 'BETUL', '040711010711'),
(152, 22, 'jawapan_a', 'BETUL', '040711010711'),
(153, 3, 'jawapan_a', 'BETUL', '040711010711'),
(154, 21, 'jawapan_a', 'BETUL', '040711010711'),
(155, 4, 'jawapan_d', 'SALAH', '040711010711'),
(156, 24, 'jawapan_a', 'BETUL', '040711010711'),
(157, 25, 'jawapan_a', 'BETUL', '040711010711'),
(158, 29, 'jawapan_a', 'BETUL', '040711010711'),
(159, 27, 'jawapan_a', 'BETUL', '040711010711'),
(160, 20, 'jawapan_a', 'BETUL', '040711010711'),
(161, 12, 'jawapan_a', 'BETUL', '040711010711'),
(162, 13, 'jawapan_a', 'BETUL', '040711010711'),
(163, 15, 'jawapan_a', 'BETUL', '040711010711'),
(164, 16, 'jawapan_a', 'BETUL', '040711010711'),
(165, 19, 'jawapan_a', 'BETUL', '040711010711'),
(166, 18, 'jawapan_b', 'SALAH', '040711010711'),
(167, 17, 'jawapan_a', 'BETUL', '040711010711'),
(168, 14, 'jawapan_a', 'BETUL', '040711010711'),
(169, 9, 'jawapan_a', 'BETUL', '040711010711'),
(170, 10, 'jawapan_a', 'BETUL', '040711010711'),
(171, 21, 'jawapan_a', 'BETUL', '041212011212'),
(172, 3, 'jawapan_a', 'BETUL', '041212011212'),
(173, 20, 'jawapan_a', 'BETUL', '041212011212'),
(174, 31, 'jawapan_c', 'SALAH', '041212011212'),
(175, 27, 'jawapan_d', 'SALAH', '041212011212'),
(176, 30, 'jawapan_a', 'BETUL', '041212011212'),
(177, 22, 'jawapan_d', 'SALAH', '041212011212'),
(178, 4, 'jawapan_a', 'BETUL', '041212011212'),
(179, 24, 'jawapan_a', 'BETUL', '041212011212'),
(180, 29, 'jawapan_a', 'BETUL', '041212011212'),
(181, 23, 'jawapan_a', 'BETUL', '041212011212'),
(182, 25, 'jawapan_a', 'BETUL', '041212011212'),
(183, 10, 'jawapan_a', 'BETUL', '041212011212'),
(184, 15, 'jawapan_a', 'BETUL', '041212011212'),
(185, 19, 'jawapan_a', 'BETUL', '041212011212'),
(186, 14, 'jawapan_a', 'BETUL', '041212011212'),
(187, 18, 'jawapan_d', 'SALAH', '041212011212'),
(188, 17, 'jawapan_d', 'SALAH', '041212011212'),
(189, 13, 'jawapan_a', 'BETUL', '041212011212'),
(190, 9, 'jawapan_c', 'SALAH', '041212011212'),
(191, 16, 'jawapan_a', 'BETUL', '041212011212'),
(192, 12, 'jawapan_a', 'BETUL', '041212011212'),
(193, 25, 'jawapan_a', 'BETUL', '040707010707'),
(194, 27, 'jawapan_a', 'BETUL', '040707010707'),
(195, 3, 'jawapan_a', 'BETUL', '040707010707'),
(196, 30, 'jawapan_a', 'BETUL', '040707010707'),
(197, 29, 'jawapan_a', 'BETUL', '040707010707'),
(198, 31, 'jawapan_a', 'BETUL', '040707010707'),
(199, 22, 'jawapan_a', 'BETUL', '040707010707'),
(200, 20, 'jawapan_a', 'BETUL', '040707010707'),
(201, 4, 'jawapan_a', 'BETUL', '040707010707'),
(202, 24, 'jawapan_c', 'SALAH', '040707010707'),
(203, 23, 'jawapan_d', 'SALAH', '040707010707'),
(204, 21, 'jawapan_a', 'BETUL', '040707010707'),
(205, 13, 'jawapan_a', 'BETUL', '040707010707'),
(206, 17, 'jawapan_a', 'BETUL', '040707010707'),
(207, 14, 'jawapan_a', 'BETUL', '040707010707'),
(208, 9, 'jawapan_a', 'BETUL', '040707010707'),
(209, 15, 'jawapan_a', 'BETUL', '040707010707'),
(210, 18, 'jawapan_a', 'BETUL', '040707010707'),
(211, 16, 'jawapan_a', 'BETUL', '040707010707'),
(212, 19, 'jawapan_a', 'BETUL', '040707010707'),
(213, 10, 'jawapan_c', 'SALAH', '040707010707'),
(214, 12, 'jawapan_a', 'BETUL', '040707010707'),
(215, 20, 'jawapan_a', 'BETUL', '040404010404'),
(216, 24, 'jawapan_a', 'BETUL', '040404010404'),
(217, 29, 'jawapan_c', 'SALAH', '040404010404'),
(218, 27, 'jawapan_a', 'BETUL', '040404010404'),
(219, 31, 'jawapan_a', 'BETUL', '040404010404'),
(220, 3, 'jawapan_a', 'BETUL', '040404010404'),
(221, 30, 'jawapan_a', 'BETUL', '040404010404'),
(222, 25, 'jawapan_a', 'BETUL', '040404010404'),
(223, 23, 'jawapan_a', 'BETUL', '040404010404'),
(224, 21, 'jawapan_a', 'BETUL', '040404010404'),
(225, 22, 'jawapan_a', 'BETUL', '040404010404'),
(226, 4, 'jawapan_d', 'SALAH', '040404010404'),
(227, 13, 'jawapan_a', 'BETUL', '040404010404'),
(228, 16, 'jawapan_a', 'BETUL', '040404010404'),
(229, 14, 'jawapan_a', 'BETUL', '040404010404'),
(230, 17, 'jawapan_a', 'BETUL', '040404010404'),
(231, 10, 'jawapan_a', 'BETUL', '040404010404'),
(232, 15, 'jawapan_a', 'BETUL', '040404010404'),
(233, 9, 'jawapan_a', 'BETUL', '040404010404'),
(234, 18, 'jawapan_a', 'BETUL', '040404010404'),
(235, 12, 'jawapan_a', 'BETUL', '040404010404'),
(236, 19, 'jawapan_a', 'BETUL', '040404010404'),
(237, 4, 'jawapan_c', 'SALAH', '040323010323'),
(238, 24, 'jawapan_d', 'SALAH', '040323010323'),
(239, 3, 'jawapan_d', 'SALAH', '040323010323'),
(240, 20, 'jawapan_a', 'BETUL', '040323010323'),
(241, 30, 'jawapan_a', 'BETUL', '040323010323'),
(242, 27, 'jawapan_a', 'BETUL', '040323010323'),
(243, 22, 'jawapan_a', 'BETUL', '040323010323'),
(244, 25, 'jawapan_d', 'SALAH', '040323010323'),
(245, 21, 'jawapan_b', 'SALAH', '040323010323'),
(246, 23, 'jawapan_a', 'BETUL', '040323010323'),
(247, 29, 'jawapan_d', 'SALAH', '040323010323'),
(248, 31, 'jawapan_b', 'SALAH', '040323010323'),
(249, 10, 'jawapan_a', 'BETUL', '040323010323'),
(250, 12, 'jawapan_a', 'BETUL', '040323010323'),
(251, 18, 'jawapan_a', 'BETUL', '040323010323'),
(252, 14, 'jawapan_b', 'SALAH', '040323010323'),
(253, 13, 'jawapan_c', 'SALAH', '040323010323'),
(254, 9, 'jawapan_c', 'SALAH', '040323010323'),
(255, 16, 'jawapan_b', 'SALAH', '040323010323'),
(256, 15, 'jawapan_b', 'SALAH', '040323010323'),
(257, 19, 'jawapan_b', 'SALAH', '040323010323'),
(258, 17, 'jawapan_a', 'BETUL', '040323010323'),
(259, 55, 'jawapan_a', 'BETUL', '040823010823'),
(260, 50, 'jawapan_a', 'BETUL', '040823010823'),
(261, 57, 'jawapan_c', 'SALAH', '040823010823'),
(262, 56, 'jawapan_a', 'BETUL', '040823010823'),
(263, 54, 'jawapan_a', 'BETUL', '040823010823'),
(264, 58, 'jawapan_c', 'SALAH', '040823010823'),
(265, 49, 'jawapan_a', 'BETUL', '040823010823'),
(266, 60, 'jawapan_a', 'BETUL', '040823010823'),
(267, 52, 'jawapan_b', 'SALAH', '040823010823'),
(268, 51, 'jawapan_a', 'BETUL', '040823010823'),
(269, 53, 'jawapan_a', 'BETUL', '040823010823'),
(270, 68, 'jawapan_a', 'BETUL', '040823010823'),
(271, 64, 'jawapan_a', 'BETUL', '040823010823'),
(272, 67, 'jawapan_a', 'BETUL', '040823010823'),
(273, 65, 'jawapan_a', 'BETUL', '040823010823'),
(274, 62, 'jawapan_a', 'BETUL', '040823010823'),
(275, 69, 'jawapan_a', 'BETUL', '040823010823'),
(276, 61, 'jawapan_a', 'BETUL', '040823010823'),
(277, 63, 'jawapan_c', 'SALAH', '040823010823'),
(278, 58, 'jawapan_a', 'BETUL', '040909010909'),
(279, 55, 'jawapan_a', 'BETUL', '040909010909'),
(280, 56, 'jawapan_a', 'BETUL', '040909010909'),
(281, 50, 'jawapan_a', 'BETUL', '040909010909'),
(282, 54, 'jawapan_a', 'BETUL', '040909010909'),
(283, 57, 'jawapan_a', 'BETUL', '040909010909'),
(284, 49, 'jawapan_a', 'BETUL', '040909010909'),
(285, 60, 'jawapan_a', 'BETUL', '040909010909'),
(286, 51, 'jawapan_a', 'BETUL', '040909010909'),
(287, 53, 'jawapan_a', 'BETUL', '040909010909'),
(288, 52, 'jawapan_a', 'BETUL', '040909010909'),
(289, 67, 'jawapan_a', 'BETUL', '040909010909'),
(290, 64, 'jawapan_a', 'BETUL', '040909010909'),
(291, 63, 'jawapan_a', 'BETUL', '040909010909'),
(292, 61, 'jawapan_a', 'BETUL', '040909010909'),
(293, 68, 'jawapan_a', 'BETUL', '040909010909'),
(294, 69, 'jawapan_a', 'BETUL', '040909010909'),
(295, 62, 'jawapan_a', 'BETUL', '040909010909'),
(296, 65, 'jawapan_a', 'BETUL', '040909010909'),
(297, 52, 'jawapan_a', 'BETUL', '040908010908'),
(298, 60, 'jawapan_a', 'BETUL', '040908010908'),
(299, 50, 'jawapan_d', 'SALAH', '040908010908'),
(300, 56, 'jawapan_a', 'BETUL', '040908010908'),
(301, 57, 'jawapan_a', 'BETUL', '040908010908'),
(302, 51, 'jawapan_c', 'SALAH', '040908010908'),
(303, 55, 'jawapan_b', 'SALAH', '040908010908'),
(304, 53, 'jawapan_a', 'BETUL', '040908010908'),
(305, 58, 'jawapan_a', 'BETUL', '040908010908'),
(306, 49, 'jawapan_d', 'SALAH', '040908010908'),
(307, 54, 'jawapan_d', 'SALAH', '040908010908'),
(308, 64, 'jawapan_a', 'BETUL', '040908010908'),
(309, 62, 'jawapan_a', 'BETUL', '040908010908'),
(310, 65, 'jawapan_c', 'SALAH', '040908010908'),
(311, 68, 'jawapan_a', 'BETUL', '040908010908'),
(312, 69, 'jawapan_a', 'BETUL', '040908010908'),
(313, 61, 'jawapan_c', 'SALAH', '040908010908'),
(314, 67, 'jawapan_b', 'SALAH', '040908010908'),
(315, 63, 'jawapan_a', 'BETUL', '040908010908'),
(316, 10, 'jawapan_a', 'BETUL', '041224011224'),
(317, 12, 'jawapan_a', 'BETUL', '041224011224'),
(318, 9, 'jawapan_a', 'BETUL', '041224011224'),
(319, 18, 'jawapan_a', 'BETUL', '041224011224'),
(320, 19, 'jawapan_a', 'BETUL', '041224011224'),
(321, 15, 'jawapan_a', 'BETUL', '041224011224'),
(322, 13, 'jawapan_a', 'BETUL', '041224011224'),
(323, 17, 'jawapan_a', 'BETUL', '041224011224'),
(324, 14, 'jawapan_a', 'BETUL', '041224011224'),
(325, 16, 'jawapan_a', 'BETUL', '041224011224'),
(326, 20, 'jawapan_a', 'BETUL', '040816010816'),
(327, 23, 'jawapan_a', 'BETUL', '040816010816'),
(328, 21, 'jawapan_a', 'BETUL', '040816010816'),
(329, 29, 'jawapan_a', 'BETUL', '040816010816'),
(330, 30, 'jawapan_a', 'BETUL', '040816010816'),
(331, 22, 'jawapan_a', 'BETUL', '040816010816'),
(332, 24, 'jawapan_a', 'BETUL', '040816010816'),
(333, 31, 'jawapan_a', 'BETUL', '040816010816'),
(334, 27, 'jawapan_a', 'BETUL', '040816010816'),
(335, 25, 'jawapan_a', 'BETUL', '040816010816'),
(336, 3, 'jawapan_a', 'BETUL', '040816010816'),
(337, 4, 'jawapan_a', 'BETUL', '040816010816'),
(338, 14, 'jawapan_a', 'BETUL', '040816010816'),
(339, 10, 'jawapan_a', 'BETUL', '040816010816'),
(340, 16, 'jawapan_a', 'BETUL', '040816010816'),
(341, 13, 'jawapan_a', 'BETUL', '040816010816'),
(342, 12, 'jawapan_a', 'BETUL', '040816010816'),
(343, 19, 'jawapan_a', 'BETUL', '040816010816'),
(344, 17, 'jawapan_a', 'BETUL', '040816010816'),
(345, 15, 'jawapan_a', 'BETUL', '040816010816'),
(346, 18, 'jawapan_a', 'BETUL', '040816010816'),
(347, 9, 'jawapan_a', 'BETUL', '040816010816'),
(348, 31, 'jawapan_b', 'SALAH', '040617010617'),
(349, 4, 'jawapan_c', 'SALAH', '040617010617'),
(350, 20, 'jawapan_a', 'BETUL', '040617010617'),
(351, 27, 'jawapan_a', 'BETUL', '040617010617'),
(352, 23, 'jawapan_a', 'BETUL', '040617010617'),
(353, 24, 'jawapan_a', 'BETUL', '040617010617'),
(354, 30, 'jawapan_a', 'BETUL', '040617010617'),
(355, 3, 'jawapan_b', 'SALAH', '040617010617'),
(356, 22, 'jawapan_a', 'BETUL', '040617010617'),
(357, 21, 'jawapan_b', 'SALAH', '040617010617'),
(358, 25, 'jawapan_a', 'BETUL', '040617010617'),
(359, 29, 'jawapan_a', 'BETUL', '040617010617'),
(360, 13, 'jawapan_c', 'SALAH', '040617010617'),
(361, 16, 'jawapan_a', 'BETUL', '040617010617'),
(362, 9, 'jawapan_a', 'BETUL', '040617010617'),
(363, 14, 'jawapan_a', 'BETUL', '040617010617'),
(364, 18, 'jawapan_d', 'SALAH', '040617010617'),
(365, 10, 'jawapan_b', 'SALAH', '040617010617'),
(366, 17, 'jawapan_d', 'SALAH', '040617010617'),
(367, 15, 'jawapan_c', 'SALAH', '040617010617'),
(368, 12, 'jawapan_a', 'BETUL', '040617010617'),
(369, 19, 'jawapan_b', 'SALAH', '040617010617'),
(370, 53, 'jawapan_c', 'SALAH', '040121010121'),
(371, 49, 'jawapan_a', 'BETUL', '040121010121'),
(372, 51, 'jawapan_b', 'SALAH', '040121010121'),
(373, 50, 'jawapan_a', 'BETUL', '040121010121'),
(374, 52, 'jawapan_a', 'BETUL', '040121010121'),
(375, 54, 'jawapan_b', 'SALAH', '040121010121'),
(376, 60, 'jawapan_a', 'BETUL', '040121010121'),
(377, 55, 'jawapan_b', 'SALAH', '040121010121'),
(378, 58, 'jawapan_a', 'BETUL', '040121010121'),
(379, 56, 'jawapan_a', 'BETUL', '040121010121'),
(380, 57, 'jawapan_a', 'BETUL', '040121010121'),
(381, 68, 'jawapan_a', 'BETUL', '040121010121'),
(382, 64, 'jawapan_b', 'SALAH', '040121010121'),
(383, 63, 'jawapan_c', 'SALAH', '040121010121'),
(384, 69, 'jawapan_a', 'BETUL', '040121010121'),
(385, 61, 'jawapan_a', 'BETUL', '040121010121'),
(386, 62, 'jawapan_a', 'BETUL', '040121010121'),
(387, 65, 'jawapan_b', 'SALAH', '040121010121'),
(388, 67, 'jawapan_a', 'BETUL', '040121010121'),
(389, 58, 'jawapan_d', 'SALAH', '041107011107'),
(390, 55, 'jawapan_a', 'BETUL', '041107011107'),
(391, 53, 'jawapan_a', 'BETUL', '041107011107'),
(392, 51, 'jawapan_b', 'SALAH', '041107011107'),
(393, 54, 'jawapan_a', 'BETUL', '041107011107'),
(394, 52, 'jawapan_a', 'BETUL', '041107011107'),
(395, 56, 'jawapan_a', 'BETUL', '041107011107'),
(396, 49, 'jawapan_a', 'BETUL', '041107011107'),
(397, 60, 'jawapan_a', 'BETUL', '041107011107'),
(398, 57, 'jawapan_a', 'BETUL', '041107011107'),
(399, 50, 'jawapan_a', 'BETUL', '041107011107'),
(400, 69, 'jawapan_a', 'BETUL', '041107011107'),
(401, 62, 'jawapan_b', 'SALAH', '041107011107'),
(402, 68, 'jawapan_a', 'BETUL', '041107011107'),
(403, 64, 'jawapan_a', 'BETUL', '041107011107'),
(404, 67, 'jawapan_a', 'BETUL', '041107011107'),
(405, 65, 'jawapan_a', 'BETUL', '041107011107'),
(406, 61, 'jawapan_c', 'SALAH', '041107011107'),
(407, 63, 'jawapan_a', 'BETUL', '041107011107'),
(408, 51, 'jawapan_a', 'BETUL', '041109011109'),
(409, 50, 'jawapan_a', 'BETUL', '041109011109'),
(410, 49, 'jawapan_a', 'BETUL', '041109011109'),
(411, 52, 'jawapan_b', 'SALAH', '041109011109'),
(412, 54, 'jawapan_a', 'BETUL', '041109011109'),
(413, 57, 'jawapan_b', 'SALAH', '041109011109'),
(414, 60, 'jawapan_a', 'BETUL', '041109011109'),
(415, 58, 'jawapan_a', 'BETUL', '041109011109'),
(416, 56, 'jawapan_a', 'BETUL', '041109011109'),
(417, 53, 'jawapan_c', 'SALAH', '041109011109'),
(418, 55, 'jawapan_b', 'SALAH', '041109011109'),
(419, 63, 'jawapan_a', 'BETUL', '041109011109'),
(420, 61, 'jawapan_a', 'BETUL', '041109011109'),
(421, 69, 'jawapan_a', 'BETUL', '041109011109'),
(422, 65, 'jawapan_d', 'SALAH', '041109011109'),
(423, 68, 'jawapan_a', 'BETUL', '041109011109'),
(424, 62, 'jawapan_d', 'SALAH', '041109011109'),
(425, 67, 'jawapan_a', 'BETUL', '041109011109'),
(426, 64, 'jawapan_a', 'BETUL', '041109011109'),
(427, 27, 'jawapan_a', 'BETUL', '041107081107'),
(428, 24, 'jawapan_a', 'BETUL', '041107081107'),
(429, 20, 'jawapan_a', 'BETUL', '041107081107'),
(430, 31, 'jawapan_a', 'BETUL', '041107081107'),
(431, 21, 'jawapan_a', 'BETUL', '041107081107'),
(432, 22, 'jawapan_a', 'BETUL', '041107081107'),
(433, 23, 'jawapan_a', 'BETUL', '041107081107'),
(434, 3, 'jawapan_a', 'BETUL', '041107081107'),
(435, 30, 'jawapan_c', 'SALAH', '041107081107'),
(436, 4, 'jawapan_a', 'BETUL', '041107081107'),
(437, 29, 'jawapan_a', 'BETUL', '041107081107'),
(438, 25, 'jawapan_a', 'BETUL', '041107081107'),
(439, 19, 'jawapan_a', 'BETUL', '041107081107'),
(440, 17, 'jawapan_a', 'BETUL', '041107081107'),
(441, 10, 'jawapan_a', 'BETUL', '041107081107'),
(442, 13, 'jawapan_a', 'BETUL', '041107081107'),
(443, 16, 'jawapan_a', 'BETUL', '041107081107'),
(444, 12, 'jawapan_c', 'SALAH', '041107081107'),
(445, 18, 'jawapan_a', 'BETUL', '041107081107'),
(446, 14, 'jawapan_a', 'BETUL', '041107081107'),
(447, 9, 'jawapan_c', 'SALAH', '041107081107'),
(448, 15, 'jawapan_a', 'BETUL', '041107081107');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(3) NOT NULL,
  `tingkatan` varchar(2) DEFAULT NULL,
  `nama_kelas` varchar(30) DEFAULT NULL,
  `nokp_guru` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `tingkatan`, `nama_kelas`, `nokp_guru`) VALUES
(2, '4', 'Newton', '731010011010'),
(3, '4', 'Plato', '710322010322'),
(4, '4', 'Ibnu Sina', '710322010322'),
(5, '4', 'Davinci', '700303010303'),
(6, '4', 'Hamka', '710322010322'),
(7, '4', 'Zaaba', '731010011010'),
(8, '4', 'Edison', '700303010303');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `nama_murid` varchar(60) DEFAULT NULL,
  `nokp_murid` varchar(12) NOT NULL,
  `katalaluan_murid` varchar(30) DEFAULT NULL,
  `id_kelas` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`nama_murid`, `nokp_murid`, `katalaluan_murid`, `id_kelas`) VALUES
('Elsa', '040101010102', '0102', 2),
('Dasya Kabir', '040121010121', '0121', 7),
('Darsh Kahaan', '040227010227', '0227', 8),
('Ramli Razali bin Kamal', '040323010323', '0323', 4),
('Ivin Lye Yi Hui', '040404010404', '0404', 4),
('Kimaya Neysa', '040506010506', '0506', 5),
('Te Nicole', '040508010508', '0508', 8),
('Triva Krishav', '040617010617', '0617', 3),
('Beh Jie Sheng', '040707010707', '0707', 4),
('Muhammad Haron bin Salleh', '040711010711', '0711', 6),
('Ng Xin Ying', '040728010728', '0728', 8),
('Tang Zhi Qi', '040816010816', '0816', 3),
('Jackson Wong Jia Er', '040823010823', '0823', 2),
('Prisha Navitha', '040908010908', '0908', 2),
('Muhammad Kasim bin Zainal', '040909010909', '0909', 2),
('Muhammad Ghazali bin Yusof', '041007011007', '1007', 5),
('Lim Jun Yeh', '041107011107', '1107', 7),
('Low Kim Sheng	', '041107081107', '1107', 6),
('Muhammad Sharif bin Razali', '041109011109', '1109', 7),
('Viraj Naksh', '041111081111', '1111', 5),
('Rohana Natasha binti Osman', '041212011212', '1212', 6),
('Amanda Bee Jing Ying', '041224011224', '1224', 3);

-- --------------------------------------------------------

--
-- Table structure for table `set_soalan`
--

CREATE TABLE `set_soalan` (
  `no_set` int(9) NOT NULL,
  `topik` varchar(60) DEFAULT NULL,
  `arahan` varchar(250) DEFAULT NULL,
  `jenis` varchar(250) DEFAULT NULL,
  `tarikh` date DEFAULT NULL,
  `masa` varchar(50) DEFAULT NULL,
  `nokp_guru` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `set_soalan`
--

INSERT INTO `set_soalan` (`no_set`, `topik`, `arahan`, `jenis`, `tarikh`, `masa`, `nokp_guru`) VALUES
(2, '       Variasi', '       Jawab semua soalan', 'Latihan', '2021-06-02', 'Tiada', '710322010322'),
(4, 'Sistem Endokrin Manusia', 'Jawab semua soalan', 'Kuiz', '2021-06-04', '8', '710322010322'),
(5, 'Kelesterian Alam Sekitar', 'Jawab semua soalan', 'Latihan', '2021-07-17', 'Tiada', '700303010303'),
(6, '       Aloi', '       Jawab semua soalan', 'Kuiz', '2021-07-29', '6', '700303010303'),
(7, 'Jirim', 'Jawab semua soalan', 'Kuiz', '2021-08-09', '9', '731010011010'),
(8, 'Penggunaan Tenaga Nuklear', 'Jawab semua soalan', 'Latihan', '2021-08-23', 'Tiada', '731010011010');

-- --------------------------------------------------------

--
-- Table structure for table `soalan`
--

CREATE TABLE `soalan` (
  `no_soalan` int(11) NOT NULL,
  `no_set` int(9) DEFAULT NULL,
  `soalan` varchar(250) DEFAULT NULL,
  `gambar` varchar(60) DEFAULT NULL,
  `jawapan_a` varchar(60) DEFAULT NULL,
  `jawapan_b` varchar(60) DEFAULT NULL,
  `jawapan_c` varchar(60) DEFAULT NULL,
  `jawapan_d` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soalan`
--

INSERT INTO `soalan` (`no_soalan`, `no_set`, `soalan`, `gambar`, `jawapan_a`, `jawapan_b`, `jawapan_c`, `jawapan_d`) VALUES
(3, 2, 'Contoh variasi tak selanjar', ' ', 'Cap Ibu Jari', 'Ketinggian', 'Kecerdasan', 'Berat Badan'),
(4, 2, 'Contoh variasi selanjar', ' ', 'Ketinggian', 'Jenis Rambut', 'Warna Mata', 'Cuping Telinga'),
(9, 4, 'Contoh hormon kelenjar testis', ' ', 'Testosteron', 'Insulin', 'Estrogen', 'Adrenalina'),
(10, 4, 'Jenis Kelenjar Manusia', ' ', 'Kelenjar Adrenal', 'Kelenjar Otak', 'Kelenjar Ovum', 'Kelenjar Sperma'),
(12, 4, 'Bahagian otak yang manakah menghasilkan hormon antidiuresis', ' ', 'Hipotalamus', 'Sereberum', 'Medula oblongata', 'Serebellum'),
(13, 4, 'Apakah kesan hormon testosteron yang tinggi pada perempuan?', ' ', 'Menghasilkan Iam', 'Menghalang kanser', 'Jerawat berlebihan', 'Berpeluh'),
(14, 4, 'Apakah yang akan ditunjukkan oleh air kencing seseorang yang mengalami kerosakan pankreas', ' ', 'Glukosa', 'Kalsium', 'Kolesterol', 'Magnesium'),
(15, 4, 'Antara penyakit berikut, yang manakah kesan daripada pengambilan alkohol secara berlebihan?', ' ', 'Ulser perut', 'Tibi', 'Arteriosklerosis', 'Lumpuh'),
(16, 4, 'Antara yang berikut, yang manakah benar mengenai penyalahgunaan dadah?', ' ', 'Mengambil ubat tanpa nasihat doktor', 'Enggan mengambil ubat dari klinik', 'Mengambil ubat dengan nasihat doktor', 'Mengambil ubat tradisional'),
(17, 4, 'Puan Aminah menghidap goiter.Antara kelenjar endokrin berikut,yang manakah gagal berfungsi?', ' ', 'Tiroid', 'Pankreas', 'Adrenal', 'Pituitari'),
(18, 4, 'Antara dadah berikut yang manakah boleh meningkatkan kadar denyutan jantung?', ' ', 'Amfetamina', 'Ganja', 'Morfina', 'Candu'),
(19, 4, 'Antara yang berikut, yang manakah kesan pengambilan alkohol secara berlebihan terhadap kesihatan?', ' ', 'Sirosis hati', 'Hepatitis', 'Katarak', 'Halusinasi'),
(20, 2, 'Antara yang berikut, yang manakah merupakan unit keturunan yang membawa maklumat genetik?', ' ', 'Gen', 'Gamet', 'Sitoplasma', 'Kromosom'),
(21, 2, 'Proses yang terlibat dalam penghasilan sel baharu untuk pertumbuhan melalui...', ' ', 'Mitosis', 'Meiosis', 'Mutasi', 'Persenyawaan'),
(22, 2, 'Antara bahagian tumbuhan berikut, di manakah meiosis berlaku?', ' ', 'Anter', 'Daun', 'Batang', 'Akar'),
(23, 2, 'Antara kromosom berikut, yang manakah terdapat dalam sel kulit seorang wanita?', ' ', '44+XX', '22+X', '22+Y', '44+XY'),
(24, 2, 'Apakah kepentingan ujian kariotip kepada ibu yang hamil?', ' ', 'Mengesan ketidaknormalan gangguan gen pada peringkat awal', 'Memastikan keselamatan bayi', 'Memastikan keselamatan ibu', 'Menentukan jantina bayi'),
(25, 2, 'Apakah unit asas bagi asid nukleik?', ' ', 'Hukleotida', 'Monosakarida', 'Asid lemak', 'Asid Amino'),
(27, 2, 'Yang manakah boleh menyebabkan mutasi?', ' ', 'Sinaran radioaktif', 'Karbon dioksida', 'Gelombang radio', 'Minuman beralkohol'),
(29, 2, 'Albino dan buta warna adalah contoh bagi penyakit keturunan.Apakah penyebab utama bagi penyakit ini?', ' ', 'Gen terangkai seks', 'Faktor persekitaran', 'Mutasi kromosom', 'Jangkitan'),
(30, 2, 'Rajah menunjukkan nukleus sel.\r\nApakah struktur X?		', '../images/2021-09-24124453PM.png', 'Kromosom', 'Kromium', 'Gen', 'DNA'),
(31, 2, 'Rajah menunjukkan histogram yang mewakili sejenis variasi.\r\nApakah sifat yang diwakili oleh histogram di bawah?				', '../images/2021-09-24124608PM.png', 'Ketinggian', 'Kumpulan darah', 'Kebolehan menggulung lidah', 'Jenis cap jari'),
(32, 5, 'Apakah kepentingan aplikasi teknologi hijau dalam kehidupan?', ' ', 'Teknologi rendah karbon', 'Meningkatkan gaya hidup', 'Meningkatkan kenderaan di jalan', 'Meningkatkan populasi manusia'),
(33, 5, 'Rajah menunjukkan label cekap tenaga.\r\nApakah kesan daripada penggunaan peralatan yang mempunyai label ini?', '../images/2021-09-24012729PM.jpg', 'Menjimatkan tenaga elektrik', 'Meningkatkan penggunaan bahan api', 'Menjimat kos pembelian alat elektrik', 'Meningkatkan ekonomi negara'),
(34, 5, 'Apakah yang dimaksudkan sektor tenaga dalam Teknologi Hijau?', ' ', 'Mempromosikan kecekapan tenaga', 'Memulihara alam sekitar', 'Meningkatkan kualiti hidup', 'Meningkatkan pembangunan ekonomi'),
(35, 5, 'Apakah kepentingan kecekapan penggunaan tenaga?', ' ', 'Impak perubahan cuaca global dapat dikurangkan', 'Pendapatan per kapita meningkat', 'Mempertingkatkan kualiti tenaga', 'Pembangunan ekonomi lebih pesat'),
(36, 5, 'Apakah yang dimaksudkan dengan kereta hibrid?', ' ', 'Kereta yang menggunakan tenaga solar dan elektrik', 'Kereta yang menggunakan tenaga solar', 'Kereta yang bergabung', 'Kereta yang mempunyai banyak fungsi'),
(37, 5, 'Apakah kepentingan penggunaan baja kompos?', ' ', 'Meningkatkan nutrien tanah', 'Untuk memperbanyakkan tanah', 'Mengurangkan pencemaran air', 'Mengelakkan eutrofikasi'),
(38, 5, 'Rajah menunjukkan jejak kaki karbon.\r\nApakah aktiviti manusia yang berlabel Q?', '../images/2021-09-24014251PM.jpg', 'Bahan api', 'Sisa', 'Air', 'Pengangkutan'),
(39, 5, 'Bagaimanakah jejak kaki karbon global berubah dengan masa?', ' ', 'Semakin bertambah', 'Tidak berubah', 'Semakin berkurang', 'Berubah-ubah'),
(40, 6, 'Yang manakah membentuk loyang?', ' ', 'Zink dan kuprum', 'Timah dan kuprum', 'Besi dan karbon', 'Aluminium dan kuprum'),
(41, 6, 'Aloi yang manakah digunakan untuk membuat peralatan memasak?', ' ', 'Keluli tahan karat', 'Gangsa', 'Loyang', 'Duralumin'),
(42, 6, 'Jambatan Pulau Pinang adalah jambatan terpanjang di Malaysia. Apakah aloi yang digunakan untuk membina jambatan ini?', ' ', 'Keluli', 'Gangsa', 'Duralumin', 'Besi'),
(43, 6, 'Rajah menunjukkan sebuah kapal terbang.\r\nApakah aloi yang digunakan untuk membina bahagian berlabel Q?', '../images/2021-09-24015526PM.jpg', 'Duralumin', 'Keluli tahan karat', 'Gangsa', 'Piuter'),
(44, 6, 'Apakah kelebihan aloi?', ' ', 'Lebih tahan karat dan kakisan', 'Tidak mudah pecah', 'Boleh dibentuk semula', 'Lebih bernilai daripada logam tulen'),
(46, 6, 'Aiman mendapat kepingan aluminium terlalu lembut untuk membuat model kapal terbang. Apakah cara untuk menjadikan kepingan aluminium bertambah keras?', ' ', 'Dilebur dan ditambahkan unsur lain', 'Dileburkan dan diacukan semula', 'Ditambah lebih banyak aluminium', 'Diketuk semula ke bentuk asal'),
(47, 6, 'Apakah logam utama bagi gangsa?', ' ', 'Kuprum', 'Timah', 'Besi', 'Aluminium'),
(48, 6, 'Apakah ciri-ciri bagi duralumin?', ' ', 'Ringan, kuat dan tahan kakisan', 'Kuat dan keras', 'Kuat, berkilat dan tahan kakisan', 'Berkilat, tahan kakisan dan karat'),
(49, 7, 'Rajah menunjukkan pengaratan paku besi.\r\nApakah jenis bahan pada karat tersebut?', '../images/2021-09-25051416PM.jpg', 'Ion', 'Atom', 'Sebatian', 'Pepejal'),
(50, 7, 'Yang manakah adalah sebatian molekul?', ' ', 'Gula dan naftalena', 'Aluminium dan zink', 'Natrium klorida dan plumbum bromida', 'Kuprum dan emas'),
(51, 7, 'Rajah menunjukkan satu unsur dalam Jadual Berkala.\r\nBerapakah bilangan neutron dalam satu atom unsur itu?', '../images/2021-09-25054028PM.jpg', '10', '9', '19', '28'),
(52, 7, 'Atom Y mempunyai 15 proton dan 16 neutron. Berapakah nombor nukleon bagi atom Y', ' ', '31', '15', '16', '20'),
(53, 7, 'Radioisotop yang manakah digunakan oleh ahli arkeologi?', ' ', 'Karbon-14', 'Iodin-131', 'Natrium-24', 'Hidrogen-2'),
(54, 7, 'Atom magnesium mempunyai susunan elektron 2.8.2.\r\nApakah susunan elektron ion magnesium?', ' ', '2.8', '2.8.2', '2.2', '2'),
(55, 7, 'Atom klorin mempunyai susunan elektron 2.8.7. Bagaimana atom klorin mencapai susunan elektron oktet yang stabil?', ' ', 'Menerima elektron', 'Berkongsi elektron', 'Melepaskan elektron', 'Mendermakan elektron'),
(56, 7, 'Yang manakah digunakan untuk merawat penyakit tiroid?', ' ', 'Iodin-131', 'Kobalt-60', 'Karbon-14', 'Fosforus-32'),
(57, 7, 'Seorang pesakit menjalani kemoterapi untuk merawat penyakit kansernya. Apakah isotop yang digunakan?', ' ', 'Kobalt-60', 'Karbon-14', 'Iodin-131', 'Uranium-235'),
(58, 7, 'Apakah kegunaan bahan radioaktif, fosforus-32?', ' ', 'Mengesan penyerapan baja dan bahan kimia dalam tumbuhan', 'Mensteril alat perubahan', 'Mengesan kebocoran dalam paip di bawah tanah', 'Menyurih pengambilan iodin dalam kelenjar tiroid'),
(60, 7, 'Rajah menunjukkan Jadual Berkala yang tidak lengkap.\r\nUnsur manakah yang mempunyai nombor proton terbesar?', '../images/2021-09-25074022PM.jpg', 'Z', 'Y', 'W', 'X'),
(61, 8, 'Bahagian T membebaskan tenaga haba melalui pembelahan nukleus untuk menghasil stim yang akan memutarkan turbin. Apakah bahagian T?', ' ', 'Rod bahan api uranium', 'Dinding konkrit', 'Moderator grafit', 'Rod kawalan boron'),
(62, 8, 'Dari manakah Matahari mendapatkan tenaganya?', ' ', 'Daripada pelakuran nukleus', 'Daripada pembelahan nukleus', 'Daripada tindak balas berantai nuklear', 'Daripada pereputan nuklear'),
(63, 8, 'Bagaimanakah tenaga dijanakan dalam stesen jana kuasa tenaga nuklear?', ' ', 'Daripada pembelahan nukleus', 'Daripada pelakuran nukleus', 'Daripada tindak balas berantai nuklear', 'Daripada pereputan nuklear'),
(64, 8, 'Yang manakah adalah lokasi terbaik untuk menempatkan stesen jana kuasa nuklear?', ' ', 'Berdekatan sumber air yang banyak', 'Di atas puncak bukit', 'Berdekatan kawasan perumahan', 'Di kawasan yang terpencil'),
(65, 8, 'Rajah menunjukkan reaktor nuklear dalam satu stesen jana kuasa nuklear.\r\nYang manakah dapat membantu memperlahankan neutron?', '../images/2021-09-25080752PM.jpg', 'R', 'P', 'Q', 'S'),
(67, 8, 'Rajah menunjukkan reaktor nuklear dalam satu stesen jana kuasa nuklear. Yang manakah mengelakkan kebocoran sinaran radioaktif?', '../images/2021-09-25080941PM.jpg', 'S', 'R', 'Q', 'P'),
(68, 8, 'Yang mankah menunjukkan kesan penyebaran radiasi daripada ujian nuklear?', ' ', 'Kanser', 'Diabetes melitus', 'Arteriosklerosis', 'Hipertensi'),
(69, 8, 'Yang manakah kesan negatif yang disebabkan oleh sinaran radioaktif?', ' ', 'Mutasi dalam sel-sel badan', 'Kemurungan', 'Pengerasan salur darah', 'Anoreksia nervosa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nokp_guru`);

--
-- Indexes for table `jawapan_murid`
--
ALTER TABLE `jawapan_murid`
  ADD PRIMARY KEY (`id_jawapan`),
  ADD UNIQUE KEY `no_soalan` (`no_soalan`,`nokp_murid`),
  ADD KEY `nokp_murid` (`nokp_murid`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD KEY `nokp_guru` (`nokp_guru`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`nokp_murid`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `set_soalan`
--
ALTER TABLE `set_soalan`
  ADD PRIMARY KEY (`no_set`),
  ADD KEY `nokp_guru` (`nokp_guru`);

--
-- Indexes for table `soalan`
--
ALTER TABLE `soalan`
  ADD PRIMARY KEY (`no_soalan`),
  ADD KEY `no_set` (`no_set`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jawapan_murid`
--
ALTER TABLE `jawapan_murid`
  MODIFY `id_jawapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=449;
--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `set_soalan`
--
ALTER TABLE `set_soalan`
  MODIFY `no_set` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `soalan`
--
ALTER TABLE `soalan`
  MODIFY `no_soalan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `jawapan_murid`
--
ALTER TABLE `jawapan_murid`
  ADD CONSTRAINT `jawapan_murid_ibfk_1` FOREIGN KEY (`no_soalan`) REFERENCES `soalan` (`no_soalan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jawapan_murid_ibfk_2` FOREIGN KEY (`nokp_murid`) REFERENCES `murid` (`nokp_murid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`nokp_guru`) REFERENCES `guru` (`nokp_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `murid`
--
ALTER TABLE `murid`
  ADD CONSTRAINT `murid_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `set_soalan`
--
ALTER TABLE `set_soalan`
  ADD CONSTRAINT `set_soalan_ibfk_1` FOREIGN KEY (`nokp_guru`) REFERENCES `guru` (`nokp_guru`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `soalan`
--
ALTER TABLE `soalan`
  ADD CONSTRAINT `soalan_ibfk_1` FOREIGN KEY (`no_set`) REFERENCES `set_soalan` (`no_set`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `soalan_ibfk_2` FOREIGN KEY (`no_set`) REFERENCES `set_soalan` (`no_set`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
