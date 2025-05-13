-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2025 at 02:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pams`
--

-- --------------------------------------------------------

--
-- Table structure for table `donasi_barang`
--

CREATE TABLE `donasi_barang` (
  `id` int(11) NOT NULL,
  `id_donatur` int(11) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donasi_barang`
--

INSERT INTO `donasi_barang` (`id`, `id_donatur`, `nama_barang`, `jumlah`, `tanggal`, `keterangan`, `created_at`) VALUES
(1, 1, 'Barang 1', 10, '2025-01-01', 'Keterangan 1', '2025-01-08 12:06:31'),
(2, 2, 'Barang 2', 20, '2025-01-02', 'Keterangan 2', '2025-01-08 12:06:31'),
(3, 3, 'Barang 3', 15, '2025-01-03', 'Keterangan 3', '2025-01-08 12:06:31'),
(4, 1, 'Buku Tulis', 100, '2024-01-01', 'Donasi untuk sekolah', '2024-12-31 01:24:53'),
(5, 11, 'Selimut', 50, '2024-01-05', 'Donasi korban banjir', '2024-12-31 01:24:53'),
(6, 6, 'Barang 6', 18, '2025-01-06', 'Keterangan 6', '2025-01-08 12:06:31'),
(7, 1, 'Buku Tulis', 100, '2024-01-01', 'Donasi untuk sekolah', '2024-12-31 01:32:00'),
(8, 8, 'Barang 8', 30, '2025-01-08', 'Keterangan 8', '2025-01-08 12:06:31'),
(9, 9, 'Barang 9', 9, '2025-01-09', 'Keterangan 9', '2025-01-08 12:06:31'),
(10, 1, 'Baji', 20, '2024-12-17', 'Dari Batik Pekalongan', NULL),
(11, 11, 'Barang 11', 22, '2025-01-11', 'Keterangan 11', '2025-01-08 12:06:31'),
(12, 12, 'Barang 12', 17, '2025-01-12', 'Keterangan 12', '2025-01-08 12:06:31'),
(13, 13, 'Barang 13', 19, '2025-01-13', 'Keterangan 13', '2025-01-08 12:06:31'),
(14, 14, 'Barang 14', 16, '2025-01-14', 'Keterangan 14', '2025-01-08 12:06:31'),
(15, 15, 'Barang 15', 21, '2025-01-15', 'Keterangan 15', '2025-01-08 12:06:31'),
(40, 4, 'Barang 4', 8, '2025-01-04', 'Keterangan 4', '2025-01-08 12:06:31'),
(50, 5, 'Barang 5', 12, '2025-01-05', 'Keterangan 5', '2025-01-08 12:06:31'),
(70, 7, 'Barang 7', 25, '2025-01-07', 'Keterangan 7', '2025-01-08 12:06:31'),
(100, 10, 'Barang 10', 14, '2025-01-10', 'Keterangan 10', '2025-01-08 12:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `donasi_uang`
--

CREATE TABLE `donasi_uang` (
  `id` int(11) NOT NULL,
  `id_donatur` int(11) NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donasi_uang`
--

INSERT INTO `donasi_uang` (`id`, `id_donatur`, `jumlah`, `tanggal`, `keterangan`, `created_at`) VALUES
(1, 1, 50000.00, '2025-01-01', 'Donasi uang pertama', '2025-01-08 12:07:15'),
(2, 2, 100000.00, '2025-01-02', 'Donasi uang kedua', '2025-01-08 12:07:15'),
(3, 3, 75000.00, '2025-01-03', 'Donasi uang ketiga', '2025-01-08 12:07:15'),
(4, 1, 500000.00, '2024-01-01', 'Donasi untuk pendidikan', '2024-12-31 01:24:18'),
(5, 4, 750000.00, '2024-01-05', 'Donasi kesehatan', '2024-12-31 01:24:18'),
(6, 3, 1000000.00, '2024-01-10', 'Donasi bencana alam', '2024-12-31 01:24:18'),
(7, 7, 80000.00, '2025-01-07', 'Donasi uang ketujuh', '2025-01-08 12:07:15'),
(8, 8, 150000.00, '2025-01-08', 'Donasi uang kedelapan', '2025-01-08 12:07:15'),
(9, 9, 70000.00, '2025-01-09', 'Donasi uang kesembilan', '2025-01-08 12:07:15'),
(10, 1, 500000.00, '2024-01-01', 'Donasi untuk pendidikan', '2024-12-31 01:32:29'),
(11, 11, 50000.00, '2025-01-11', 'Donasi uang kesebelas', '2025-01-08 12:07:15'),
(12, 12, 95000.00, '2025-01-12', 'Donasi uang keduabelas', '2025-01-08 12:07:15'),
(13, 13, 120000.00, '2025-01-13', 'Donasi uang ketigabelas', '2025-01-08 12:07:15'),
(14, 14, 100000.00, '2025-01-14', 'Donasi uang keempatbelas', '2025-01-08 12:07:15'),
(15, 15, 80000.00, '2025-01-15', 'Donasi uang kelimabelas', '2025-01-08 12:07:15'),
(40, 4, 120000.00, '2025-01-04', 'Donasi uang keempat', '2025-01-08 12:07:15'),
(50, 5, 90000.00, '2025-01-05', 'Donasi uang kelima', '2025-01-08 12:07:15'),
(60, 6, 65000.00, '2025-01-06', 'Donasi uang keenam', '2025-01-08 12:07:15'),
(100, 10, 110000.00, '2025-01-10', 'Donasi uang kesepuluh', '2025-01-08 12:07:15'),
(101, 1, 50000.00, '2025-01-08', 'Paket A', NULL),
(102, 1, 100000.00, '2025-01-09', 'Paket B', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `donatur`
--

CREATE TABLE `donatur` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `no_telepon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donatur`
--

INSERT INTO `donatur` (`id`, `nama`, `alamat`, `no_telepon`, `email`, `created_at`) VALUES
(1, 'Asril', 'Jl. Merdeka No. 123, Jakarta', '081234567890', 'johndoe@example.com', '2024-12-30 04:40:11'),
(2, 'Donatur 2', 'Alamat Donatur 2', '081234567891', 'donatur2@example.com', '2025-01-08 12:05:30'),
(3, 'John Doe', 'Jl. Merdeka No. 123, Jakarta', '081234567890', 'johndoe@example.com', '2024-12-30 05:30:07'),
(4, 'John Doe', 'Jl. Merdeka No. 123, Jakarta', '081234567890', 'johndoe@example.com', '2024-12-30 05:30:12'),
(5, 'John Doe', 'Jl. Merdeka No. 123, Jakarta', '081234567890', 'johndoe@example.com', '2024-12-30 05:30:16'),
(6, 'Donatur 6', 'Alamat Donatur 6', '081234567895', 'donatur6@example.com', '2025-01-08 12:05:30'),
(7, 'Donatur 7', 'Alamat Donatur 7', '081234567896', 'donatur7@example.com', '2025-01-08 12:05:30'),
(8, 'Donatur 8', 'Alamat Donatur 8', '081234567897', 'donatur8@example.com', '2025-01-08 12:05:30'),
(9, 'Donatur 9', 'Alamat Donatur 9', '081234567898', 'donatur9@example.com', '2025-01-08 12:05:30'),
(10, 'Donatur 10', 'Alamat Donatur 10', '081234567899', 'donatur10@example.com', '2025-01-08 12:05:30'),
(11, 'Hafa', 'ap', '085540163840', 'herimohammad465@gmail.com', NULL),
(12, 'Donatur 12', 'Alamat Donatur 12', '081234567801', 'donatur12@example.com', '2025-01-08 12:05:30'),
(13, 'Donatur 13', 'Alamat Donatur 13', '081234567802', 'donatur13@example.com', '2025-01-08 12:05:30'),
(14, 'Donatur 14', 'Alamat Donatur 14', '081234567803', 'donatur14@example.com', '2025-01-08 12:05:30'),
(15, 'Donatur 15', 'Alamat Donatur 15', '081234567804', 'donatur15@example.com', '2025-01-08 12:05:30'),
(19, 'Donatur 1', 'Alamat Donatur 1', '081234567890', 'donatur1@example.com', '2025-01-08 12:05:30'),
(30, 'Donatur 3', 'Alamat Donatur 3', '081234567892', 'donatur3@example.com', '2025-01-08 12:05:30'),
(40, 'Donatur 4', 'Alamat Donatur 4', '081234567893', 'donatur4@example.com', '2025-01-08 12:05:30'),
(50, 'Donatur 5', 'Alamat Donatur 5', '081234567894', 'donatur5@example.com', '2025-01-08 12:05:30'),
(110, 'Donatur 11', 'Alamat Donatur 11', '081234567800', 'donatur11@example.com', '2025-01-08 12:05:30');

-- --------------------------------------------------------

--
-- Stand-in structure for view `laporandonasi`
-- (See below for the actual view)
--
CREATE TABLE `laporandonasi` (
`Id` int(11)
,`Nama_Donatur` varchar(100)
,`Nama_Barang` varchar(100)
,`Tanggal_Donasi_Barang` date
,`Jumlah_Donasi_Uang` decimal(15,2)
,`Tanggal_Donasi_Uang` date
,`Total_Donasi` decimal(38,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `laporandonatur`
-- (See below for the actual view)
--
CREATE TABLE `laporandonatur` (
`Nama` varchar(100)
,`Alamat` text
,`Telephone` varchar(15)
,`Email` varchar(100)
,`Username` varchar(30)
,`Pasword` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `laporanpengeluaran`
-- (See below for the actual view)
--
CREATE TABLE `laporanpengeluaran` (
`Id_Donasi_Uang` int(11)
,`Jenis_Pengeluaran` enum('barang','operasional')
,`Deskripsi` text
,`Jumlah` decimal(15,2)
,`Tanggal_Pengeluaran` date
);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(4, '2024-12-29-125608', 'App\\Database\\Migrations\\Donatur', 'default', 'App', 1735477322, 2),
(5, '2024-12-29-125645', 'App\\Database\\Migrations\\DonasiUang', 'default', 'App', 1735477322, 2),
(6, '2024-12-29-125709', 'App\\Database\\Migrations\\DonasiBarang', 'default', 'App', 1735477322, 2),
(7, '2024-12-29-125736', 'App\\Database\\Migrations\\Penghuni', 'default', 'App', 1735477323, 2),
(8, '2024-12-29-125759', 'App\\Database\\Migrations\\Pengeluaran', 'default', 'App', 1735477323, 2),
(10, '2024-12-28-011029', 'App\\Database\\Migrations\\User', 'default', 'App', 1735478403, 3);

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id` int(11) NOT NULL,
  `id_donasi_uang` int(11) NOT NULL,
  `jenis_pengeluaran` enum('barang','operasional') NOT NULL,
  `deskripsi` text NOT NULL,
  `jumlah` decimal(15,2) NOT NULL,
  `tanggal` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengeluaran`
--

INSERT INTO `pengeluaran` (`id`, `id_donasi_uang`, `jenis_pengeluaran`, `deskripsi`, `jumlah`, `tanggal`, `created_at`) VALUES
(1, 1, 'barang', 'Pengeluaran pertama', 20000.00, '2025-01-01', '2025-01-08 12:07:49'),
(2, 2, 'operasional', 'Pengeluaran kedua', 30000.00, '2025-01-02', '2025-01-08 12:07:49'),
(3, 4, 'barang', 'buat beli berass', 20.00, '2024-12-31', NULL),
(4, 4, 'operasional', 'Pengeluaran keempat', 25000.00, '2025-01-04', '2025-01-08 12:07:49'),
(5, 5, 'barang', 'buat beli panci', 20000.00, '2024-12-31', NULL),
(6, 6, 'operasional', 'Pengeluaran keenam', 21000.00, '2025-01-06', '2025-01-08 12:07:49'),
(7, 7, 'barang', 'Pengeluaran ketujuh', 24000.00, '2025-01-07', '2025-01-08 12:07:49'),
(8, 8, 'operasional', 'Pengeluaran kedelapan', 26000.00, '2025-01-08', '2025-01-08 12:07:49'),
(9, 9, 'barang', 'Pengeluaran kesembilan', 22000.00, '2025-01-09', '2025-01-08 12:07:49'),
(10, 10, 'operasional', 'Pengeluaran kesepuluh', 19000.00, '2025-01-10', '2025-01-08 12:07:49'),
(11, 11, 'barang', 'Pengeluaran kesebelas', 17000.00, '2025-01-11', '2025-01-08 12:07:49'),
(12, 12, 'operasional', 'Pengeluaran keduabelas', 23000.00, '2025-01-12', '2025-01-08 12:07:49'),
(13, 13, 'barang', 'Pengeluaran ketigabelas', 20000.00, '2025-01-13', '2025-01-08 12:07:49'),
(14, 14, 'operasional', 'Pengeluaran keempatbelas', 15000.00, '2025-01-14', '2025-01-08 12:07:49'),
(15, 15, 'barang', 'Pengeluaran kelimabelas', 25000.00, '2025-01-15', '2025-01-08 12:07:49'),
(30, 3, 'barang', 'Pengeluaran ketiga', 15000.00, '2025-01-03', '2025-01-08 12:07:49'),
(50, 5, 'barang', 'Pengeluaran kelima', 18000.00, '2025-01-05', '2025-01-08 12:07:49');

-- --------------------------------------------------------

--
-- Table structure for table `penghuni`
--

CREATE TABLE `penghuni` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `keterangan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penghuni`
--

INSERT INTO `penghuni` (`id`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `tanggal_masuk`, `keterangan`, `created_at`) VALUES
(1, 'italsy', '1980-01-01', 'L', 'jl Raya Pekalongan  Kecamatan Pekalongan', '2024-12-31', 'Dibuang Anaknya ', NULL),
(2, 'mimiprei', '2000-01-14', 'P', 'jl raya', '2024-12-31', 'DItinggal Anaknya', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `role` enum('owner','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `no_hp`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Hafa Isgianto', '$2y$10$Po1fHHcqGBgjUHesLpj4WOdudfbu/SG5wfQCKXaNxzDrdtrtxrCOu', 'isgiantohafa@gmail.com', '085540163840', 'owner', NULL, NULL),
(2, 'Asril', '$2y$10$6eeHieCaFAFfSP7XYsG/1u3waiFxpVzt087hABmz3uUxwmZvdNawy', 'asril@gmail.com', '088976564736', 'user', NULL, NULL),
(3, 'isgianti', '$2y$10$lKpYnwI6XKRrLcqMzZubwOsndeL.wKIgH0nlhmGtcxyj0V4TkIGKK', 'asurahchain@gmail.com', '085540163840', 'user', '2024-12-30 20:05:08', '2024-12-30 20:26:22'),
(4, 'hafa', '$2y$10$7cwz1Tdu72PRGBpH3uuvm.QOHsV07Hg.AWM/7MH/NDpkrrRDFiIVq', 'ilhamdadunet@gmail.com', '088976564736', 'user', '2024-12-30 20:08:04', '2024-12-30 20:08:04'),
(6, 'Asril', '$2y$10$mT8ZWkAMEvymYoHPAO0lbeV1N5Dyx5Iw816Uals1bnW4tg6k9QXUK', 'hafa@gmail.com', '085540163840', 'user', '2024-12-30 20:13:05', '2024-12-30 20:13:05');

-- --------------------------------------------------------

--
-- Structure for view `laporandonasi`
--
DROP TABLE IF EXISTS `laporandonasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporandonasi`  AS SELECT `donatur`.`id` AS `Id`, `donatur`.`nama` AS `Nama_Donatur`, `donasi_barang`.`nama_barang` AS `Nama_Barang`, `donasi_barang`.`tanggal` AS `Tanggal_Donasi_Barang`, `donasi_uang`.`jumlah` AS `Jumlah_Donasi_Uang`, `donasi_uang`.`tanggal` AS `Tanggal_Donasi_Uang`, ifnull(sum(`donasi_barang`.`jumlah`),0) + ifnull(sum(`donasi_uang`.`jumlah`),0) AS `Total_Donasi` FROM ((`donatur` left join `donasi_barang` on(`donatur`.`id` = `donasi_barang`.`id_donatur`)) left join `donasi_uang` on(`donatur`.`id` = `donasi_uang`.`id_donatur`)) GROUP BY `donatur`.`id` ;

-- --------------------------------------------------------

--
-- Structure for view `laporandonatur`
--
DROP TABLE IF EXISTS `laporandonatur`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporandonatur`  AS SELECT `donatur`.`nama` AS `Nama`, `donatur`.`alamat` AS `Alamat`, `donatur`.`no_telepon` AS `Telephone`, `donatur`.`email` AS `Email`, `users`.`username` AS `Username`, `users`.`password` AS `Pasword` FROM (`donatur` join `users` on(`donatur`.`id` = `users`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `laporanpengeluaran`
--
DROP TABLE IF EXISTS `laporanpengeluaran`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `laporanpengeluaran`  AS SELECT `donasi_uang`.`id` AS `Id_Donasi_Uang`, `pengeluaran`.`jenis_pengeluaran` AS `Jenis_Pengeluaran`, `pengeluaran`.`deskripsi` AS `Deskripsi`, `pengeluaran`.`jumlah` AS `Jumlah`, `pengeluaran`.`tanggal` AS `Tanggal_Pengeluaran` FROM (`donasi_uang` join `pengeluaran` on(`donasi_uang`.`id` = `pengeluaran`.`id_donasi_uang`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donasi_barang`
--
ALTER TABLE `donasi_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donasi_barang_id_donatur_foreign` (`id_donatur`);

--
-- Indexes for table `donasi_uang`
--
ALTER TABLE `donasi_uang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donasi_uang_id_donatur_foreign` (`id_donatur`);

--
-- Indexes for table `donatur`
--
ALTER TABLE `donatur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pengeluaran_id_donasi_uang_foreign` (`id_donasi_uang`);

--
-- Indexes for table `penghuni`
--
ALTER TABLE `penghuni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donasi_barang`
--
ALTER TABLE `donasi_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `donasi_uang`
--
ALTER TABLE `donasi_uang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `donatur`
--
ALTER TABLE `donatur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `penghuni`
--
ALTER TABLE `penghuni`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `donasi_barang`
--
ALTER TABLE `donasi_barang`
  ADD CONSTRAINT `donasi_barang_id_donatur_foreign` FOREIGN KEY (`id_donatur`) REFERENCES `donatur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donasi_uang`
--
ALTER TABLE `donasi_uang`
  ADD CONSTRAINT `donasi_uang_id_donatur_foreign` FOREIGN KEY (`id_donatur`) REFERENCES `donatur` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD CONSTRAINT `pengeluaran_id_donasi_uang_foreign` FOREIGN KEY (`id_donasi_uang`) REFERENCES `donasi_uang` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
