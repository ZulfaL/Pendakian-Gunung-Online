-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Jun 2021 pada 17.51
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendaki`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id_anggota` int(11) NOT NULL,
  `nama_lengkap` varchar(70) NOT NULL,
  `NIK` varchar(20) NOT NULL,
  `jenis_kelamin` enum('L','P','','') NOT NULL,
  `alamat` varchar(125) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `id_pendaftaran` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id_anggota`, `nama_lengkap`, `NIK`, `jenis_kelamin`, `alamat`, `notelp`, `id_pendaftaran`) VALUES
(1, 'Amindi', '0978798689698', 'P', 'yggvjgyjjki', '087657898675', 23062021072112),
(2, 'Zulfa', '3526046111010003', '', 'jhfvyjufkiugjfvyf', '908786759868', 23062021072112),
(3, 'kiki', '09987675768757', '', 'hgyfvhjgbukgyudchjcvku', '0978686978', 23062021072112);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kuota` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `tanggal`, `kuota`, `harga`) VALUES
(1, '2021-06-30', 8, 200),
(2, '2021-07-15', 100, 10000000),
(3, '2021-01-01', 100, 50000),
(4, '2021-01-02', 100, 50000),
(5, '2021-01-03', 100, 50000),
(6, '2021-01-04', 100, 50000),
(7, '2021-01-05', 100, 50000),
(8, '2021-01-06', 100, 50000),
(9, '2021-01-07', 100, 50000),
(10, '2021-01-08', 100, 50000),
(11, '2021-01-09', 100, 50000),
(12, '2021-01-10', 100, 50000),
(13, '2021-01-11', 100, 50000),
(14, '2021-01-12', 100, 50000),
(15, '2021-01-13', 100, 50000),
(16, '2021-01-14', 100, 50000),
(17, '2021-01-15', 100, 50000),
(18, '2021-01-16', 100, 50000),
(19, '2021-01-17', 100, 50000),
(20, '2021-01-18', 100, 50000),
(21, '2021-01-19', 100, 50000),
(22, '2021-01-20', 100, 50000),
(23, '2021-01-21', 100, 50000),
(24, '2021-01-22', 100, 50000),
(25, '2021-01-23', 100, 50000),
(26, '2021-01-24', 100, 50000),
(27, '2021-01-25', 100, 50000),
(28, '2021-01-26', 100, 50000),
(29, '2021-01-27', 100, 50000),
(30, '2021-01-28', 100, 50000),
(31, '2021-01-29', 100, 50000),
(32, '2021-01-30', 100, 50000),
(33, '2021-02-01', 100, 50000),
(34, '2021-02-02', 100, 50000),
(35, '2021-02-03', 100, 50000),
(36, '2021-02-04', 100, 50000),
(37, '2021-02-05', 100, 50000),
(38, '2021-02-06', 100, 50000),
(39, '2021-02-07', 100, 50000),
(40, '2021-02-08', 100, 50000),
(41, '2021-02-09', 100, 50000),
(42, '2021-02-10', 100, 50000),
(43, '2021-02-11', 100, 50000),
(44, '2021-02-12', 100, 50000),
(45, '2021-02-13', 100, 50000),
(46, '2021-02-14', 100, 50000),
(47, '2021-02-15', 100, 50000),
(48, '2021-02-16', 100, 50000),
(49, '2021-02-17', 100, 50000),
(50, '2021-02-18', 100, 50000),
(51, '2021-02-19', 100, 50000),
(52, '2021-02-20', 100, 50000),
(53, '2021-02-21', 100, 50000),
(54, '2021-02-22', 100, 50000),
(55, '2021-02-23', 100, 50000),
(56, '2021-02-24', 100, 50000),
(57, '2021-02-25', 100, 50000),
(58, '2021-02-26', 100, 50000),
(59, '2021-02-27', 100, 50000),
(60, '2021-02-28', 100, 50000),
(61, '0000-00-00', 100, 50000),
(62, '0000-00-00', 100, 50000),
(63, '2021-03-01', 100, 50000),
(64, '2021-03-02', 91, 50000),
(65, '2021-03-03', 100, 50000),
(66, '2021-03-04', 100, 50000),
(67, '2021-03-05', 100, 50000),
(68, '2021-03-06', 100, 50000),
(69, '2021-03-07', 100, 50000),
(70, '2021-03-08', 100, 50000),
(71, '2021-03-09', 100, 50000),
(72, '2021-03-10', 100, 50000),
(73, '2021-03-11', 100, 50000),
(74, '2021-03-12', 100, 50000),
(75, '2021-03-13', 100, 50000),
(76, '2021-03-14', 100, 50000),
(77, '2021-03-15', 100, 50000),
(78, '2021-03-16', 100, 50000),
(79, '2021-03-17', 100, 50000),
(80, '2021-03-18', 100, 50000),
(81, '2021-03-19', 100, 50000),
(82, '2021-03-20', 100, 50000),
(83, '2021-03-21', 100, 50000),
(84, '2021-03-22', 100, 50000),
(85, '2021-03-23', 100, 50000),
(86, '2021-03-24', 100, 50000),
(87, '2021-03-25', 100, 50000),
(88, '2021-03-26', 100, 50000),
(89, '2021-03-27', 100, 50000),
(90, '2021-03-28', 100, 50000),
(91, '2021-03-29', 100, 50000),
(92, '2021-03-30', 100, 50000),
(93, '2021-04-01', 100, 50000),
(94, '2021-04-02', 100, 50000),
(95, '2021-04-03', 100, 50000),
(96, '2021-04-04', 100, 50000),
(97, '2021-04-05', 100, 50000),
(98, '2021-04-06', 100, 50000),
(99, '2021-04-07', 100, 50000),
(100, '2021-04-08', 100, 50000),
(101, '2021-04-09', 100, 50000),
(102, '2021-04-10', 100, 50000),
(103, '2021-04-11', 100, 50000),
(104, '2021-04-12', 100, 50000),
(105, '2021-04-13', 100, 50000),
(106, '2021-04-14', 100, 50000),
(107, '2021-04-15', 100, 50000),
(108, '2021-04-16', 100, 50000),
(109, '2021-04-17', 100, 50000),
(110, '2021-04-18', 100, 50000),
(111, '2021-04-19', 100, 50000),
(112, '2021-04-20', 100, 50000),
(113, '2021-04-21', 100, 50000),
(114, '2021-04-22', 100, 50000),
(115, '2021-04-23', 100, 50000),
(116, '2021-04-24', 100, 50000),
(117, '2021-04-25', 100, 50000),
(118, '2021-04-26', 100, 50000),
(119, '2021-04-27', 100, 50000),
(120, '2021-04-28', 100, 50000),
(121, '2021-04-29', 100, 50000),
(122, '2021-04-30', 100, 50000),
(123, '2021-05-01', 100, 50000),
(124, '2021-05-02', 100, 50000),
(125, '2021-05-03', 100, 50000),
(126, '2021-05-04', 100, 50000),
(127, '2021-05-05', 100, 50000),
(128, '2021-05-06', 100, 50000),
(129, '2021-05-07', 100, 50000),
(130, '2021-05-08', 100, 50000),
(131, '2021-05-09', 100, 50000),
(132, '2021-05-10', 100, 50000),
(133, '2021-05-11', 100, 50000),
(134, '2021-05-12', 100, 50000),
(135, '2021-05-13', 100, 50000),
(136, '2021-05-14', 100, 50000),
(137, '2021-05-15', 100, 50000),
(138, '2021-05-16', 100, 50000),
(139, '2021-05-17', 100, 50000),
(140, '2021-05-18', 100, 50000),
(141, '2021-05-19', 100, 50000),
(142, '2021-05-20', 100, 50000),
(143, '2021-05-21', 100, 50000),
(144, '2021-05-22', 100, 50000),
(145, '2021-05-23', 100, 50000),
(146, '2021-05-24', 100, 50000),
(147, '2021-05-25', 100, 50000),
(148, '2021-05-26', 100, 50000),
(149, '2021-05-27', 100, 50000),
(150, '2021-05-28', 100, 50000),
(151, '2021-05-29', 100, 50000),
(152, '2021-05-30', 100, 50000),
(153, '2021-05-31', 100, 50000),
(154, '2021-06-01', 100, 50000),
(155, '2021-06-02', 100, 50000),
(156, '2021-06-03', 100, 50000),
(157, '2021-06-04', 100, 50000),
(158, '2021-06-05', 100, 50000),
(159, '2021-06-06', 100, 50000),
(160, '2021-06-07', 100, 50000),
(161, '2021-06-08', 100, 50000),
(162, '2021-06-09', 100, 50000),
(163, '2021-06-10', 100, 50000),
(164, '2021-06-11', 100, 50000),
(165, '2021-06-12', 100, 50000),
(166, '2021-06-13', 100, 50000),
(167, '2021-06-14', 100, 50000),
(168, '2021-06-15', 100, 50000),
(169, '2021-06-16', 100, 50000),
(170, '2021-06-17', 100, 50000),
(171, '2021-06-18', 100, 50000),
(172, '2021-06-19', 100, 50000),
(173, '2021-06-20', 100, 50000),
(174, '2021-06-21', 100, 50000),
(175, '2021-06-22', 100, 50000),
(176, '2021-06-23', 100, 50000),
(177, '2021-06-24', 100, 50000),
(178, '2021-06-25', 100, 50000),
(179, '2021-06-26', 100, 50000),
(180, '2021-06-27', 100, 50000),
(181, '2021-06-28', 100, 50000),
(182, '2021-06-29', 100, 50000),
(183, '2021-06-30', 100, 50000),
(184, '2021-07-01', 100, 50000),
(185, '2021-07-02', 100, 50000),
(186, '2021-07-03', 100, 50000),
(187, '2021-07-04', 100, 50000),
(188, '2021-07-05', 100, 50000),
(189, '2021-07-06', 100, 50000),
(190, '2021-07-07', 100, 50000),
(191, '2021-07-08', 100, 50000),
(192, '2021-07-09', 100, 50000),
(193, '2021-07-10', 100, 50000),
(194, '2021-07-11', 100, 50000),
(195, '2021-07-12', 100, 50000),
(196, '2021-07-13', 100, 50000),
(197, '2021-07-14', 100, 50000),
(198, '2021-07-15', 100, 50000),
(199, '2021-07-16', 100, 50000),
(200, '2021-07-17', 100, 50000),
(201, '2021-07-18', 100, 50000),
(202, '2021-07-19', 100, 50000),
(203, '2021-07-20', 100, 50000),
(204, '2021-07-21', 100, 50000),
(205, '2021-07-22', 100, 50000),
(206, '2021-07-23', 100, 50000),
(207, '2021-07-24', 100, 50000),
(208, '2021-07-25', 100, 50000),
(209, '2021-07-26', 100, 50000),
(210, '2021-07-27', 100, 50000),
(211, '2021-07-28', 100, 50000),
(212, '2021-07-29', 100, 50000),
(213, '2021-07-30', 100, 50000),
(214, '2021-07-31', 100, 50000),
(215, '2021-07-01', 100, 50000),
(216, '2021-07-02', 100, 50000),
(217, '2021-07-03', 100, 50000),
(218, '2021-07-04', 100, 50000),
(219, '2021-07-05', 100, 50000),
(220, '2021-07-06', 100, 50000),
(221, '2021-07-07', 100, 50000),
(222, '2021-07-08', 100, 50000),
(223, '2021-07-09', 100, 50000),
(224, '2021-07-10', 100, 50000),
(225, '2021-07-11', 100, 50000),
(226, '2021-07-12', 100, 50000),
(227, '2021-07-13', 100, 50000),
(228, '2021-07-14', 100, 50000),
(229, '2021-07-15', 100, 50000),
(230, '2021-07-16', 100, 50000),
(231, '2021-07-17', 100, 50000),
(232, '2021-07-18', 100, 50000),
(233, '2021-07-19', 100, 50000),
(234, '2021-07-20', 100, 50000),
(235, '2021-07-21', 100, 50000),
(236, '2021-07-22', 100, 50000),
(237, '2021-07-23', 100, 50000),
(238, '2021-07-24', 100, 50000),
(239, '2021-07-25', 100, 50000),
(240, '2021-07-26', 100, 50000),
(241, '2021-07-27', 100, 50000),
(242, '2021-07-28', 100, 50000),
(243, '2021-07-29', 100, 50000),
(244, '2021-07-30', 100, 50000),
(245, '2021-07-31', 100, 50000),
(246, '2021-08-01', 100, 50000),
(247, '2021-08-02', 100, 50000),
(248, '2021-08-03', 100, 50000),
(249, '2021-08-04', 100, 50000),
(250, '2021-08-05', 100, 50000),
(251, '2021-08-06', 100, 50000),
(252, '2021-08-07', 100, 50000),
(253, '2021-08-08', 100, 50000),
(254, '2021-08-09', 100, 50000),
(255, '2021-08-10', 100, 50000),
(256, '2021-08-11', 100, 50000),
(257, '2021-08-12', 100, 50000),
(258, '2021-08-13', 100, 50000),
(259, '2021-08-14', 100, 50000),
(260, '2021-08-15', 100, 50000),
(261, '2021-08-16', 100, 50000),
(262, '2021-08-17', 100, 50000),
(263, '2021-08-18', 100, 50000),
(264, '2021-08-19', 100, 50000),
(265, '2021-08-20', 100, 50000),
(266, '2021-08-21', 100, 50000),
(267, '2021-08-22', 100, 50000),
(268, '2021-08-23', 100, 50000),
(269, '2021-08-24', 100, 50000),
(270, '2021-08-25', 100, 50000),
(271, '2021-08-26', 100, 50000),
(272, '2021-08-27', 100, 50000),
(273, '2021-08-28', 100, 50000),
(274, '2021-08-29', 100, 50000),
(275, '2021-08-30', 100, 50000),
(276, '2021-09-01', 100, 50000),
(277, '2021-09-02', 100, 50000),
(278, '2021-09-03', 100, 50000),
(279, '2021-09-04', 100, 50000),
(280, '2021-09-05', 100, 50000),
(281, '2021-09-06', 100, 50000),
(282, '2021-09-07', 100, 50000),
(283, '2021-09-08', 100, 50000),
(284, '2021-09-09', 100, 50000),
(285, '2021-09-10', 100, 50000),
(286, '2021-09-11', 100, 50000),
(287, '2021-09-12', 100, 50000),
(288, '2021-09-13', 100, 50000),
(289, '2021-09-14', 100, 50000),
(290, '2021-09-15', 100, 50000),
(291, '2021-09-16', 100, 50000),
(292, '2021-09-17', 100, 50000),
(293, '2021-09-18', 100, 50000),
(294, '2021-09-19', 100, 50000),
(295, '2021-09-20', 100, 50000),
(296, '2021-09-21', 100, 50000),
(297, '2021-09-22', 100, 50000),
(298, '2021-09-23', 100, 50000),
(299, '2021-09-24', 100, 50000),
(300, '2021-09-25', 100, 50000),
(301, '2021-09-26', 100, 50000),
(302, '2021-09-27', 100, 50000),
(303, '2021-09-28', 100, 50000),
(304, '2021-09-29', 100, 50000),
(305, '2021-09-30', 100, 50000),
(306, '0000-00-00', 100, 50000),
(307, '2021-10-01', 100, 50000),
(308, '2021-10-02', 100, 50000),
(309, '2021-10-03', 100, 50000),
(310, '2021-10-04', 100, 50000),
(311, '2021-10-05', 100, 50000),
(312, '2021-10-06', 100, 50000),
(313, '2021-10-07', 100, 50000),
(314, '2021-10-08', 100, 50000),
(315, '2021-10-09', 100, 50000),
(316, '2021-10-10', 100, 50000),
(317, '2021-10-11', 100, 50000),
(318, '2021-10-12', 100, 50000),
(319, '2021-10-13', 100, 50000),
(320, '2021-10-14', 100, 50000),
(321, '2021-10-15', 100, 50000),
(322, '2021-10-16', 100, 50000),
(323, '2021-10-17', 100, 50000),
(324, '2021-10-18', 100, 50000),
(325, '2021-10-19', 100, 50000),
(326, '2021-10-20', 100, 50000),
(327, '2021-10-21', 100, 50000),
(328, '2021-10-22', 100, 50000),
(329, '2021-10-23', 100, 50000),
(330, '2021-10-24', 100, 50000),
(331, '2021-10-25', 100, 50000),
(332, '2021-10-26', 100, 50000),
(333, '2021-10-27', 100, 50000),
(334, '2021-10-28', 100, 50000),
(335, '2021-10-29', 100, 50000),
(336, '2021-10-30', 100, 50000),
(337, '2021-11-01', 100, 50000),
(338, '2021-11-02', 100, 50000),
(339, '2021-11-03', 100, 50000),
(340, '2021-11-04', 100, 50000),
(341, '2021-11-05', 100, 50000),
(342, '2021-11-06', 100, 50000),
(343, '2021-11-07', 100, 50000),
(344, '2021-11-08', 100, 50000),
(345, '2021-11-09', 100, 50000),
(346, '2021-11-10', 100, 50000),
(347, '2021-11-11', 100, 50000),
(348, '2021-11-12', 100, 50000),
(349, '2021-11-13', 100, 50000),
(350, '2021-11-14', 100, 50000),
(351, '2021-11-15', 100, 50000),
(352, '2021-11-16', 100, 50000),
(353, '2021-11-17', 100, 50000),
(354, '2021-11-18', 100, 50000),
(355, '2021-11-19', 100, 50000),
(356, '2021-11-20', 100, 50000),
(357, '2021-11-21', 100, 50000),
(358, '2021-11-22', 100, 50000),
(359, '2021-11-23', 100, 50000),
(360, '2021-11-24', 100, 50000),
(361, '2021-11-25', 100, 50000),
(362, '2021-11-26', 100, 50000),
(363, '2021-11-27', 100, 50000),
(364, '2021-11-28', 100, 50000),
(365, '2021-11-29', 100, 50000),
(366, '2021-11-30', 100, 50000),
(367, '0000-00-00', 100, 50000),
(368, '2021-12-01', 100, 50000),
(369, '2021-12-02', 100, 50000),
(370, '2021-12-03', 100, 50000),
(371, '2021-12-04', 100, 50000),
(372, '2021-12-05', 100, 50000),
(373, '2021-12-06', 100, 50000),
(374, '2021-12-07', 100, 50000),
(375, '2021-12-08', 100, 50000),
(376, '2021-12-09', 100, 50000),
(377, '2021-12-10', 100, 50000),
(378, '2021-12-11', 100, 50000),
(379, '2021-12-12', 100, 50000),
(380, '2021-12-13', 100, 50000),
(381, '2021-12-14', 100, 50000),
(382, '2021-12-15', 100, 50000),
(383, '2021-12-16', 100, 50000),
(384, '2021-12-17', 100, 50000),
(385, '2021-12-18', 100, 50000),
(386, '2021-12-19', 100, 50000),
(387, '2021-12-20', 100, 50000),
(388, '2021-12-21', 100, 50000),
(389, '2021-12-22', 100, 50000),
(390, '2021-12-23', 100, 50000),
(391, '2021-12-24', 100, 50000),
(392, '2021-12-25', 100, 50000),
(393, '2021-12-26', 100, 50000),
(394, '2021-12-27', 100, 50000),
(395, '2021-12-28', 100, 50000),
(396, '2021-12-29', 100, 50000),
(397, '2021-12-30', 100, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `idLogin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`idLogin`, `username`, `email`, `password`) VALUES
(2, '_amanda', 'amanda21@gmail.com', 'aefe6269e42325a2eda0e9857220c981'),
(3, 'dinama', 'dinama_@gmail.com', '12345'),
(4, 'zulfafa', 'zulfafa@gmail.com', 'd3eb9a9233e52948740d7eb8c3062d14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `id_pendaftaran` bigint(20) NOT NULL,
  `jenis_pendaftaran` enum('kelompok','individu') NOT NULL,
  `email` varchar(64) NOT NULL,
  `jumlah_anggota` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`id_pendaftaran`, `jenis_pendaftaran`, `email`, `jumlah_anggota`, `id_jadwal`) VALUES
(23062021071748, 'kelompok', 'amanda21@gmail.com', 3, 64),
(23062021072028, 'kelompok', 'amanda21@gmail.com', 3, 64),
(23062021072112, 'kelompok', 'amanda21@gmail.com', 3, 64),
(26052021081848, 'kelompok', '1sd', 12, 1),
(26052021081849, 'kelompok', 'kjhk', 2, 1);

--
-- Trigger `pendaftaran`
--
DELIMITER $$
CREATE TRIGGER `kurangi_kuota` AFTER INSERT ON `pendaftaran` FOR EACH ROW UPDATE jadwal SET kuota = kuota-new.jumlah_anggota WHERE id_jadwal = new.id_jadwal
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id_anggota`),
  ADD KEY `id_pendaftaran` (`id_pendaftaran`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`idLogin`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id_anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `idLogin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  MODIFY `id_pendaftaran` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD CONSTRAINT `anggota_ibfk_1` FOREIGN KEY (`id_pendaftaran`) REFERENCES `pendaftaran` (`id_pendaftaran`);

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD CONSTRAINT `id_jadwal` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
