-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2023 at 02:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pinjamgedung`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin1`
--

CREATE TABLE `admin1` (
  `id` int(11) NOT NULL,
  `pin` int(11) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin1`
--

INSERT INTO `admin1` (`id`, `pin`, `username`) VALUES
(1, 12345, 'mubdi');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `excerpt` text NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `user_id`, `kategori_id`, `excerpt`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Minus dignissimos voluptatibus dignissimos non.', 1, 3, 'Velit ut eveniet dolorum quo incidunt tenetur hic et. Minima et animi quaerat omnis commodi laudantium pariatur. Qui ad omnis nulla ducimus minima.', 'Rerum quis a ipsum nihil quidem. Placeat molestiae consectetur id quos cupiditate officia. Neque voluptatum pariatur rem ipsam dolor rem. Nam sit neque temporibus. Atque error velit et et. Voluptatem dicta explicabo soluta et. Repellendus voluptatem numquam voluptatibus beatae consequatur ex veniam.', '2023-06-20 14:03:14', '2023-06-20 14:03:14');

-- --------------------------------------------------------

--
-- Table structure for table `gedungpnp`
--

CREATE TABLE `gedungpnp` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `p_nama` varchar(50) NOT NULL,
  `p_status` enum('mahasiswa','dosen','public') NOT NULL,
  `p_kodegedung` varchar(10) NOT NULL,
  `p_nim` int(11) NOT NULL,
  `p_namakegiatan` varchar(50) NOT NULL,
  `p_keterangan` varchar(100) DEFAULT NULL,
  `p_tanggal_masuk` date DEFAULT NULL,
  `p_tanggal_keluar` date DEFAULT NULL,
  `p_file` varchar(100) DEFAULT NULL,
  `status` enum('S','B','T','A') DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gedungpnp`
--

INSERT INTO `gedungpnp` (`id`, `id_user`, `p_nama`, `p_status`, `p_kodegedung`, `p_nim`, `p_namakegiatan`, `p_keterangan`, `p_tanggal_masuk`, `p_tanggal_keluar`, `p_file`, `status`) VALUES
(4, 1, 'Ijon', 'mahasiswa', '3', 893090, 'Rapat', 'Rapatkan Barisan', '2023-06-23', '2023-06-27', 'N/A', 'B'),
(7, 2, 'Mubdi', 'mahasiswa', '22', 230939093, 'Rapat Paripurna', 'Rapat', '2023-06-27', '2023-06-27', 'N/A', 'B'),
(8, 1, 'Udin Amin', 'dosen', 'Ruangan 5', 1209000, 'Rapat Dosen', 'Rapat\n', '2023-06-24', '2023-06-24', '', 'B'),
(13, 3, 'iiiiiiiiiiiiiiiiiiiiiiiiiii', 'mahasiswa', 'Ruangan 3', 213123123, 'sdadasdsa', 'sdsadaads\n', '2023-07-10', '2023-07-10', 'D:/Tentang 2022-2023/Panduan Peserta TOEIC CBT from Home.pdf', 'S'),
(14, 4, 'iiiiiiiiii', 'mahasiswa', 'Ruangan 7', 232242, 'eqeqweqewqweqe', 'qwewqewqeqwe\n', '2023-07-10', '2023-07-10', 'D:/Tentang 2022-2023/Panduan Peserta TOEIC CBT from Home.pdf', 'B'),
(15, 5, 'joni', 'dosen', 'Ruangan 3', 3213213, 'iyaiay', 'iyaiay\n', '2023-07-10', '2023-07-10', 'D:/Tentang 2022-2023/Panduan Peserta TOEIC CBT from Home.pdf', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `kode_ruangan`
--

CREATE TABLE `kode_ruangan` (
  `id` int(11) NOT NULL,
  `gedung_pkm` varchar(10) DEFAULT NULL,
  `gedung_c` varchar(10) DEFAULT NULL,
  `gedung_e` varchar(10) DEFAULT NULL,
  `gedung_ab` varchar(10) DEFAULT NULL,
  `gedung_ac` varchar(10) DEFAULT NULL,
  `gedung_x` varchar(10) DEFAULT NULL,
  `aula_mesin` varchar(10) DEFAULT NULL,
  `aula_sipil` varchar(10) DEFAULT NULL,
  `Ruang_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kode_ruangan`
--

INSERT INTO `kode_ruangan` (`id`, `gedung_pkm`, `gedung_c`, `gedung_e`, `gedung_ab`, `gedung_ac`, `gedung_x`, `aula_mesin`, `aula_sipil`, `Ruang_id`) VALUES
(1, 'PKM', 'C-201', 'E-301', 'AB-401', 'AC-501', 'X-601', 'Aula-M1', 'Aula-S1', 1),
(2, 'PKM', 'C-202', 'E-302', 'AB-402', 'AC-502', 'X-602', 'Aula-M2', 'Aula-S2', 2),
(3, 'PKM', 'C-203', 'E-303', 'AB-403', 'AC-503', 'X-603', 'Aula-M3', 'Aula-S3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(11) NOT NULL,
  `nim` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`id`, `nim`, `username`, `password`) VALUES
(1, 12345, 'mubdi', '12345'),
(2, 123456, 'ikhsan', '12345'),
(3, 0, 'ikhsan', 'mubdi'),
(4, 99999, 'marfiki', 'mubdi'),
(5, 23123213, 'san', 'mubdi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin1`
--
ALTER TABLE `admin1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gedungpnp`
--
ALTER TABLE `gedungpnp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user1`
--
ALTER TABLE `user1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin1`
--
ALTER TABLE `admin1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gedungpnp`
--
ALTER TABLE `gedungpnp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user1`
--
ALTER TABLE `user1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
