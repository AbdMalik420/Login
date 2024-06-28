-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2024 at 08:59 AM
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
-- Database: `db_sct`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `hari` varchar(10) DEFAULT NULL,
  `jam` varchar(20) DEFAULT NULL,
  `kode_jadwal` varchar(20) NOT NULL,
  `kode_kelas` varchar(10) DEFAULT NULL,
  `kode_mapel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`hari`, `jam`, `kode_jadwal`, `kode_kelas`, `kode_mapel`) VALUES
('Jumat', '08.00-19.00', 'JUM1', '1A', '004'),
('Jumat', '08.00-10.00', 'JUM2', '1B', '004'),
('Jumat', '13.00-15.00', 'JUM3', '1C', '001'),
('Kamis', '08.00-10.00', 'KAM1', '1A', '002'),
('Kamis', '08.00-10.00', 'KAM2', '1B', '002'),
('Kamis', '13.00-15.00', 'KAM3', '1C', '003'),
('Rabu', '08.00-09.00', 'RAB1', '1A', '003'),
('Rabu', '09.00-11.30', 'RAB2', '1B', '003'),
('Rabu', '13.00-15.00', 'RAB3', '1C', '006'),
('selasa', '08.00-19.00', 'SEL1', '1A', '001'),
('selasa', '08.00-19.00', 'SEL2', '1B', '005'),
('selasa', '08.00-19.00', 'SEL3', '1C', '005'),
('senin', '08.00-09.00', 'SEN1', '1A', '006'),
('senin', '09.00-10.00', 'SEN2', '1B', '002'),
('senin', '10.00-11.00', 'SEN3', '1C', '002');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `nama_kelas` varchar(30) DEFAULT NULL,
  `kode_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`nama_kelas`, `kode_kelas`) VALUES
('kelas 1A', '1A'),
('kelas 1B', '1B'),
('kelas 1C', '1C');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `nama_mapel` varchar(50) DEFAULT NULL,
  `kode_mapel` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`nama_mapel`, `kode_mapel`) VALUES
('matematika', '001'),
('bhs indonesia', '002'),
('fisika', '003'),
('kimia', '004'),
('agama', '005'),
('bhs inggris', '006');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `nis` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nama`, `nis`, `tgl_lahir`, `alamat`, `no_hp`) VALUES
(4, 'jjjk', '676767', '0000-00-00', 'Kendari', '0811223331'),
(6, 'Malik', '6767600', '2001-05-05', 'ff', '0811223331');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `nomor` varchar(30) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `full_name`, `email`, `password`, `nomor`, `status`) VALUES
(1, 'Malik', 'abdmalik032501@gmail.com', '0a83656dba9b0100a681530c8719515f', '0999999', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kode_jadwal`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indexes for table `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`kode_mapel`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
